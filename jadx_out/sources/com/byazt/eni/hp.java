package com.byazt.eni;

import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1905, 28})
/* loaded from: classes2.dex */
public class hp {
    public ConcurrentHashMap<String, Object> hp = new ConcurrentHashMap<>();

    private String l(String str, String str2) {
        return (str == null || !this.hp.containsKey(str)) ? str2 : (String) this.hp.get(str);
    }

    public void hp(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.hp.put(str, str2);
    }

    public String hp(String str) {
        return l(str, "");
    }

    public void hp(String str, int i2) {
        if (str != null) {
            this.hp.put(str, Integer.valueOf(i2));
        }
    }

    public int l(String str) {
        return l(str, 0);
    }

    private int l(String str, int i2) {
        return (str == null || !this.hp.containsKey(str)) ? i2 : ((Integer) this.hp.get(str)).intValue();
    }
}
