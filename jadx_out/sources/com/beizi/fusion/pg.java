package com.beizi.fusion;

import android.text.TextUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class pg {
    public static int a(JSONObject jSONObject, String str, int i2) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return i2;
    }

    public static JSONObject b(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static JSONObject c(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static String d(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return "";
        }
        try {
            return jSONObject.getString(str);
        } catch (JSONException unused) {
            return "";
        }
    }

    public static String a(JSONArray jSONArray, int i2) {
        if (jSONArray != null && jSONArray.length() > 0) {
            try {
                return jSONArray.getString(i2);
            } catch (JSONException e2) {
                rm.a(e2);
                return "";
            }
        }
        return "";
    }

    public static Object c(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.get(str);
            }
            return null;
        } catch (JSONException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static JSONArray b(String str) {
        try {
            return new JSONArray(str);
        } catch (JSONException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static JSONObject b() {
        return new JSONObject();
    }

    public static boolean a(String str) {
        JSONObject jSONObjectC;
        if (TextUtils.isEmpty(str) || (jSONObjectC = c(str)) == null) {
            return false;
        }
        return jSONObjectC.keys().hasNext();
    }

    private static JSONArray b(Object obj, Type type) {
        JSONArray jSONArrayA = a();
        if (obj != null && obj.getClass().isArray()) {
            List list = (List) obj;
            if (!list.isEmpty()) {
                Class cls = (Class) ((ParameterizedType) type).getActualTypeArguments()[0];
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (sl.c(cls)) {
                        jSONArrayA.put(list.get(i2));
                    } else if (hd.class.isAssignableFrom(cls)) {
                        jSONArrayA.put(b(list.get(i2)));
                    }
                }
            }
        }
        return jSONArrayA;
    }

    public static JSONArray a(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        try {
            return jSONObject.getJSONArray(str);
        } catch (JSONException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static String a(Map map) throws JSONException {
        JSONObject jSONObjectA = a(map, false);
        if (jSONObjectA != null) {
            return jSONObjectA.toString();
        }
        return "";
    }

    public static JSONObject a(Map map, boolean z2) throws JSONException {
        if (map == null) {
            return null;
        }
        try {
            if (map.isEmpty()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                if (entry != null) {
                    String str = (String) entry.getValue();
                    if (z2 && !TextUtils.isEmpty(str)) {
                        jSONObject.put((String) entry.getKey(), entry.getValue());
                    } else {
                        String str2 = (String) entry.getKey();
                        if (str == null) {
                            str = "";
                        }
                        jSONObject.put(str2, str);
                    }
                }
            }
            return jSONObject;
        } catch (JSONException e2) {
            rm.a(e2);
            return null;
        }
    }

    public static JSONObject b(Object obj) throws JSONException {
        if (obj != null) {
            try {
                JSONObject jSONObjectB = b();
                List<Field> listB = sl.b(obj.getClass());
                if (!listB.isEmpty()) {
                    for (Field field : listB) {
                        ng ngVar = (ng) field.getAnnotation(ng.class);
                        if (ngVar != null) {
                            String strKey = ngVar.key();
                            if (sl.c(field.getType())) {
                                jSONObjectB.put(strKey, sl.a(obj, field));
                            } else if (hd.class.isAssignableFrom(field.getType())) {
                                jSONObjectB.put(strKey, b(sl.a(obj, field)));
                            } else if (List.class.isAssignableFrom(field.getType())) {
                                jSONObjectB.put(strKey, b(sl.a(obj, field), field.getGenericType()));
                            } else if (field.getType().isArray()) {
                                jSONObjectB.put(strKey, a(sl.a(obj, field), field.getGenericType()));
                            }
                        }
                    }
                }
                return jSONObjectB;
            } catch (JSONException unused) {
            }
        }
        return b();
    }

    public static JSONArray a() {
        return new JSONArray();
    }

    public static JSONArray a(Map map, String str, String str2) throws JSONException {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry entry : map.entrySet()) {
                        JSONObject jSONObject = new JSONObject();
                        if (entry != null) {
                            jSONObject.put(str, entry.getKey());
                            jSONObject.put(str2, entry.getValue());
                        }
                        jSONArray.put(jSONObject);
                    }
                    return jSONArray;
                }
            } catch (JSONException e2) {
                rm.a(e2);
            }
        }
        return a();
    }

    public static String a(Object obj) {
        return a(obj, false).toString();
    }

    public static JSONObject a(Object obj, boolean z2) throws JSONException {
        Class<?> cls = obj.getClass();
        List<Field> listB = sl.b(cls);
        JSONObject jSONObjectB = b();
        for (Field field : listB) {
            ng ngVar = (ng) field.getAnnotation(ng.class);
            if (ngVar != null && !ngVar.exclude()) {
                Object objA = a(obj, field, z2);
                if (!z2) {
                    jSONObjectB.put(ngVar.key(), objA);
                } else if (objA != null) {
                    try {
                        if (objA instanceof String) {
                            if (!TextUtils.isEmpty(objA.toString())) {
                                jSONObjectB.put(ngVar.key(), objA);
                            }
                        } else {
                            jSONObjectB.put(ngVar.key(), objA);
                        }
                    } catch (JSONException unused) {
                        rm.b("JsonUtil", "转json异常..." + cls.getSimpleName() + " " + field.getName());
                    }
                }
            }
        }
        return jSONObjectB;
    }

    private static Object a(Object obj, Field field, boolean z2) {
        Object objA = sl.a(obj, field);
        if (sl.c(field.getType())) {
            if (objA != null) {
                return objA;
            }
            if (String.class.isAssignableFrom(field.getType())) {
                return "";
            }
            return 0;
        }
        if (List.class.isAssignableFrom(field.getType())) {
            if (objA != null) {
                List list = (List) objA;
                if (!list.isEmpty()) {
                    return a(list.iterator(), z2);
                }
            }
            return a();
        }
        if (field.getType().isArray()) {
            if (objA != null) {
                Object[] objArr = (Object[]) objA;
                if (objArr.length > 0) {
                    return a(Arrays.asList(objArr).iterator(), z2);
                }
            }
            return a();
        }
        if (objA instanceof ib) {
            return a(objA, z2);
        }
        return null;
    }

    private static JSONArray a(Iterator it, boolean z2) {
        if (it == null) {
            return null;
        }
        JSONArray jSONArrayA = a();
        while (it.hasNext()) {
            Object next = it.next();
            if (sl.c(next.getClass())) {
                jSONArrayA.put(next);
            } else {
                jSONArrayA.put(a(next, z2));
            }
        }
        return jSONArrayA;
    }

    private static void a(Object obj, Field field, JSONObject jSONObject, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (sl.c(field.getType())) {
                if (jSONObject.opt(str) != null) {
                    sl.a(obj, field, jSONObject.opt(str));
                } else if (!TextUtils.isEmpty(str2)) {
                    sl.a(obj, field, str2);
                }
            }
            if (jSONObject.has(str)) {
                if (qa.class.isAssignableFrom(field.getType())) {
                    sl.a(obj, field, sl.a((Class) field.getType(), b(jSONObject, str)));
                    return;
                } else if (List.class.isAssignableFrom(field.getType())) {
                    sl.a(obj, field, a(a(jSONObject, str), field.getType(), field.getGenericType()));
                    return;
                } else {
                    if (field.getType().isArray()) {
                        sl.a(obj, field, a(a(jSONObject, str), (Class) field.getType()));
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (qa.class.isAssignableFrom(field.getType())) {
            sl.a(obj, field, sl.a((Class) field.getType(), jSONObject));
        }
    }

    public static void a(qa qaVar, JSONObject jSONObject) {
        if (jSONObject != null) {
            List<Field> listB = sl.b(qaVar.getClass());
            if (listB.isEmpty()) {
                return;
            }
            for (Field field : listB) {
                ng ngVar = (ng) field.getAnnotation(ng.class);
                if (ngVar != null) {
                    a(qaVar, field, jSONObject, ngVar.key(), ngVar.defValue());
                }
            }
        }
    }

    private static Object a(JSONArray jSONArray, Class cls) throws JSONException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        Object objA;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        try {
            Class<?> componentType = cls.getComponentType();
            if (componentType == null) {
                return null;
            }
            int length = jSONArray.length();
            Object objNewInstance = Array.newInstance(componentType, length);
            for (int i2 = 0; i2 < length; i2++) {
                if (sl.c(componentType)) {
                    objA = jSONArray.get(i2);
                } else {
                    objA = sl.a((Class) componentType, jSONArray.getJSONObject(i2));
                }
                Array.set(objNewInstance, i2, objA);
            }
            return objNewInstance;
        } catch (JSONException e2) {
            rm.a(e2);
            return null;
        }
    }

    private static List a(JSONArray jSONArray, Class cls, Type type) {
        List listA = null;
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0 && (type instanceof ParameterizedType)) {
                    if (cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) {
                        cls = ArrayList.class;
                    }
                    listA = sl.a(cls);
                    if (listA != null) {
                        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                        Class cls2 = (Class) actualTypeArguments[0];
                        int length = jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            if (sl.c(cls2)) {
                                listA.add(jSONArray.get(i2));
                            } else {
                                listA.add(sl.a(cls2, jSONArray.getJSONObject(i2)));
                            }
                        }
                    }
                    return listA;
                }
            } catch (JSONException e2) {
                rm.a(e2);
            }
        }
        return listA;
    }

    private static JSONArray a(Object obj, Type type) {
        JSONArray jSONArrayA = a();
        if (obj != null && obj.getClass().isArray()) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length > 0) {
                Class cls = (Class) ((ParameterizedType) type).getActualTypeArguments()[0];
                for (Object obj2 : objArr) {
                    if (sl.c(cls)) {
                        jSONArrayA.put(obj2);
                    } else if (hd.class.isAssignableFrom(cls)) {
                        jSONArrayA.put(b(obj2));
                    }
                }
            }
        }
        return jSONArrayA;
    }

    public static void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e2) {
            rm.a(e2);
        }
    }
}
