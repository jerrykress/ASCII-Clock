#pragma once

#include "ClockBackground.h"

namespace Xcurse
{
    class HorizontalBackground : public ClockBackground
    {
    public:
        HorizontalBackground();

    protected:
        void draw() override;
    };
}