table 75639 "VAT Description"
{
    DataClassification = CustomerContent;
    Caption = 'Estonian VAT Description';

    fields
    {
        field(1; "Box No."; Text[30])
        {
            Caption = 'VAT Statement Box No.';
        }
        field(2; Description; Text[250])
        {
            Caption = 'VAT Statement Box Description';
        }
    }

    keys
    {
        key(Key1; "Box No.")
        {
            Clustered = true;
        }
    }

}