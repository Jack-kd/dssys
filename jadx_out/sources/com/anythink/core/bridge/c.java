package com.anythink.core.bridge;

import android.os.Bundle;
import android.util.Log;
import com.anythink.core.bridge.entity.DataField;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1771a = "c";

    /* renamed from: b, reason: collision with root package name */
    private static final Map<Class<?>, List<a>> f1772b = new ConcurrentHashMap();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final Field f1773a;

        /* renamed from: b, reason: collision with root package name */
        final String f1774b;

        public a(Field field, String str) {
            this.f1773a = field;
            this.f1774b = str;
        }
    }

    public static Bundle a(Object obj) {
        Bundle bundle = new Bundle();
        try {
            for (a aVar : a(obj.getClass())) {
                try {
                    Object obj2 = aVar.f1773a.get(obj);
                    if (obj2 != null) {
                        String str = aVar.f1774b;
                        if (obj2 instanceof String) {
                            bundle.putString(str, (String) obj2);
                        } else if (obj2 instanceof String[]) {
                            bundle.putStringArray(str, (String[]) obj2);
                        } else if (obj2 instanceof Integer) {
                            bundle.putInt(str, ((Integer) obj2).intValue());
                        } else if (obj2 instanceof Boolean) {
                            bundle.putBoolean(str, ((Boolean) obj2).booleanValue());
                        } else if (obj2 instanceof Long) {
                            bundle.putLong(str, ((Long) obj2).longValue());
                        } else if (obj2 instanceof Double) {
                            bundle.putDouble(str, ((Double) obj2).doubleValue());
                        } else if (obj2 instanceof Float) {
                            bundle.putFloat(str, ((Float) obj2).floatValue());
                        } else if (obj2 instanceof Byte) {
                            bundle.putByte(str, ((Byte) obj2).byteValue());
                        } else if (obj2 instanceof Short) {
                            bundle.putShort(str, ((Short) obj2).shortValue());
                        } else if (obj2 instanceof com.anythink.core.bridge.entity.b) {
                            bundle.putBundle(str, a(obj2));
                        } else {
                            Log.e(f1771a, "putToBundle() >>> unsupported type.");
                        }
                    }
                } catch (Throwable th) {
                    Log.e(f1771a, "toBundle() >>> field get failed.", th);
                }
            }
        } catch (Throwable unused) {
        }
        return bundle;
    }

    private static <T extends com.anythink.core.bridge.entity.b> T a(Bundle bundle, Class<T> cls) {
        Object objValueOf;
        try {
            T tNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
            for (a aVar : a((Class<?>) cls)) {
                String str = aVar.f1774b;
                Class<?> type = aVar.f1773a.getType();
                if (type == String.class) {
                    objValueOf = bundle.getString(str);
                } else if (type == String[].class) {
                    objValueOf = bundle.getStringArray(str);
                } else if (type != Integer.TYPE && type != Integer.class) {
                    if (type != Boolean.TYPE && type != Boolean.class) {
                        if (type != Long.TYPE && type != Long.class) {
                            if (type != Double.TYPE && type != Double.class) {
                                if (type != Float.TYPE && type != Float.class) {
                                    if (type != Byte.TYPE && type != Byte.class) {
                                        if (type != Short.TYPE && type != Short.class) {
                                            if (type == Bundle.class) {
                                                objValueOf = bundle.getBundle(str);
                                            } else {
                                                Log.e(f1771a, "getFromBundle() >>> unsupported type.");
                                                objValueOf = null;
                                            }
                                        } else {
                                            objValueOf = Short.valueOf(bundle.getShort(str));
                                        }
                                    } else {
                                        objValueOf = Byte.valueOf(bundle.getByte(str));
                                    }
                                } else {
                                    objValueOf = Float.valueOf(bundle.getFloat(str));
                                }
                            } else {
                                objValueOf = Double.valueOf(bundle.getDouble(str));
                            }
                        } else {
                            objValueOf = Long.valueOf(bundle.getLong(str));
                        }
                    } else {
                        objValueOf = Boolean.valueOf(bundle.getBoolean(str));
                    }
                } else {
                    objValueOf = Integer.valueOf(bundle.getInt(str));
                }
                if (objValueOf != null) {
                    try {
                        if (objValueOf instanceof Bundle) {
                            objValueOf = a((Bundle) objValueOf, aVar.f1773a.getType());
                        }
                        aVar.f1773a.set(tNewInstance, objValueOf);
                    } catch (Throwable th) {
                        Log.e(f1771a, "parse() >>> field set failed.", th);
                    }
                }
            }
            return tNewInstance;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static List<a> a(Class<?> cls) throws SecurityException {
        List<a> list = f1772b.get(cls);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getDeclaredFields()) {
            DataField dataField = (DataField) field.getAnnotation(DataField.class);
            if (dataField != null) {
                field.setAccessible(true);
                arrayList.add(new a(field, dataField.value()));
            }
        }
        f1772b.put(cls, arrayList);
        return arrayList;
    }

    private static void a(Bundle bundle, String str, Object obj) {
        if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return;
        }
        if (obj instanceof String[]) {
            bundle.putStringArray(str, (String[]) obj);
            return;
        }
        if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Float) {
            bundle.putFloat(str, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Byte) {
            bundle.putByte(str, ((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Short) {
            bundle.putShort(str, ((Short) obj).shortValue());
        } else if (obj instanceof com.anythink.core.bridge.entity.b) {
            bundle.putBundle(str, a(obj));
        } else {
            Log.e(f1771a, "putToBundle() >>> unsupported type.");
        }
    }

    private static Object a(Bundle bundle, String str, Class<?> cls) {
        if (cls == String.class) {
            return bundle.getString(str);
        }
        if (cls == String[].class) {
            return bundle.getStringArray(str);
        }
        if (cls != Integer.TYPE && cls != Integer.class) {
            if (cls != Boolean.TYPE && cls != Boolean.class) {
                if (cls != Long.TYPE && cls != Long.class) {
                    if (cls != Double.TYPE && cls != Double.class) {
                        if (cls != Float.TYPE && cls != Float.class) {
                            if (cls != Byte.TYPE && cls != Byte.class) {
                                if (cls != Short.TYPE && cls != Short.class) {
                                    if (cls == Bundle.class) {
                                        return bundle.getBundle(str);
                                    }
                                    Log.e(f1771a, "getFromBundle() >>> unsupported type.");
                                    return null;
                                }
                                return Short.valueOf(bundle.getShort(str));
                            }
                            return Byte.valueOf(bundle.getByte(str));
                        }
                        return Float.valueOf(bundle.getFloat(str));
                    }
                    return Double.valueOf(bundle.getDouble(str));
                }
                return Long.valueOf(bundle.getLong(str));
            }
            return Boolean.valueOf(bundle.getBoolean(str));
        }
        return Integer.valueOf(bundle.getInt(str));
    }
}
