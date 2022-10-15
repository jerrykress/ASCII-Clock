#include "ClockDaemon.h"

namespace Xcurse
{
    class TimerDaemon : public ClockDaemon
    {
    public:
        TimerDaemon();
        TimerDaemon(ClockContainer *container);

        void set_timer(int t);
        void start_timer();
        void pause_timer();
        void reset_timer();

    protected:
        void m_daemon_process() override;
        inline std::string m_formatter(int t);

        int m_set_time;
        int m_time_remain;

        std::atomic_bool m_timer_status;
    };
}