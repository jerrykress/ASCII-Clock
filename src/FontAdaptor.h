#pragma once

#include "../Xcurse/src/Display/Display.h"
#include "FontLib.h"
#include <numeric>

namespace Xcurse
{
    class FontAdaptor : public BaseDisplayObject
    {
    public:
        FontAdaptor(FontLibData &font);
        FontAdaptor(const FontAdaptor &that);
        FontAdaptor &operator=(FontAdaptor &that);

        void set_fontlib(FontLibData &f);
        void set_text(const std::string &t);
        void set_padding(int i);
        void set_gap(int i);

    protected:
        void draw() override;

        FontLibData &m_fontlib;
        std::string m_text;
        Size m_text_size;
        int m_padding, m_inner_gap;

        friend class ClockContainer;
    };

}
