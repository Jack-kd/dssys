package com.byazt.la;

import android.content.Context;
import com.byazt.oi.j;
import com.byazt.ymw.di;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 31, 54})
/* loaded from: classes3.dex */
public class a implements j.hp {
    public di hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xs.jx f22385l;

    public a(Context context, com.byazt.xs.jx jxVar) {
        this.hp = new di(context, 1, com.byazt.jz.s.u().j());
        this.f22385l = jxVar;
    }

    private int jx() {
        JSONObject jSONObjectE;
        com.byazt.xs.jx jxVar = this.f22385l;
        if (jxVar == null || (jSONObjectE = jxVar.e()) == null) {
            return 0;
        }
        return jSONObjectE.optInt("meta_hashcode", 0);
    }

    @Override // com.byazt.oi.j.hp
    public void hp() {
        di diVar = this.hp;
        if (diVar != null) {
            diVar.hp(jx());
        }
    }

    @Override // com.byazt.oi.j.hp
    public void l() {
        di diVar = this.hp;
        if (diVar != null) {
            diVar.l(jx());
        }
    }

    @Override // com.byazt.oi.j.hp
    public void hp(float f2) {
        di diVar = this.hp;
        if (diVar != null) {
            diVar.hp(f2);
        }
    }

    @Override // com.byazt.oi.j.hp
    public void hp(final j.l lVar) {
        di diVar = this.hp;
        if (diVar != null) {
            diVar.hp(new di.hp() { // from class: com.byazt.la.a.1
                @Override // com.byazt.ymw.di.hp
                public void hp(int i2) {
                    j.l lVar2 = lVar;
                    if (lVar2 != null) {
                        lVar2.hp(i2);
                    }
                }
            });
        }
    }
}
