program WorkshopNfe;

uses
  Vcl.Forms,
  Workshop.View.Principal in 'View\Workshop.View.Principal.pas' {Form6},
  Workshop.Model.Fiscal.Nfe.Componentes.ACBr in 'Model\Fiscal\Nfe\Componentes\ACBr\Workshop.Model.Fiscal.Nfe.Componentes.ACBr.pas' {dmACBrNFe: TDataModule},
  Workshop.Model.Fiscal.NFe.Componentes.Interfaces in 'Model\Fiscal\Nfe\Componentes\Workshop.Model.Fiscal.NFe.Componentes.Interfaces.pas',
  Workshop.Model.Fiscal.NFe.Componentes.Factory in 'Model\Fiscal\Nfe\Componentes\Workshop.Model.Fiscal.NFe.Componentes.Factory.pas',
  Workshop.Model.Fiscal.Nfe in 'Model\Fiscal\Nfe\Workshop.Model.Fiscal.Nfe.pas',
  Workshop.Model.Fiscal.Nfe.Interfaces in 'Model\Fiscal\Nfe\Workshop.Model.Fiscal.Nfe.Interfaces.pas',
  Workshop.Model.Fiscal.Nfe.Invoker in 'Model\Fiscal\Nfe\Workshop.Model.Fiscal.Nfe.Invoker.pas',
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup.pas',
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat.pas',
  Workshop.Model.Fiscal.Nfe.Command.Compra in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Compra.pas',
  Workshop.Model.Fiscal.Nfe.Command.Dest in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Dest.pas',
  Workshop.Model.Fiscal.Nfe.Command.Emit in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Emit.pas',
  Workshop.Model.Fiscal.Nfe.Command.Exporta in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Exporta.pas',
  Workshop.Model.Fiscal.Nfe.Command.Geral in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Geral.pas',
  Workshop.Model.Fiscal.Nfe.Command.Ide in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Ide.pas',
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp.pas',
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco.pas',
  Workshop.Model.Fiscal.Nfe.Command.InfAdic in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.InfAdic.pas',
  Workshop.Model.Fiscal.Nfe.Command.Interfaces in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Interfaces.pas',
  Workshop.Model.Fiscal.Nfe.Command.Pagamento in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Pagamento.pas',
  Workshop.Model.Fiscal.Nfe.Command.Prod in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Prod.pas',
  Workshop.Model.Fiscal.Nfe.Command.Total in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Total.pas',
  Workshop.Model.Fiscal.Nfe.Command.Transp in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Transp.pas',
  Workshop.Model.Fiscal.Nfe.Command.Transp.Vol in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Transp.Vol.pas',
  Workshop.Model.Fiscal.Nfe.Command.GerarNFe in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.GerarNFe.pas',
  Workshop.Model.Fiscal.Nfe.Command.EnviarNFe in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.EnviarNFe.pas',
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces in 'Model\Fiscal\Nfe\RegrasFiscais\Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces.pas',
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal in 'Model\Fiscal\Nfe\RegrasFiscais\RegimeNormal\Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.pas',
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples in 'Model\Fiscal\Nfe\RegrasFiscais\RegimeSimples\Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples.pas',
  Workshop.Model.Fiscal.Nfe.Command.Factory in 'Model\Fiscal\Nfe\Commands\Workshop.Model.Fiscal.Nfe.Command.Factory.pas',
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Helpers in 'Model\Fiscal\Nfe\RegrasFiscais\Workshop.Model.Fiscal.NFe.RegrasFiscais.Helpers.pas',
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST000 in 'Model\Fiscal\Nfe\RegrasFiscais\RegimeNormal\CST\Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST000.pas',
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST060 in 'Model\Fiscal\Nfe\RegrasFiscais\RegimeNormal\CST\Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST060.pas',
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples.CSOSN101 in 'Model\Fiscal\Nfe\RegrasFiscais\RegimeSimples\CSOSN\Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples.CSOSN101.pas',
  Workshop.Controller.Nfe.Observer.Interfaces in 'Controller\Nfe\Observer\Workshop.Controller.Nfe.Observer.Interfaces.pas',
  Workshop.Controller.Nfe.Observer.Subject in 'Controller\Nfe\Observer\Workshop.Controller.Nfe.Observer.Subject.pas',
  Workshop.Controller.Nfe in 'Controller\Nfe\Workshop.Controller.Nfe.pas',
  Workshop.Controller.Nfe.Interfaces in 'Controller\Nfe\Workshop.Controller.Nfe.Interfaces.pas',
  Workshop.View.Nfe2 in 'View\Workshop.View.Nfe2.pas' {NFe2},
  Workshop.Controller.Nfe.Types in 'Controller\Nfe\Workshop.Controller.Nfe.Types.pas',
  Workshop.Controller.Nfe.Observer in 'Controller\Nfe\Observer\Workshop.Controller.Nfe.Observer.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TNFe2, NFe2);
  Application.Run;
end.
