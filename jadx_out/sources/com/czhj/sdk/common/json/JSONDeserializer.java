package com.czhj.sdk.common.json;

import androidx.datastore.preferences.protobuf.Internal;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.StringTokenizer;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class JSONDeserializer {
    public static <T> T Deserialize(Class<T> cls, Object obj) throws MatchTypeException {
        if (obj instanceof JSONObject) {
            return (T) DeserializeObject(cls, (JSONObject) obj);
        }
        if (obj instanceof JSONArray) {
            return (T) DeserializeArray(cls, (JSONArray) obj);
        }
        return null;
    }

    private static <T> T DeserializeArray(Class<T> cls, JSONArray jSONArray) throws MatchTypeException {
        if (cls.isArray()) {
            return (T) DeserializeArrayImpl(cls.getComponentType(), jSONArray);
        }
        throw new MatchTypeException("Assigning json array to non array type: " + cls.getCanonicalName());
    }

    private static Object DeserializeArrayImpl(Class<?> cls, JSONArray jSONArray) throws MatchTypeException {
        Object objDeserialize;
        Object objNewInstance = Array.newInstance(cls, jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                if (isPrimitive(jSONArray.get(i2).getClass())) {
                    objDeserialize = jSONArray.get(i2);
                } else {
                    Object obj = jSONArray.get(i2);
                    if (obj != null) {
                        objDeserialize = Deserialize(cls, obj);
                    } else {
                        Array.set(objNewInstance, i2, null);
                    }
                }
                Array.set(objNewInstance, i2, objDeserialize);
            } catch (Throwable th) {
                throw new MatchTypeException("JSON error while deserializing array: " + th.toString());
            }
        }
        return objNewInstance;
    }

    private static <T> List<T> DeserializeList(Class<?> cls, Class<?> cls2, JSONArray jSONArray) throws MatchTypeException {
        try {
            Object objDeserializeArrayImpl = DeserializeArrayImpl(cls2, jSONArray);
            Internal.DoubleList doubleList = (List<T>) ((List) cls.getConstructor(null).newInstance(null));
            for (int i2 = 0; i2 < Array.getLength(objDeserializeArrayImpl); i2++) {
                doubleList.add(Array.get(objDeserializeArrayImpl, i2));
            }
            return doubleList;
        } catch (Exception e2) {
            throw new MatchTypeException("Exception deserializing list: " + e2.getMessage());
        }
    }

    private static <T> T DeserializeObject(Class<T> cls, JSONObject jSONObject) throws MatchTypeException, SecurityException {
        Object objDeserialize;
        T t2 = (T) createTarget(cls);
        if (t2 == null) {
            return null;
        }
        for (Field field : t2.getClass().getDeclaredFields()) {
            if (isValidDeserializableField(field)) {
                field.setAccessible(true);
                Class<?> type = field.getType();
                try {
                    if (isPrimitive(type)) {
                        objDeserialize = jSONObject.opt(field.getName());
                    } else {
                        Object objOpt = jSONObject.opt(field.getName());
                        if (objOpt == null) {
                            field.set(t2, null);
                        } else if (List.class.isAssignableFrom(type)) {
                            StringTokenizer stringTokenizer = new StringTokenizer(((ParameterizedType) field.getGenericType()).getActualTypeArguments()[0].toString(), " ");
                            stringTokenizer.nextToken();
                            objDeserialize = DeserializeList(type, Class.forName(stringTokenizer.nextToken()), (JSONArray) objOpt);
                        } else {
                            objDeserialize = Deserialize(type, objOpt);
                        }
                    }
                    field.set(t2, objDeserialize);
                } catch (Throwable th) {
                    throw new MatchTypeException("Setting " + field.getName() + " in " + type.getCanonicalName() + " got error: " + th.toString());
                }
            }
        }
        return t2;
    }

    private static <T> T createTarget(Class<T> cls) {
        try {
            if (!cls.isMemberClass()) {
                return cls.newInstance();
            }
            Class<?> enclosingClass = cls.getEnclosingClass();
            if (enclosingClass == null) {
                return null;
            }
            Object objNewInstance = enclosingClass.newInstance();
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(enclosingClass);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(objNewInstance);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean isPrimitive(Class<?> cls) {
        return cls == Character.class || cls == Character.TYPE || cls == Byte.class || cls == Byte.TYPE || cls == Short.class || cls == Short.TYPE || cls == Integer.class || cls == Integer.TYPE || cls == Long.class || cls == Long.TYPE || cls == Float.class || cls == Float.TYPE || cls == Double.class || cls == Double.TYPE || cls == Boolean.class || cls == Boolean.TYPE || cls == String.class;
    }

    private static boolean isValidDeserializableField(Field field) {
        return (field.isAnnotationPresent(Transient.class) || field.getName().startsWith("this$")) ? false : true;
    }
}
