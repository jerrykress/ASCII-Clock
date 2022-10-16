#include "ClockContainer.h"
#include "../Daemon/TimerDaemon.h"
#include "../Daemon/ChronoDaemon.h"
#include "../Font/FontLib.h"
#include "../../Xcurse/src/Widgets/TextField.h"

using namespace Xcurse;
using namespace std::literals::chrono_literals;

int main(int argc, char **argv)
{
    // signal of program exit
    static bool prog_exit = false;

    /*
        Setup Xcurse
    */
    Display &d = *Display::get_display();
    d.init();
    d.set_io_mouse(false);
    d.set_io_kb(true);
    d.set_min_screen_size(Size{50, 20});
    d.enable_alt_screen(true);
    d.set_refresh_interval(200);

    /*
        Setup Components
    */
    ClockContainer *container = new ClockContainer(FontAdaptor(digit_bold), ClockBackground());
    TimerDaemon *timer_daemon = new TimerDaemon();
    timer_daemon->set_timer(argc > 1 ? std::stoi(argv[1]) * 60 : 60);
    ChronoDaemon *chrono_daemon = new ChronoDaemon();
    ClockDaemon *sel_daemon = chrono_daemon;
    TextField *titlebar = new TextField("title", "Clock");
    TextField *bottombar = new TextField("tips", "[C]Clock [T]Timer [S]Start [P]Pause [R]Reset [,]-1min [.]+1min [X]Quit [H]Hide");

    /*
        Build interface
    */
    d.add_obj("root", "title", titlebar);
    d.add_obj("root", "clock", container);
    d.add_obj("root", "tips", bottombar);

    /*
        Add keymaps
    */
    d.map_key_action('x', [&]()
                     { prog_exit = true; });
    d.map_key_action('h', [&]()
                     { bottombar->set_visible(); });
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
                     { sel_daemon = sel_daemon->replace_with(chrono_daemon); titlebar->set_data(L"Clock"); });
    d.map_key_action('t', [&]()
                     { sel_daemon = sel_daemon->replace_with(timer_daemon); titlebar->set_data(L"Timer"); });

    /*
        Program runtime
    */
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
