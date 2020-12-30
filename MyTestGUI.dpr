program MyTestGUI;

///// UI Selection - Pick only 1! //////////////////////////////
///  Tony 自行選一個界面(在 DEFINE 前加入 $字)
{$DEFINE UseVCL}
{DEFINE UseFMX}
{DEFINE UseWinConsole}
////////////////////////////////////////////////////////////////
{$IFDEF UseWinConsole}
{$DEFINE UseConsole}
{$ENDIF}

{$IFDEF UseConsole}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  {$IFDEF UseVCL}
  VCL.Forms,
  DUnitX.Loggers.GUI.VCL,
  {$ENDIF}

  {$IFDEF UseFMX}
  FMX.Forms,
  DUnitX.Loggers.GUIX,
  {$ENDIF}

  {$IFDEF UseConsole}
  DUnitX.ConsoleWriter.Base,
  DUnitX.Loggers.Console,
  DUnitX.Loggers.XML.NUnit,
  DUnitX.Loggers.Text,
  DUnitX.Loggers.XML.xUnit,
  {$ENDIF}

  {$IFDEF UseWinConsole}
  DUnitX.Windows.Console,
  WinAPI.Windows,
  WinAPI.Messages,
  {$ENDIF}

  System.SysUtils,
  DUnitX.Generics,
  DUnitX.InternalInterfaces,
  DUnitX.WeakReference,
  DUnitX.FixtureResult,
  DUnitX.RunResults,
  DUnitX.Test,
  DUnitX.TestFixture,
  DUnitX.TestFramework,
  DUnitX.TestResult,
  DUnitX.TestRunner,
  DUnitX.Utils,
  DUnitX.IoC,
  DUnitX.MemoryLeakMonitor.Default,

  UnitMyTest in 'UnitMyTest.pas',     // Tony 手動加入 UnitTest
//      [TestFixturesUnit1] in '[TestFixturesUnit1].pas',
//      [TestFixturesUnit2] in '[TestFixturesUnit2].pas',
//      [TestFixturesUnit3] in '[TestFixturesUnit3].pas',

  DUnitX.DUnitCompatibility;

{$R *.res}

/////////////////////////////////////////////////////////////////////////
{$IFDEF UseVCL}
begin
  Application.Initialize;
  Application.CreateForm(TGUIVCLTestRunner, GUIVCLTestRunner);
  Application.Run;
{$ENDIF}
/////////////////////////////////////////////////////////////////////////
{$IFDEF UseFMX}
begin
  Application.Initialize;
  Application.CreateForm(TGUIXTestRunner, GUIXTestRunner);
  Application.Run;
{$ENDIF}
/////////////////////////////////////////////////////////////////////////
{$IFDEF UseConsole}
var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;

begin
   try
      //Create the runner
      runner := TDUnitX.CreateRunner;
      runner.UseRTTI := True;
      //tell the runner how we will log things
      logger := TDUnitXConsoleLogger.Create(true);
      nunitLogger := TDUnitXXMLNUnitFileLogger.Create;
      runner.AddLogger(logger);
      runner.AddLogger(nunitLogger);

      //Run tests
      results := runner.Execute;

      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;

   except
      on E: Exception do
         System.Writeln(E.ClassName, ': ', E.Message);
   end;
{$ENDIF}
/////////////////////////////////////////////////////////////////////////

end.
