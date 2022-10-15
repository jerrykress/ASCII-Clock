#include "TimerDaemon.h"

namespace Xcurse
{
    TimerDaemon::TimerDaemon() : m_time_remain(0), m_set_time(0), m_timer_status(false) {}

    void TimerDaemon::set_timer(int t)
    {
        m_set_time = t;
        m_time_remain = t;
    }

    void TimerDaemon::start_timer()
    {
        m_timer_status = true;
    }

    void TimerDaemon::pause_timer()
    {
        m_timer_status = false;
    }

    void TimerDaemon::reset_timer()
    {
        m_timer_status = false;
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
        while (m_status)
        {
            // while timer is running
            if (m_timer_status && m_time_remain > -1)
            {
                // set background progress
                m_attached_container->set_progress(m_time_remain * 100 / m_set_time);
                // format time into minute and second, then set text and dec
                m_attached_container->set_text(m_formatter(m_time_remain--));
                // wait for a second
                std::this_thread::sleep_for(std::chrono::milliseconds(1000));
            }
            // if timer has ended then set status to off
            else
            {
                m_timer_status = false;
                m_status = false;
            }
        }
    }
}