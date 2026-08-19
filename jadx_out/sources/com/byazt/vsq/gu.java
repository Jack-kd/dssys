package com.byazt.vsq;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jwq.l;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu extends hp {
    public com.byazt.jdb.eb dy;
    public int nu;
    public int ud;

    public gu(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
        this.ud = 0;
        this.nu = 0;
        com.byazt.jdb.eb ebVar = new com.byazt.jdb.eb(mpVar);
        this.dy = ebVar;
        ebVar.hp(true);
    }

    public static boolean hp(mp mpVar) {
        return mpVar.an() == 1 && ec.hp(mpVar);
    }

    @Override // com.byazt.vsq.hp
    public boolean a() {
        return false;
    }

    @Override // com.byazt.vsq.hp
    public void cx() {
        if (com.byazt.la.e.j(this.f26631l) && ((com.byazt.yni.hp) this.f26634q).jx()) {
            ((com.byazt.yni.hp) this.f26634q).hp(false);
        }
    }

    @Override // com.byazt.vsq.hp
    public int eb(boolean z2) {
        if ((this.sz.r() && ec.hp(this.f26631l)) || this.ud == 0) {
            return 0;
        }
        return (com.byazt.la.e.w(this.f26631l) || com.byazt.la.e.j(this.f26631l)) ? Math.max(this.ud - o(), 0) : Math.max(Math.min(this.ud, 27) - o(), 0);
    }

    @Override // com.byazt.vsq.hp
    public void jx(boolean z2) throws JSONException {
        super.jx(z2);
        com.byazt.yni.l lVar = this.f26634q;
        if (lVar instanceof com.byazt.yni.hp) {
            if (((com.byazt.yni.hp) lVar).a()) {
                this.dy.hp(((com.byazt.yni.hp) this.f26634q).w().get());
            }
            ((com.byazt.yni.hp) this.f26634q).s();
        }
    }

    @Override // com.byazt.vsq.hp
    public void k() {
        super.k();
    }

    @Override // com.byazt.vsq.hp
    public void l(boolean z2) {
        super.l(z2);
        this.dy.jx();
        com.byazt.yni.l lVar = this.f26634q;
        if (lVar instanceof com.byazt.yni.hp) {
            ((com.byazt.yni.hp) lVar).q();
        }
    }

    @Override // com.byazt.vsq.hp
    public boolean lv() {
        if (xh() > 0) {
            return false;
        }
        if (!com.byazt.la.e.w(this.f26631l)) {
            return true;
        }
        ((com.byazt.yni.hp) this.f26634q).hp(0);
        return true;
    }

    @Override // com.byazt.vsq.hp
    public int ms() {
        if ((this.sz.r() && ec.hp(this.f26631l)) || this.ud == 0) {
            return 0;
        }
        if (com.byazt.la.e.w(this.f26631l) || com.byazt.la.e.j(this.f26631l)) {
            return Math.max(this.ud - o(), 0);
        }
        return Math.max(((int) Math.min((this.ud * this.f26631l.sv()) / 100.0f, 27.0f)) - o(), 0);
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return l(this.f26631l);
    }

    @Override // com.byazt.vsq.hp
    public View q() {
        FrameLayout frameLayout = new FrameLayout(this.hp);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return false;
    }

    @Override // com.byazt.vsq.l
    public void rk() {
        int iO = o();
        int iMax = Math.max(0, this.ud - iO);
        if (!this.sz.r()) {
            int i2 = this.ud;
            if (iO >= i2) {
                if (com.byazt.la.e.jx(this.f26631l)) {
                    com.byazt.td.w wVar = this.vv;
                    boolean z2 = this.f26630k;
                    wVar.hp(z2, z2 ? "领取成功" : "", null, true, true);
                } else {
                    this.vv.hp(false, null, null, true, true);
                }
                this.hp.jl();
            } else if (this.nu >= i2) {
                this.vv.hp(false, String.valueOf(iMax), null, false, false);
            } else if (com.byazt.la.e.jx(this.f26631l)) {
                com.byazt.td.w wVar2 = this.vv;
                boolean z3 = this.f26630k;
                StringBuilder sb = new StringBuilder();
                sb.append(iMax);
                sb.append("s");
                sb.append(this.f26630k ? "后可领取奖励" : "");
                wVar2.hp(z3, sb.toString(), null, this.nu <= iO, true);
            } else if (com.byazt.la.e.w(this.f26631l) || com.byazt.la.e.j(this.f26631l)) {
                if (iO >= this.nu) {
                    this.vv.hp(false, null, null, true, true);
                }
            } else if (iO >= this.nu) {
                this.vv.hp(false, String.valueOf(iMax), "跳过", false, true);
            } else {
                this.vv.hp(false, String.valueOf(iMax), (this.nu - iO) + "s后可跳过", false, false);
            }
        }
        this.hp.jx(0);
        if (com.byazt.la.e.w(this.f26631l)) {
            ((com.byazt.yni.hp) this.f26634q).hp(iMax);
        }
        if (iMax == 0) {
            com.byazt.yni.l lVar = this.f26634q;
            if (lVar instanceof com.byazt.yni.hp) {
                ((com.byazt.yni.hp) lVar).eb();
            }
        }
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return false;
    }

    @Override // com.byazt.vsq.hp
    public void s() {
        JSONObject jSONObjectJx;
        super.s();
        com.byazt.gsd.l.hp().hp(this.f26631l);
        if (com.byazt.la.e.w(this.f26631l) || com.byazt.la.e.j(this.f26631l)) {
            com.byazt.qb.hp hpVarFi = this.f26631l.fi();
            this.ud = 30;
            if (hpVarFi != null && (jSONObjectJx = hpVarFi.jx()) != null) {
                this.ud = jSONObjectJx.optInt("reward_time", 30);
            }
        } else {
            this.ud = n.w(this.f26631l);
        }
        this.nu = n.a(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return false;
    }

    @Override // com.byazt.vsq.hp
    public void u() {
        super.u();
        com.byazt.yni.l lVar = this.f26634q;
        if ((lVar instanceof com.byazt.yni.hp) && ((com.byazt.yni.hp) lVar).a()) {
            this.dy.j();
        }
        this.f26634q.e();
    }

    @Override // com.byazt.vsq.hp
    public void w(boolean z2) {
        super.w(z2);
        if (com.byazt.la.e.j(this.f26631l)) {
            ((com.byazt.yni.hp) this.f26634q).l(z2);
        }
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        this.f26634q.w(0);
        this.vv.hp(true);
        if (com.byazt.la.e.j(this.f26631l)) {
            this.vv.w(true);
        }
        if (com.byazt.la.e.w(this.f26631l) || com.byazt.la.e.j(this.f26631l)) {
            this.vv.l(false);
        } else {
            this.vv.l(this.f26631l.jc());
        }
        if (!com.byazt.la.e.jx(this.f26631l)) {
            this.vv.w(false);
            this.vv.hp(false, null, null, true, true);
            return;
        }
        this.vv.jx(true);
        this.vv.w(true);
        com.byazt.td.w wVar = this.vv;
        boolean z2 = this.f26630k;
        StringBuilder sb = new StringBuilder();
        sb.append(xh());
        sb.append("s");
        sb.append(this.f26630k ? "后可领取奖励" : "");
        wVar.hp(z2, sb.toString(), null, true, true);
    }

    @Override // com.byazt.vsq.hp
    public com.byazt.yni.l hp(boolean z2) {
        com.byazt.yni.hp hpVar = new com.byazt.yni.hp(this.hp, this.f26631l, z2, this.dy, this.vv);
        this.f26634q = hpVar;
        return hpVar;
    }

    @Override // com.byazt.vsq.hp
    public l.hp hp(final mp mpVar, final com.byazt.jwq.e eVar) {
        this.hp.as();
        this.hp.ms();
        com.byazt.jwq.s sVar = new com.byazt.jwq.s(this.hp, mpVar);
        sVar.hp(this.sz.n());
        sVar.hp(as());
        return sVar.l(new com.byazt.jwq.e() { // from class: com.byazt.vsq.gu.1
            @Override // com.byazt.jwq.e
            public void hp() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
                if (com.byazt.la.e.j(mpVar) && ((com.byazt.yni.hp) gu.this.f26634q).j()) {
                    return;
                }
                gu.this.hp.kg();
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

    public static int l(mp mpVar) {
        return com.byazt.la.e.jx(mpVar) ? 6 : 7;
    }

    @Override // com.byazt.vsq.hp, com.byazt.vsq.l
    public void jx() {
        this.vv.hp(4);
        this.f26634q.jx(true);
        if (com.byazt.la.e.w(this.f26631l) || com.byazt.la.e.j(this.f26631l)) {
            ((com.byazt.yni.hp) this.f26634q).hp(Math.max(0, this.ud - o()));
        }
        this.hp.l(true, true);
    }
}
