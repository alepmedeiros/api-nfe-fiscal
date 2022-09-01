program WorkshopNFE;

uses
  Vcl.Forms,
  Workshop.View.Principal in 'View\Workshop.View.Principal.pas' {Form6},
  Workshop.Model.Fiscal.Nfe.Interfaces in 'Model\Fiscal\Nfe\Workshop.Model.Fiscal.Nfe.Interfaces.pas',
  Workshop.Model.Fiscal.Nfe in 'Model\Fiscal\Nfe\Workshop.Model.Fiscal.Nfe.pas',
  Workshop.Model.Fiscal.Nfe.Componentes.Interfaces in 'Model\Fiscal\Nfe\Componentes\Workshop.Model.Fiscal.Nfe.Componentes.Interfaces.pas',
  Workshop.Model.Fiscal.Nfe.Componentes.ACBr in 'Model\Fiscal\Nfe\Componentes\ACBr\Workshop.Model.Fiscal.Nfe.Componentes.ACBr.pas' {dmACBrNFe: TDataModule},
  Workshop.Model.Fiscal.Nfe.Componentes.Factory in 'Model\Fiscal\Nfe\Componentes\Workshop.Model.Fiscal.Nfe.Componentes.Factory.pas',
  Workshop.Model.Fiscal.Nfe.Command.Configuracao in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Configuracao.pas',
  Workshop.Model.Fiscal.Nfe.Invoker in 'Model\Fiscal\Nfe\Workshop.Model.Fiscal.Nfe.Invoker.pas',
  Workshop.Model.Fiscal.Nfe.Command.Emitente in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Emitente.pas',
  Workshop.Model.Fiscal.Nfe.Command.Ide in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Ide.pas',
  Workshop.Model.Fiscal.Nfe.Command.Dest in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Dest.pas',
  Workshop.Model.Fiscal.Nfe.Command.Prod in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Prod.pas',
  Workshop.Model.Fiscal.Nfe.Command.Total in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Total.pas',
  Workshop.Model.Fiscal.Nfe.Command.Transp in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Transp.pas',
  Workshop.Model.Fiscal.Nfe.Command.Transp.Vol in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Transp.Vol.pas',
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat.pas',
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup.pas',
  Workshop.Model.Fiscal.Nfe.Command.InfAdic in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.InfAdic.pas',
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp.pas',
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco.pas',
  Workshop.Model.Fiscal.Nfe.Command.Exporta in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Exporta.pas',
  Workshop.Model.Fiscal.Nfe.Command.Compra in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Compra.pas',
  Workshop.Model.Fiscal.Nfe.Command.Pagamento in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Pagamento.pas',
  Workshop.Model.Fiscal.Nfe.Command.Interfaces in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Interfaces.pas',
  Workshop.Model.Fiscal.Nfe.Command.Factory in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Factory.pas',
  Workshop.Model.Fiscal.Nfe.Regras.Interfaces in 'Model\Fiscal\Nfe\Regras\Workshop.Model.Fiscal.Nfe.Regras.Interfaces.pas',
  Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal in 'Model\Fiscal\Nfe\Regras\Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
