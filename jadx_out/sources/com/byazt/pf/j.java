package com.byazt.pf;

import android.content.Context;
import com.byazt.xci.mp;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1474, 38})
/* loaded from: classes3.dex */
public class j {
    public final Map<Class, hp> hp = new HashMap();

    private <T extends hp> T l(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (Throwable unused) {
            try {
                Constructor<T> declaredConstructor = cls.getDeclaredConstructor(mp.class, Context.class);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(null, null);
            } catch (Throwable unused2) {
                return null;
            }
        }
    }

    public jx hp(mp mpVar, Context context, com.byazt.go.j jVar, boolean z2) {
        jx jxVar = new jx(jVar);
        com.byazt.kfd.hp hpVar = new com.byazt.kfd.hp(mpVar, context);
        this.hp.put(com.byazt.kfd.hp.class, hpVar);
        l lVar = new l(mpVar, context);
        this.hp.put(l.class, lVar);
        com.byazt.sw.hp hpVarHp = hp(mpVar, context);
        this.hp.put(com.byazt.sw.hp.class, hpVarHp);
        com.byazt.ey.hp hpVar2 = new com.byazt.ey.hp(mpVar, context);
        this.hp.put(com.byazt.ey.hp.class, hpVar2);
        com.byazt.ey.jx jxVar2 = new com.byazt.ey.jx(mpVar, context);
        this.hp.put(com.byazt.ey.jx.class, jxVar2);
        jxVar.hp(jxVar2);
        jxVar.hp(hpVar);
        jxVar.hp(lVar);
        if (mpVar == null || mpVar.hq() != 1) {
            jxVar.hp(hpVarHp);
            jxVar.hp(hpVar2);
            return jxVar;
        }
        jxVar.hp(hpVar2);
        jxVar.hp(hpVarHp);
        return jxVar;
    }

    private com.byazt.sw.hp hp(mp mpVar, Context context) {
        com.byazt.sw.jx jxVar = new com.byazt.sw.jx();
        jxVar.hp(mpVar);
        jxVar.hp(context);
        return jxVar;
    }

    public <T extends hp> T hp(Class<T> cls) {
        T t2 = (T) this.hp.get(cls);
        return t2 == null ? (T) l(cls) : t2;
    }
}
