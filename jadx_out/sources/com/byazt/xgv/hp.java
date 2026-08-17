package com.byazt.xgv;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1189, 28})
/* loaded from: classes3.dex */
public class hp {
    public static Map<String, Field> hp = new HashMap();

    public static Field hp(Class<?> cls, String str) throws NoSuchFieldException, SecurityException {
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
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                synchronized (hp) {
                    continue;
                    hp.put(strL, declaredField);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static String l(Class<?> cls, String str) {
        return cls.toString() + "#" + str;
    }

    public static Object hp(Field field, Object obj) throws IllegalAccessException, SecurityException {
        if (!field.isAccessible()) {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    public static Object hp(Object obj, String str) throws IllegalAccessException, NoSuchFieldException, SecurityException {
        Field fieldHp = hp(obj.getClass(), str);
        if (fieldHp != null) {
            return hp(fieldHp, obj);
        }
        return null;
    }
}
