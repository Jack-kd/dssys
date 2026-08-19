package com.byazt.dnb;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1239, 150})
/* loaded from: classes2.dex */
public class q {

    @com.byazt.kj.hp(hp = {0, 1, 1239, 3})
    public static class hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public Map<String, String> f19187l;
    }

    public static hp hp(String str) {
        hp hpVar = new hp();
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.equals("")) {
                String[] strArrSplit = strTrim.split("\\?");
                hpVar.hp = strArrSplit[0];
                if (strArrSplit.length != 1) {
                    String[] strArrSplit2 = strArrSplit[1].split("&");
                    hpVar.f19187l = new HashMap();
                    for (String str2 : strArrSplit2) {
                        String[] strArrSplit3 = str2.split("=");
                        if (strArrSplit3.length >= 2) {
                            hpVar.f19187l.put(strArrSplit3[0], strArrSplit3[1]);
                        }
                    }
                }
            }
        }
        return hpVar;
    }

    public static String l(String str) {
        hp hpVarHp = hp(str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map<String, String> map = hpVarHp.f19187l;
        if (map != null) {
            if (map.containsKey("v")) {
                linkedHashMap.put("v", hpVarHp.f19187l.get("v"));
                hpVarHp.f19187l.remove("v");
            }
            for (Map.Entry<String, String> entry : hpVarHp.f19187l.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hp(hpVarHp.hp, linkedHashMap);
    }

    private static String hp(String str, LinkedHashMap<String, String> linkedHashMap) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            return sb.toString();
        }
        sb.append(str);
        boolean z2 = str.contains("?") || str.contains("&");
        if (linkedHashMap != null && linkedHashMap.size() > 0) {
            for (String str2 : linkedHashMap.keySet()) {
                if (!z2) {
                    sb.append("?");
                    z2 = true;
                } else {
                    sb.append("&");
                }
                sb.append(str2);
                sb.append("=");
                sb.append(linkedHashMap.get(str2));
            }
        }
        return sb.toString();
    }
}
