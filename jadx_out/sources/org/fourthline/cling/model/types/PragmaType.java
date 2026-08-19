package org.fourthline.cling.model.types;

/* loaded from: classes5.dex */
public class PragmaType {
    private boolean quote;
    private String token;
    private String value;

    public PragmaType(String str, String str2, boolean z2) {
        this.token = str;
        this.value = str2;
        this.quote = z2;
    }

    public static PragmaType valueOf(String str) throws InvalidValueException {
        String strSubstring;
        String str2;
        if (str.length() == 0) {
            throw new InvalidValueException("Can't parse Bytes Range: " + str);
        }
        String[] strArrSplit = str.split("=");
        boolean z2 = false;
        if (strArrSplit.length > 1) {
            str2 = strArrSplit[0];
            strSubstring = strArrSplit[1];
            if (strSubstring.startsWith("\"") && strSubstring.endsWith("\"")) {
                strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                z2 = true;
            }
        } else {
            strSubstring = str;
            str2 = null;
        }
        return new PragmaType(str2, strSubstring, z2);
    }

    public String getString() {
        String str;
        String str2 = "";
        if (this.token != null) {
            str2 = "" + this.token + "=";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        if (this.quote) {
            str = "\"" + this.value + "\"";
        } else {
            str = this.value;
        }
        sb.append(str);
        return sb.toString();
    }

    public String getToken() {
        return this.token;
    }

    public String getValue() {
        return this.value;
    }

    public PragmaType(String str, String str2) {
        this.token = str;
        this.value = str2;
    }

    public PragmaType(String str) {
        this.token = null;
        this.value = str;
    }
}
