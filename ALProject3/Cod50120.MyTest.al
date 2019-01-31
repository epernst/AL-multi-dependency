codeunit 50120 "MyTest"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure "Can I open a page using the table from the library app"();
    var
        MyTablePage: TestPage MyPage;
    begin
        MyTablePage.OpenNew();
    end;

    [Test]
    procedure "Can I change create a new record"();
    var
        MyTablePage: TestPage MyPage;
    begin
        MyTablePage.OpenNew();
        MyTablePage.New();
    end;

    [Test]
    [HandlerFunctions('MyMessageHandler')]
    procedure "Can I get a true result from the library app"();
    var
        MyTablePage: TestPage MyPage;
    begin
        MyTablePage.OpenNew();
        MyTablePage.ShowTrue.Invoke();
    end;

    [MessageHandler]
    procedure MyMessageHandler(Msg: Text[1024]);
    var
        Assert: Codeunit Assert;
        ExpectedMsg: Text[1024];
    begin
        ExpectedMsg := StrSubstNo('Result is %1', true);
        Assert.AreEqual(ExpectedMsg, Msg, 'Expected true');
    end;
}