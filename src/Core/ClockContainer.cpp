#include "ClockContainer.h"

namespace Xcurse
{
    ClockContainer::ClockContainer(const std::vector<FontAdaptor *> &adaptors, const std::vector<ClockBackground *> &backgrounds) : m_loaded_adaptors(adaptors), m_loaded_backgrounds(backgrounds), m_total_adaptors(adaptors.size()), m_total_backgrounds(backgrounds.size())
    {
        m_weight = 1;
        m_sel_adaptor = 0;
        m_sel_background = 0;
        m_active_adaptor = m_loaded_adaptors[m_sel_adaptor];
        m_active_background = m_loaded_backgrounds[m_sel_background];

        // setup every adaptor
        for (auto &a : m_loaded_adaptors)
            a->parent_ptr = this;

        // setup every background
        for (auto &a : m_loaded_backgrounds)
            a->parent_ptr = this;
    }

    void ClockContainer::set_progress(int i)
    {
        m_active_background->set_percentage(i);
    }

    void ClockContainer::set_text(const std::string &s)
    {
        m_active_adaptor->set_text(s);
    }

    void ClockContainer::change_adaptor(int offset)
    {
        m_sel_adaptor = (m_sel_adaptor + offset + m_total_adaptors) % m_total_adaptors;
        m_active_adaptor = m_loaded_adaptors[m_sel_adaptor];
    }

    void ClockContainer::change_background(int offset)
    {
        m_sel_background = (m_sel_background + offset + m_total_backgrounds) % m_total_backgrounds;
        m_active_background = m_loaded_backgrounds[m_sel_background];
    }

    void ClockContainer::draw()
    {
        m_active_background->draw();
        m_active_adaptor->draw();
    }
}