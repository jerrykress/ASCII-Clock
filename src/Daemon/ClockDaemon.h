#pragma once

#include "../Core/ClockContainer.h"
#include <thread>
#include <future>
#include <atomic>
#include <unordered_set>

namespace Xcurse
{
    class ClockDaemon
    {
    public:
        enum launch_policy
        {
            now,
            deferred
        };

        ClockDaemon();
        ClockDaemon(ClockContainer *container);

        bool attach(ClockContainer *container, ClockDaemon::launch_policy policy = ClockDaemon::launch_policy::deferred);
        bool detach();
        ClockDaemon *replace_with(ClockDaemon *daemon, ClockDaemon::launch_policy policy = ClockDaemon::launch_policy::now);
        void start();
        bool running() const;
        void stop();

    protected:
        static std::unordered_set<ClockContainer *> m_registered_containers;
        ClockContainer *m_attached_container;
        virtual void m_daemon_process();
        std::future<void> m_daemon_future;
        std::atomic_bool m_daemon_status;
    };
}
