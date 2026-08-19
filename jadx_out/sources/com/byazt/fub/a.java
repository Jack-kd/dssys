package com.byazt.fub;

import android.content.Context;
import android.view.View;
import com.byazt.fub.e;

@com.byazt.kj.hp(hp = {0, 1, 694, 54})
/* loaded from: classes2.dex */
public class a implements e {
    public Context hp;
    public zy jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f20138l;

    public a(Context context, zy zyVar, hp hpVar) {
        this.hp = context;
        this.f20138l = hpVar;
        this.jx = zyVar;
    }

    @Override // com.byazt.fub.e
    public void hp() {
    }

    @Override // com.byazt.fub.e
    public boolean hp(final e.hp hpVar) {
        this.jx.eb().q();
        this.f20138l.hp(new eb() { // from class: com.byazt.fub.a.1
            @Override // com.byazt.fub.eb
            public void hp(View view, k kVar) {
                if (hpVar.jx()) {
                    return;
                }
                v vVarL = hpVar.l();
                if (vVarL != null) {
                    vVarL.hp(a.this.f20138l, kVar);
                }
                hpVar.hp(true);
            }

            @Override // com.byazt.fub.eb
            public void hp(int i2, String str) {
                v vVarL = hpVar.l();
                if (vVarL != null) {
                    vVarL.a_(i2);
                }
            }
        });
        return true;
    }

    public void hp(jx jxVar) {
        this.f20138l.hp(jxVar);
    }
}
