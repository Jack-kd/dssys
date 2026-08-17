package com.byazt.lx;

import com.byazt.jg.a;
import com.byazt.jg.eb;
import com.byazt.jg.j;
import com.byazt.jg.jx;
import com.byazt.jg.s;
import com.byazt.jg.w;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1624, 34})
/* loaded from: classes3.dex */
public class l {
    public static final Map<Class, hp> hp;

    static {
        HashMap map = new HashMap();
        hp = map;
        a aVar = new a();
        s sVar = new s();
        eb ebVar = new eb();
        com.byazt.jg.l lVar = new com.byazt.jg.l();
        j jVar = new j();
        w wVar = new w();
        com.byazt.jg.hp hpVar = new com.byazt.jg.hp();
        jx jxVar = new jx();
        map.put(Integer.class, aVar);
        map.put(Integer.TYPE, aVar);
        map.put(Short.class, sVar);
        map.put(Short.TYPE, sVar);
        map.put(Long.class, ebVar);
        map.put(Long.TYPE, ebVar);
        map.put(Byte.class, lVar);
        map.put(Byte.TYPE, lVar);
        map.put(Double.class, jVar);
        map.put(Double.TYPE, jVar);
        map.put(Float.class, wVar);
        map.put(Float.TYPE, wVar);
        map.put(Boolean.class, hpVar);
        map.put(Boolean.TYPE, hpVar);
        map.put(Character.class, jxVar);
        map.put(Character.TYPE, jxVar);
    }

    public static void hp(Object obj, Field field, Object obj2) {
        Object objHp;
        if (field == null || obj2 == null) {
            return;
        }
        Class<?> type = field.getType();
        try {
            objHp = type.getConstructor(null).newInstance(obj2);
        } catch (Throwable unused) {
            objHp = hp(type, obj2);
        }
        try {
            field.setAccessible(true);
            field.set(obj, objHp);
        } catch (Throwable unused2) {
        }
    }

    public static void hp(Object obj, Map<String, Object> map, Field field, String str) throws SecurityException {
        Object obj2;
        if (field == null || (obj2 = map.get(str)) == null) {
            return;
        }
        field.setAccessible(true);
        try {
            field.set(obj, obj2);
        } catch (Throwable unused) {
            hp(obj, field, obj2);
        }
    }

    public static Object hp(Class cls, Object obj) {
        String strValueOf = String.valueOf(obj);
        if (String.class.equals(cls)) {
            return strValueOf;
        }
        hp hpVar = hp.get(cls);
        return hpVar == null ? obj : hpVar.hp(cls, strValueOf);
    }
}
