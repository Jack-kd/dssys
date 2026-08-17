package com.beizi.fusion;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class sl {
    public static boolean a(String str) throws ClassNotFoundException {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static List b(Class cls) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, cls.getDeclaredFields());
        a(arrayList, cls);
        return arrayList;
    }

    public static boolean c(Class cls) {
        if (cls.isPrimitive() || String.class.isAssignableFrom(cls)) {
            return true;
        }
        return d(cls);
    }

    public static boolean d(Class cls) throws IllegalAccessException, IllegalArgumentException {
        Object obj;
        try {
            obj = cls.getField("TYPE").get(null);
            Objects.requireNonNull(obj);
        } catch (Exception unused) {
        }
        return ((Class) obj).isPrimitive();
    }

    private static void a(List list, Class cls) {
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            Field[] declaredFields = superclass.getDeclaredFields();
            if (declaredFields.length > 0) {
                Collections.addAll(list, declaredFields);
                a(list, superclass);
            }
        }
    }

    public static void a(Object obj, Field field, Object obj2) {
        try {
            if (!Modifier.isPublic(field.getModifiers())) {
                field.setAccessible(true);
            }
            Class<?> type = field.getType();
            if (String.class.isAssignableFrom(type)) {
                field.set(obj, obj2 != null ? obj2.toString() : "");
            } else {
                field.set(obj, a(type, obj2));
            }
        } catch (IllegalAccessException | IllegalArgumentException | NullPointerException e2) {
            rm.a(e2);
        }
    }

    public static Object a(Class cls, Object obj) {
        if (!Integer.TYPE.isAssignableFrom(cls) && !Integer.class.isAssignableFrom(cls)) {
            if (!Float.TYPE.isAssignableFrom(cls) && !Float.class.isAssignableFrom(cls)) {
                if (!Boolean.TYPE.isAssignableFrom(cls) && !Boolean.class.isAssignableFrom(cls)) {
                    if (!Double.TYPE.isAssignableFrom(cls) && !Double.class.isAssignableFrom(cls)) {
                        if (Long.TYPE.isAssignableFrom(cls) || Long.class.isAssignableFrom(cls)) {
                            return Long.valueOf(qo.j(obj.toString()));
                        }
                    } else {
                        return Double.valueOf(qo.g(obj.toString()));
                    }
                } else {
                    if (obj instanceof String) {
                        if (!Boolean.parseBoolean(obj.toString())) {
                            return Boolean.valueOf(qo.i(obj.toString()) > 0);
                        }
                    } else if (obj instanceof Integer) {
                        return Boolean.valueOf(qo.i(obj.toString()) > 0);
                    }
                }
                return obj;
            }
            return Float.valueOf(qo.h(obj.toString()));
        }
        return Integer.valueOf(qo.i(obj.toString()));
    }

    public static Object a(Object obj, Field field) {
        try {
            if (!Modifier.isPublic(field.getModifiers())) {
                field.setAccessible(true);
            }
            return field.get(obj);
        } catch (IllegalAccessException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static List a(Class cls) {
        try {
            return (List) cls.newInstance();
        } catch (IllegalAccessException | InstantiationException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static Object a(Class cls, JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            Constructor constructor = cls.getConstructor(JSONObject.class);
            constructor.setAccessible(true);
            return constructor.newInstance(jSONObject);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            rm.a(e2);
            return null;
        }
    }
}
