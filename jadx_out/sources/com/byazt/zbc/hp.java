package com.byazt.zbc;

import android.content.Context;
import com.byazt.jz.s;
import com.byazt.xci.sz;
import com.byazt.ymw.hq;
import com.byazt.ymw.vv;
import com.byazt.yrp.eb;

@com.byazt.kj.hp(hp = {0, 1, 448, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public Context hp;

    /* renamed from: l, reason: collision with root package name */
    public eb f28350l;
    public boolean jx = true;

    /* renamed from: j, reason: collision with root package name */
    public int f28349j = 0;

    /* renamed from: w, reason: collision with root package name */
    public boolean f28351w = false;

    public void hp(Context context) {
        this.hp = context;
    }

    public int j() {
        int iJx = vv.jx(this.hp);
        eb ebVar = this.f28350l;
        if (ebVar == null) {
            return -1;
        }
        int iJ = sz.j(ebVar.u_());
        if (iJ != -1) {
            if (iJ == 0) {
                return -1;
            }
            if (iJ != 2) {
                if (iJ == 3) {
                    return 13;
                }
                if (!s.u().jx(iJx)) {
                    com.byazt.xci.w wVarV = this.f28350l.v();
                    if (((wVarV == null || wVarV.eb() <= 0) ? 104857600 : wVarV.eb()) > sz.w(this.f28350l.u_())) {
                        return 14;
                    }
                }
            } else if (iJx != 4) {
                return 12;
            }
        } else if (!s.u().jx(iJx)) {
            return 11;
        }
        return -1;
    }

    public abstract boolean jx();

    public void l(boolean z2) {
        this.f28351w = z2;
    }

    public void hp(eb ebVar) {
        this.f28350l = ebVar;
    }

    public int l() {
        return this.f28349j;
    }

    public void hp(boolean z2) {
        this.jx = z2;
    }

    public boolean hp() {
        Context context;
        if (this.f28350l != null && (context = this.hp) != null) {
            if (!this.jx) {
                return false;
            }
            if (vv.jx(context) == 0) {
                try {
                    hq.hp(this.hp, "\"无网络，请稍后再试\"", 0);
                } catch (Throwable unused) {
                }
            }
            boolean zJx = jx();
            if (zJx) {
                a.hp = true;
                a.jx = true;
            }
            return zJx;
        }
        this.f28349j = 10;
        return true;
    }
}
