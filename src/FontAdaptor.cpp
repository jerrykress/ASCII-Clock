#include "FontAdaptor.h"

namespace Xcurse
{
    FontAdaptor::FontAdaptor(FontLibData &font) : m_fontlib(font)
    {
        m_size = Size{1, 1, true};
    }

    FontAdaptor::FontAdaptor(const FontAdaptor &that) : m_fontlib(that.m_fontlib)
    {
        m_text = that.m_text;
        m_text_size = that.m_text_size;
        m_display_ptr = nullptr;
    }

    FontAdaptor &FontAdaptor::operator=(FontAdaptor &that)
    {
        if (this != &that)
        {
            m_fontlib = that.m_fontlib;
            m_text = that.m_text;
            m_text_size = that.m_text_size;
            m_display_ptr = that.m_display_ptr;
            that.m_display_ptr = nullptr;
        }
        return *this;
    }

    void FontAdaptor::set_text(const std::string &t)
    {
        m_text = t;
        m_text_size.height = std::accumulate(t.begin(), t.end(), 0, [this](int a, char c)
                                             { return a = std::max(a, (int)this->m_fontlib[c].size()); });
        m_text_size.width = std::accumulate(t.begin(), t.end(), 0, [this](int a, char c)
                                            { return a += this->m_fontlib[c].front().size(); });

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
        for (int y = m_padding; y < m_padding + m_text_size.height; y++)
        {
            int x = m_padding;

            for (int i = 0; i < m_text.size(); i++)
            {
                // TODO:
                x += m_inner_gap;
            }
        }
        return;
    }
}