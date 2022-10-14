#pragma once

#include "../Xcurse/src/Display/Display.h"

namespace Xcurse
{
    class ClockBackground : public BaseDisplayObject
    {
    public:
        ClockBackground();
        ClockBackground(const ClockBackground &that);
        ClockBackground &operator=(ClockBackground &that);

        void set_percentage(int i);
        void set_direction(Direction d);

    protected:
        void draw() override;

    private:
        int m_percentage;
        Direction m_direction;
        Pixel decorator;

        friend class ClockContainer;
    };
}
