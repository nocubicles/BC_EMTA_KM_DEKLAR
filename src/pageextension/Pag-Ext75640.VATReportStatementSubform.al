pageextension 75640 "VAT Report Statement Subform" extends "VAT Report Statement Subform"
{
    layout
    {
        addafter("Box No.")
        {
            field("VAT Box Description"; Rec."VAT Box Description")
            {
                ApplicationArea = All;
            }
        }
    }
}