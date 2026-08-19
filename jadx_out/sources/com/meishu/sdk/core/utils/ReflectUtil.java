package com.meishu.sdk.core.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class ReflectUtil {
    public static Class<?> getClass(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method getMethod(Class cls, String str, Class<?>... clsArr) {
        try {
            return cls.getDeclaredMethod(str, clsArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static <T> T getValue(Class cls, String str) {
        return (T) getValue(cls, str, null);
    }

    public static <T> T invokeMethod(Method method, Object obj, Object... objArr) {
        try {
            method.setAccessible(true);
            return (T) method.invoke(obj, objArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void setValue(Class cls, String str, Object obj) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        setValue(cls, str, null, obj);
    }

    public static <T> T getValue(Class cls, String str, Object obj) throws NoSuchFieldException, SecurityException {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return (T) declaredField.get(obj);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void setValue(Class cls, String str, Object obj, Object obj2) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
