#include "ClockDaemon.h"
#include <valarray>
#include <ctime>

namespace Xcurse
{
    class ChronoDaemon : public ClockDaemon
    {
    public:
        ChronoDaemon();
        ChronoDaemon(ClockContainer *container);

    protected:
        void m_daemon_process() override;
        inline void m_formatter();

        std::time_t m_time;
    };
}