package com.byazt.xb;

import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import com.byazt.ik.a;
import java.lang.reflect.Field;

@com.byazt.kj.hp(hp = {0, 1, 905, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(Class cls) {
        try {
            if (Fragment.class.getName().contains("support")) {
                ((SimpleArrayMap) hp(Fragment.class, "sClassMap").get(null)).put(cls.getName(), cls);
                return;
            }
            Field fieldHp = hp(Fragment.class, "sClassMap");
            if (fieldHp != null) {
                ((SimpleArrayMap) fieldHp.get(null)).put(cls.getName(), cls);
                return;
            }
            Class clsHp = hp("androidx.fragment.app.FragmentFactory");
            if (clsHp == null) {
                return;
            }
            Field fieldHp2 = hp(clsHp, "sClassMap");
            if (fieldHp2 != null) {
                ((SimpleArrayMap) fieldHp2.get(null)).put(cls.getName(), cls);
                return;
            }
            Field fieldHp3 = hp(clsHp, "sClassCacheMap");
            if (fieldHp3 != null) {
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) fieldHp3.get(null);
                SimpleArrayMap simpleArrayMap2 = new SimpleArrayMap();
                simpleArrayMap2.put(cls.getName(), cls);
                simpleArrayMap.put(cls.getClassLoader(), simpleArrayMap2);
            }
        } catch (Exception e2) {
            a.hp(e2);
        }
    }

    private static Field hp(Class cls, String str) throws NoSuchFieldException, SecurityException {
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    private static Class hp(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
