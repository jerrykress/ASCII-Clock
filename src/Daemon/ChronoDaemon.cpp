#include "ChronoDaemon.h"

namespace Xcurse
{
    ChronoDaemon::ChronoDaemon() {}

    ChronoDaemon::ChronoDaemon(ClockContainer *container)
    {
        attach(container);
    }

    void ChronoDaemon::m_daemon_process()
    {
        while (m_daemon_status)
        {
            m_time = std::time(nullptr);
            char buf[10];

            if (strftime(buf, sizeof buf, "%H:%M:%S\n", std::localtime(&m_time)))
            {
                const std::string buf_str = buf;
                m_attached_container->set_text(buf_str.substr(0, 5));
                m_attached_container->set_progress(std::stoi(buf_str.substr(6, 2)) * 100 / 60);
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(200));
        }
    }
}