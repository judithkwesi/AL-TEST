page 50104 Inbuiltfunction
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    // Caption = Buifunctions;
    // SourceTable = TableName;

    layout
    {
        area(Content)
        {
            /*      repeater(GroupName)
                 {
                     field(Name; NameSource)
                     {
                         ApplicationArea = All;

                     }
                 } */
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    Error('not set');
                end;
            }

            action(StrMenu)
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    phones: Text[60];
                    selection: Integer;
                begin
                    phones := 'samsung,huawei,techno,redmi,nokia';
                    selection := StrMenu(phones, 1, 'which phone do you have');
                    Message('you own %1', selection);
                end;
            }
        }
    }
    /*   trigger OnOpenPage()
      begin
          if Confirm('Do you like mi') then
              Message('waaow')
          else
              message('yiyii');
      end; */
}