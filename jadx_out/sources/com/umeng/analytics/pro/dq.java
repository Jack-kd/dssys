package com.umeng.analytics.pro;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class dq implements Serializable {

    /* renamed from: d, reason: collision with root package name */
    private static Map<Class<? extends de>, Map<? extends dl, dq>> f49188d = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f49189a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f49190b;

    /* renamed from: c, reason: collision with root package name */
    public final dr f49191c;

    public dq(String str, byte b3, dr drVar) {
        this.f49189a = str;
        this.f49190b = b3;
        this.f49191c = drVar;
    }

    public static void a(Class<? extends de> cls, Map<? extends dl, dq> map) {
        f49188d.put(cls, map);
    }

    public static Map<? extends dl, dq> a(Class<? extends de> cls) throws IllegalAccessException, InstantiationException {
        if (!f49188d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e2.getMessage());
            } catch (InstantiationException e3) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e3.getMessage());
            }
        }
        return f49188d.get(cls);
    }
}
