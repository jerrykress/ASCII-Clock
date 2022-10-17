#pragma once

#include "ClockBackground.h"

namespace Xcurse
{
    class HMiddleOutBackground : public ClockBackground
    {
    public:
        HMiddleOutBackground();

    protected:
        void draw() override;
    };
}