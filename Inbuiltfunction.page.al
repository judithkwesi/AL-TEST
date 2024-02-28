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
            action(Error)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    Error('not set');
                end;
            }

            // StrMenu inbuilt function 
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

            action(OptionDatatype)
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    Color: Option Green,Red,Yellow;
                begin
                    Color := color::Red;
                    Message('The selected color is %1', Color);
                end;
            }

            action(Today)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    TodaysDate: Date;
                begin
                    TodaysDate := Today();

                    Message('TodayD is %1', Date2DMY(TodaysDate, 1));
                    Message('TodayM is %1', Date2DMY(TodaysDate, 2));
                    Message('TodayY is %1', Date2DMY(TodaysDate, 3));

                end;
            }

            action(Date2DWY)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    TodaysDate: Date;
                begin
                    TodaysDate := Today();

                    Message('TodayD is %1', Date2DWY(TodaysDate, 1));
                    Message('TodayM is %1', Date2DWY(TodaysDate, 2));
                    Message('TodayY is %1', Date2DWY(TodaysDate, 3));

                end;
            }

            action(Time)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    OurTime: Time;
                begin
                    OurTime := Time();

                    Message('Time is %1', OurTime);

                end;
            }
            action(Stringfunctions)
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    MyLongInteger: Text[50];
                    MyText: Text[10];

                begin
                    MyLongInteger := 'HelloWorldOfStringFunctions';
                    MyText := 'Judith';
                    Dialog.Message('The length is %1', StrLen(MyText));
                    Message('Max length is %1', MaxStrLen(MyText));

                    Message('The position of s is %1 and length is %2', StrPos(MyLongInteger, 'ns'), StrLen(MyLongInteger));
                    Message('the position of K is %1', MyLongInteger.IndexOf('K'));
                    // CopyStr(string, start, length)
                    Message('%1', CopyStr(MyLongInteger, 6, 5));
                    // Substring(start, end/length)
                    Message('%1', MyLongInteger.Substring(2, 2));
                    Message('Insert string %1', InsStr(MyLongInteger, 'INSERT', 3));

                end;
            }
        }
    }

    // the comfirm inbuilt function
    // trigger OnOpenPage()
    // begin
    //     if Confirm('Are you a Star?') then
    //         Message('Assured')
    //     else
    //         message('why not shine?');
    // end;
}