table 75640 "VAT KMD Appendix"
{
    DataClassification = CustomerContent;
    Caption = 'KMD Appendix';
    fields
    {
        field(1; "VAT Entry No."; Integer)
        {
            Caption = 'VAT Entry No.';
        }
        field(2; "VAT Return No."; Code[20])
        {
            Caption = 'VAT Return No.';
        }
        field(3; "VAT Type"; Enum "General Posting Type")
        {
            Caption = 'General Posting Type';
        }
        field(4; "Partner Reg. No."; Code[20])
        {
            Caption = 'Partner Registry No.';
        }
        field(5; "Partner Name"; Text[100])
        {
            Caption = 'Partner Name';
        }
        field(6; "Invoice No."; Code[20])
        {
            Caption = 'Invoice No.';
        }
        field(7; "Invoice Date"; Date)
        {
            Caption = 'Invoice Date';
        }
        field(8; "Invoice Sum Excl. VAT"; Decimal)
        {
            Caption = 'Invoice Sum Excluding VAT';
        }
        field(9; "Tax Rate"; Decimal)
        {
            Caption = 'Tax Rate';
        }
        field(10; "Sum declared on Main"; Decimal)
        {
            Caption = 'Sum declared on lines 1, 11, 2 or 21 of VAT return during this period of taxation.';
        }
        field(11; "Exception Code"; Code[20])
        {
            Caption = 'Exception code (cell 10 of part A of VAT INF return)';
        }
        field(12; "Invoice Sum with VAT"; Decimal)
        {
            Caption = 'Invoice SUM with VAT';
        }
        field(13; "VAT Sum"; Decimal)
        {
            Caption = 'VAT Sum';
        }
        field(14; "VAT In Period"; Decimal)
        {
            Caption = 'Input VAT declared on line 5 of VAT return during this period of taxation. (cell 8 of part B of VAT INF return)';
        }
    }

    keys
    {
        key(Pk1; "VAT Entry No.", "VAT Return No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}