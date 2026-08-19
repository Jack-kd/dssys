package com.czhj.sdk.common.json;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class JSONSerializer {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private static final String[] REPLACEMENT_CHARS = new String[128];
    private static final Pattern linePattern;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            REPLACEMENT_CHARS[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        HTML_SAFE_REPLACEMENT_CHARS = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
        linePattern = Pattern.compile("_(\\w)");
    }

    @SuppressLint({"UseSparseArrays"})
    public static String Serialize(Object obj) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), null, false, false);
    }

    private static String SerializeArray(Object obj, HashMap<Integer, Object> map, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            sb.append(Serialize(Array.get(obj, i2), map, null, z2, z3));
            if (i2 < length - 1) {
                sb.append(",");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private static String SerializeMap(Map map, HashMap<Integer, Object> map2, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        boolean z4 = false;
        for (Map.Entry entry : map.entrySet()) {
            String string = entry.getKey().toString();
            Object value = entry.getValue();
            if (z4) {
                sb.append(",");
            }
            String strSerializeString = SerializeString(string);
            if (z2) {
                strSerializeString = lineToHump(strSerializeString);
            }
            sb.append(strSerializeString);
            sb.append(":");
            sb.append(Serialize(value, map2, null, z2, z3));
            z4 = true;
        }
        sb.append("}");
        return sb.toString();
    }

    private static String SerializeObject(Object obj, HashMap<Integer, Object> map, boolean z2, boolean z3) throws SecurityException {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        boolean z4 = false;
        for (Field field : obj.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            try {
                Object obj2 = field.get(obj);
                String name = field.getName();
                boolean zIsStatic = Modifier.isStatic(field.getModifiers());
                boolean zIsAnnotationPresent = field.isAnnotationPresent(Transient.class);
                if (!name.startsWith("this$") && !zIsStatic && (obj2 == null || !zIsAnnotationPresent)) {
                    if (z4) {
                        sb.append(",");
                    }
                    String strSerializeString = SerializeString(name);
                    if (z2) {
                        strSerializeString = lineToHump(strSerializeString);
                    }
                    sb.append(strSerializeString);
                    sb.append(":");
                    sb.append(Serialize(obj2, map, null, z2, z3));
                    z4 = true;
                }
            } catch (Throwable th) {
                SigmobLog.e("json seriallize error", th);
            }
        }
        sb.append("}");
        return sb.toString();
    }

    private static String SerializePrimitive(Object obj) {
        return obj.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0032 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:3:0x0009, B:5:0x0014, B:7:0x001c, B:21:0x003c, B:19:0x0032, B:20:0x0037, B:23:0x0041, B:24:0x0045), top: B:29:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String SerializeString(java.lang.String r8) {
        /*
            java.lang.String[] r0 = com.czhj.sdk.common.json.JSONSerializer.HTML_SAFE_REPLACEMENT_CHARS
            java.io.StringWriter r1 = new java.io.StringWriter
            r1.<init>()
            r2 = 34
            r1.write(r2)     // Catch: java.lang.Throwable -> L21
            int r3 = r8.length()     // Catch: java.lang.Throwable -> L21
            r4 = 0
            r5 = r4
        L12:
            if (r4 >= r3) goto L3f
            char r6 = r8.charAt(r4)     // Catch: java.lang.Throwable -> L21
            r7 = 128(0x80, float:1.8E-43)
            if (r6 >= r7) goto L23
            r6 = r0[r6]     // Catch: java.lang.Throwable -> L21
            if (r6 != 0) goto L30
            goto L3c
        L21:
            r8 = move-exception
            goto L49
        L23:
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r7) goto L2a
            java.lang.String r6 = "\\u2028"
            goto L30
        L2a:
            r7 = 8233(0x2029, float:1.1537E-41)
            if (r6 != r7) goto L3c
            java.lang.String r6 = "\\u2029"
        L30:
            if (r5 >= r4) goto L37
            int r7 = r4 - r5
            r1.write(r8, r5, r7)     // Catch: java.lang.Throwable -> L21
        L37:
            r1.write(r6)     // Catch: java.lang.Throwable -> L21
            int r5 = r4 + 1
        L3c:
            int r4 = r4 + 1
            goto L12
        L3f:
            if (r5 >= r3) goto L45
            int r3 = r3 - r5
            r1.write(r8, r5, r3)     // Catch: java.lang.Throwable -> L21
        L45:
            r1.write(r2)     // Catch: java.lang.Throwable -> L21
            goto L4e
        L49:
            java.lang.String r0 = "SerializeString"
            com.czhj.sdk.logger.SigmobLog.e(r0, r8)
        L4e:
            java.lang.String r8 = r1.toString()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.sdk.common.json.JSONSerializer.SerializeString(java.lang.String):java.lang.String");
    }

    private static String lineToHump(String str) {
        Pattern pattern = linePattern;
        if (!pattern.matcher(str).find()) {
            return str;
        }
        Matcher matcher = pattern.matcher(str.toLowerCase());
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, matcher.group(1).toUpperCase());
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static String Serialize(Object obj, String str) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), str, false, false);
    }

    public static String Serialize(Object obj, String str, boolean z2) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), str, z2, false);
    }

    public static String Serialize(Object obj, String str, boolean z2, boolean z3) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), str, z2, z3);
    }

    private static String Serialize(Object obj, HashMap<Integer, Object> map, String str, boolean z2, boolean z3) throws CyclicObjectException {
        String strSerializePrimitive;
        if (obj == null) {
            return "null";
        }
        Class<?> cls = obj.getClass();
        if (obj instanceof String) {
            strSerializePrimitive = SerializeString((String) obj);
        } else if (cls.isPrimitive() || cls == Boolean.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == Byte.class || cls == Character.class) {
            strSerializePrimitive = SerializePrimitive(obj);
        } else {
            if (!z3 && map.get(Integer.valueOf(obj.hashCode())) != null) {
                return "null";
            }
            strSerializePrimitive = null;
        }
        map.put(Integer.valueOf(obj.hashCode()), obj);
        if (TextUtils.isEmpty(strSerializePrimitive)) {
            if (obj instanceof List) {
                List list = (List) obj;
                strSerializePrimitive = SerializeArray(list.toArray(new Object[list.size()]), map, z2, z3);
            } else {
                strSerializePrimitive = obj instanceof Map ? SerializeMap((Map) obj, map, z2, z3) : cls.isArray() ? SerializeArray(obj, map, z2, z3) : SerializeObject(obj, map, z2, z3);
            }
        }
        if (TextUtils.isEmpty(str)) {
            return strSerializePrimitive;
        }
        StringBuilder sb = new StringBuilder("{");
        if (z2) {
            str = lineToHump(str);
        }
        sb.append(SerializeString(str));
        sb.append(':');
        sb.append(strSerializePrimitive);
        sb.append('}');
        return sb.toString();
    }
}
