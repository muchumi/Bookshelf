codeunit 50101 InstallCode
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertBook('0001', 'The River and The Source', 'Margaret A. Ogola', 295);
        InsertBook('0002', 'The River Between', 'Ngugi Wa Thiongo', 154);
        InsertBook('0003', 'An Enemy of The People','Henrik Ibsen', 80);
        InsertBook('0004', 'Utengano', 'Said Ahmed Mohamed', 195);
    end;

    local procedure InsertBook(BookNo: Code[20]; BookTitle: Text; BookAuthor: Text; BookPageCount: Integer)
    var
        Book: Record Book;
    begin
        if Book.Get(BookNo) then
            exit;

        Book."No." := BookNo;
        Book.Author := BookAuthor;
        Book.HardCover := true;
        Book.Title := BookTitle;
        Book."PageCount" := BookPageCount;

        Book.Insert();
       
    end;
}