package com.byazt.vsq;

import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jwq.l;
import com.byazt.rm.RewardJointEndCardFrameLayout;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.xci.nd;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 94})
/* loaded from: classes3.dex */
public class eb extends hp {
    public boolean dy;
    public int nu;
    public int ud;

    public eb(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
        this.ud = 0;
        this.nu = 0;
        this.dy = false;
    }

    public static boolean hp(mp mpVar) {
        return n.jx(mpVar);
    }

    @Override // com.byazt.vsq.hp
    public boolean a() {
        return false;
    }

    @Override // com.byazt.vsq.hp
    public View e() {
        if (ec.j(this.f26631l)) {
            this.gu = new RewardJointEndCardFrameLayout(this.hp, this.f26631l);
        }
        return super.e();
    }

    @Override // com.byazt.vsq.hp
    public int eb(boolean z2) {
        int i2;
        if (ec.zy(this.f26631l) || (i2 = this.ud) == 0) {
            return 0;
        }
        return Math.max(0, ((int) Math.min(i2, 27.0f)) - o());
    }

    @Override // com.byazt.vsq.l
    public boolean fi() {
        return ec.j(this.f26631l);
    }

    @Override // com.byazt.vsq.hp, com.byazt.vsq.l
    public void jx() throws JSONException {
        this.vv.hp(4);
        this.sz.l();
        this.hp.vv();
        if (ec.zy(this.f26631l)) {
            this.vv.l(true);
        }
        this.ud = n.w(this.f26631l);
        this.nu = n.a(this.f26631l);
        if (ec.j(this.f26631l)) {
            this.hp.a();
        }
    }

    @Override // com.byazt.vsq.hp
    public void k() {
        super.k();
        this.hp.ms();
    }

    @Override // com.byazt.vsq.hp
    public void l(boolean z2) {
        super.l(z2);
    }

    @Override // com.byazt.vsq.hp
    public boolean lv() {
        if (xh() > 0) {
            return false;
        }
        if (!ec.j(this.f26631l) && nd.hp(this.f26631l) == 0) {
            return this.sz.n();
        }
        return true;
    }

    @Override // com.byazt.vsq.hp
    public int ms() {
        if (ec.zy(this.f26631l) || this.ud == 0) {
            return 0;
        }
        return Math.max(0, ((int) Math.min((this.ud * this.f26631l.sv()) / 100.0f, 27.0f)) - o());
    }

    @Override // com.byazt.vsq.l
    public boolean nr() {
        return ea.xs(this.f26631l);
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return l(this.f26631l);
    }

    @Override // com.byazt.vsq.hp
    public View q() {
        return com.byazt.vi.a.hp(this.hp);
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return ec.j(this.f26631l) && mp.jx(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public void rk() {
        if (ec.zy(this.f26631l)) {
            return;
        }
        int iO = o();
        int i2 = this.ud;
        int i3 = i2 - iO;
        if (iO >= i2) {
            this.vv.hp(false, null, null, true, true);
            if (!ec.zy(this.f26631l)) {
                this.hp.jl();
            }
        } else {
            int i4 = this.nu;
            if (i4 >= i2) {
                this.vv.hp(false, String.valueOf(i3), null, false, false);
            } else if (iO >= i4) {
                this.vv.hp(false, String.valueOf(i3), "跳过", false, true);
            } else {
                this.vv.hp(false, String.valueOf(i3), (this.nu - iO) + "s后可跳过", false, false);
            }
        }
        this.hp.jx(0);
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public void s() {
        super.s();
        com.byazt.gsd.l.hp().hp(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public void u() {
        super.u();
        com.byazt.gsd.l.hp().l(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        this.vv.hp(true);
        this.f26634q.a(8);
        if (ec.hp(this.f26631l)) {
            yj();
        } else {
            this.vv.w(true);
            this.vv.l(this.f26631l.jc());
        }
    }

    public void yj() {
        int iPk = this.f26631l.pk();
        if (iPk == 0) {
            this.f26634q.w(0);
            this.vv.w(true);
            this.vv.l(this.f26631l.jc());
        } else {
            if (iPk != 1) {
                if (iPk != 3) {
                    return;
                }
                this.vv.w(false);
                this.vv.l(false);
                this.vv.hp(false, null, null, true, true);
                return;
            }
            this.f26634q.w(0);
            this.vv.l(this.f26631l.jc());
            if (ec.j(this.f26631l)) {
                this.vv.w(mp.jx(this.f26631l));
            } else {
                this.vv.w(com.byazt.dnb.jl.hp(this.f26631l));
            }
        }
    }

    public static int l(mp mpVar) {
        return ec.hp(mpVar) ? 6 : 0;
    }

    @Override // com.byazt.vsq.hp
    public l.hp hp(mp mpVar, final com.byazt.jwq.e eVar) {
        if (this.f26632n.w()) {
            return new l.hp(false, 0, "");
        }
        this.hp.as();
        this.hp.ms();
        com.byazt.jwq.s sVar = new com.byazt.jwq.s(this.hp, mpVar);
        sVar.hp(this.sz.n());
        sVar.hp(as());
        return sVar.l(new com.byazt.jwq.e() { // from class: com.byazt.vsq.eb.1
            @Override // com.byazt.jwq.e
            public void hp() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
                eb.this.hp.kg();
            }

            @Override // com.byazt.jwq.e
            public void l() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
            }
        });
    }
}
