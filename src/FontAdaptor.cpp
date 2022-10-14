#include "FontAdaptor.h"

namespace Xcurse
{
    FontAdaptor::FontAdaptor(FontLibData &font) : m_fontlib(font)
    {
        // manual setup required because it's not managed by display
        m_display_ptr = Display::get_display();
        // set fixed size attribute to true
        m_size = Size{1, 1, true};
        // setup other properties
        m_text = "";
        m_text_size = Size{0, 0};
        m_padding = 0;
        m_inner_gap = 0;
    }

    FontAdaptor::FontAdaptor(const FontAdaptor &that) : m_fontlib(that.m_fontlib)
    {
        m_display_ptr = that.m_display_ptr;
        m_fontlib = that.m_fontlib;
        m_text = that.m_text;
        m_text_size = that.m_text_size;
        m_padding = that.m_padding;
        m_inner_gap = that.m_inner_gap;
    }

    FontAdaptor &FontAdaptor::operator=(FontAdaptor &that)
    {
        if (this != &that)
        {
            m_display_ptr = that.m_display_ptr;
            m_fontlib = that.m_fontlib;
            m_text = that.m_text;
            m_text_size = that.m_text_size;
            m_padding = that.m_padding;
            m_inner_gap = that.m_inner_gap;
        }
        return *this;
    }

    void FontAdaptor::set_text(const std::string &t)
    {
        m_text = t;
        m_text_size.height = std::accumulate(t.begin(), t.end(), 0, [this](int a, char c)
                                             { return std::max(a, static_cast<int>(this->m_fontlib[c].size())); });
        m_text_size.width = std::accumulate(t.begin(), t.end(), 0, [this](int a, char c)
                                            { return a + this->m_fontlib[c].front().size(); });

        m_size.height = m_text_size.height + 2 * m_padding;
        m_size.width = m_text_size.width +
                       2 * m_padding + (m_text.size() - 1) * m_inner_gap;
    }

    void FontAdaptor::set_padding(int i)
    {
        m_padding = i;
    }

    void FontAdaptor::set_gap(int i)
    {
        m_inner_gap = i;
    }

    void FontAdaptor::draw()
    {
        if (m_text.empty())
            return;

        // update loc
        Position parent_loc = parent_ptr->get_loc();
        Size parent_size = parent_ptr->get_size();
        m_loc.x = parent_loc.x + parent_size.width / 2 - m_size.width / 2;
        m_loc.y = parent_loc.y + parent_size.height / 2 - m_size.height / 2;

        for (int y = 0; y < m_text_size.height; y++)
        {
            int x = 0;

            for (int i = 0; i < m_text.size(); i++)
            {
                m_display_ptr->set_pixels(this, x, y, to_wstring(m_fontlib[m_text[i]][y]));
                x += (m_fontlib[m_text[i]].front().size() + m_inner_gap);
            }
        }
    }
}