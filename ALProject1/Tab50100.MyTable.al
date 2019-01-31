table 50100 "MyTable"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; MyKey; Integer)
        {
            Caption = 'MyKey';
            DataClassification = CustomerContent;
        }
        field(2; MyField; Integer)
        {
            Caption = 'MyField';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; MyKey)
        {
            Clustered = true;
        }
    }

}