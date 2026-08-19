package com.byazt.vsq;

import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.byazt.xci.su;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends hp {
    public long dy;
    public final AtomicBoolean ky;
    public final AtomicBoolean lv;

    /* renamed from: ms, reason: collision with root package name */
    public final com.byazt.tm.l f26651ms;
    public final int nu;
    public final AtomicBoolean pu;

    /* renamed from: r, reason: collision with root package name */
    public final AtomicBoolean f26652r;
    public final AtomicLong ud;
    public com.byazt.op.hp xh;

    public s(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
        this.nu = 4;
        this.dy = 4L;
        this.lv = new AtomicBoolean(false);
        this.f26652r = new AtomicBoolean(false);
        this.pu = new AtomicBoolean(false);
        this.ky = new AtomicBoolean(false);
        this.ud = new AtomicLong();
        this.f26651ms = new com.byazt.tm.l() { // from class: com.byazt.vsq.s.1
            @Override // com.byazt.tm.l
            public boolean a() {
                return s.this.f26632n.a();
            }

            @Override // com.byazt.tm.l
            public void e() throws JSONException {
                TTBaseVideoActivity tTBaseVideoActivity2 = s.this.hp;
                if (tTBaseVideoActivity2 != null) {
                    tTBaseVideoActivity2.gu();
                }
            }

            @Override // com.byazt.tm.l
            public Map<String, Object> eb() {
                HashMap map = new HashMap();
                map.put("refer", "in_video");
                return map;
            }

            @Override // com.byazt.tm.l
            public int gu() {
                return s.this.pu.get() ? 1 : 2;
            }

            @Override // com.byazt.tm.l
            public boolean hp() throws JSONException {
                if (!s.this.pu.get() && !su.l(s.this.f26631l)) {
                    return false;
                }
                s.this.tw();
                return true;
            }

            @Override // com.byazt.tm.l
            public boolean j() {
                return s.this.ky.get();
            }

            @Override // com.byazt.tm.l
            public void jx() {
                s.this.r();
                s.this.ky.set(true);
                s.this.hp.jl();
            }

            @Override // com.byazt.tm.l
            public void l() throws JSONException {
                s.this.pu.set(false);
                s.this.f26634q.w(8);
                if (!s.this.eb()) {
                    s.this.hp.kg();
                }
                s.this.hp.cx();
            }

            @Override // com.byazt.tm.l
            public void q() {
                s.this.hp.kg();
            }

            @Override // com.byazt.tm.l
            public void s() {
                s.this.jd();
            }

            @Override // com.byazt.tm.l
            public long w() {
                return s.this.ud.get();
            }

            @Override // com.byazt.tm.l
            public void hp(long j2, long j3) {
                s.this.ec.l(j2);
                s.this.n();
                s.this.ud.set(j2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jd() {
        this.lv.set(false);
    }

    public static int l(mp mpVar) {
        return 10;
    }

    private void qh() {
        this.f26652r.set(true);
        this.xh.hp();
    }

    private void t() {
        if (this.lv.get()) {
            yj();
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tw() throws JSONException {
        this.f26634q.w(0);
        this.hp.as();
        this.xh.jx();
        this.hp.ns();
    }

    private void x() {
        if (this.f26652r.get()) {
            long j2 = this.dy - 1;
            this.dy = j2;
            if (j2 != 0) {
                if (j2 > 0) {
                    this.xh.hp(j2);
                }
            } else {
                this.xh.hp(j2);
                this.pu.set(true);
                if (eb()) {
                    this.xh.hp(this.cx);
                } else {
                    this.xh.hp(this.f26635s);
                }
            }
        }
    }

    @Override // com.byazt.vsq.l
    public boolean an() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public void di() {
        super.di();
        this.vv.hp(false, "奖励已领取", "跳过", false, true);
    }

    @Override // com.byazt.vsq.l
    public boolean fi() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public void n() {
        super.n();
        this.f26636u = false;
        boolean z2 = ((int) (this.ec.hq() / 1000)) >= this.hq.jx() || this.hp.nd();
        if (this.ec.nu()) {
            this.vv.hp(false, null, "跳过", false, true);
            return;
        }
        int iWv = this.ec.wv();
        if (this.ec.hp()) {
            return;
        }
        this.vv.hp(false, iWv + "s", z2 ? "跳过" : "", false, z2);
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
    public com.byazt.tm.l pu() {
        return this.f26651ms;
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public void r() {
        super.r();
        this.vv.hp(false, "奖励已领取", "跳过", false, true);
    }

    @Override // com.byazt.vsq.l
    public void rk() {
        t();
        if (ea.xs(this.f26631l)) {
            this.hp.jx(0);
            if (o() > mp() || this.f26637v) {
                com.byazt.ij.a.hp = 0;
            }
            l(a(true));
            com.byazt.ij.a.hp = as();
        }
    }

    @Override // com.byazt.vsq.l
    public void ru() {
        com.byazt.qk.w wVar = this.cx;
        if (wVar != null) {
            ((com.byazt.sw.hp) wVar.hp(com.byazt.sw.hp.class)).hp(this.f26651ms);
            ((com.byazt.ey.hp) this.cx.hp(com.byazt.ey.hp.class)).hp(this.f26651ms);
        }
        com.byazt.go.w wVar2 = this.f26635s;
        if (wVar2 != null) {
            ((com.byazt.sw.hp) wVar2.hp(com.byazt.sw.hp.class)).hp(this.f26651ms);
            ((com.byazt.ey.hp) this.f26635s.hp(com.byazt.ey.hp.class)).hp(this.f26651ms);
        }
        com.byazt.op.hp hpVar = new com.byazt.op.hp(this.hp, this.f26631l, this.f26651ms);
        this.xh = hpVar;
        hpVar.hp(this.hp.lv().getSceneFrameContainer(), this.hp.lv().getSceneFrame());
        this.lv.set(su.jx(this.f26631l) != 0);
        if (this.lv.get()) {
            this.f26636u = true;
        }
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return true;
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return true;
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        this.f26634q.w(8);
        this.f26634q.a(0);
        this.vv.w(true);
        this.vv.jx(true);
        this.vv.l(true);
        this.vv.hp(true);
        this.hp.f();
    }

    public void yj() {
        if (this.f26652r.get()) {
            return;
        }
        int iHq = (int) this.ec.hq();
        int iSz = (int) this.ec.sz();
        int iJx = su.jx(this.f26631l);
        if (iJx == 1) {
            hp(su.j(this.f26631l), iSz, this.hq.w() * 1000, false);
        } else if (iJx == 2) {
            hp((int) (iSz * 0.001f * 0.01f * su.j(this.f26631l)), iSz, iHq, false);
        } else {
            if (iJx != 3) {
                return;
            }
            hp(xh(), iSz, iHq, true);
        }
    }

    public static boolean hp(mp mpVar) {
        return su.hp(mpVar);
    }

    private void hp(int i2, long j2, long j3, boolean z2) {
        if (z2) {
            if (i2 <= 3) {
                qh();
            }
        } else if (i2 > 0) {
            long j4 = i2 * 1000;
            if (j4 > j2) {
                return;
            }
            long j5 = j4 - j3;
            if (j5 <= 0 || Math.abs(j5) > 3200) {
                return;
            }
            qh();
        }
    }
}
