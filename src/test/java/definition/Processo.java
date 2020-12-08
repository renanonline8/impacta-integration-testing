package definition;

import groovy.json.internal.LazyMap;

public class Processo {
    private static final String URL_PROCESSO = "http://agapito-server.herokuapp.com/processos/";
    private static LazyMap fieldsJson = new LazyMap();
    private static String ultimoProcesso;

    public static void clearFields() {
        fieldsJson.clear();
    }

    public static void addFields(String field, String value) {
        fieldsJson.put(field, value);
    }

    public static String getEndPoint() {
        return URL_PROCESSO;
    }

    public static LazyMap getFields() {
        return fieldsJson;
    }

    public static void setUltimoProcesso(String ultimoProcesso) {
        Processo.ultimoProcesso = ultimoProcesso;
    }

    public static String getUltimoProcesso()
    {
        return ultimoProcesso;
    }
}
