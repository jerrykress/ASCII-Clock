#include "ClockContainer.h"

namespace Xcurse
{
    ClockContainer::ClockContainer(const FontAdaptor &adaptor, const ClockBackground &background) : m_adaptor(adaptor), m_background(background)
    {
        m_weight = 1;
    }

    void ClockContainer::set_progress(int i)
    {
        m_background.set_percentage(i);
    }

    void ClockContainer::draw()
    {
        // TODO: set font location before draw
        m_background.m_loc = m_loc;
        m_background.m_size = m_size;
        m_background.draw();

        m_adaptor.m_loc = m_loc;
        m_adaptor.set_text("100");
        m_adaptor.draw();
        return;
    }
}