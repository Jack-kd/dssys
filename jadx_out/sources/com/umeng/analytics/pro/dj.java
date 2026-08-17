package com.umeng.analytics.pro;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes5.dex */
public class dj {
    public static di a(Class<? extends di> cls, int i2) {
        try {
            return (di) cls.getMethod("findByValue", Integer.TYPE).invoke(null, Integer.valueOf(i2));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
