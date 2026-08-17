package com.byazt.oz;

import com.byazt.ktf.jx;

@com.byazt.kj.hp(hp = {0, 1, 854, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.vy.hp {
    public static l hp;

    /* renamed from: l, reason: collision with root package name */
    public jx.hp f24299l;

    private l() {
    }

    public jx.hp hp() {
        return this.f24299l;
    }

    public void jx(String str, String str2) {
        jx.hp hpVar = this.f24299l;
        if (hpVar != null) {
            hpVar.l(str, str2);
        }
    }

    @Override // com.byazt.vy.hp
    public void l(String str, String str2) {
        jx.hp hpVar = this.f24299l;
        if (hpVar != null) {
            hpVar.j(str, str2);
        }
    }

    public static void hp(jx.hp hpVar, boolean z2) {
        l lVar = new l();
        hp = lVar;
        if (z2) {
            lVar.f24299l = new hp(hpVar);
        } else {
            lVar.f24299l = hpVar;
        }
    }

    @Override // com.byazt.vy.hp
    public void hp(String str, String str2) {
        jx.hp hpVar = this.f24299l;
        if (hpVar != null) {
            hpVar.jx(str, str2);
        }
    }

    @Override // com.byazt.vy.hp
    public void hp(String str, String str2, Throwable th) {
        jx.hp hpVar = this.f24299l;
        if (hpVar != null) {
            hpVar.hp(str, str2, th);
        }
    }

    @Override // com.byazt.vy.hp
    public void hp(String str, Throwable th) {
        jx.hp hpVar = this.f24299l;
        if (hpVar != null) {
            hpVar.hp(str, th);
        }
    }
}
