package com.byazt.zbc;

import com.byazt.xci.sz;

@com.byazt.kj.hp(hp = {0, 1, 448, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: a, reason: collision with root package name */
    public boolean f28363a = false;
    public int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public int f28364s = -1;

    private boolean w() {
        int iJ = j();
        this.f28349j = iJ;
        return iJ != -1;
    }

    public void hp(int i2) {
        this.eb = i2;
    }

    public void jx(boolean z2) {
        this.f28363a = z2;
    }

    @Override // com.byazt.zbc.hp
    public boolean jx() {
        this.f28349j = 1;
        boolean z2 = a.f28347j;
        int iHp = sz.hp(this.f28350l.u_());
        if (z2) {
            iHp = 0;
            a.f28347j = false;
        }
        if (this.f28351w) {
            return w();
        }
        if (this.f28363a) {
            int i2 = this.eb;
            if (i2 == 2) {
                return w();
            }
            if (iHp == 2 && i2 == 1) {
                return w();
            }
        }
        if (iHp == 0) {
            return w();
        }
        return true;
    }
}
