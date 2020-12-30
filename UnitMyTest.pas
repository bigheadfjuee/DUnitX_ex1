unit UnitMyTest;

interface

uses
  DUnitX.TestFramework, Unit1; // 把要測試的檔案加入

type
  [TestFixture]
  TMyTestObject = class(TObject)
  strict private
    aForm: TForm1; // 自行加入 class
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    // 一個 [Test] 配一個測試函式
    [TestCase('TestA', '1,2,3')]
    [TestCase('TestB', '3,4,7')]
    procedure Test_MyAdd(AValue1, AValue2, _Result: string);

    [Test]
    [TestCase('TestA', '3,2,1')]
    [TestCase('TestB', '3,4,0')]
    // Tony 故意讓結果出錯
    procedure Test_MySub(AValue1, AValue2, _Result: string);
  end;

implementation

procedure TMyTestObject.Setup;
begin
  aForm := TForm1.Create(nil); // 初始化相關程式碼
end;

procedure TMyTestObject.TearDown;
begin
  aForm := nil; // 結束測試相關程式碼
end;


// 其它 Assert 功能請參考
// http://docwiki.embarcadero.com/RADStudio/Sydney/en/DUnitX_Overview
procedure TMyTestObject.Test_MyAdd(AValue1, AValue2, _Result: string);
var
  R: string;
begin
  // Tony: R 是實際的執行結果
  R := aForm.MyAdd(AValue1, AValue2);
  // Tony: _Result 是 TestCase 裡預期的結果
  Assert.AreEqual(R, _Result);
end;

procedure TMyTestObject.Test_MySub(AValue1, AValue2, _Result: string);
var
  R: string;
begin
  R := aForm.MySub(AValue1, AValue2);
  Assert.AreEqual(R, _Result);
end;

initialization

TDUnitX.RegisterTestFixture(TMyTestObject);

end.
