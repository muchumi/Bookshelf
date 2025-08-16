codeunit 50103 DotNetWrappers
{
    trigger OnRun()
    begin
        TextDemo();
        ListDemo();
    end;

    procedure TextDemo()
    var
        myText: Text;
        myTextBuilder: TextBuilder;
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
        CustomerNames: List of [Text];
    begin
        CustomerNames.Add('Christopher');
        CustomerNames.Add('Maurice');
        CustomerNames.Add('Anne');

        if CustomerNames.Contains('Anne') then
            Message('We have Anne on the list');

        Message('The name at index 1:' + CustomerNames.Get(1));
        PrintCustomerNames(CustomerNames);
    end;

    procedure PrintCustomerNames(CustomerNames: List of [Text])
    var
        CustomerName: Text;
    begin
        foreach CustomerName in CustomerNames do begin
            Message(CustomerName);
        end;
    end;

    procedure CountCharactersInCustomerName(CustomerName: Text)
    var
        LetterCounter: Dictionary of [char, Integer];
        i: Integer;
        c: Integer;
    begin
        Clear(LetterCounter);
        for i := 1 to StrLen(CustomerName) do begin
            if LetterCounter.Get(CustomerName[i], c) then
                LetterCounter.Set(CustomerName[i], c + 1)
            else
                LetterCounter.Set(CustomerName[i], 1);
        end;
        if LetterCounter.Get('l', c) then
            Message('The name %1 has the letter l %2 times', CustomerName, Format(c));
    end;
}

