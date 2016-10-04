package pratica.jsp;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Bruno on 04/10/2016.
 */
public class LoginBean {
    private String login;
    private String nome;
    private String senha;
    private int perfil;

    public LoginBean() {
    }

    private String resolvePerfil() {
        if (perfil == 1)
            return "Cliente";
        if (perfil == 2)
            return "Gerente";
        if (perfil == 3)
            return "Administrador";
        return "";
    }

    public String getLogin() {
        if (login != null) {
            if (login.equals(senha)) {
                Date date = new Date();
                SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm");
                String time = dateFormat.format(date.getTime());
                return resolvePerfil() + ", login bem sucedido, para " + login + " às " + time;
            } else
                return "Acesso negado";
        }
        return "";
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

}
