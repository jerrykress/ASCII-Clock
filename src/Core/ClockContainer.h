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

        void set_text(const std::string &s); // set the text to be displayed inside this clock container
        void set_progress(int i);            // set progress of background
        void change_adaptor(int offset);     // set the active adaptor
        void change_background(int offset);  // set the active background

    private:
        void draw() override;

        int m_sel_adaptor, m_sel_background;             // the selected adaptor and background module
        const int m_total_adaptors, m_total_backgrounds; // the total number of adaptors and backgrounds

        FontAdaptor *m_active_adaptor;        // ptr of the active adaptor
        ClockBackground *m_active_background; // ptr of the active background

        std::vector<FontAdaptor *> m_loaded_adaptors;        // vector of all loaded adaptors
        std::vector<ClockBackground *> m_loaded_backgrounds; // vector of all loaded backgrounds
    };
}