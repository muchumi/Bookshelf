page 50101 BookList
{
    PageType = List;
    SourceTable = Book;
    CardPageId = BookCard;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; 'No.')
                {
                    ApplicationArea = All;
                }
                field(Title; 'Title')
                {
                    ApplicationArea = All;
                }
                field(Author; 'Author')
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
