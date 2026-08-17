package com.byazt.pb;

import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1406, 28})
/* loaded from: classes3.dex */
public class hp {
    public static Map<String, Field> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public static Map<String, Method> f24308l = new HashMap();
    public static Map<String, Constructor> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public static Map<String, Class> f24307j = new HashMap();

    static {
        try {
            FieldUtils.writeField(l.class, "classLoader", (Object) null);
            ZeusLogger.w(ZeusLogger.TAG_INIT, "HackHelper HackHelperImpl use BootClassLoader");
        } catch (Exception e2) {
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "HackHelperinit failed", e2);
        }
    }

    public static Field hp(Class<?> cls, String str) throws SecurityException {
        Field field;
        String strL = l(cls, str);
        synchronized (hp) {
            field = hp.get(strL);
        }
        if (field != null) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        try {
            Field fieldHp = l.hp(cls, str);
            if (fieldHp == null) {
                return fieldHp;
            }
            synchronized (hp) {
                hp.put(strL, fieldHp);
            }
            return fieldHp;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper" + String.format("getField %s#%s failed !!!", cls.getName(), str), th);
            return null;
        }
    }

    private static String l(Class<?> cls, String str) {
        return cls.getName() + "#" + str;
    }

    private static String l(Class<?> cls, String str, Class<?>... clsArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(cls.getName());
        sb.append("#");
        sb.append(str);
        if (clsArr == null || clsArr.length <= 0) {
            sb.append(Void.class.getName());
        } else {
            for (Class<?> cls2 : clsArr) {
                sb.append(cls2.getName());
                sb.append("#");
            }
        }
        return sb.toString();
    }

    public static Method hp(Class<?> cls, String str, Class<?>... clsArr) throws SecurityException {
        Method method;
        String strL = l(cls, str, clsArr);
        synchronized (f24308l) {
            method = f24308l.get(strL);
        }
        if (method != null) {
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            return method;
        }
        try {
            Method methodHp = l.hp(cls, str, clsArr);
            if (methodHp == null) {
                return methodHp;
            }
            synchronized (f24308l) {
                f24308l.put(strL, methodHp);
            }
            return methodHp;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper" + String.format("getMethod %s#%s failed !!!", cls.getName(), str), th);
            return null;
        }
    }

    public static Constructor hp(Class<?> cls, Class<?>... clsArr) throws SecurityException {
        Constructor constructor;
        String strL = l(cls, "clinit", clsArr);
        synchronized (jx) {
            constructor = jx.get(strL);
        }
        if (constructor != null) {
            if (!constructor.isAccessible()) {
                constructor.setAccessible(true);
            }
            return constructor;
        }
        try {
            Constructor constructorHp = l.hp(cls, clsArr);
            if (constructorHp == null) {
                return constructorHp;
            }
            synchronized (jx) {
                jx.put(strL, constructorHp);
            }
            return constructorHp;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper" + String.format("getConstructor %s failed !!!", cls.getName()), th);
            return null;
        }
    }
}
