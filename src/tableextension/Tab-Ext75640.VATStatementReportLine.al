tableextension 75640 "VAT Statement Report Line" extends "VAT Statement Report Line"
{
    fields
    {
        field(75639; "VAT Box Description"; Text[250])
        {
            Caption = 'Estonian VAT Box Description';
            FieldClass = FlowField;
            CalcFormula = lookup("VAT Description".Description where("Box No." = field("Box No.")));
            Editable = false;
        }
    }
}