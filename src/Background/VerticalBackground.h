#include "ClockBackground.h"

namespace Xcurse
{
    class VerticalBackground : public ClockBackground
    {
    public:
        VerticalBackground();

    protected:
        void draw() override;
    };
}