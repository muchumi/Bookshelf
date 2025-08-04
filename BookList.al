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
                field("No."; 'No.')
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
            }
        }
    }
}
