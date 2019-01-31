page 50110 "MyPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyTable;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(MyField; MyField)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ShowTrue)
            {
                ApplicationArea = All;
                Caption = 'Show True result';
                trigger OnAction()
                var
                    MyLibrary: Codeunit MyLibrary;
                begin
                    Message('Result is %1', MyLibrary.MyProcedureTrue());
                end;
            }
            action(ShowFalse)
            {
                ApplicationArea = All;
                Caption = 'Show True result';
                trigger OnAction()
                var
                    MyLibrary: Codeunit MyLibrary;
                begin
                    Message('Result is %1', MyLibrary.MyProcedureTrue());
                end;
            }
        }
    }
}