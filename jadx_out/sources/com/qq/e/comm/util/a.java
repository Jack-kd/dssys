package com.qq.e.comm.util;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<String, Boolean> f35388a = new HashMap();

    private static String a(Class cls, String str, Class... clsArr) {
        if (cls == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(cls.getName());
        sb.append("#");
        sb.append(str);
        for (Class cls2 : clsArr) {
            sb.append("_");
            sb.append(cls2.getName());
        }
        return sb.toString();
    }

    private static boolean b(Class cls, String str, Class... clsArr) throws NoSuchMethodException, SecurityException {
        String strA = a(cls, str, clsArr);
        Map<String, Boolean> map = f35388a;
        Boolean bool = map.get(strA);
        if (bool != null) {
            return Boolean.TRUE.equals(bool);
        }
        try {
            cls.getDeclaredMethod(str, clsArr);
            map.put(strA, Boolean.TRUE);
            return true;
        } catch (NoSuchMethodException unused) {
            f35388a.put(strA, Boolean.FALSE);
            return false;
        }
    }

    public static boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        return b(obj.getClass(), "onRenderFail", new Class[0]);
    }

    public static boolean b(Object obj) {
        if (obj == null) {
            return false;
        }
        return b(obj.getClass(), "onRenderSuccess", new Class[0]);
    }
}
