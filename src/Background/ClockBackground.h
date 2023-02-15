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

        void set_percentage(int i);                  // set percentage of the background
        void set_decorator_symbol(wchar_t c);        // change the decorator used for the background
        void set_decorator_style(const Stylable &s); // set the style using a Style object for the background

    protected:
        void draw() override;

        int m_percentage;
        Direction m_direction;
        Pixel decorator;

        friend class ClockContainer;
    };
}
