#include "src/ClockContainer.h"
#include "src/TimerDaemon.h"
#include "src/FontLib.h"

using namespace Xcurse;
using namespace std::literals::chrono_literals;

int main(int argc, char **argv)
{
    Display &d = *Display::get_display();
    d.init();
    d.set_io_mouse(false);
    d.set_io_kb(true);
    d.set_min_screen_size(Size{50, 20});
    d.enable_alt_screen(true);
    d.set_refresh_interval(200);

    ClockContainer *container = new ClockContainer(FontAdaptor(digit_bold), ClockBackground());
    TimerDaemon *daemon = new TimerDaemon(container);

    d.add_obj("root", "clock", container);
    d.map_key_action('x', [&]()
                     { daemon->stop(); });
    d.map_key_action('s', [&]()
                     { daemon->start_timer(); });
    d.map_key_action('p', [&]()
                     { daemon->pause_timer(); });

    d.power_on();
    daemon->set_timer(15);
    daemon->start();

    while (d.has_power() && daemon->running())
    {
        std::this_thread::sleep_for(200ms);
    }

    d.power_off();

    return 0;
}
