#include "HMiddleOutBackground.h"

namespace Xcurse
{
    HMiddleOutBackground::HMiddleOutBackground() {}

    void HMiddleOutBackground::draw()
    {
        // maximise self to fill parent
        m_loc = parent_ptr->get_loc();
        m_size = parent_ptr->get_size();

        const int end_x = m_size.width * m_percentage / 200;

        for (int x = 0; x < end_x; x++)
        {
            for (int y = 0; y < m_size.height; y++)
            {
                m_display_ptr->set_pixel(this, x, y, decorator);
                m_display_ptr->set_pixel(this, m_size.width - x - 1, y, decorator);
            }
        }
    }
}