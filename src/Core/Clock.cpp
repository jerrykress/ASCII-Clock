#include "ClockContainer.h"
#include "../include/daemon.h"
#include "../include/background.h"
#include "../include/font.h"
#include "../../Xcurse/src/Xcurse.h"

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

    // Keybind Text
    const std::vector<std::wstring> key_bindings{
        L"   KEY BINDINGS   ",
        L"                  ",
        L"C            Clock",
        L"T            Timer",
        L"S      Start Timer",
        L"P      Pause Timer",
        L"R      Reset Timer",
        L"<      -1min Timer",
        L">      +1min Timer",
        L";       Prev style",
        L".       Next style",
        L"[        Prev font",
        L"]        Next font",
        L"H     Toggle Hints",
        L"?      Toggle Help"};

    // Clock Container
    ClockContainer *container = new ClockContainer(
        std::vector<FontAdaptor *>{
            new FontAdaptor(font_3d_diagonal),
            new FontAdaptor(font_varsity)},
        std::vector<ClockBackground *>{
            new VerticalBackground(),
            new HorizontalBackground(),
            new HMiddleOutBackground()});

    // Clock Daemons
    TimerDaemon *timer_daemon = new TimerDaemon();
    timer_daemon->set_timer(argc > 1 ? std::stoi(argv[1]) * 60 : 60);
    ChronoDaemon *chrono_daemon = new ChronoDaemon();
    ClockDaemon *active_daemon = chrono_daemon;

    std::cout << "daemon setup done\n ";
    // Text Modules
    TextField *title_field = new TextField("Clock");
    TextField *hints_field = new TextField("[C/T]Mode [X]Quit [?]Help");
    MultiTextField *keybind_page = new MultiTextField(key_bindings, 1, ALIGN_CENTER);
    keybind_page->set_visible(false);

    /*
        Build interface
    */
    d.add_obj("root", "title", title_field);
    d.add_obj("root", "clock", container);
    d.add_obj("root", "keybinds", keybind_page);
    d.add_obj("root", "hints", hints_field);

    std::cout << "interface setup done\n ";
    /*
        Add keymaps
    */
    d.map_key_action('x', [&]()
                     { prog_exit = true; });
    d.map_key_action('h', [&]()
                     { hints_field->set_visible(); });
    d.map_key_action('?', [&]()
                     { keybind_page->set_visible(); container->set_visible(); });
    d.map_key_action(';', [&]()
                     { container->change_background(-1); });
    d.map_key_action('\'', [&]()
                     { container->change_background(1); });
    d.map_key_action('[', [&]()
                     { container->change_adaptor(-1); });
    d.map_key_action(']', [&]()
                     { container->change_adaptor(1); });
    d.map_key_action('s', [&]()
                     { if(active_daemon == timer_daemon) timer_daemon->start_timer(); });
    d.map_key_action('p', [&]()
                     { if(active_daemon == timer_daemon) timer_daemon->pause_timer(); });
    d.map_key_action('r', [&]()
                     { if(active_daemon == timer_daemon) timer_daemon->reset_timer(); });
    d.map_key_action(',', [&]()
                     { if(active_daemon == timer_daemon) timer_daemon->change_timer(-60); });
    d.map_key_action('.', [&]()
                     { if(active_daemon == timer_daemon) timer_daemon->change_timer(60); });
    d.map_key_action('c', [&]()
                     { active_daemon = active_daemon->replace_with(chrono_daemon); title_field->set_data(L"Clock"); });
    d.map_key_action('t', [&]()
                     { active_daemon = active_daemon->replace_with(timer_daemon); title_field->set_data(L"Timer"); });

    /*
        Program runtime
    */
    d.power_on();
    active_daemon->attach(container, ClockDaemon::launch_policy::now);

    // idle work
    while (!prog_exit)
    {
        std::this_thread::sleep_for(200ms);
    }

    active_daemon->stop();
    d.power_off();

    return 0;
}
