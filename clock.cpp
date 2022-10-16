#include "src/ClockContainer.h"
#include "src/TimerDaemon.h"
#include "src/ChronoDaemon.h"
#include "src/FontLib.h"

using namespace Xcurse;
using namespace std::literals::chrono_literals;

int main(int argc, char **argv)
{
    if (argc < 2)
    {
        return 0;
    }

    Display &d = *Display::get_display();
    d.init();
    d.set_io_mouse(false);
    d.set_io_kb(true);
    d.set_min_screen_size(Size{50, 20});
    d.enable_alt_screen(true);
    d.set_refresh_interval(200);

    ClockContainer *container = new ClockContainer(FontAdaptor(digit_bold), ClockBackground());
    // TimerDaemon *daemon = new TimerDaemon(container);
    // daemon->set_timer(std::stoi(argv[1]));
    // daemon->start();

    ChronoDaemon *daemon = new ChronoDaemon(container);
    daemon->start();

    d.add_obj("root", "clock", container);
    d.map_key_action('x', [&]()
                     { daemon->stop(); });
    // d.map_key_action('s', [&]()
    //                  { daemon->start_timer(); });
    // d.map_key_action('p', [&]()
    //                  { daemon->pause_timer(); });
    // d.map_key_action('r', [&]()
    //                  { daemon->reset_timer(); });

    d.power_on();

    while (d.has_power() && daemon->running())
    {
        std::this_thread::sleep_for(200ms);
    }

    d.power_off();

    return 0;
}
