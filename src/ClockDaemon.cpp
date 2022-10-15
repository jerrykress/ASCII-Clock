#include "ClockDaemon.h"

namespace Xcurse
{
    // init static set
    std::unordered_set<ClockContainer *> ClockDaemon::m_registered_containers{};

    ClockDaemon::ClockDaemon() : m_status(false) {}

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
        // std::future f = std::async(m_daemon_process);
        m_status = true;
    }

    bool ClockDaemon::running() const
    {
        return m_status;
    }

    void ClockDaemon::stop()
    {
        m_status = false;
    }

    void ClockDaemon::m_daemon_process()
    {
        // empty process to be implemented by derivatives
        return;
    }
}