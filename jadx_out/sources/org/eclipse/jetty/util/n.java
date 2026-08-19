package org.eclipse.jetty.util;

import com.baidu.mobads.sdk.api.IAdInterListener;
import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public static final R1.c f52678a = R1.b.a(n.class);

    /* renamed from: b, reason: collision with root package name */
    public static int f52679b = 13;

    /* renamed from: c, reason: collision with root package name */
    public static int f52680c = 10;

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap f52681d;

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap f52682e;

    /* renamed from: f, reason: collision with root package name */
    public static final HashMap f52683f;

    static {
        HashMap map = new HashMap();
        f52681d = map;
        Class cls = Boolean.TYPE;
        map.put("boolean", cls);
        Class cls2 = Byte.TYPE;
        map.put("byte", cls2);
        Class cls3 = Character.TYPE;
        map.put("char", cls3);
        Class cls4 = Double.TYPE;
        map.put("double", cls4);
        Class cls5 = Float.TYPE;
        map.put("float", cls5);
        Class cls6 = Integer.TYPE;
        map.put(IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL, cls6);
        Class cls7 = Long.TYPE;
        map.put("long", cls7);
        Class cls8 = Short.TYPE;
        map.put("short", cls8);
        Class cls9 = Void.TYPE;
        map.put("void", cls9);
        map.put("java.lang.Boolean.TYPE", cls);
        map.put("java.lang.Byte.TYPE", cls2);
        map.put("java.lang.Character.TYPE", cls3);
        map.put("java.lang.Double.TYPE", cls4);
        map.put("java.lang.Float.TYPE", cls5);
        map.put("java.lang.Integer.TYPE", cls6);
        map.put("java.lang.Long.TYPE", cls7);
        map.put("java.lang.Short.TYPE", cls8);
        map.put("java.lang.Void.TYPE", cls9);
        map.put("java.lang.Boolean", Boolean.class);
        map.put("java.lang.Byte", Byte.class);
        map.put("java.lang.Character", Character.class);
        map.put("java.lang.Double", Double.class);
        map.put("java.lang.Float", Float.class);
        map.put("java.lang.Integer", Integer.class);
        map.put("java.lang.Long", Long.class);
        map.put("java.lang.Short", Short.class);
        map.put("Boolean", Boolean.class);
        map.put("Byte", Byte.class);
        map.put("Character", Character.class);
        map.put("Double", Double.class);
        map.put("Float", Float.class);
        map.put("Integer", Integer.class);
        map.put("Long", Long.class);
        map.put("Short", Short.class);
        map.put(null, cls9);
        map.put("string", String.class);
        map.put("String", String.class);
        map.put("java.lang.String", String.class);
        HashMap map2 = new HashMap();
        f52682e = map2;
        map2.put(cls, "boolean");
        map2.put(cls2, "byte");
        map2.put(cls3, "char");
        map2.put(cls4, "double");
        map2.put(cls5, "float");
        map2.put(cls6, IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL);
        map2.put(cls7, "long");
        map2.put(cls8, "short");
        map2.put(cls9, "void");
        map2.put(Boolean.class, "java.lang.Boolean");
        map2.put(Byte.class, "java.lang.Byte");
        map2.put(Character.class, "java.lang.Character");
        map2.put(Double.class, "java.lang.Double");
        map2.put(Float.class, "java.lang.Float");
        map2.put(Integer.class, "java.lang.Integer");
        map2.put(Long.class, "java.lang.Long");
        map2.put(Short.class, "java.lang.Short");
        map2.put(null, "void");
        map2.put(String.class, "java.lang.String");
        HashMap map3 = new HashMap();
        f52683f = map3;
        try {
            Class[] clsArr = {String.class};
            map3.put(cls, Boolean.class.getMethod("valueOf", clsArr));
            map3.put(cls2, Byte.class.getMethod("valueOf", clsArr));
            map3.put(cls4, Double.class.getMethod("valueOf", clsArr));
            map3.put(cls5, Float.class.getMethod("valueOf", clsArr));
            map3.put(cls6, Integer.class.getMethod("valueOf", clsArr));
            map3.put(cls7, Long.class.getMethod("valueOf", clsArr));
            map3.put(cls8, Short.class.getMethod("valueOf", clsArr));
            map3.put(Boolean.class, Boolean.class.getMethod("valueOf", clsArr));
            map3.put(Byte.class, Byte.class.getMethod("valueOf", clsArr));
            map3.put(Double.class, Double.class.getMethod("valueOf", clsArr));
            map3.put(Float.class, Float.class.getMethod("valueOf", clsArr));
            map3.put(Integer.class, Integer.class.getMethod("valueOf", clsArr));
            map3.put(Long.class, Long.class.getMethod("valueOf", clsArr));
            map3.put(Short.class, Short.class.getMethod("valueOf", clsArr));
        } catch (Exception e2) {
            throw new Error(e2);
        }
    }

    public static List a(Object[] objArr) {
        return objArr == null ? Collections.EMPTY_LIST : Arrays.asList(objArr);
    }

    public static byte b(byte b3) {
        byte b4 = (byte) (((b3 & 31) + ((b3 >> 6) * 25)) - 16);
        if (b4 >= 0 && b4 <= 15) {
            return b4;
        }
        throw new IllegalArgumentException("!hex " + ((int) b3));
    }

    public static int c(int i2) {
        int i3 = ((i2 & 31) + ((i2 >> 6) * 25)) - 16;
        if (i3 >= 0 && i3 <= 15) {
            return i3;
        }
        throw new NumberFormatException("!hex " + i2);
    }

    public static Object call(Class<?> cls, String str, Object obj, Object[] objArr) throws NoSuchMethodException, SecurityException, InvocationTargetException {
        Method[] methods = cls.getMethods();
        for (int i2 = 0; methods != null && i2 < methods.length; i2++) {
            if (methods[i2].getName().equals(str) && methods[i2].getParameterTypes().length == objArr.length) {
                if (Modifier.isStatic(methods[i2].getModifiers()) == (obj == null) && (obj != null || methods[i2].getDeclaringClass() == cls)) {
                    try {
                        return methods[i2].invoke(obj, objArr);
                    } catch (IllegalAccessException e2) {
                        f52678a.h(e2);
                    } catch (IllegalArgumentException e3) {
                        f52678a.h(e3);
                    }
                }
            }
        }
        throw new NoSuchMethodException(str);
    }

    public static byte[] d(String str, int i2) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i3 = 0; i3 < str.length(); i3 += 2) {
            bArr[i3 / 2] = (byte) e(str, i3, 2, i2);
        }
        return bArr;
    }

    public static int e(String str, int i2, int i3, int i4) {
        if (i3 < 0) {
            i3 = str.length() - i2;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            int iC = c(str.charAt(i2 + i6));
            if (iC < 0 || iC >= i4) {
                throw new NumberFormatException(str.substring(i2, i3 + i2));
            }
            i5 = (i5 * i4) + iC;
        }
        return i5;
    }

    public static int f(byte[] bArr, int i2, int i3, int i4) {
        if (i3 < 0) {
            i3 = bArr.length - i2;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            char c2 = (char) (bArr[i2 + i6] & 255);
            int i7 = c2 - '0';
            if ((i7 < 0 || i7 >= i4 || i7 >= 10) && (c2 - '7' < 10 || i7 >= i4)) {
                i7 = c2 - 'W';
            }
            if (i7 < 0 || i7 >= i4) {
                throw new NumberFormatException(new String(bArr, i2, i3));
            }
            i5 = (i5 * i4) + i7;
        }
        return i5;
    }

    public static void g(byte b3, Appendable appendable) throws IOException {
        int i2 = ((b3 & 240) >> 4) & 15;
        try {
            appendable.append((char) ((i2 > 9 ? 55 : 48) + i2));
            int i3 = b3 & ek.f49295m;
            appendable.append((char) ((i3 > 9 ? 55 : 48) + i3));
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String h(byte b3) {
        return i(new byte[]{b3}, 0, 1);
    }

    public static String i(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            int i5 = bArr[i4] & 255;
            int i6 = (i5 / 16) % 16;
            int i7 = i6 + 48;
            if (i7 > 57) {
                i7 = i6 + 55;
            }
            sb.append((char) i7);
            int i8 = i5 % 16;
            int i9 = i8 + 48;
            if (i9 > 57) {
                i9 = i8 + 87;
            }
            sb.append((char) i9);
        }
        return sb.toString();
    }

    public static String j(byte[] bArr, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 : bArr) {
            int i4 = i3 & 255;
            int i5 = (i4 / i2) % i2;
            int i6 = i5 + 48;
            if (i6 > 57) {
                i6 = i5 + 87;
            }
            sb.append((char) i6);
            int i7 = i4 % i2;
            int i8 = i7 + 48;
            if (i8 > 57) {
                i8 = i7 + 87;
            }
            sb.append((char) i8);
        }
        return sb.toString();
    }
}
