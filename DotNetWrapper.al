codeunit 50103 DotNetWrappers
{
    trigger OnRun()
    begin
        TextDemo();
        ListDemo();
    end;

    procedure TextDemo()
    var
        myText : Text;
        myTextBuilder : TextBuilder;
    begin
       myTextBuilder.AppendLine('We can append lines');
       myTextBuilder.Append('...or just add characters');
       myTextBuilder.AppendLine('to the current line');
       myTextBuilder.AppendLine('some text');
       myTextBuilder.Replace('some text', 'replaced by another text');
       myText := myTextBuilder.ToText();

       myText := myText.ToUpper();
       Message(myText);
    end;

    procedure ListDemo()
    var
        CustomerNames : List of [Text];
    begin
        CustomerNames.Add('Christopher');
        CustomerNames.Add('Maurice');
        CustomerNames.Add('Anne');

        if CustomerNames.Contains('Anne') then
            Message('We have Anne on the list');

        Message('The name at index 1:' + CustomerNames.Get(1));
    end;

    procedure PrintCustomerNames(CustomerNames : List of [Text])
    var
        CustomerName: Text;
    begin
        foreach CustomerName in CustomerNames do
        begin
            Message(CustomerName);
        end;
    end;
}