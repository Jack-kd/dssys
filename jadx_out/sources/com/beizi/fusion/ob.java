package com.beizi.fusion;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public interface ob {
    void a(Map map);

    void b(Map map);

    int getECPM();

    public static class a {
        public static Map a(int i2, int i3, String str, int i4) {
            HashMap map = new HashMap();
            map.put("winPrice", String.valueOf(i2));
            map.put("secHighPrice", String.valueOf(i3));
            map.put("adnId", str);
            map.put("expectPrice", String.valueOf(i4));
            return map;
        }

        public static Map a(int i2, int i3, String str, String str2, int i4) {
            HashMap map = new HashMap();
            map.put("winPrice", String.valueOf(i2));
            map.put("secHighPrice", String.valueOf(i3));
            map.put("lossReason", str2);
            map.put("adnId", str);
            map.put("expectPrice", String.valueOf(i4));
            return map;
        }
    }
}
