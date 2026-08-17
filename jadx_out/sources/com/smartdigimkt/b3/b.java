package com.smartdigimkt.b3;

import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Method f39575a;

    public b(Class cls, String str, Class[] clsArr) {
        Method declaredMethod = null;
        if (cls == null) {
            return;
        }
        while (cls != Object.class && cls != null) {
            try {
                try {
                    try {
                        declaredMethod = cls.getDeclaredMethod(str, clsArr);
                        break;
                    } catch (NoSuchMethodException | SecurityException unused) {
                        cls = cls.getSuperclass();
                    }
                } catch (Exception e2) {
                    throw new a(e2);
                }
            } finally {
                this.f39575a = declaredMethod;
            }
        }
        if (declaredMethod != null) {
            declaredMethod.setAccessible(true);
        }
    }
}
