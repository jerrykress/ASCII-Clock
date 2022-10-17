#include "VerticalBackground.h"

namespace Xcurse
{
    VerticalBackground::VerticalBackground() {}

    void VerticalBackground::draw()
    {
        // maximise self to fill parent
        m_loc = parent_ptr->get_loc();
        m_size = parent_ptr->get_size();

        const int start_y = m_size.height * (100 - m_percentage) / 100;

        for (int y = start_y; y < m_size.height; y++)
        {
            for (int x = 0; x < m_size.width; x++)
            {
                m_display_ptr->set_pixel(this, x, y, decorator);
            }
        }
    }
}