package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

import definition.Processo;
import support.RESTSupport;

public class CRUDProcessosStep {
    @Dado("^que o usuário gostaria de salvar um processo$")
    public void queOUsuárioGostariaDeSalvarUmProcesso() {
        Processo.clearFields();
    }

    @E("^usuário informa (.*) com o valor \"([^\"]*)\"$")
    public void usuárioInformaCampoComOValorIgual(String field, String value) throws Throwable {
        Processo.addFields(field, value);
    }

    @E("^usuário informa que não é urgente$")
    public void usuárioInformaQueNãoÉUrgente() {
        Processo.addFields("urgente", "N");
    }

    @E("^usuário informa que tem arbitramento$")
    public void usuárioInformaQueTemArbitramento() {
        Processo.addFields("arbitramento", "S");
    }

    @Quando("^o usuário clicar em Salvar$")
    public void oUsuárioClicarEmSalvar() {
        RESTSupport.executePost(Processo.getEndPoint(), Processo.getFields());
        Processo.setUltimoProcesso(
                RESTSupport.key("id").toString()
        );
        Processo.clearFields();

    }

    @E("^usuário querer ver a informação do cadastro$")
    public void usuárioQuererVerAInformaçãoDoCadastro() {
        RESTSupport.executeGet(
                Processo.getEndPoint() + 
                        Processo.getUltimoProcesso()
        );
    }

    @E("^usuário clica no botão salvar novamente$")
    public void usuárioClicaNoBotãoSalvarNovamente() {
        RESTSupport.executePut(
                Processo.getEndPoint() +
                        Processo.getUltimoProcesso(),
                Processo.getFields()
        );
    }

    @E("^usuário clica no botão apagar$")
    public void usuarioClicaNoBotaoApagar() {
        RESTSupport.executeDelete(
                Processo.getEndPoint() +
                        Processo.getUltimoProcesso()
        );
    }

    @Então("^o usuário deveria ver a mensagem \"([^\"]*)\"$")
    public void oUsuarioDeveriaVerAMensagem(String message) throws Throwable {
        RESTSupport.executeGet(
          Processo.getEndPoint() +
                  Processo.getUltimoProcesso()
        );
    }
}
