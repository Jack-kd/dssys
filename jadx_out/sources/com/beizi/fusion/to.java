package com.beizi.fusion;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public abstract class to {

    /* renamed from: a, reason: collision with root package name */
    private static Method f16394a;

    /* renamed from: b, reason: collision with root package name */
    private static Method f16395b;

    /* renamed from: c, reason: collision with root package name */
    private static Method f16396c;

    static {
        try {
            for (Method method : Class.forName("android.os.SystemProperties").getMethods()) {
                String name = method.getName();
                if (name.equals("getLong")) {
                    f16394a = method;
                } else if (name.equals("set")) {
                    f16396c = method;
                } else if (name.equals("get")) {
                    f16395b = method;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String a(String str, String str2) {
        try {
            return (String) f16395b.invoke(null, str, str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return str2;
        }
    }
}
