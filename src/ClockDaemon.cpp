#include "ClockDaemon.h"

namespace Xcurse
{
    // init static set
    std::unordered_set<ClockContainer *> ClockDaemon::m_registered_containers{};

    ClockDaemon::ClockDaemon() : m_daemon_status(false) {}

    ClockDaemon::ClockDaemon(ClockContainer *container) : m_daemon_status(false)
    {
        attach(container);
    }

    bool ClockDaemon::attach(ClockContainer *container)
    {
        // check if container is already attached to another daemon
        if (!ClockDaemon::m_registered_containers.count(container))
        {
            // attach to this daemon and add to registry
            m_attached_container = container;
            ClockDaemon::m_registered_containers.emplace(container);
            return true;
        }
        return false;
    }

    bool ClockDaemon::detach()
    {
        // if the daemon has been stopped
        if (!running())
        {
            // remove from registry and disconnect container
            ClockDaemon::m_registered_containers.erase(m_attached_container);
            m_attached_container = nullptr;
            return true;
        }
        return false;
    }

    bool ClockDaemon::replace_with(ClockDaemon *daemon)
    {
        // if it's not the same daemon
        if (this != daemon)
        {
            // make copy of the container ptr
            auto container_ptr = m_attached_container;
            // attempt to stop and detach current daemon
            stop();
            detach();
            // attach container to new daemon
            return daemon->attach(container_ptr);
        }
        return false;
    }

    void ClockDaemon::start()
    {
        // turn daemon status to on
        m_daemon_status = true;
        // launch daemon thread on future
        m_daemon_future = std::async(std::launch::async, &ClockDaemon::m_daemon_process, this);
    }

    bool ClockDaemon::running() const
    {
        return m_daemon_status;
    }

    void ClockDaemon::stop()
    {
        // turn daemon status to off
        m_daemon_status = false;
        // wait for daemon thread to return
        m_daemon_future.wait();
    }

    void ClockDaemon::m_daemon_process()
    {
        // empty process to be implemented by derivatives
        while (m_daemon_status)
        {
            m_attached_container->set_text("00:00");
            std::this_thread::sleep_for(std::chrono::milliseconds(1000));
        }
        return;
    }
}