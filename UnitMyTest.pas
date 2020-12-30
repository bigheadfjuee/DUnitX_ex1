unit UnitMyTest;

interface

uses
  DUnitX.TestFramework, Unit1; // ��n���ժ��ɮץ[�J

type
  [TestFixture]
  TMyTestObject = class(TObject)
  strict private
    aForm: TForm1; // �ۦ�[�J class
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    // �@�� [Test] �t�@�Ӵ��ը禡
    [TestCase('TestA', '1,2,3')]
    [TestCase('TestB', '3,4,7')]
    procedure Test_MyAdd(AValue1, AValue2, _Result: string);

    [Test]
    [TestCase('TestA', '3,2,1')]
    [TestCase('TestB', '3,4,0')]
    // Tony �G�N�����G�X��
    procedure Test_MySub(AValue1, AValue2, _Result: string);
  end;

implementation

procedure TMyTestObject.Setup;
begin
  aForm := TForm1.Create(nil); // ��l�Ƭ����{���X
end;

procedure TMyTestObject.TearDown;
begin
  aForm := nil; // �������լ����{���X
end;


// �䥦 Assert �\��аѦ�
// http://docwiki.embarcadero.com/RADStudio/Sydney/en/DUnitX_Overview
procedure TMyTestObject.Test_MyAdd(AValue1, AValue2, _Result: string);
var
  R: string;
begin
  // Tony: R �O��ڪ����浲�G
  R := aForm.MyAdd(AValue1, AValue2);
  // Tony: _Result �O TestCase �̹w�������G
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
