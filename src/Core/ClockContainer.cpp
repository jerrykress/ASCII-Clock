#include "ClockContainer.h"

namespace Xcurse
{
    ClockContainer::ClockContainer(FontAdaptor *adaptor, ClockBackground *background) : m_adaptor(adaptor), m_background(background)
    {
        m_weight = 1;
        m_adaptor->parent_ptr = this;
        m_background->parent_ptr = this;
    }

    void ClockContainer::set_progress(int i)
    {
        m_background->set_percentage(i);
    }

    void ClockContainer::set_text(const std::string &s)
    {
        m_adaptor->set_text(s);
    }

    void ClockContainer::draw()
    {
        m_background->draw();
        m_adaptor->draw();
    }
}