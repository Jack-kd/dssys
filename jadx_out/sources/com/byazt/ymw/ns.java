package com.byazt.ymw;

import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 68, 166})
/* loaded from: classes3.dex */
public class ns {
    public static Object hp;

    /* renamed from: l, reason: collision with root package name */
    public static Method f28104l;

    static {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            Method method = (Method) declaredMethod2.invoke(cls, "getRuntime", null);
            f28104l = (Method) declaredMethod2.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class});
            hp = method.invoke(null, null);
        } catch (Throwable unused) {
        }
    }

    public static boolean hp(String... strArr) {
        Method method;
        Object obj = hp;
        if (obj != null && (method = f28104l) != null) {
            try {
                method.invoke(obj, strArr);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean hp() {
        return hp("L");
    }
}
