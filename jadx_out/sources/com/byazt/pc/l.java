package com.byazt.pc;

import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.xci.s;

@com.byazt.kj.hp(hp = {0, 1, 1176, 34})
/* loaded from: classes3.dex */
public class l {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.esb.hp f24344j;
    public int jx = -2;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.owg.w f24345l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.esb.hp f24346w;

    public l(int i2) {
        this.hp = i2;
        j();
    }

    private void j() {
        int i2 = this.hp;
        if (i2 == 1) {
            this.f24346w = new com.byazt.sr.j(this, i2);
            this.f24344j = new com.byazt.hl.l(this);
            return;
        }
        switch (i2) {
            case 5:
                this.f24346w = new com.byazt.sr.j(this, i2);
                this.f24344j = new com.byazt.hp.l(this);
                break;
            case 6:
                this.f24344j = new com.byazt.zwl.l(this);
                break;
            case 7:
                this.f24344j = new com.byazt.ash.a(this);
                break;
            case 8:
                this.f24344j = new com.byazt.ash.hp(this);
                break;
            case 9:
                this.f24346w = new com.byazt.sr.j(this, i2);
                this.f24344j = new com.byazt.jl.l(this);
                break;
        }
    }

    private int jx() {
        s.jx jxVarHp = hp();
        if (jxVarHp == null) {
            return -2;
        }
        if (jxVarHp.eb() && sz.l().nn()) {
            return jxVarHp.j();
        }
        return -1;
    }

    public boolean hp(mp mpVar) {
        return com.byazt.yx.l.hp().jx(mpVar) != 3;
    }

    public com.byazt.owg.w l() {
        int iJx = jx();
        com.byazt.owg.w wVar = this.f24345l;
        if (wVar != null && iJx == this.jx) {
            return wVar;
        }
        if (iJx == -1) {
            this.f24345l = new com.byazt.owg.l(this.hp);
        } else if (iJx == 0) {
            this.f24345l = new com.byazt.owg.hp(this.hp);
        } else if (iJx == 1) {
            this.f24345l = new com.byazt.owg.j(this.hp);
        } else if (iJx != 3) {
            this.f24345l = hp.l(this.hp);
        } else {
            this.f24345l = new com.byazt.owg.jx(this.hp);
        }
        this.jx = iJx;
        return this.f24345l;
    }

    public s.jx hp() {
        return s.hp(this.hp);
    }

    public com.byazt.esb.hp hp(boolean z2) {
        com.byazt.esb.hp hpVar;
        return (!z2 || (hpVar = this.f24346w) == null) ? this.f24344j : hpVar;
    }
}
