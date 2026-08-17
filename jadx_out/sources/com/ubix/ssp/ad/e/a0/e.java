package com.ubix.ssp.ad.e.a0;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final List<?> f46236a = Arrays.asList(Boolean.class, Character.class, Byte.class, Short.class, Integer.TYPE, Integer.class, Long.class, Long.TYPE, Float.class, Double.class, Void.class, String.class, Date.class, HashMap.class, Map.class);

    public static String a(Object obj) throws SecurityException {
        String strA;
        StringBuffer stringBuffer;
        if (obj == null) {
            return "null";
        }
        try {
            if (f46236a.contains(obj.getClass())) {
                return obj.toString();
            }
            if (obj instanceof Enum) {
                return ((Enum) obj).name();
            }
            int i2 = 0;
            if (obj.getClass().isArray() && !(obj instanceof int[])) {
                Object[] objArr = (Object[]) obj;
                stringBuffer = new StringBuffer();
                if (!(objArr instanceof String[]) || objArr.length <= 0) {
                    stringBuffer.append("[");
                } else {
                    stringBuffer.append("[\"");
                }
                while (i2 < objArr.length) {
                    stringBuffer.append(a(objArr[i2]));
                    i2++;
                }
                if ((objArr instanceof String[]) && objArr.length > 0) {
                    stringBuffer.append("\"]");
                }
                return stringBuffer.toString();
            }
            if (!(obj instanceof Collection)) {
                if (obj instanceof Class) {
                    return obj.getClass().getName();
                }
                StringBuilder sb = new StringBuilder();
                sb.append(":{");
                Field[] declaredFields = obj.getClass().getDeclaredFields();
                int length = declaredFields.length;
                while (i2 < length) {
                    Field field = declaredFields[i2];
                    if (!Modifier.isStatic(field.getModifiers())) {
                        field.setAccessible(true);
                        sb.append("\"" + field.getName() + "\"");
                        sb.append(":");
                        try {
                            if (field.get(obj) instanceof String) {
                                strA = "\"" + a(field.get(obj)) + "\"";
                            } else {
                                strA = a(field.get(obj));
                            }
                            sb.append(strA);
                            sb.append(",");
                        } catch (IllegalAccessException e2) {
                            e = e2;
                            e.printStackTrace();
                            i2++;
                        } catch (IllegalArgumentException e3) {
                            e = e3;
                            e.printStackTrace();
                            i2++;
                        }
                    }
                    i2++;
                }
                sb.append("}");
                return sb.toString().replaceFirst(":\\{", "{").replaceAll(",\\}", "}").replaceAll(",:", ",").replaceAll("::", ":").replaceAll("\\[:\\{", "[{");
            }
            Iterator it = ((Collection) obj).iterator();
            stringBuffer = new StringBuffer();
            stringBuffer.append("[");
            while (it.hasNext()) {
                if (i2 > 0) {
                    stringBuffer.append(",");
                }
                stringBuffer.append(a(it.next()));
                i2++;
            }
            stringBuffer.append("]");
            return stringBuffer.toString();
        } catch (SecurityException e4) {
            e4.printStackTrace();
            return "";
        }
    }
}
