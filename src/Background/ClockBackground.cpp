#include "ClockBackground.h"

namespace Xcurse
{
    ClockBackground::ClockBackground() : m_percentage(100), m_direction(Vertical), decorator(Pixel(':'))
    {
        m_display_ptr = Display::get_display();
    }

    ClockBackground::ClockBackground(const ClockBackground &that)
    {
        m_percentage = that.m_percentage;
        m_direction = that.m_direction;
        decorator = that.decorator;
        m_display_ptr = that.m_display_ptr;
    }

    ClockBackground &ClockBackground::operator=(ClockBackground &that)
    {
        if (this != &that)
        {
            m_percentage = that.m_percentage;
            m_direction = that.m_direction;
            decorator = that.decorator;
            m_display_ptr = that.m_display_ptr;
        }
        return *this;
    }

    void ClockBackground::set_percentage(int i)
    {
        m_percentage = i;
    }

    void ClockBackground::set_decorator_symbol(wchar_t c)
    {
        decorator.data = c;
    }

    void ClockBackground::set_decorator_style(const Stylable &s)
    {
        decorator.background = s.background;
        decorator.foreground = s.foreground;
        decorator.bold = s.bold;
        decorator.underline = s.underline;
        decorator.reversed = s.reversed;
    }

    void ClockBackground::draw()
    {
        return;
    }
}