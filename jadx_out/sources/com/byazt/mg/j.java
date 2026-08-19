package com.byazt.mg;

import android.annotation.SuppressLint;
import android.content.Context;
import com.byazt.ya.jx;
import com.byazt.ymw.u;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 790, 38})
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f22981a = false;

    /* renamed from: e, reason: collision with root package name */
    public static volatile com.byazt.zt.jx f22982e = null;

    @SuppressLint({"StaticFieldLeak"})
    public static volatile Context gu = null;
    public static volatile com.byazt.ya.l hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static volatile Integer f22983j = null;
    public static volatile int jx = 3;

    /* renamed from: l, reason: collision with root package name */
    public static volatile com.byazt.ya.jx f22984l;

    /* renamed from: s, reason: collision with root package name */
    public static volatile boolean f22986s;

    /* renamed from: w, reason: collision with root package name */
    public static final boolean f22987w = u.jx();
    public static volatile boolean eb = true;

    /* renamed from: q, reason: collision with root package name */
    public static volatile int f22985q = 0;

    public static Context getContext() {
        return gu;
    }

    public static void hp(boolean z2) {
        f22986s = z2;
    }

    public static com.byazt.ya.l l() {
        return hp;
    }

    public static void hp(int i2) {
        f22985q = i2;
    }

    public static void hp(com.byazt.ya.jx jxVar, Context context) {
        if (jxVar != null && context != null) {
            gu = context.getApplicationContext();
            if (f22984l != null) {
                return;
            }
            com.byazt.ya.l lVar = hp;
            if (lVar != null && lVar.hp.getAbsolutePath().equals(jxVar.hp.getAbsolutePath())) {
                throw new IllegalArgumentException("DiskLruCache and DiskCache can't use the same dir");
            }
            f22984l = jxVar;
            f22982e = com.byazt.zt.jx.hp(context);
            f22984l.hp(new jx.hp() { // from class: com.byazt.mg.j.1
                @Override // com.byazt.ya.jx.hp
                public void hp(String str) {
                    com.byazt.ya.l lVar2 = j.hp;
                }

                @Override // com.byazt.ya.jx.hp
                public void hp(Set<String> set) {
                    j.f22982e.hp(set, 0);
                }
            });
            jx jxVarHp = jx.hp();
            jxVarHp.hp(jxVar);
            jxVarHp.hp(f22982e);
            return;
        }
        throw new IllegalArgumentException("DiskLruCache and Context can't be null !!!");
    }

    public static com.byazt.ya.jx hp() {
        return f22984l;
    }
}
