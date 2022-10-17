#pragma once

#include "../../Xcurse/src/Display/Display.h"

namespace Xcurse
{
    class ClockBackground : public BaseDisplayObject
    {
    public:
        ClockBackground();
        ClockBackground(const ClockBackground &that);
        ClockBackground &operator=(ClockBackground &that);

        void set_percentage(int i);
        void set_decorator_symbol(wchar_t c);
        void set_decorator_style(const Stylable &s);

    protected:
        void draw() override;

        int m_percentage;
        Direction m_direction;
        Pixel decorator;

        friend class ClockContainer;
    };
}
