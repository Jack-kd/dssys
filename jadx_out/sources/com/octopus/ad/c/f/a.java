package com.octopus.ad.c.f;

import android.content.Context;
import com.octopus.ad.d.b.f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Object f33824a;

    /* renamed from: b, reason: collision with root package name */
    private static Class<?> f33825b;

    /* renamed from: c, reason: collision with root package name */
    private static Method f33826c;

    /* renamed from: d, reason: collision with root package name */
    private static Method f33827d;

    /* renamed from: e, reason: collision with root package name */
    private static Method f33828e;

    /* renamed from: f, reason: collision with root package name */
    private static Method f33829f;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f33825b = cls;
            f33824a = cls.newInstance();
            f33826c = f33825b.getMethod("getUDID", Context.class);
            f33827d = f33825b.getMethod("getOAID", Context.class);
            f33828e = f33825b.getMethod("getVAID", Context.class);
            f33829f = f33825b.getMethod("getAAID", Context.class);
        } catch (Exception e2) {
            f.a("IdentifierManager", "reflect exception!", e2);
        }
    }

    public static boolean a() {
        return (f33825b == null || f33824a == null) ? false : true;
    }

    public static String a(Context context) {
        return a(context, f33827d);
    }

    private static String a(Context context, Method method) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj = f33824a;
        if (obj != null && method != null) {
            try {
                Object objInvoke = method.invoke(obj, context);
                if (objInvoke != null) {
                    return (String) objInvoke;
                }
                return null;
            } catch (Exception e2) {
                f.a("IdentifierManager", "invoke exception!", e2);
            }
        }
        return null;
    }
}
