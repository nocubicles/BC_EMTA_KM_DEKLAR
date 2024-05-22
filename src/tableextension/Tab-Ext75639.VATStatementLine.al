tableextension 75639 "VAT Statement Line" extends "VAT Statement Line"
{
    fields
    {
        field(75639; "VAT Box Description"; Text[250])
        {
            DataClassification = CustomerContent;
            TableRelation = "VAT Description".Description;
            ValidateTableRelation = false;
            Caption = 'Estonian VAT Box Description';
        }
    }
}