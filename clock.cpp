#include "src/ClockContainer.h"
#include "src/FontLib.h"

using namespace Xcurse;
using namespace std::literals::chrono_literals;

int main()
{
    Display &d = *Display::get_display();
    d.init();
    d.set_io_mouse(false);
    d.set_io_kb(false);
    d.set_min_screen_size(Size{50, 20});
    d.enable_alt_screen(true);
    d.set_refresh_interval(200);

    ClockContainer *container = new ClockContainer(FontAdaptor(digit_bold), ClockBackground());
    int progress = 100;

    d.add_obj("root", "clock", container);

    d.power_on();

    while (d.has_power())
    {
        container->set_progress(progress -= 10);
        std::this_thread::sleep_for(1s);
    }

    d.power_off();

    return 0;
}
