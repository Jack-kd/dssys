package com.ubix.ssp.ad.e.y.c;

import com.anythink.core.common.f.f;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes5.dex */
public final class g {
    private g() {
    }

    public static <T extends f> String a(T t2) throws SecurityException, IllegalArgumentException {
        StringBuilder sb;
        if (t2 == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            a(null, t2, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e2) {
            e = e2;
            sb = new StringBuilder();
            sb.append("Error printing proto: ");
            sb.append(e.getMessage());
            return sb.toString();
        } catch (InvocationTargetException e3) {
            e = e3;
            sb = new StringBuilder();
            sb.append("Error printing proto: ");
            sb.append(e.getMessage());
            return sb.toString();
        }
    }

    private static String b(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\'') {
                sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private static String c(String str) {
        if (!str.startsWith("http") && str.length() > 200) {
            str = str.substring(0, 200) + "[...]";
        }
        return b(str);
    }

    private static String a(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (i2 == 0) {
                cCharAt = Character.toLowerCase(cCharAt);
            } else if (Character.isUpperCase(cCharAt)) {
                stringBuffer.append('_');
                cCharAt = Character.toLowerCase(cCharAt);
            }
            stringBuffer.append(cCharAt);
        }
        return stringBuffer.toString();
    }

    private static void a(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof f)) {
            if (!(obj instanceof Map)) {
                String strA = a(str);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(strA);
                stringBuffer2.append(": ");
                if (obj instanceof String) {
                    String strC = c((String) obj);
                    stringBuffer2.append("\"");
                    stringBuffer2.append(strC);
                    stringBuffer2.append("\"");
                } else if (obj instanceof byte[]) {
                    a((byte[]) obj, stringBuffer2);
                } else {
                    stringBuffer2.append(obj);
                }
                stringBuffer2.append("\n");
                return;
            }
            String strA2 = a(str);
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(strA2);
                stringBuffer2.append(" <\n");
                int length = stringBuffer.length();
                stringBuffer.append("  ");
                a(f.a.f3242b, entry.getKey(), stringBuffer, stringBuffer2);
                a(f.a.f3244d, entry.getValue(), stringBuffer, stringBuffer2);
                stringBuffer.setLength(length);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
            return;
        }
        int length2 = stringBuffer.length();
        if (str != null) {
            stringBuffer2.append(stringBuffer);
            stringBuffer2.append(a(str));
            stringBuffer2.append(" <\n");
            stringBuffer.append("  ");
        }
        Class<?> cls = obj.getClass();
        for (Field field : cls.getFields()) {
            int modifiers = field.getModifiers();
            String name = field.getName();
            if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                Class<?> type = field.getType();
                Object obj2 = field.get(obj);
                if (!type.isArray() || type.getComponentType() == Byte.TYPE) {
                    a(name, obj2, stringBuffer, stringBuffer2);
                } else {
                    int length3 = obj2 == null ? 0 : Array.getLength(obj2);
                    for (int i2 = 0; i2 < length3; i2++) {
                        a(name, Array.get(obj2, i2), stringBuffer, stringBuffer2);
                    }
                }
            }
        }
        for (Method method : cls.getMethods()) {
            String name2 = method.getName();
            if (name2.startsWith("set")) {
                String strSubstring = name2.substring(3);
                try {
                    if (((Boolean) cls.getMethod("has" + strSubstring, null).invoke(obj, null)).booleanValue()) {
                        a(strSubstring, cls.getMethod("get" + strSubstring, null).invoke(obj, null), stringBuffer, stringBuffer2);
                    }
                } catch (NoSuchMethodException unused) {
                }
            }
        }
        if (str != null) {
            stringBuffer.setLength(length2);
            stringBuffer2.append(stringBuffer);
            stringBuffer2.append(">\n");
        }
    }

    private static void a(byte[] bArr, StringBuffer stringBuffer) {
        if (bArr == null) {
            stringBuffer.append("\"\"");
            return;
        }
        stringBuffer.append('\"');
        for (byte b3 : bArr) {
            int i2 = b3 & 255;
            if (i2 == 92 || i2 == 34) {
                stringBuffer.append('\\');
            } else {
                if (i2 < 32 || i2 >= 127) {
                    stringBuffer.append(String.format("\\%03o", Integer.valueOf(i2)));
                }
            }
            stringBuffer.append((char) i2);
        }
        stringBuffer.append('\"');
    }
}
