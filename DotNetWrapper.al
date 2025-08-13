codeunit 50103 DotNetWrappers
{
    trigger OnRun()
    begin
        TextDemo();
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
}