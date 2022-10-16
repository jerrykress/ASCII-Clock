#include "TimerDaemon.h"

namespace Xcurse
{
    TimerDaemon::TimerDaemon() : m_time_remain(0), m_set_time(0), m_timer_running(false) {}

    TimerDaemon::TimerDaemon(ClockContainer *container) : m_time_remain(0), m_set_time(0), m_timer_running(false)
    {
        attach(container);
    }

    void TimerDaemon::set_timer(int t)
    {
        if (!m_timer_active)
        {
            m_set_time = t;
            m_time_remain = t;
        }
    }

    void TimerDaemon::inc_timer()
    {
        set_timer(m_set_time + 60);
    }

    void TimerDaemon::dec_timer()
    {
        set_timer(std::max(60, m_set_time - 60));
    }

    void TimerDaemon::start_timer()
    {
        m_timer_running = true;
        m_timer_active = true;
    }

    void TimerDaemon::pause_timer()
    {
        m_timer_running = false;
    }

    void TimerDaemon::reset_timer()
    {
        m_timer_running = false;
        m_timer_active = false;
        m_time_remain = m_set_time;
    }

    inline std::string TimerDaemon::m_formatter(int t)
    {
        const int min = t / 60;
        const int sec = t % 60;
        return std::to_string(min) + (sec > 9 ? ":" : ":0") + std::to_string(sec);
    }

    void TimerDaemon::m_daemon_process()
    {
        // while daemon is on
        while (m_daemon_status)
        {
            // format time into minute and second, then set text
            m_attached_container->set_text(m_formatter(m_time_remain));
            // set background progress
            m_attached_container->set_progress(m_time_remain * 100 / m_set_time);

            // while timer is running
            if (m_timer_running && m_time_remain > 0)
            {
                m_time_remain--;
                // wait for a second
                std::this_thread::sleep_for(std::chrono::milliseconds(1000));
            }
            // if timer has ended then set status to off
            else
            {
                m_timer_running = false;
                // wait for resume signal
                std::this_thread::sleep_for(std::chrono::milliseconds(100));
            }
        }
    }
}