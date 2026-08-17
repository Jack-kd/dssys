package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes2.dex */
public class av {

    /* renamed from: a, reason: collision with root package name */
    static bv f11058a = bv.a();

    /* renamed from: b, reason: collision with root package name */
    private static final String f11059b = "com.baidu.mobads.sdk.internal.av";

    public static Class<?> a(String str, ClassLoader classLoader) {
        if (classLoader != null) {
            try {
                return classLoader.loadClass(str);
            } catch (Exception e2) {
                f11058a.a(f11059b, Log.getStackTraceString(e2));
            }
        }
        return null;
    }

    public static Field b(Object obj, String str) {
        for (Class<?> superclass = obj.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
            try {
                return superclass.getDeclaredField(str);
            } catch (Exception e2) {
                f11058a.b(f11059b, Log.getStackTraceString(e2));
            }
        }
        return null;
    }

    public static Class<?> a(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(String str, ClassLoader classLoader, String str2, Class[] clsArr, Object[] objArr) throws NoSuchMethodException, SecurityException {
        try {
            Class<?> clsA = a(str, classLoader);
            if (clsA == null) {
                return null;
            }
            Method declaredMethod = clsA.getDeclaredMethod(str2, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, objArr);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Field b(Class<?> cls, String str) {
        while (cls != Object.class) {
            try {
                return cls.getDeclaredField(str);
            } catch (Exception e2) {
                f11058a.b(f11059b, Log.getStackTraceString(e2));
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static boolean a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getDeclaredMethod(str, clsArr) != null;
        } catch (NoSuchMethodException unused) {
            return false;
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return false;
        }
    }

    public static Method b(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
            if (declaredMethod == null) {
                return null;
            }
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(Object obj, String str) throws SecurityException {
        Field fieldB = b(obj, str);
        if (fieldB == null) {
            return null;
        }
        fieldB.setAccessible(true);
        try {
            return fieldB.get(obj);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(Class cls, String str) throws SecurityException {
        Field fieldB = b((Class<?>) cls, str);
        if (fieldB == null) {
            return null;
        }
        fieldB.setAccessible(true);
        try {
            return fieldB.get(cls);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(Object obj, String str, Object... objArr) {
        try {
            return a(obj.getClass(), obj, str, a(objArr), objArr);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Class<?>[] a(Object... objArr) {
        try {
            int length = objArr.length;
            Class<?>[] clsArr = new Class[length];
            for (int i2 = 0; i2 < length; i2++) {
                clsArr[i2] = objArr[i2].getClass();
            }
            return clsArr;
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(Object obj, String str, Class<?>[] clsArr, Object[] objArr) {
        try {
            return a(obj.getClass(), obj, str, clsArr, objArr);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(Class<?> cls, Object obj, String str, Class<?>[] clsArr, Object[] objArr) {
        try {
            if (a(cls, str, clsArr)) {
                return b(cls, str, clsArr).invoke(obj, objArr);
            }
            return null;
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(String str, ClassLoader classLoader, Class<?>[] clsArr, Object... objArr) {
        try {
            Class<?> clsA = a(str, classLoader);
            if (clsA != null) {
                return clsA.getDeclaredConstructor(clsArr).newInstance(objArr);
            }
            return null;
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(String str, Class<?>[] clsArr, Object... objArr) {
        try {
            Class<?> clsA = a(str);
            if (clsA != null) {
                return clsA.getDeclaredConstructor(clsArr).newInstance(objArr);
            }
            return null;
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(String str, ClassLoader classLoader, InvocationHandler invocationHandler) {
        Class<?> clsA = a(str, classLoader);
        if (clsA != null) {
            return Proxy.newProxyInstance(clsA.getClassLoader(), new Class[]{clsA}, invocationHandler);
        }
        return null;
    }

    public static Object a(String str, InvocationHandler invocationHandler) {
        Class<?> clsA = a(str);
        if (clsA != null) {
            return Proxy.newProxyInstance(clsA.getClassLoader(), new Class[]{clsA}, invocationHandler);
        }
        return null;
    }

    public static Object a(String str, Object obj, ClassLoader classLoader, String str2, Class<?>[] clsArr, Object... objArr) {
        Method declaredMethod;
        try {
            Class<?> clsA = a(str, classLoader);
            if (clsA == null || (declaredMethod = clsA.getDeclaredMethod(str2, clsArr)) == null) {
                return null;
            }
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, objArr);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(String str, Object obj, String str2, Class<?>[] clsArr, Object... objArr) throws SecurityException {
        Method declaredMethod;
        try {
            Class<?> clsA = a(str);
            if (clsA == null || (declaredMethod = clsA.getDeclaredMethod(str2, clsArr)) == null) {
                return null;
            }
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, objArr);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Object a(ClassLoader classLoader, String str, String str2) {
        try {
            return a((Class) Class.forName(str, true, classLoader), str2);
        } catch (Exception e2) {
            f11058a.b(f11059b, Log.getStackTraceString(e2));
            return null;
        }
    }

    public static ClassLoader a(Context context) {
        return ao.a(cb.a(context), context.getFilesDir().getAbsolutePath(), (String) null, av.class.getClassLoader());
    }
}
