#include "ClockContainer.h"

namespace Xcurse
{
    ClockContainer::ClockContainer(const FontAdaptor &adaptor, const ClockBackground &background) : m_adaptor(adaptor), m_background(background)
    {
        m_adaptor.m_display_ptr = m_display_ptr;
        m_background.m_display_ptr = m_display_ptr;
    }

    void ClockContainer::draw()
    {
        // TODO: set font location before draw
        return;
    }
}