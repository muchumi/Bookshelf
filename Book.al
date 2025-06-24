table 50100 Book
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;

        }
        field(2; Title; Text[50])
        {
            Caption = 'Title';
            DataClassification = ToBeClassified;

        }
        field(3; Author; Text[50])
        {
            Caption = 'Author';
            DataClassification = ToBeClassified;

        }
        field(4; HardCover; Boolean)
        {
            Caption = 'HardCover';
            DataClassification = ToBeClassified;

        }
        field(5; "PageCount"; Integer)
        {
            Caption = 'PageCount';
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
}