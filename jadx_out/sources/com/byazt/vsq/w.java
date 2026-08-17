package com.byazt.vsq;

import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jz.sz;
import com.byazt.xci.df;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {
    public w(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
    }

    public static int l(mp mpVar) {
        return 3;
    }

    @Override // com.byazt.vsq.l
    public boolean fi() {
        return this.f26630k;
    }

    @Override // com.byazt.vsq.hp
    public com.byazt.yni.l hp(boolean z2) {
        if (this.f26629j != 100.0f) {
            this.f26634q = new com.byazt.yni.eb(this.hp, this.f26631l, z2);
        } else {
            this.f26634q = new com.byazt.yni.a(this.hp, this.f26631l, z2);
        }
        return this.f26634q;
    }

    @Override // com.byazt.vsq.hp
    public int mp() {
        return s(false) ? (int) Math.min(ea.hp() / 1000, (int) df.eb(this.f26631l)) : ea.xs(this.f26631l) ? super.mp() : (int) df.eb(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public boolean nr() {
        if (!ea.jx(this.f26631l, eb())) {
            return false;
        }
        if (ea.xs(this.f26631l)) {
            return true;
        }
        return (sz.l().er() || qu()) ? false : true;
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return l(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public boolean pc() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public View q() {
        if (this.f26629j != 100.0f) {
            return ea();
        }
        if (this.jx == 2) {
            int iHy = this.f26631l.hy();
            return iHy != 3 ? iHy != 33 ? com.byazt.vi.a.ec(this.hp) : com.byazt.vi.a.vv(this.hp) : com.byazt.vi.a.xs(this.hp);
        }
        int iHy2 = this.f26631l.hy();
        return iHy2 != 3 ? iHy2 != 33 ? com.byazt.vi.a.ns(this.hp) : com.byazt.vi.a.n(this.hp) : com.byazt.vi.a.sz(this.hp);
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        if (!sz.l().er()) {
            return ea.jx(this.f26631l, eb()) && df.jl(this.f26631l);
        }
        if (this.f26631l.qo() != 100.0f) {
            return mp.jx(this.f26631l) || com.byazt.dnb.jl.hp(this.f26631l);
        }
        if (this.f26628e.a()) {
            return this.f26628e.gu();
        }
        return true;
    }

    @Override // com.byazt.vsq.l
    public void rk() throws JSONException {
        super.rk();
        if (nr()) {
            int iD = d();
            int iO = o();
            if (!sz.l().er() && !qu() && ea.jx(this.f26631l, eb()) && iD > df.eb(this.f26631l)) {
                this.hp.qu();
            }
            this.hp.jx(0);
            if (s(false)) {
                if (this.sz.r()) {
                    return;
                }
                if (iO > mp() || this.f26637v) {
                    com.byazt.ij.a.hp = 0;
                    this.hp.f();
                    if (this.f26628e == null || b() != 7) {
                        return;
                    }
                    this.f26628e.hp("0", iO, 0, false);
                    return;
                }
                int iA = a(true);
                int iA2 = a(false);
                com.byazt.ij.a.hp = iA;
                this.hp.f();
                l(iA);
                if (this.f26628e == null || b() != 7) {
                    return;
                }
                this.f26628e.hp(String.valueOf(iA2), iO, 0, false);
                return;
            }
            if (iO > mp() || this.f26637v) {
                this.hp.rz();
                com.byazt.ij.a.hp = 0;
                com.byazt.td.w wVar = this.vv;
                boolean z2 = this.f26630k;
                wVar.hp(z2, z2 ? "领取成功" : "", null, true, true);
                if (this.f26628e == null || b() != 7) {
                    return;
                }
                this.f26628e.hp("0", iO, 0, false);
                return;
            }
            int iA3 = a(true);
            int iA4 = a(false);
            com.byazt.ij.a.hp = iA3;
            boolean z3 = iO > this.hq.jx() || this.hp.nd();
            com.byazt.td.w wVar2 = this.vv;
            boolean z4 = this.f26630k;
            StringBuilder sb = new StringBuilder();
            sb.append(iA4);
            sb.append("s");
            sb.append(this.f26630k ? "后可领取奖励" : "");
            wVar2.hp(z4, sb.toString(), null, z3, z3);
            l(iA3);
            if (this.f26628e == null || b() != 7) {
                return;
            }
            this.f26628e.hp(String.valueOf(iA4), iO, 0, false);
        }
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return false;
    }

    @Override // com.byazt.vsq.l
    public boolean s(boolean z2) {
        if (sz.l().er()) {
            return false;
        }
        return (z2 || !ea.xs(this.f26631l)) && !qu() && nr();
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return false;
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        this.f26634q.w(8);
        this.f26634q.a(8);
        this.vv.w(qu());
        this.vv.l(this.f26631l.jc());
        this.hp.f();
    }

    public static boolean hp(mp mpVar) {
        return (mpVar == null || mp.jx(mpVar)) ? false : true;
    }
}
