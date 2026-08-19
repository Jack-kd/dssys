package com.byazt.fub;

import android.content.Context;
import android.view.View;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.byazt.fub.e;

@com.byazt.kj.hp(hp = {0, 1, 694, 34})
/* loaded from: classes2.dex */
public class l implements e {

    /* renamed from: a, reason: collision with root package name */
    public int f20152a;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public s f20153j;
    public ThemeStatusBroadcastReceiver jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.bn.hp f20154l;

    /* renamed from: w, reason: collision with root package name */
    public zy f20155w;

    public l(Context context, zy zyVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z2, com.byazt.yj.s sVar, s sVar2, com.byazt.thw.hp hpVar) {
        this(context, zyVar, themeStatusBroadcastReceiver, z2, sVar, sVar2, hpVar, null);
    }

    public l(Context context, zy zyVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z2, com.byazt.yj.s sVar, s sVar2, com.byazt.thw.hp hpVar, com.byazt.bn.hp hpVar2) {
        this.hp = context;
        this.f20155w = zyVar;
        this.jx = themeStatusBroadcastReceiver;
        this.f20153j = sVar2;
        if (hpVar2 != null) {
            this.f20154l = hpVar2;
        } else {
            this.f20154l = new com.byazt.bn.hp(context, themeStatusBroadcastReceiver, z2, sVar, zyVar, hpVar);
        }
        this.f20154l.hp(this.f20153j);
        if (sVar instanceof com.byazt.yj.eb) {
            this.f20152a = 3;
        } else {
            this.f20152a = 2;
        }
    }

    public void hp(boolean z2) {
        this.f20154l.l(z2);
    }

    public com.byazt.wsc.j l() {
        com.byazt.bn.hp hpVar = this.f20154l;
        if (hpVar != null) {
            return hpVar.a();
        }
        return null;
    }

    @Override // com.byazt.fub.e
    public boolean hp(final e.hp hpVar) {
        this.f20155w.eb().hp(this.f20152a);
        this.f20154l.hp(new eb() { // from class: com.byazt.fub.l.1
            @Override // com.byazt.fub.eb
            public void hp(View view, k kVar) {
                if (hpVar.jx()) {
                    return;
                }
                l.this.f20155w.eb().w(l.this.f20152a);
                l.this.f20155w.eb().a(l.this.f20152a);
                l.this.f20155w.eb().zy();
                v vVarL = hpVar.l();
                if (vVarL == null) {
                    return;
                }
                vVarL.hp(l.this.f20154l, kVar);
                hpVar.hp(true);
            }

            @Override // com.byazt.fub.eb
            public void hp(int i2, String str) {
                l.this.f20155w.eb().hp(l.this.f20152a, i2, str, hpVar.l(l.this));
                if (hpVar.l(l.this)) {
                    hpVar.hp(l.this);
                    return;
                }
                v vVarL = hpVar.l();
                if (vVarL == null) {
                    return;
                }
                vVarL.a_(i2);
            }
        });
        return true;
    }

    @Override // com.byazt.fub.e
    public void hp() {
        com.byazt.bn.hp hpVar = this.f20154l;
        if (hpVar != null) {
            hpVar.l();
        }
    }
}
