package com.byazt.qfg;

import com.byazt.jz.sz;
import com.byazt.sr.a;
import com.byazt.xci.s;
import com.byazt.ymw.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public s.j f24680a;

    /* renamed from: j, reason: collision with root package name */
    public int f24681j;

    /* renamed from: w, reason: collision with root package name */
    public a.hp f24683w;
    public int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public long f24682l = 0;
    public int jx = -1;

    public int hp(com.byazt.jt.l lVar, int i2) throws NumberFormatException {
        int iJx;
        double d2;
        this.f24681j = i2;
        int iS = sz.l().s(i2);
        if (iS > 0 && iS <= 3) {
            s.jx jxVarHp = com.byazt.xci.s.hp();
            int iQ = jxVarHp == null ? 0 : jxVarHp.q();
            s.j jVarGu = jxVarHp == null ? null : jxVarHp.gu();
            this.f24680a = jVarGu;
            if (jVarGu != null && iQ == 5) {
                if (jVarGu.l() > 0) {
                    try {
                        d2 = Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", lVar.lv()));
                    } catch (Exception unused) {
                        d2 = 0.0d;
                    }
                    if (d2 > 0.0d && d2 < this.f24680a.l()) {
                        this.hp = 1;
                        return 1;
                    }
                }
                if (this.f24680a.jx() > 0 && ((iJx = vv.jx(sz.getContext())) == 2 ? (this.f24680a.jx() & 1) != 0 : !(iJx == 3 ? (this.f24680a.jx() & 2) == 0 : iJx == 4 ? (this.f24680a.jx() & 16) == 0 : iJx == 5 ? (this.f24680a.jx() & 4) == 0 : iJx != 6 || (this.f24680a.jx() & 8) == 0))) {
                    this.hp = 2;
                    return 1;
                }
                this.f24683w = com.byazt.sr.a.hp(String.valueOf(i2), this.f24680a);
                if (this.f24680a.j() > 0) {
                    this.hp = 3;
                    int iHp = this.f24683w.hp(this.f24680a.j(), this.f24680a);
                    if (iHp > 0) {
                        this.f24682l = System.currentTimeMillis() - (iHp * 60000);
                        return 1;
                    }
                    if (iHp == 0) {
                        return 1;
                    }
                }
                this.hp = 4;
                hp(this.f24683w.hp(this.f24680a.w(), this.f24680a));
                return 2;
            }
        }
        return iS;
    }

    public boolean l() {
        s.j jVar;
        if (this.f24682l <= 0 || this.hp != 3) {
            return false;
        }
        a.hp hpVar = this.f24683w;
        hp((hpVar == null || (jVar = this.f24680a) == null) ? -1 : hpVar.hp(jVar.w(), this.f24680a));
        this.jx = 2;
        return true;
    }

    public boolean hp() {
        return this.hp == 4;
    }

    private void hp(int i2) {
        if (i2 > 0) {
            this.f24682l = System.currentTimeMillis() - (i2 * 60000);
        } else if (i2 == 0) {
            this.f24682l = 0L;
        } else {
            this.f24682l = System.currentTimeMillis();
        }
    }
}
