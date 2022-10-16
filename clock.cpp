#include "src/ClockContainer.h"
#include "src/TimerDaemon.h"
#include "src/ChronoDaemon.h"
#include "src/FontLib.h"

using namespace Xcurse;
using namespace std::literals::chrono_literals;

int main(int argc, char **argv)
{
    static bool prog_exit = false;

    Display &d = *Display::get_display();
    d.init();
    d.set_io_mouse(false);
    d.set_io_kb(true);
    d.set_min_screen_size(Size{50, 20});
    d.enable_alt_screen(true);
    d.set_refresh_interval(200);

    ClockContainer *container = new ClockContainer(FontAdaptor(digit_bold), ClockBackground());

    TimerDaemon *timer_daemon = new TimerDaemon();
    timer_daemon->set_timer(60);

    ChronoDaemon *chrono_daemon = new ChronoDaemon();

    ClockDaemon *sel_daemon = chrono_daemon;

    d.add_obj("root", "clock", container);
    d.map_key_action('x', [&]()
                     { prog_exit = true; });
    d.map_key_action('s', [&]()
                     { if(sel_daemon==timer_daemon) timer_daemon->start_timer(); });
    d.map_key_action('p', [&]()
                     { if(sel_daemon==timer_daemon) timer_daemon->pause_timer(); });
    d.map_key_action('r', [&]()
                     { if(sel_daemon==timer_daemon) timer_daemon->reset_timer(); });
    d.map_key_action(',', [&]()
                     { if(sel_daemon==timer_daemon) timer_daemon->dec_timer(); });
    d.map_key_action('.', [&]()
                     { if(sel_daemon==timer_daemon) timer_daemon->inc_timer(); });
    d.map_key_action('c', [&]()
                     { sel_daemon = sel_daemon->replace_with(chrono_daemon); });
    d.map_key_action('t', [&]()
                     { sel_daemon = sel_daemon->replace_with(timer_daemon); });

    d.power_on();
    sel_daemon->attach(container, ClockDaemon::launch_policy::now);

    while (!prog_exit)
    {
        // idle work
        std::this_thread::sleep_for(200ms);
    }

    sel_daemon->stop();
    d.power_off();

    return 0;
}
