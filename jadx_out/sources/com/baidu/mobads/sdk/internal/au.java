package com.baidu.mobads.sdk.internal;

import android.content.Context;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class au {

    /* renamed from: c, reason: collision with root package name */
    private static volatile Map<String, au> f11055c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    private Class<?> f11056a;

    /* renamed from: b, reason: collision with root package name */
    private Method[] f11057b;

    private au(Context context, String str) {
        this.f11057b = null;
        try {
            Class<?> cls = Class.forName(str, true, bu.a(context));
            this.f11056a = cls;
            this.f11057b = cls.getMethods();
        } catch (Throwable th) {
            bv.a().a(th);
        }
    }

    public static au a(Context context, String str) {
        if (!f11055c.containsKey(str) || f11055c.get(str).f11056a == null) {
            synchronized (au.class) {
                try {
                    if (!f11055c.containsKey(str) || f11055c.get(str).f11056a == null) {
                        f11055c.put(str, new au(context, str));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f11055c.get(str);
    }

    public Object b(Object obj, String str, Object... objArr) {
        try {
            Method methodA = a(str);
            if (methodA != null) {
                if (objArr != null && objArr.length != 0) {
                    return methodA.invoke(obj, objArr);
                }
                return methodA.invoke(obj, null);
            }
        } catch (Throwable th) {
            bv.a().a(th);
        }
        return null;
    }

    public String c(Object obj, String str, Object... objArr) {
        try {
            Method methodA = a(str);
            if (methodA != null) {
                Object objInvoke = (objArr == null || objArr.length == 0) ? methodA.invoke(obj, null) : methodA.invoke(obj, objArr);
                if (objInvoke instanceof String) {
                    return (String) objInvoke;
                }
            }
        } catch (Throwable th) {
            bv.a().a(th);
        }
        return null;
    }

    public Object a(Class<?>[] clsArr, Object... objArr) {
        Constructor<?> constructor;
        if (objArr != null) {
            try {
                if (objArr.length != 0) {
                    constructor = this.f11056a.getConstructor(clsArr);
                } else {
                    constructor = this.f11056a.getConstructor(null);
                }
            } catch (Throwable th) {
                bv.a().a(th);
                return null;
            }
        } else {
            constructor = this.f11056a.getConstructor(null);
        }
        return constructor.newInstance(objArr);
    }

    public void a(Object obj, String str, Object... objArr) {
        try {
            Method methodA = a(str);
            if (methodA != null) {
                if (objArr != null && objArr.length != 0) {
                    methodA.invoke(obj, objArr);
                    return;
                }
                methodA.invoke(obj, null);
            }
        } catch (Throwable th) {
            bv.a().a(th);
        }
    }

    private Method a(String str) throws SecurityException {
        Method[] methodArr = this.f11057b;
        if (methodArr == null) {
            return null;
        }
        for (Method method : methodArr) {
            if (method.getName().equals(str)) {
                method.setAccessible(true);
                return method;
            }
        }
        return null;
    }
}
