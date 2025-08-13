page 50101 BookList
{
    PageType = List;
    SourceTable = Book;
    CardPageId = BookCard;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                }
                field(HardCover;Rec.HardCover)
                {
                    ApplicationArea = All;
                }
                field(PageCount;Rec.PageCount)
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
            action(RunWrapper)
            {
                Caption = 'Run .NET Wrapper';
                ApplicationArea = All;
                RunObject = codeunit DotNetWrappers;
            }
        }
    }
}
