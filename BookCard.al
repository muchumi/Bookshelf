page 50100 BookCard
{
    PageType = Card;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No"; 'No.')
                {
                    ApplicationArea = All;
                }
                field("Title"; Rec.Title)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field("Author"; Rec.Author)
                {
                    ApplicationArea = All;
                }
                field("HardCover"; Rec.HardCover)
                {
                    ApplicationArea = All;
                }
                field("PageCount"; Rec.PageCount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}