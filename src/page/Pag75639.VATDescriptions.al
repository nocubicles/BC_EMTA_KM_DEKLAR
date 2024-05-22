page 75639 "VAT Descriptions"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "VAT Description";
    Editable = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    InsertAllowed = false;
    Caption = 'Estonian VAT Descriptions';

    layout
    {
        area(Content)
        {
            repeater(VATBoxDescriptions)
            {
                field("Box No."; Rec."Box No.")
                {
                    Caption = 'VAT Statement Box No.';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'VAT Statement Box Description';
                }
            }
        }
    }
}