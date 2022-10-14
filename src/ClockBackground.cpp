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

    void ClockBackground::set_direction(Direction d)
    {
        m_direction = d;
    }

    void ClockBackground::draw()
    {
        const int start_y = m_size.height * (100 - m_percentage) / 100;

        for (int y = 0; y < m_size.height; y++)
        {
            if (y >= start_y)
            {
                for (int x = 0; x < m_size.width; x++)
                {
                    m_display_ptr->set_pixel(this, x, y, decorator);
                }
            }
        }
    }
}