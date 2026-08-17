package com.sigmob.sdk.base.utils;

import android.os.Build;
import androidx.collection.MutableScatterMap$MutableMapWrapper$keys$1;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* loaded from: classes4.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36588a = "i";

    /* renamed from: b, reason: collision with root package name */
    private static final String f36589b = "yyyy-MM-dd HH:mm:ss";

    /* renamed from: c, reason: collision with root package name */
    private static final Map<Class<?>, a> f36590c = new HashMap();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final Field[] f36591a;

        /* renamed from: b, reason: collision with root package name */
        final Method[] f36592b;

        public a(Field[] fieldArr, Method[] methodArr) {
            this.f36591a = fieldArr;
            this.f36592b = methodArr;
        }
    }

    private static Object a(Object obj, Class<?> cls) {
        Object[] enumConstants;
        if (obj != null && !cls.isInstance(obj)) {
            if (g(cls)) {
                return d(obj);
            }
            if (cls.isEnum()) {
                String string = obj.toString();
                try {
                    enumConstants = cls.getEnumConstants();
                } catch (Exception unused) {
                    k.f(f36588a, "convertValue: enum parse error, value = " + string + ", targetClass = " + cls.getName(), new Object[0]);
                }
                if (enumConstants == null) {
                    return null;
                }
                for (Object obj2 : enumConstants) {
                    Enum r6 = (Enum) obj2;
                    if (r6.name().equals(string)) {
                        return r6;
                    }
                }
                for (Object obj3 : enumConstants) {
                    Enum r62 = (Enum) obj3;
                    if (r62.name().equalsIgnoreCase(string)) {
                        return r62;
                    }
                }
                return null;
            }
            String string2 = obj.toString();
            if (cls == String.class) {
                return string2;
            }
            if (cls != Integer.class) {
                try {
                    if (cls != Integer.TYPE) {
                        if (cls != Long.class && cls != Long.TYPE) {
                            if (cls != Float.class && cls != Float.TYPE) {
                                if (cls != Double.class && cls != Double.TYPE) {
                                    if (cls != Boolean.class && cls != Boolean.TYPE) {
                                        if (cls != Short.class && cls != Short.TYPE) {
                                            if (cls != Byte.class && cls != Byte.TYPE) {
                                                if (cls != Character.class && cls != Character.TYPE) {
                                                    if (cls == BigDecimal.class) {
                                                        return new BigDecimal(string2);
                                                    }
                                                    if (cls == BigInteger.class) {
                                                        return new BigInteger(string2);
                                                    }
                                                }
                                                return Character.valueOf(string2.charAt(0));
                                            }
                                            return Byte.valueOf(Byte.parseByte(string2));
                                        }
                                        return Short.valueOf(Short.parseShort(string2));
                                    }
                                    return Boolean.valueOf(Boolean.parseBoolean(string2));
                                }
                                return Double.valueOf(Double.parseDouble(string2));
                            }
                            return Float.valueOf(Float.parseFloat(string2));
                        }
                        return Long.valueOf(Long.parseLong(string2));
                    }
                } catch (NumberFormatException unused2) {
                    k.f(f36588a, "convertValue: number format error, value = " + string2 + ", targetClass = " + cls.getName(), new Object[0]);
                } catch (Exception e2) {
                    k.f(f36588a, "convertValue: error = " + e2.getMessage(), new Object[0]);
                }
            }
            return Integer.valueOf(Integer.parseInt(string2));
        }
        return obj;
    }

    private static <T extends Enum<T>> T b(Object obj, Class<T> cls) {
        String string;
        T[] enumConstants;
        if (obj == null) {
            return null;
        }
        try {
            return (T) Enum.valueOf(cls, obj.toString());
        } catch (IllegalArgumentException unused) {
            try {
                string = obj.toString();
                enumConstants = cls.getEnumConstants();
            } catch (Exception unused2) {
            }
            if (enumConstants == null) {
                return null;
            }
            for (T t2 : enumConstants) {
                if (t2.name().equalsIgnoreCase(string)) {
                    return t2;
                }
            }
            k.f(f36588a, "parseEnum: invalid enum value, value = " + obj + ", enumClass = " + cls.getName(), new Object[0]);
            return null;
        }
    }

    public static JSONObject c(Object obj) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            String strA = a(obj);
            k.c(f36588a, "bean2JSONObject: json = " + strA, new Object[0]);
            return new JSONObject(strA);
        } catch (JSONException e2) {
            k.a(f36588a, "bean2JSONObject: error = ", e2, new Object[0]);
            return null;
        }
    }

    private static Date d(Object obj) {
        if (obj == null) {
            return null;
        }
        String string = obj.toString();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f36589b, Locale.getDefault());
        try {
            return simpleDateFormat.parse(string);
        } catch (ParseException unused) {
            String[] strArr = {"yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss.SSS", "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "EEE, dd MMM yyyy HH:mm:ss z", "EEE, dd MMM yyyy HH:mm:ss Z"};
            for (int i2 = 0; i2 < 8; i2++) {
                try {
                    simpleDateFormat.applyPattern(strArr[i2]);
                    return simpleDateFormat.parse(string);
                } catch (ParseException unused2) {
                }
            }
            k.f(f36588a, "parseDate: invalid date format, value = " + string, new Object[0]);
            return null;
        }
    }

    private static void e(Object obj, Method method, Field field, JSONObject jSONObject, String str, Class<?> cls) throws Exception {
        Object objOpt = jSONObject.opt(str);
        if (f(objOpt)) {
            if (objOpt instanceof JSONObject) {
                Object objA = a((JSONObject) objOpt, (Class<Object>) (cls == Object.class ? Map.class : cls));
                if (method == null) {
                    field.set(obj, objA);
                    return;
                } else {
                    a(obj, method, cls, objA);
                    return;
                }
            }
            if (k(objOpt.getClass())) {
                if (method == null) {
                    field.set(obj, objOpt);
                } else {
                    a(obj, method, cls, objOpt);
                }
            }
        }
    }

    private static void f(Object obj, Method method, Field field, JSONObject jSONObject, String str, Class<?> cls) throws Exception {
        Object objOpt = jSONObject.opt(str);
        if (f(objOpt)) {
            if (method == null) {
                field.set(obj, new SimpleDateFormat(f36589b, Locale.getDefault()).parse(objOpt.toString()));
            } else {
                a(obj, method, cls, objOpt);
            }
        }
    }

    public static boolean g(Class<?> cls) {
        return f((Object) cls) && Date.class.isAssignableFrom(cls);
    }

    public static boolean h(Class<?> cls) {
        return f((Object) cls) && List.class.isAssignableFrom(cls);
    }

    private static a i(Class<?> cls) {
        a aVar;
        Map<Class<?>, a> map = f36590c;
        a aVar2 = map.get(cls);
        if (aVar2 != null) {
            return aVar2;
        }
        synchronized (i.class) {
            try {
                aVar = map.get(cls);
                if (aVar == null) {
                    a aVar3 = new a(cls.getDeclaredFields(), cls.getDeclaredMethods());
                    map.put(cls, aVar3);
                    aVar = aVar3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    private static <T> T j(Class<T> cls) {
        if (cls == null) {
            return null;
        }
        if (!cls.isInterface()) {
            try {
                return cls.newInstance();
            } catch (Exception e2) {
                k.a(f36588a, "newInstance: error = ", e2, new Object[0]);
                return null;
            }
        }
        if (cls.equals(Map.class)) {
            return (T) new HashMap();
        }
        if (cls.equals(List.class)) {
            return (T) new ArrayList();
        }
        if (cls.equals(Set.class)) {
            return (T) new HashSet();
        }
        k.f(f36588a, "newInstance: unknown interface = " + cls, new Object[0]);
        return null;
    }

    private static boolean k(Class<?> cls) {
        return a(cls) || b(cls) || c(cls);
    }

    private static boolean l(Class<?> cls) {
        return (!f((Object) cls) || k(cls) || d(cls) || e(cls) || f(cls)) ? false : true;
    }

    private static Object a(Object obj, Type type) {
        if (obj == null || type == null) {
            return null;
        }
        try {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (!(obj instanceof JSONObject)) {
                    return obj instanceof JSONArray ? obj : a(obj, (Class<?>) cls);
                }
                try {
                    return a((JSONObject) obj, cls);
                } catch (JSONException e2) {
                    k.f(f36588a, String.format("parseJsonValue: Failed to parse JSONObject to %s, value = %s, error = %s", cls.getName(), obj, e2.getMessage()), new Object[0]);
                }
            } else if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls2 = (Class) parameterizedType.getRawType();
                if (Map.class.isAssignableFrom(cls2)) {
                    if (obj instanceof JSONObject) {
                        return a((JSONObject) obj, parameterizedType);
                    }
                    k.f(f36588a, String.format("parseJsonValue: Expected JSONObject for Map type, got %s, value = %s", obj.getClass().getName(), obj), new Object[0]);
                    return obj;
                }
                if (Collection.class.isAssignableFrom(cls2)) {
                    if (obj instanceof JSONArray) {
                        return a((JSONArray) obj, parameterizedType);
                    }
                    k.f(f36588a, String.format("parseJsonValue: Expected JSONArray for Collection type, got %s, value = %s", obj.getClass().getName(), obj), new Object[0]);
                }
            }
            return obj;
        } catch (Exception e3) {
            k.f(f36588a, String.format("parseJsonValue: Unexpected error when parsing %s to %s, error = %s", obj, Build.VERSION.SDK_INT >= 28 ? type.getTypeName() : type.getClass().getName(), e3.getMessage()), new Object[0]);
            return obj;
        }
    }

    public static Map<String, Object> b(Object obj) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        Class<?> cls = obj.getClass();
        HashMap map = new HashMap();
        a aVarI = i(cls);
        Method[] methodArr = aVarI.f36592b;
        for (Field field : aVarI.f36591a) {
            try {
                String name = field.getName();
                Class<?> type = field.getType();
                String strA = a(name, "get");
                if (a(methodArr, strA)) {
                    objInvoke = cls.getMethod(strA, null).invoke(obj, null);
                } else {
                    boolean zIsAccessible = field.isAccessible();
                    if (!zIsAccessible) {
                        field.setAccessible(true);
                    }
                    Object obj2 = field.get(obj);
                    if (!zIsAccessible) {
                        field.setAccessible(false);
                    }
                    objInvoke = obj2;
                }
                if (objInvoke != null) {
                    if (Date.class.isAssignableFrom(type)) {
                        objInvoke = new SimpleDateFormat(f36589b, Locale.getDefault()).format((Date) objInvoke);
                    }
                    map.put(field.getName(), objInvoke);
                }
            } catch (Exception e2) {
                k.a(f36588a, "bean2Map: error = ", e2, new Object[0]);
            }
        }
        return map;
    }

    private static void c(Object obj, Method method, Field field, JSONObject jSONObject, String str, Class<?> cls) throws Exception {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (f(jSONObjectOptJSONObject)) {
            Type typeA = a(field, 1);
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object objOpt = jSONObjectOptJSONObject.opt(next);
                Object objA = a(objOpt, typeA);
                if (objA != null) {
                    objOpt = objA;
                }
                map.put(next, objOpt);
            }
            if (method != null) {
                a(obj, method, cls, map);
                return;
            }
            field.setAccessible(true);
            field.set(obj, map);
            field.setAccessible(false);
        }
    }

    private static void d(Object obj, Method method, Field field, JSONObject jSONObject, String str, Class<?> cls) throws Exception {
        Object objOpt = jSONObject.opt(str);
        if (f(objOpt)) {
            Object objA = a(objOpt, cls);
            if (method == null) {
                field.set(obj, objA);
            } else {
                a(obj, method, cls, objA);
            }
        }
    }

    public static boolean e(Class<?> cls) {
        return f((Object) cls) && Collection.class.isAssignableFrom(cls);
    }

    public static boolean f(Class<?> cls) {
        return f((Object) cls) && Map.class.isAssignableFrom(cls);
    }

    public static <T> T a(String str, Class<T> cls) throws JSONException {
        if (cls == null || str == null || str.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (e(jSONObject)) {
            return null;
        }
        return (T) a(jSONObject, (Class) cls);
    }

    private static void b(Object obj, Method method, Field field, JSONObject jSONObject, String str, Class<?> cls) throws Exception {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (f(jSONArrayOptJSONArray)) {
            Type typeA = a(field, 0);
            Collection<?> collectionA = typeA instanceof Class ? a(jSONArrayOptJSONArray, cls, (Class) typeA) : a(jSONArrayOptJSONArray, (ParameterizedType) field.getGenericType());
            if (method == null) {
                field.set(obj, collectionA);
            } else {
                a(obj, method, cls, collectionA);
            }
        }
    }

    private static void c(JSONStringer jSONStringer, Object obj) throws JSONException, IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        try {
            jSONStringer.object();
            Class<?> cls = obj.getClass();
            a aVarI = i(cls);
            Method[] methodArr = aVarI.f36592b;
            for (Field field : aVarI.f36591a) {
                try {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        String name = field.getName();
                        Class<?> type = field.getType();
                        String strA = a(name, "get");
                        if (a(methodArr, strA)) {
                            objInvoke = cls.getMethod(strA, null).invoke(obj, null);
                        } else {
                            boolean zIsAccessible = field.isAccessible();
                            if (!zIsAccessible) {
                                field.setAccessible(true);
                            }
                            Object obj2 = field.get(obj);
                            if (!zIsAccessible) {
                                field.setAccessible(false);
                            }
                            objInvoke = obj2;
                        }
                        if (objInvoke != null) {
                            if (Date.class.isAssignableFrom(type)) {
                                objInvoke = new SimpleDateFormat(f36589b, Locale.getDefault()).format((Date) objInvoke);
                            }
                            jSONStringer.key(field.getName());
                            a(jSONStringer, objInvoke);
                        }
                    }
                } catch (Exception e2) {
                    k.a(f36588a, "serializeObject: error = ", e2, new Object[0]);
                }
            }
            jSONStringer.endObject();
        } catch (Exception e3) {
            k.a(f36588a, "serializeObject: error = ", e3, new Object[0]);
        }
    }

    public static boolean d(Class<?> cls) {
        return f((Object) cls) && cls.isArray();
    }

    private static boolean e(Object obj) {
        return obj instanceof JSONObject ? JSONObject.NULL.equals(obj) : obj == null;
    }

    private static boolean f(Object obj) {
        return !e(obj);
    }

    public static <T> T a(Map<?, ?> map, Class<T> cls) throws JSONException {
        return (T) a(new JSONObject(map), (Class) cls);
    }

    private static void b(JSONStringer jSONStringer, Object obj) throws JSONException {
        try {
            jSONStringer.array();
            for (int i2 = 0; i2 < Array.getLength(obj); i2++) {
                a(jSONStringer, Array.get(obj, i2));
            }
            jSONStringer.endArray();
        } catch (Exception e2) {
            k.a(f36588a, "serializeArray: error = ", e2, new Object[0]);
        }
    }

    public static boolean c(Class<?> cls) {
        if (f((Object) cls)) {
            return String.class.isAssignableFrom(cls) || Character.TYPE.isAssignableFrom(cls) || Character.class.isAssignableFrom(cls);
        }
        return false;
    }

    public static <T> T a(JSONObject jSONObject, Class<T> cls) throws JSONException, SecurityException {
        T t2;
        if (cls == null || e(jSONObject) || (t2 = (T) j(cls)) == null) {
            return null;
        }
        if (f((Class<?>) cls)) {
            a(t2, jSONObject);
            return t2;
        }
        a aVarI = i(cls);
        Method[] methodArr = aVarI.f36592b;
        Field[] fieldArr = aVarI.f36591a;
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            jSONObject.opt(next);
            int length = fieldArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    Field field = fieldArr[i2];
                    String name = field.getName();
                    m mVar = (m) field.getAnnotation(m.class);
                    String strA = mVar == null ? name : mVar.a();
                    if (s.a((CharSequence) strA, (CharSequence) next)) {
                        String strA2 = a(name, "set");
                        if (!a(methodArr, strA2)) {
                            field.setAccessible(true);
                            if (jSONObject.opt(strA) != null) {
                                a(t2, (Method) null, field, jSONObject);
                                break;
                            }
                        } else {
                            try {
                                a(t2, cls.getMethod(strA2, field.getType()), field, jSONObject);
                                break;
                            } catch (Exception e2) {
                                k.a(f36588a, "parseObject: error = ", e2, new Object[0]);
                            }
                        }
                    }
                    i2++;
                }
            }
        }
        return t2;
    }

    public static boolean b(Class<?> cls) {
        if (f((Object) cls)) {
            return Byte.TYPE.isAssignableFrom(cls) || Short.TYPE.isAssignableFrom(cls) || Integer.TYPE.isAssignableFrom(cls) || Long.TYPE.isAssignableFrom(cls) || Float.TYPE.isAssignableFrom(cls) || Double.TYPE.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls);
        }
        return false;
    }

    public static String a(Object obj) throws JSONException, IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        JSONStringer jSONStringer = new JSONStringer();
        a(jSONStringer, obj);
        return jSONStringer.toString();
    }

    public static <T> T[] b(String str, Class<T> cls) {
        JSONArray jSONArray;
        if (cls == null || str == null || str.isEmpty()) {
            return null;
        }
        try {
            jSONArray = new JSONArray(str);
        } catch (JSONException e2) {
            k.a(f36588a, "parseArray: error = ", e2, new Object[0]);
            jSONArray = null;
        }
        if (e(jSONArray)) {
            return null;
        }
        return (T[]) a(jSONArray, (Class) cls);
    }

    public static String a(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str2 + str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    private static Type a(Field field, int i2) {
        Type genericType = field.getGenericType();
        if (!(genericType instanceof ParameterizedType)) {
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
        if (actualTypeArguments.length > i2) {
            return actualTypeArguments[i2];
        }
        return null;
    }

    public static <T> Collection<T> a(String str, Class<?> cls, Class<T> cls2) {
        JSONArray jSONArray;
        if (cls == null || cls2 == null || str == null || str.isEmpty()) {
            return null;
        }
        try {
            int iIndexOf = str.indexOf("[");
            String strSubstring = iIndexOf == -1 ? null : str.substring(iIndexOf);
            if (!s.a((CharSequence) strSubstring)) {
                str = strSubstring;
            }
            jSONArray = new JSONArray(str);
        } catch (JSONException e2) {
            k.a(f36588a, "parseCollection: error = ", e2, new Object[0]);
            jSONArray = null;
        }
        if (e(jSONArray)) {
            return null;
        }
        return a(jSONArray, cls, cls2);
    }

    public static <T> Collection<T> a(JSONArray jSONArray, Class<?> cls, Class<T> cls2) throws JSONException, SecurityException {
        if (cls == null || cls2 == null || e(jSONArray)) {
            return null;
        }
        MutableScatterMap$MutableMapWrapper$keys$1 mutableScatterMap$MutableMapWrapper$keys$1 = (Collection<T>) ((Collection) j(cls));
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                Object objA = jSONArray.get(i2);
                if (objA != null) {
                    if (objA instanceof JSONObject) {
                        objA = a((JSONObject) objA, (Class<Object>) cls2);
                    }
                    mutableScatterMap$MutableMapWrapper$keys$1.add(objA);
                }
            } catch (JSONException e2) {
                k.a(f36588a, "parseCollection: error = ", e2, new Object[0]);
            }
        }
        return mutableScatterMap$MutableMapWrapper$keys$1;
    }

    private static Collection<?> a(JSONArray jSONArray, ParameterizedType parameterizedType) {
        ArrayList arrayList = new ArrayList();
        try {
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Class cls = actualTypeArguments.length > 0 ? actualTypeArguments[0] : Object.class;
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(a(jSONArray.get(i2), cls));
            }
            return arrayList;
        } catch (Exception e2) {
            k.f(f36588a, "parseNestedCollection: error = " + e2.getMessage(), new Object[0]);
            return arrayList;
        }
    }

    private static Map<?, ?> a(JSONObject jSONObject, ParameterizedType parameterizedType) {
        HashMap map = new HashMap();
        try {
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Class cls = actualTypeArguments.length > 1 ? actualTypeArguments[1] : Object.class;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, a(jSONObject.opt(next), cls));
            }
            return map;
        } catch (Exception e2) {
            k.f(f36588a, "parseNestedMap: error = " + e2.getMessage(), new Object[0]);
            return map;
        }
    }

    public static void a(Object obj, Method method, Class<?> cls, Object obj2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (obj == null || method == null || obj2 == null || "".equals(obj2)) {
            return;
        }
        try {
            if (Date.class.isAssignableFrom(cls)) {
                method.invoke(obj, new SimpleDateFormat(f36589b, Locale.getDefault()).parse(obj2.toString()));
            } else {
                method.invoke(obj, obj2);
            }
        } catch (Exception e2) {
            k.f(f36588a, "setFieldValue: fieldType = " + cls + ", method = " + method + ", value = " + obj2 + ", error = " + e2.getMessage(), new Object[0]);
        }
    }

    private static void a(Object obj, Method method, Field field, JSONObject jSONObject) {
        String name = field.getName();
        String simpleName = field.getDeclaringClass().getSimpleName();
        m mVar = (m) field.getAnnotation(m.class);
        if (mVar != null) {
            name = mVar.a();
        }
        String str = name;
        Class<?> type = field.getType();
        try {
            if (d(type)) {
                a(obj, method, field, jSONObject, str, type);
                return;
            }
            if (e(type)) {
                b(obj, method, field, jSONObject, str, type);
                return;
            }
            if (f(type)) {
                c(obj, method, field, jSONObject, str, type);
                return;
            }
            if (k(type)) {
                d(obj, method, field, jSONObject, str, type);
                return;
            }
            if (l(type)) {
                e(obj, method, field, jSONObject, str, type);
                return;
            }
            if (g(type)) {
                f(obj, method, field, jSONObject, str, type);
                return;
            }
            k.f(f36588a, "setField: unknown type field = " + field, new Object[0]);
        } catch (Exception e2) {
            String strA = p.a(e2);
            k.f(f36588a, "setField: class = " + simpleName + ", field = " + str + ", error = " + strA, new Object[0]);
        }
    }

    private static void a(Object obj, Method method, Field field, JSONObject jSONObject, String str, Class<?> cls) throws Exception {
        Class<?> componentType = cls.getComponentType();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (f(jSONArrayOptJSONArray)) {
            Object[] objArrA = a(jSONArrayOptJSONArray, (Class) componentType);
            if (method == null) {
                field.set(obj, objArrA);
            } else {
                a(obj, method, cls, objArrA);
            }
        }
    }

    public static void a(Object obj, Map<String, String> map) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = obj.getClass();
        a aVarI = i(cls);
        Method[] methodArr = aVarI.f36592b;
        for (Field field : aVarI.f36591a) {
            try {
                String name = field.getName();
                String strA = a(name, "set");
                if (a(methodArr, strA)) {
                    Method method = cls.getMethod(strA, field.getType());
                    String str = map.get(name);
                    if (str != null && !str.isEmpty()) {
                        method.invoke(obj, a((Object) str, field.getType()));
                    }
                }
            } catch (Exception e2) {
                k.a(f36588a, "setFieldValue: error = ", e2, new Object[0]);
            }
        }
    }

    private static void a(Object obj, JSONObject jSONObject) {
        try {
            Iterator<String> itKeys = jSONObject.keys();
            Map map = (Map) obj;
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.get(next));
            }
        } catch (JSONException e2) {
            k.a(f36588a, "setField: error = ", e2, new Object[0]);
        }
    }

    private static void a(JSONStringer jSONStringer, Object obj) throws JSONException, IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (e(obj)) {
            try {
                jSONStringer.value((Object) null);
                return;
            } catch (JSONException e2) {
                k.a(f36588a, "serialize: error = ", e2, new Object[0]);
                return;
            }
        }
        Class<?> cls = obj.getClass();
        if (l(cls)) {
            c(jSONStringer, obj);
            return;
        }
        if (d(cls)) {
            b(jSONStringer, obj);
            return;
        }
        if (e(cls)) {
            a(jSONStringer, (Collection<?>) obj);
            return;
        }
        if (f(cls)) {
            a(jSONStringer, (Map<?, ?>) obj);
            return;
        }
        if ((obj instanceof Float) && Float.isNaN(((Float) obj).floatValue())) {
            obj = obj;
        }
        try {
            jSONStringer.value(((obj instanceof Double) && Double.isNaN(((Double) obj).doubleValue())) ? 0 : obj);
        } catch (JSONException e3) {
            k.a(f36588a, "serialize: error = ", e3, new Object[0]);
        }
    }

    private static void a(JSONStringer jSONStringer, Collection<?> collection) throws JSONException {
        try {
            jSONStringer.array();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                a(jSONStringer, it.next());
            }
            jSONStringer.endArray();
        } catch (Exception e2) {
            k.a(f36588a, "serializeCollect: error = ", e2, new Object[0]);
        }
    }

    private static void a(JSONStringer jSONStringer, Map<?, ?> map) throws JSONException {
        try {
            jSONStringer.object();
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                jSONStringer.key(key.toString());
                a(jSONStringer, value);
            }
            jSONStringer.endObject();
        } catch (Exception e2) {
            k.a(f36588a, "serializeMap: error = ", e2, new Object[0]);
        }
    }

    public static boolean a(Class<?> cls) {
        if (f((Object) cls)) {
            return Boolean.TYPE.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls);
        }
        return false;
    }

    public static boolean a(Method[] methodArr, String str) {
        for (Method method : methodArr) {
            if (str.equals(method.getName())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] a(JSONArray jSONArray, Class<T> cls) throws JSONException {
        if (cls == null || e(jSONArray)) {
            return null;
        }
        int length = jSONArray.length();
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, length));
        for (int i2 = 0; i2 < length; i2++) {
            try {
                Object objA = jSONArray.get(i2);
                if (objA != null) {
                    if (objA instanceof JSONObject) {
                        objA = a((JSONObject) objA, (Class<Object>) cls);
                    }
                    tArr[i2] = objA;
                }
            } catch (Exception e2) {
                k.a(f36588a, "parseArray: error = ", e2, new Object[0]);
            }
        }
        return tArr;
    }
}
