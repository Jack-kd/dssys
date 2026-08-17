package com.byazt.kxp;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1163, 28})
/* loaded from: classes.dex */
public class hp extends l {
    private hp() {
    }

    public static hp hp() {
        if (l.hp != null) {
            return l.hp;
        }
        synchronized (hp.class) {
            try {
                if (l.hp != null) {
                    return l.hp;
                }
                hp hpVar = new hp();
                l.hp = hpVar;
                return hpVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List<String> l(Class<?> cls) {
        if (!cls.isAnnotationPresent(com.byazt.cv.l.class)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getDeclaredFields()) {
            com.byazt.cv.hp hpVar = (com.byazt.cv.hp) field.getAnnotation(com.byazt.cv.hp.class);
            if (hpVar != null && "NORMAL".equals(hpVar.l())) {
                arrayList.add(hpVar.hp());
            }
        }
        return arrayList;
    }

    public com.byazt.zp.hp hp(com.byazt.zp.hp hpVar) {
        try {
            Class<?> cls = hpVar.getClass();
            if (cls.isAnnotationPresent(com.byazt.cv.l.class)) {
                return "SINGLETON".equals(((com.byazt.cv.l) cls.getAnnotation(com.byazt.cv.l.class)).hp()) ? hpVar : (com.byazt.zp.hp) cls.newInstance();
            }
            return (com.byazt.zp.hp) cls.newInstance();
        } catch (Throwable unused) {
            return hpVar;
        }
    }

    public void hp(Object obj, Map<String, Object> map) throws SecurityException {
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isAnnotationPresent(com.byazt.cv.l.class)) {
            hp(obj, map, cls);
        }
    }

    private static void hp(Object obj, Map<String, Object> map, Class<?> cls) throws SecurityException {
        com.byazt.cv.hp hpVar;
        for (Field field : hp(cls)) {
            if (field != null && field.isAnnotationPresent(com.byazt.cv.hp.class) && (hpVar = (com.byazt.cv.hp) field.getAnnotation(com.byazt.cv.hp.class)) != null) {
                field.setAccessible(true);
                String strHp = hpVar.hp();
                if (TextUtils.isEmpty(strHp)) {
                    strHp = com.byazt.qsi.hp.hp(field.getName(), true);
                }
                if (!TextUtils.isEmpty(strHp)) {
                    com.byazt.lx.l.hp(obj, map, field, strHp);
                }
            }
        }
    }

    public static Field[] hp(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        while (cls != null && cls != Object.class) {
            arrayList.addAll(new ArrayList(Arrays.asList(cls.getDeclaredFields())));
            cls = cls.getSuperclass();
        }
        return (Field[]) arrayList.toArray(new Field[arrayList.size()]);
    }
}
