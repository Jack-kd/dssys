package com.byazt.uhd;

import com.byazt.bki.gu;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 935, 34})
/* loaded from: classes3.dex */
public class l {
    public static volatile l jx;
    public gu hp;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, com.byazt.gkj.j> f26175l = new ConcurrentHashMap();

    private l() {
    }

    public static l hp() {
        if (jx == null) {
            synchronized (l.class) {
                try {
                    if (jx == null) {
                        jx = new l();
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    public Collection<com.byazt.gkj.j> jx() {
        return this.f26175l.values();
    }

    public synchronized Map<String, com.byazt.gkj.j> l() {
        return this.f26175l;
    }

    private com.byazt.gkj.j jx(String str) {
        return MediationConstant.ADN_PANGLE.equalsIgnoreCase(str) ? new com.byazt.fr.hp() : new j();
    }

    private com.byazt.gkj.j l(String str) {
        if (str == null) {
            return null;
        }
        return this.f26175l.get(str);
    }

    public com.byazt.gkj.j hp(String str, gu guVar) {
        this.hp = guVar;
        return hp(str);
    }

    public synchronized com.byazt.gkj.j hp(String str) {
        com.byazt.gkj.j jVarL;
        gu guVar;
        try {
            jVarL = l(str);
            if (jVarL == null) {
                com.byazt.tgw.hp hpVarHp = com.byazt.di.l.l().hp(str);
                if (hpVarHp == null && (guVar = this.hp) != null) {
                    hpVarHp = new com.byazt.tgw.hp(guVar.w(), this.hp.jx(), this.hp.j());
                    this.hp = null;
                }
                if (hpVarHp != null && !hpVarHp.w()) {
                    jVarL = jx(str);
                }
                if (jVarL != null) {
                    hp(str, jVarL);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return jVarL;
    }

    private void hp(String str, com.byazt.gkj.j jVar) {
        if (str == null) {
            return;
        }
        this.f26175l.put(str, jVar);
    }
}
