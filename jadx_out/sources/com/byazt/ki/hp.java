package com.byazt.ki;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum hp implements w {
    TRUE,
    FALSE,
    NULL;


    /* renamed from: j, reason: collision with root package name */
    public static final Map<String, hp> f22076j = new HashMap(128);

    static {
        for (hp hpVar : values()) {
            f22076j.put(hpVar.name().toLowerCase(), hpVar);
        }
    }

    public static hp hp(String str) {
        return f22076j.get(str.toLowerCase());
    }
}
