#include "../Xcurse/src/Display/Display.h"
#include "ClockBackground.h"
#include "FontAdaptor.h"

namespace Xcurse
{
    class ClockContainer : public BaseDisplayObject
    {
    public:
        ClockContainer(const FontAdaptor &adaptor, const ClockBackground &background);

    private:
        void draw() override;

        FontAdaptor m_adaptor;
        ClockBackground m_background;
    };
}