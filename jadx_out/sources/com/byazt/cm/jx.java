package com.byazt.cm;

import android.graphics.Bitmap;
import com.byazt.jz.eb;
import com.byazt.lf.k;
import com.byazt.nke.b;
import com.byazt.nke.u;

@com.byazt.kj.hp(hp = {0, 1, 725, 30})
/* loaded from: classes2.dex */
public class jx implements b<Bitmap> {
    public boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jlb.l f18897l;

    public jx(boolean z2) {
        this.hp = z2;
        if (z2) {
            this.f18897l = com.byazt.jlb.l.l();
        }
    }

    public void hp(String str) {
        com.byazt.jlb.l lVar;
        if (!this.hp || (lVar = this.f18897l) == null) {
            return;
        }
        lVar.jx(str);
    }

    public void j(String str) {
        com.byazt.jlb.l lVar;
        if (!this.hp || (lVar = this.f18897l) == null) {
            return;
        }
        lVar.s(str);
    }

    public void jx(String str) {
        com.byazt.jlb.l lVar;
        if (!this.hp || (lVar = this.f18897l) == null) {
            return;
        }
        lVar.j(str);
    }

    public void l(String str) {
        com.byazt.jlb.l lVar;
        if (!this.hp || (lVar = this.f18897l) == null) {
            return;
        }
        lVar.a(str);
    }

    @Override // com.byazt.nke.b
    public void onFailed(int i2, String str, Throwable th) {
        com.byazt.jlb.l lVar;
        if (!this.hp || (lVar = this.f18897l) == null) {
            return;
        }
        lVar.l(201).eb(eb.hp(201));
        k.hp().hp(this.f18897l);
    }

    @Override // com.byazt.nke.b
    public void onSuccess(u<Bitmap> uVar) {
        if (!this.hp || this.f18897l == null) {
            return;
        }
        if (uVar == null || uVar.getResult() == null) {
            this.f18897l.l(202).eb(eb.hp(202));
            k.hp().hp(this.f18897l);
        }
    }

    public void hp(int i2) {
        com.byazt.jlb.l lVar;
        if (!this.hp || (lVar = this.f18897l) == null) {
            return;
        }
        lVar.hp(i2);
    }
}
