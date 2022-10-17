#pragma once

#include "../../Xcurse/src/Display/Display.h"
#include "../Background/ClockBackground.h"
#include "../Font/FontAdaptor.h"

namespace Xcurse
{
    class ClockContainer : public BaseDisplayObject
    {
    public:
        ClockContainer(FontAdaptor *adaptor, ClockBackground *background);

        void set_text(const std::string &s);
        void set_progress(int i);

    private:
        void draw() override;

        FontAdaptor *m_adaptor;
        ClockBackground *m_background;
    };
}