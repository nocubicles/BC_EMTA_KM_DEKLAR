pageextension 75639 "VAT Statements" extends "VAT Statement"
{
    layout
    {
        addafter("Box No.")
        {
            field("VAT Box Description"; Rec."VAT Box Description")
            {
                ApplicationArea = All;
                trigger OnAfterLookup(Selected: RecordRef)
                begin
                    Rec.Validate("Box No.", Selected.Field(1).Value);
                end;
            }
        }
    }
}