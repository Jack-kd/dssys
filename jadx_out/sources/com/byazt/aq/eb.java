package com.byazt.aq;

import android.content.Context;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 403, 94})
/* loaded from: classes2.dex */
public final class eb {
    public static volatile eb hp;
    public static HashMap<Integer, hp> jx;

    /* renamed from: l, reason: collision with root package name */
    public static HashMap<Integer, w> f18061l;

    private eb() {
        f18061l = new HashMap<>();
        jx = new HashMap<>();
    }

    public static synchronized eb hp() {
        try {
            if (hp == null) {
                synchronized (eb.class) {
                    try {
                        if (hp == null) {
                            hp = new eb();
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hp;
    }

    public w hp(int i2) {
        w wVar = f18061l.get(Integer.valueOf(i2));
        if (wVar != null) {
            return wVar;
        }
        w wVar2 = new w(i2);
        f18061l.put(Integer.valueOf(i2), wVar2);
        return wVar2;
    }

    public hp hp(int i2, Context context) {
        hp hpVar = jx.get(Integer.valueOf(i2));
        if (hpVar != null) {
            return hpVar;
        }
        hp hpVar2 = new hp(context, i2);
        jx.put(Integer.valueOf(i2), hpVar2);
        return hpVar2;
    }
}
