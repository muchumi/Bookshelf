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
                field("Title"; 'Title')
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field("Author"; 'Author')
                {
                    ApplicationArea = All;
                }
                field("HardCover"; 'HardCover')
                {
                    ApplicationArea = All;
                }
                field("PageCount"; 'PageCount')
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}