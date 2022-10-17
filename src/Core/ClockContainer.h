#pragma once

#include "../../Xcurse/src/Display/Display.h"
#include "../Background/ClockBackground.h"
#include "../Font/FontAdaptor.h"

namespace Xcurse
{
    class ClockContainer : public BaseDisplayObject
    {
    public:
        ClockContainer(const std::vector<FontAdaptor *> &adaptors, const std::vector<ClockBackground *> &backgrounds);

        void set_text(const std::string &s);
        void set_progress(int i);
        void change_adaptor(int offset);
        void change_background(int offset);

    private:
        void draw() override;

        int m_sel_adaptor, m_sel_background;
        const int m_total_adaptors, m_total_backgrounds;

        FontAdaptor *m_active_adaptor;
        ClockBackground *m_active_background;

        std::vector<FontAdaptor *> m_loaded_adaptors;
        std::vector<ClockBackground *> m_loaded_backgrounds;
    };
}