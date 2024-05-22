tableextension 75640 "VAT Statement Report Line" extends "VAT Statement Report Line"
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