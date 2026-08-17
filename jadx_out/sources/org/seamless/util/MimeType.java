package org.seamless.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class MimeType {
    public static final String WILDCARD = "*";
    private Map<String, String> parameters;
    private String subtype;
    private String type;

    public MimeType() {
        this("*", "*");
    }

    public static int getEnd(String str, int i2) {
        int iIndexOf = str.indexOf(61, i2);
        int iIndexOf2 = str.indexOf(59, i2);
        return (iIndexOf == -1 && iIndexOf2 == -1) ? str.length() : (iIndexOf != -1 && (iIndexOf2 == -1 || iIndexOf < iIndexOf2)) ? iIndexOf : iIndexOf2;
    }

    public static int readParamsIntoMap(Map<String, String> map, String str, int i2) {
        int end = getEnd(str, i2);
        String strTrim = str.substring(i2, end).trim();
        if (end < str.length() && str.charAt(end) == '=') {
            end++;
        }
        StringBuilder sb = new StringBuilder(str.length() - end);
        boolean z2 = false;
        boolean z3 = false;
        while (end < str.length()) {
            char cCharAt = str.charAt(end);
            if (cCharAt != '\"') {
                if (cCharAt != ';') {
                    if (cCharAt != '\\') {
                        sb.append(cCharAt);
                    } else if (z2) {
                        sb.append(cCharAt);
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                } else {
                    if (!z3) {
                        map.put(strTrim, sb.toString().trim());
                        return end + 1;
                    }
                    sb.append(cCharAt);
                }
            } else if (z2) {
                sb.append(cCharAt);
                z2 = false;
            } else {
                z3 = !z3;
            }
            end++;
        }
        map.put(strTrim, sb.toString().trim());
        return end;
    }

    public static MimeType valueOf(String str) throws IllegalArgumentException {
        String strTrim;
        String strTrim2;
        if (str == null) {
            throw new IllegalArgumentException("String value is null");
        }
        int iIndexOf = str.indexOf(";");
        String strTrim3 = null;
        if (iIndexOf > -1) {
            strTrim = str.substring(iIndexOf + 1).trim();
            str = str.substring(0, iIndexOf);
        } else {
            strTrim = null;
        }
        String[] strArrSplit = str.split(ServiceReference.DELIMITER);
        if (strArrSplit.length < 2 && str.equals("*")) {
            strTrim2 = "*";
            strTrim3 = strTrim2;
        } else if (strArrSplit.length == 2) {
            strTrim3 = strArrSplit[0].trim();
            strTrim2 = strArrSplit[1].trim();
        } else {
            if (strArrSplit.length != 2) {
                throw new IllegalArgumentException("Error parsing string: " + str);
            }
            strTrim2 = null;
        }
        if (strTrim == null || strTrim.length() <= 0) {
            return new MimeType(strTrim3, strTrim2);
        }
        HashMap map = new HashMap();
        for (int paramsIntoMap = 0; paramsIntoMap < strTrim.length(); paramsIntoMap = readParamsIntoMap(map, strTrim, paramsIntoMap)) {
        }
        return new MimeType(strTrim3, strTrim2, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MimeType mimeType = (MimeType) obj;
        Map<String, String> map = this.parameters;
        if (map == null ? mimeType.parameters == null : map.equals(mimeType.parameters)) {
            return this.subtype.equalsIgnoreCase(mimeType.subtype) && this.type.equalsIgnoreCase(mimeType.type);
        }
        return false;
    }

    public Map<String, String> getParameters() {
        return this.parameters;
    }

    public String getSubtype() {
        return this.subtype;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        int iHashCode = ((this.type.toLowerCase().hashCode() * 31) + this.subtype.toLowerCase().hashCode()) * 31;
        Map<String, String> map = this.parameters;
        return iHashCode + (map != null ? map.hashCode() : 0);
    }

    public boolean isCompatible(MimeType mimeType) {
        if (mimeType == null) {
            return false;
        }
        if (this.type.equals("*") || mimeType.type.equals("*")) {
            return true;
        }
        if (this.type.equalsIgnoreCase(mimeType.type) && (this.subtype.equals("*") || mimeType.subtype.equals("*"))) {
            return true;
        }
        return this.type.equalsIgnoreCase(mimeType.type) && this.subtype.equalsIgnoreCase(mimeType.subtype);
    }

    public boolean isWildcardSubtype() {
        return getSubtype().equals("*");
    }

    public boolean isWildcardType() {
        return getType().equals("*");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(toStringNoParameters());
        if (getParameters() != null || getParameters().size() > 0) {
            for (String str : getParameters().keySet()) {
                sb.append(";");
                sb.append(str);
                sb.append("=\"");
                sb.append(getParameters().get(str));
                sb.append("\"");
            }
        }
        return sb.toString();
    }

    public String toStringNoParameters() {
        return getType() + ServiceReference.DELIMITER + getSubtype();
    }

    public MimeType(String str, String str2, Map<String, String> map) {
        this.type = str == null ? "*" : str;
        this.subtype = str2 == null ? "*" : str2;
        if (map == null) {
            this.parameters = Collections.EMPTY_MAP;
            return;
        }
        TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: org.seamless.util.MimeType.1
            @Override // java.util.Comparator
            public int compare(String str3, String str4) {
                return str3.compareToIgnoreCase(str4);
            }
        });
        for (Map.Entry<String, String> entry : map.entrySet()) {
            treeMap.put(entry.getKey(), entry.getValue());
        }
        this.parameters = Collections.unmodifiableMap(treeMap);
    }

    public MimeType(String str, String str2) {
        this(str, str2, Collections.EMPTY_MAP);
    }
}
