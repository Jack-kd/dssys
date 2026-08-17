package com.byazt.td;

import android.widget.FrameLayout;
import com.byazt.dnb.gu;
import com.byazt.dnb.jl;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jo.xs;
import com.byazt.tm.hp;
import com.byazt.um.eb;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, 54})
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f25705a;

    /* renamed from: e, reason: collision with root package name */
    public TTBaseVideoActivity f25706e;
    public com.byazt.su.jx eb;
    public mp gu;

    /* renamed from: j, reason: collision with root package name */
    public long f25707j;
    public FrameLayout jl;

    /* renamed from: k, reason: collision with root package name */
    public long f25708k;

    /* renamed from: s, reason: collision with root package name */
    public long f25711s;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.tw.a f25712u;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.go.hp f25713v;

    /* renamed from: w, reason: collision with root package name */
    public int f25714w;
    public String zy;

    /* renamed from: q, reason: collision with root package name */
    public final int f25710q = 210;
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f25709l = false;
    public boolean jx = false;
    public boolean xs = false;

    public a(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f25706e = tTBaseVideoActivity;
    }

    private void as() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar == null || jxVar.xs() == null) {
            return;
        }
        this.f25711s = this.eb.gu();
        if (this.eb.xs().isStarted() || !this.eb.xs().isCompleted()) {
            this.eb.a();
            this.eb.q();
            this.f25709l = true;
        }
    }

    public long a() {
        return this.f25711s;
    }

    public void b() {
        eb();
    }

    public boolean cx() {
        com.byazt.su.jx jxVar = this.eb;
        return jxVar != null && jxVar.xs() == null;
    }

    public double d() {
        double dEb = df.eb(this.gu);
        return (df.v(this.gu) == null || this.gu.hc() <= 0 || dEb <= ((double) this.gu.hc())) ? dEb : this.gu.hc();
    }

    public void di() {
        try {
            this.f25706e.k(1);
        } catch (Throwable th) {
            u.l("TTBaseVideoActivity", "onPause throw Exception :" + th.getMessage());
        }
    }

    public com.byazt.su.l dy() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.vv();
        }
        return null;
    }

    public void e() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            jxVar.l();
        }
    }

    public void eb() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar == null) {
            return;
        }
        jxVar.q();
        this.eb = null;
    }

    public void ec() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar == null || jxVar.xs() == null) {
            return;
        }
        this.eb.xs().stop();
    }

    public boolean gu() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.j();
        }
        return false;
    }

    public void hp(mp mpVar) {
        this.gu = mpVar;
    }

    public long hq() {
        if (gu()) {
            double dA = df.xs(this.gu).a() * 1000.0d * ud().as();
            long j2 = this.f25707j;
            if (dA - j2 > 210.0d) {
                long j3 = (long) (j2 + dA);
                this.f25708k = j3;
                return j3;
            }
        }
        return Math.max(this.f25707j, this.f25708k);
    }

    public boolean j() {
        com.byazt.su.jx jxVar = this.eb;
        return jxVar != null && jxVar.ns();
    }

    public boolean jl() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.w();
        }
        return false;
    }

    public boolean jx() {
        com.byazt.su.jx jxVar = this.eb;
        return (jxVar == null || jxVar.xs() == null || !this.eb.xs().isPaused()) ? false : true;
    }

    public long k() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.k();
        }
        return 0L;
    }

    public boolean ky() {
        return this.jx;
    }

    public boolean l() {
        com.byazt.su.jx jxVar = this.eb;
        return (jxVar == null || jxVar.xs() == null || !this.eb.xs().isPlaying()) ? false : true;
    }

    public boolean lv() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar == null || jxVar.xs() == null) {
            return false;
        }
        return this.eb.xs().isFirstFrameSuccess();
    }

    public void ms() {
        try {
            com.byazt.su.jx jxVar = this.eb;
            if (jxVar instanceof com.byazt.tm.hp) {
                ((com.byazt.tm.hp) jxVar).nd();
            }
        } catch (Throwable unused) {
        }
    }

    public boolean n() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            if (jxVar.xs() != null) {
                eb ebVarXs = this.eb.xs();
                if (ebVarXs.isPaused() || ebVarXs.isReleased()) {
                    ((com.byazt.tm.hp) this.eb).mp();
                    return true;
                }
            } else if (w()) {
                hp(false);
                ((com.byazt.tm.hp) this.eb).mp();
                return true;
            }
        }
        return false;
    }

    public boolean ns() {
        return this.eb != null;
    }

    public boolean nu() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar == null) {
            return false;
        }
        return jxVar.jx();
    }

    public void o() {
        try {
            this.f25706e.v(1);
        } catch (Throwable th) {
            u.l("TTBaseVideoActivity", "onContinue throw Exception :" + th.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void pu() {
        int iHp;
        xs.hp hpVar = new xs.hp();
        hpVar.l(xs());
        hpVar.w(3);
        hpVar.a(vv());
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar instanceof com.byazt.tm.hp) {
            ((com.byazt.tm.hp) jxVar).f19660n.jx(32);
            iHp = ((com.byazt.tm.hp) this.eb).f19660n.hp(2);
        } else {
            iHp = 0;
        }
        com.byazt.qvz.j.hp(dy(), hpVar, this.f25706e.s(), iHp ^ 1);
    }

    public void q() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            jxVar.e();
        }
    }

    public com.byazt.su.jx r() {
        return this.eb;
    }

    public void s() {
        if (this.eb != null && l()) {
            this.eb.l(true);
        }
    }

    public long sz() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.k();
        }
        return 0L;
    }

    public long u() {
        com.byazt.su.jx jxVar = this.eb;
        return jxVar != null ? jxVar.gu() : this.f25711s;
    }

    public com.byazt.tm.hp ud() {
        return (com.byazt.tm.hp) r();
    }

    public int v() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.v();
        }
        return 0;
    }

    public int vv() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.zy();
        }
        return 0;
    }

    public boolean w() {
        return this.f25709l;
    }

    public int wv() {
        return this.f25714w;
    }

    public void xh() {
        this.jx = true;
    }

    public long xs() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.jl();
        }
        return 0L;
    }

    public boolean zy() {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            return jxVar.ec();
        }
        return false;
    }

    public void hp(FrameLayout frameLayout, String str, boolean z2) {
        if (this.xs) {
            return;
        }
        this.xs = true;
        this.jl = frameLayout;
        this.zy = str;
        this.f25705a = z2;
        if (z2) {
            this.eb = new com.byazt.xu.l(this.f25706e, frameLayout, this.gu, this.f25713v);
        } else {
            this.eb = new com.byazt.xu.hp(this.f25706e, frameLayout, this.gu, this.f25713v);
        }
        this.f25714w = (int) d();
    }

    public void jx(boolean z2) {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            jxVar.l(z2);
        }
    }

    public void l(boolean z2) {
        if (this.eb == null) {
            return;
        }
        int i2 = z2 ? lv() ? 2 : 4 : lv() ? 0 : 1;
        xs.hp hpVar = new xs.hp();
        hpVar.l(xs());
        hpVar.jx(1 ^ (lv() ? 1 : 0));
        hpVar.j(i2);
        com.byazt.su.jx jxVar = this.eb;
        if (!(jxVar instanceof com.byazt.tm.hp) || ((com.byazt.tm.hp) jxVar).f19660n.hp(128)) {
            return;
        }
        ((com.byazt.tm.hp) this.eb).f19660n.jx(128);
        com.byazt.qvz.j.jx(this.eb.vv(), hpVar);
    }

    public boolean hp() {
        com.byazt.su.jx jxVar = this.eb;
        return (jxVar == null || jxVar.xs() == null || !this.eb.xs().isCompleted()) ? false : true;
    }

    public void hp(boolean z2) {
        this.f25709l = z2;
    }

    public void hp(long j2) {
        this.f25711s = j2;
    }

    public void hp(long j2, boolean z2) {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar == null || this.jx) {
            return;
        }
        if (j2 != 0) {
            jxVar.hp(j2);
            this.eb.l(z2);
        } else {
            jxVar.s();
        }
    }

    public void l(Map<String, Object> map) {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            jxVar.l(map);
        }
    }

    public void l(long j2) {
        this.f25707j = j2;
        if (!jl() && gu()) {
            this.f25714w = (int) Math.max(0L, Math.round(d() - ((this.f25707j + (df.xs(this.gu).a() * 1000.0d)) / 1000.0d)));
        } else {
            this.f25714w = Math.max(0, (int) (d() - (this.f25707j / 1000)));
        }
    }

    public void hp(Map<String, Object> map) {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar == null || this.jx) {
            return;
        }
        jxVar.hp(map);
    }

    public void hp(hp.InterfaceC0374hp interfaceC0374hp) {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar instanceof com.byazt.tm.hp) {
            ((com.byazt.tm.hp) jxVar).hp(interfaceC0374hp);
        }
    }

    public boolean hp(long j2, boolean z2, int i2) {
        if (this.eb == null || df.v(this.gu) == null) {
            return false;
        }
        com.byazt.tw.a aVarHp = this.f25712u;
        if (aVarHp == null) {
            File file = new File(gu.hp(this.gu.qe()).getRewardFullCacheDir(), df.s(this.gu));
            if (file.exists() && file.length() > 0) {
                this.hp = true;
            }
            aVarHp = df.hp(1, this.gu);
            aVarHp.setCid(this.gu.j());
            FrameLayout frameLayout = this.jl;
            aVarHp.setWidth(frameLayout == null ? 100 : frameLayout.getWidth());
            FrameLayout frameLayout2 = this.jl;
            aVarHp.setHeight(frameLayout2 != null ? frameLayout2.getHeight() : 100);
            aVarHp.setLogExtra(this.gu.w_());
            aVarHp.setCurrent(j2);
            aVarHp.setQuiet(z2);
            if (jl.hp(this.gu)) {
                aVarHp.setAudio(true);
            }
        }
        return this.eb.hp(aVarHp);
    }

    public void hp(boolean z2, TTBaseVideoActivity tTBaseVideoActivity) {
        boolean zJ;
        long jW;
        boolean zA;
        if (z2 || this.f25706e.ea()) {
            return;
        }
        if (jx()) {
            com.byazt.tm.l lVarPu = this.f25706e.y().pu();
            if (lVarPu != null) {
                zJ = lVarPu.j();
                jW = lVarPu.w();
                zA = lVarPu.a();
            } else {
                zJ = false;
                jW = 0;
                zA = false;
            }
            if (!zJ) {
                hp(jW, zA);
                return;
            }
        }
        as();
        hp(tTBaseVideoActivity);
    }

    public void hp(TTBaseVideoActivity tTBaseVideoActivity) {
        if (!n() || tTBaseVideoActivity == null) {
            return;
        }
        tTBaseVideoActivity.l(a(), true);
    }

    public void hp(int i2) {
        com.byazt.su.jx jxVar = this.eb;
        if (jxVar != null) {
            jxVar.hp(i2);
        }
    }

    public void hp(mp mpVar, com.byazt.su.jx jxVar, com.byazt.tw.a aVar) {
        this.gu = mpVar;
        this.eb = jxVar;
        this.f25712u = aVar;
    }

    public void hp(com.byazt.go.hp hpVar) {
        this.f25713v = hpVar;
    }

    public void hp(float f2) {
        if (this.eb.xs() != null) {
            this.eb.xs().setPlaySpeedRatio(f2);
        }
    }
}
