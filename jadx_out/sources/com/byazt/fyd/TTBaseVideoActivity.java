package com.byazt.fyd;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.byazt.ar.w;
import com.byazt.dnb.jl;
import com.byazt.ey.jx;
import com.byazt.gi.BaseThemeActivity;
import com.byazt.ih.l;
import com.byazt.ij.l;
import com.byazt.iw.hp;
import com.byazt.jdb.hp;
import com.byazt.jki.j;
import com.byazt.jki.jx;
import com.byazt.jpy.SaasAuthRewardDialog;
import com.byazt.jwq.l;
import com.byazt.jz.sz;
import com.byazt.kj.hp;
import com.byazt.lf.k;
import com.byazt.moz.hp;
import com.byazt.moz.jx;
import com.byazt.nc.hp;
import com.byazt.nk.TTProgressBar;
import com.byazt.pg.r;
import com.byazt.qk.o;
import com.byazt.rm.AbstractEndCardFrameLayout;
import com.byazt.td.a;
import com.byazt.td.hp;
import com.byazt.tm.hp;
import com.byazt.vi.eb;
import com.byazt.vna.l;
import com.byazt.vsq.s;
import com.byazt.xci.b;
import com.byazt.xci.d;
import com.byazt.xci.df;
import com.byazt.xci.e;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.hq;
import com.byazt.xci.lv;
import com.byazt.xci.mp;
import com.byazt.xci.q;
import com.byazt.xci.rz;
import com.byazt.xci.x;
import com.byazt.xci.zx;
import com.byazt.xci.zy;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.yni.RewardAuthToastLayout;
import com.byazt.yni.RewardFullBaseLayout;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@hp(hp = {0, 1, ILivePlayer.LIVE_PLAYER_OPTION_PLAY_URL, 58})
/* loaded from: classes2.dex */
public abstract class TTBaseVideoActivity extends BaseThemeActivity implements r.hp, l {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f20263a;
    public boolean an;
    public TTBaseVideoActivity as;

    /* renamed from: b, reason: collision with root package name */
    public long f20264b;
    public boolean bu;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public RewardFullBaseLayout f20265d;
    public j df;
    public boolean di;
    public com.byazt.td.l dy;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f20266e;
    public com.byazt.ar.hp ea;
    public final AtomicBoolean eb;
    public final AtomicBoolean ec;
    public AtomicBoolean ed;

    /* renamed from: f, reason: collision with root package name */
    public String f20267f;
    public long fi;
    public float gd;
    public final AtomicBoolean gu;
    public w hd;
    public final String hp;
    public com.byazt.yni.w hq;

    /* renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap<Integer, Boolean> f20268j;
    public int jd;
    public final AtomicBoolean jl;
    public final AtomicBoolean jx;

    /* renamed from: k, reason: collision with root package name */
    public final AtomicBoolean f20269k;
    public jx kg;
    public com.byazt.td.j ky;

    /* renamed from: l, reason: collision with root package name */
    public final ud f20270l;
    public com.byazt.td.hp lv;

    /* renamed from: m, reason: collision with root package name */
    public String f20271m;
    public int mp;

    /* renamed from: ms, reason: collision with root package name */
    public com.byazt.vsq.hp f20272ms;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20273n;
    public com.byazt.go.w nd;
    public long nr;
    public boolean ns;
    public com.byazt.td.w nu;

    /* renamed from: o, reason: collision with root package name */
    public int f20274o;
    public int pc;
    public final hp.InterfaceC0317hp pi;

    /* renamed from: q, reason: collision with root package name */
    public final AtomicBoolean f20275q;
    public Double qh;
    public final AtomicBoolean qu;

    /* renamed from: r, reason: collision with root package name */
    public a f20276r;
    public com.byazt.go.l rk;
    public hp.InterfaceC0369hp ru;
    public final com.byazt.iw.hp rv;
    public int rz;

    /* renamed from: s, reason: collision with root package name */
    public final AtomicBoolean f20277s;
    public final com.byazt.moz.hp su;
    public final AtomicBoolean sz;

    /* renamed from: t, reason: collision with root package name */
    public l.hp f20278t;
    public int tw;

    /* renamed from: u, reason: collision with root package name */
    public final AtomicBoolean f20279u;
    public AbstractEndCardFrameLayout ud;
    public com.byazt.dnb.hp ux;

    /* renamed from: v, reason: collision with root package name */
    public final AtomicBoolean f20280v;
    public hp.InterfaceC0374hp vq;
    public final AtomicBoolean vv;

    /* renamed from: w, reason: collision with root package name */
    public final ConcurrentHashMap<Integer, Boolean> f20281w;
    public hp.l wt;
    public com.byazt.yni.l wv;

    /* renamed from: x, reason: collision with root package name */
    public long f20282x;
    public com.byazt.td.jx xh;
    public final AtomicBoolean xs;

    /* renamed from: y, reason: collision with root package name */
    public com.byazt.vv.hp f20283y;
    public int yj;
    public com.byazt.ih.l yr;
    public long zb;
    public com.byazt.rp.l zx;
    public final AtomicBoolean zy;

    public TTBaseVideoActivity() {
        this.hp = o() ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.f20270l = new ud(Looper.getMainLooper(), this);
        this.jx = new AtomicBoolean(false);
        this.f20268j = new ConcurrentHashMap<>();
        this.f20281w = new ConcurrentHashMap<>();
        this.f20263a = new AtomicBoolean(false);
        this.eb = new AtomicBoolean(false);
        this.f20277s = new AtomicBoolean(false);
        this.qu = new AtomicBoolean(false);
        this.f20275q = new AtomicBoolean(false);
        this.f20266e = new AtomicBoolean(false);
        this.gu = new AtomicBoolean(false);
        this.jl = new AtomicBoolean(false);
        this.zy = new AtomicBoolean(false);
        this.f20269k = new AtomicBoolean(false);
        this.f20280v = new AtomicBoolean(false);
        this.f20279u = new AtomicBoolean(false);
        this.xs = new AtomicBoolean(false);
        this.vv = new AtomicBoolean(false);
        this.ec = new AtomicBoolean(false);
        this.sz = new AtomicBoolean(false);
        this.f20274o = -1;
        this.fi = 0L;
        this.nr = 0L;
        this.yj = 1;
        this.qh = null;
        this.f20282x = 0L;
        this.bu = false;
        this.vq = new hp.InterfaceC0374hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.1
            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void hp() throws JSONException {
                TTBaseVideoActivity.this.f20270l.removeMessages(300);
                TTBaseVideoActivity.this.u();
                if (!TTBaseVideoActivity.this.f20276r.jl()) {
                    a aVar = TTBaseVideoActivity.this.f20276r;
                    aVar.l(aVar.hq() + 1000);
                }
                if (TTBaseVideoActivity.this.f20272ms.a() && !TTBaseVideoActivity.this.f20276r.jl()) {
                    TTBaseVideoActivity.this.hq.l(true);
                }
                TTBaseVideoActivity.this.qu();
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void jx() {
                w wVar = TTBaseVideoActivity.this.hd;
                if (wVar == null || wVar.hp() == null) {
                    return;
                }
                TTBaseVideoActivity.this.hd.hp().hp();
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void l() throws JSONException {
                TTBaseVideoActivity.this.f20270l.removeMessages(300);
                TTBaseVideoActivity.this.u();
                TTBaseVideoActivity.this.hp(false, false);
                TTBaseVideoActivity.this.f20276r.hp(6);
                TTBaseVideoActivity.this.f20276r.q();
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void hp(int i2, String str) {
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                if (tTBaseVideoActivity.ns) {
                    tTBaseVideoActivity.f20270l.removeMessages(300);
                    TTBaseVideoActivity.this.zy();
                    TTBaseVideoActivity.this.f20276r.hp(5);
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    tTBaseVideoActivity2.l(tTBaseVideoActivity2.f20276r.l());
                }
            }

            @Override // com.byazt.tm.hp.InterfaceC0374hp
            public void hp(long j2, long j3) {
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                if (!tTBaseVideoActivity.ns && tTBaseVideoActivity.f20276r.l()) {
                    TTBaseVideoActivity.this.f20276r.hp((Map<String, Object>) null);
                }
                boolean z2 = true;
                if (TTBaseVideoActivity.this.dy.r()) {
                    TTBaseVideoActivity.this.f20276r.jx(true);
                    return;
                }
                TTBaseVideoActivity.this.f20270l.removeMessages(300);
                if (j2 != TTBaseVideoActivity.this.f20276r.hq()) {
                    TTBaseVideoActivity.this.u();
                }
                if (TTBaseVideoActivity.this.f20276r.l() || j3 == j2) {
                    TTBaseVideoActivity.this.f20276r.l(j2);
                    if (TTBaseVideoActivity.this.ux()) {
                        TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                        com.byazt.yni.w wVar = tTBaseVideoActivity2.hq;
                        String strValueOf = String.valueOf(tTBaseVideoActivity2.f20276r.wv());
                        int iHq = (int) (TTBaseVideoActivity.this.f20276r.hq() / 1000);
                        if (j2 != j3 && !TTBaseVideoActivity.this.f20276r.nu()) {
                            z2 = false;
                        }
                        wVar.hp(strValueOf, iHq, 0, z2);
                    }
                    TTBaseVideoActivity.this.jx(0);
                    TTBaseVideoActivity.this.f();
                    TTBaseVideoActivity.this.f20272ms.n();
                }
            }
        };
        this.ea = new com.byazt.ar.hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.12
            @Override // com.byazt.ar.hp
            public void hp(ViewGroup viewGroup) {
            }

            @Override // com.byazt.qk.gu
            public void j() {
                TTBaseVideoActivity.this.f20272ms.yr().j();
            }

            @Override // com.byazt.qk.gu
            public int jx() {
                return TTBaseVideoActivity.this.f20272ms.yr().jx();
            }

            @Override // com.byazt.qk.gu
            public int l() {
                return TTBaseVideoActivity.this.f20272ms.yr().l();
            }

            @Override // com.byazt.qk.gu
            public void setPauseFromExpressView(boolean z2) {
                TTBaseVideoActivity.this.f20272ms.yr().setPauseFromExpressView(z2);
            }

            @Override // com.byazt.qk.gu
            public void w() {
                TTBaseVideoActivity.this.f20272ms.yr().w();
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2) {
                TTBaseVideoActivity.this.f20272ms.yr().hp(i2);
            }

            @Override // com.byazt.qk.gu
            public void j(int i2) {
                TTBaseVideoActivity.this.jx(i2);
            }

            @Override // com.byazt.qk.gu
            public void jx(int i2) {
                TTBaseVideoActivity.this.f20272ms.yr().jx(i2);
            }

            @Override // com.byazt.qk.gu
            public void l(int i2) {
                TTBaseVideoActivity.this.f20272ms.yr().l(i2);
            }

            @Override // com.byazt.qk.gu
            public long hp() {
                return TTBaseVideoActivity.this.f20272ms.yr().hp();
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2, String str) {
                TTBaseVideoActivity.this.f20272ms.yr().hp(i2, str);
            }

            @Override // com.byazt.qk.gu
            public void hp(float f2) {
                TTBaseVideoActivity.this.f20272ms.yr().hp(f2);
            }

            @Override // com.byazt.ar.hp
            public void hp(View view) throws JSONException {
                TTBaseVideoActivity.this.hp(2);
                com.byazt.ar.jx.l(TTBaseVideoActivity.this.pu, d.eb(TTBaseVideoActivity.this.pu), true, null);
            }

            @Override // com.byazt.qk.gu
            public void hp(mp mpVar) {
                TTBaseVideoActivity.this.f20272ms.yr().hp(mpVar);
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, x xVar) {
                boolean zOptBoolean;
                e eVar;
                if (TTBaseVideoActivity.this.nd != null) {
                    if (jxVar instanceof b) {
                        b bVar = (b) jxVar;
                        eVar = new e();
                        eVar.hp(bVar.hp);
                        eVar.l(bVar.f27199l);
                        eVar.jx(bVar.jx);
                        eVar.j(bVar.f27197j);
                        eVar.hp(bVar.f27204w);
                        eVar.l(bVar.f27195a);
                        eVar.l(bVar.f27203v);
                        zOptBoolean = bVar.hp().optBoolean("isLottieInternalClick", false);
                    } else {
                        eVar = null;
                        zOptBoolean = false;
                    }
                    TTBaseVideoActivity.this.nd.hp(view, eVar);
                } else {
                    zOptBoolean = false;
                }
                com.byazt.ar.jx.hp(TTBaseVideoActivity.this.pu, (zy) xVar, false, (JSONObject) null, zOptBoolean);
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
                e eVar;
                if ((i2 == 1 || i2 == 2) && (jxVar instanceof b)) {
                    b bVar = (b) jxVar;
                    eVar = new e();
                    eVar.hp(bVar.hp);
                    eVar.l(bVar.f27199l);
                    eVar.jx(bVar.jx);
                    eVar.j(bVar.f27197j);
                    eVar.hp(bVar.f27204w);
                    eVar.l(bVar.f27195a);
                    eVar.l(bVar.f27203v);
                } else {
                    eVar = null;
                }
                if (i2 == 2) {
                    TTBaseVideoActivity.this.nd.hp(view, eVar);
                }
                if (i2 == 1) {
                    TTBaseVideoActivity.this.nd.hp(view, eVar);
                }
            }
        };
        this.pi = new hp.InterfaceC0317hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.16
            @Override // com.byazt.nc.hp.InterfaceC0317hp
            public boolean getHasUseCustomizeVideo() {
                return false;
            }

            @Override // com.byazt.nc.hp.InterfaceC0317hp
            public com.byazt.nc.hp getVideoModel() {
                com.byazt.nc.hp hpVar = new com.byazt.nc.hp();
                a aVar = TTBaseVideoActivity.this.f20276r;
                if (aVar != null) {
                    hpVar.eb = aVar.u();
                    hpVar.hp = TTBaseVideoActivity.this.f20276r.hp();
                    hpVar.f23533s = TTBaseVideoActivity.this.f20273n;
                }
                return hpVar;
            }
        };
        this.su = new com.byazt.moz.l(new hp.InterfaceC0311hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.17
            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public int a() {
                return TTBaseVideoActivity.this.f20272ms.a(true);
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public void e() {
                com.byazt.vsq.hp hpVar = TTBaseVideoActivity.this.f20272ms;
                if (hpVar instanceof com.byazt.vsq.e) {
                    ((com.byazt.vsq.e) hpVar).yj();
                }
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public boolean eb() {
                return TTBaseVideoActivity.this.ec.get();
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public TTBaseVideoActivity getActivity() {
                return TTBaseVideoActivity.this.as;
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public void gu() {
                com.byazt.vsq.hp hpVar = TTBaseVideoActivity.this.f20272ms;
                if (hpVar instanceof com.byazt.vsq.e) {
                    ((com.byazt.vsq.e) hpVar).tw();
                }
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public RewardFullBaseLayout hp() {
                return TTBaseVideoActivity.this.f20265d;
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public boolean j() {
                return TTBaseVideoActivity.this.an;
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public mp jx() {
                return TTBaseVideoActivity.this.pu;
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public boolean l() {
                return TTBaseVideoActivity.this.o();
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public boolean q() {
                return TTBaseVideoActivity.this.f20272ms.hd();
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public boolean s() {
                return TTBaseVideoActivity.this.vq();
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public int w() {
                return TTBaseVideoActivity.this.f20272ms.wv();
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public void hp(int i2, int i3) {
                if (i2 == 3) {
                    TTBaseVideoActivity.this.k(2);
                }
                TTBaseVideoActivity.this.hp(i2, i3);
            }

            @Override // com.byazt.moz.hp.InterfaceC0311hp
            public void hp(int i2) {
                if (i2 == 3) {
                    TTBaseVideoActivity.this.v(2);
                }
            }
        });
        this.rv = new com.byazt.iw.l(new hp.InterfaceC0276hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.18
            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public Activity getActivity() {
                return TTBaseVideoActivity.this.as;
            }

            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public mp hp() {
                return TTBaseVideoActivity.this.pu;
            }

            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public void j() {
                TTBaseVideoActivity.this.as();
            }

            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public void jx() {
                TTBaseVideoActivity.this.finish();
            }

            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public String l() {
                return TTBaseVideoActivity.this.f20271m;
            }

            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public void w() {
                a aVar = TTBaseVideoActivity.this.f20276r;
                if (aVar != null) {
                    aVar.eb();
                }
            }

            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public void hp(int i2, TTProgressBar tTProgressBar) {
                try {
                    TTBaseVideoActivity.this.f20265d.hp(i2, tTProgressBar);
                } catch (Exception unused) {
                }
            }

            @Override // com.byazt.iw.hp.InterfaceC0276hp
            public void hp(boolean z2, String str, String str2) throws JSONException {
                if (n.jx(TTBaseVideoActivity.this.pu)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("visible", z2);
                    jSONObject.put("entrance_text", rz.hp(TTBaseVideoActivity.this.pu, str, str2));
                } catch (JSONException unused) {
                }
                TTBaseVideoActivity.this.hq.hp("showPlayAgainEntrance", jSONObject);
                TTBaseVideoActivity.this.dy.hp(jSONObject);
                if (TTBaseVideoActivity.this.dy.r()) {
                    return;
                }
                TTBaseVideoActivity.this.nu.eb(z2);
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.nu.hp(rz.hp(tTBaseVideoActivity.pu, str, str2));
            }
        });
        this.ed = new AtomicBoolean(true);
    }

    private boolean bu() {
        l.hp hpVar = this.f20278t;
        return hpVar != null && hpVar.j();
    }

    private void df() throws JSONException {
        if (ec.j(this.pu)) {
            this.f20276r.xh();
            return;
        }
        jl();
        if (ea.xs(this.pu) || this.f20272ms.s(false)) {
            yr();
        } else {
            jx(0);
            this.nu.hp(false, null, null, true, true);
        }
        if (ea.eb(this.pu) && this.f20276r.sz() >= ea.e(this.pu)) {
            jx(2);
        }
        this.f20272ms.r();
    }

    private void gd() {
        mp mpVar = this.pu;
        if (mpVar == null || this.f20265d == null) {
            return;
        }
        String strU = mpVar.u();
        if (TextUtils.isEmpty(strU)) {
            return;
        }
        try {
            int iOptInt = new JSONObject(strU).optInt("auth_reward_gold");
            if (iOptInt > 0) {
                this.f20265d.addView(new RewardAuthToastLayout(this.as, iOptInt));
            }
        } catch (JSONException unused) {
        }
    }

    private void jd() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.vsq.hp hpVar = this.f20272ms;
            if (hpVar != null) {
                jSONObject.put("reward_full_scene_type", hpVar.nu());
            }
        } catch (Exception unused) {
        }
        k.hp().hp(this.pu, "stats_reward_full_destroy", jSONObject);
        com.byazt.ij.a.jx = false;
        com.byazt.ij.a.f21118l = 0;
        com.byazt.ij.a.hp = 0;
        com.byazt.ij.a.f21117j = false;
        this.f20270l.removeCallbacksAndMessages(null);
        this.f20276r.b();
        this.lv.a();
        this.dy.eb();
        w wVar = this.hd;
        if (wVar != null) {
            wVar.l();
        }
        jx(true);
        d();
        hp("recycleRes", (Bundle) null);
        mp mpVar = this.pu;
        if (mpVar != null) {
            com.byazt.ikh.hp.hp(mpVar.n());
            com.byazt.jz.n.hp(this.pu.n());
            com.byazt.jz.n.hp(this.pu.jm());
            com.byazt.zn.r.l(this.pu.nu());
        }
    }

    private void qh() {
        final View decorView;
        mp mpVar = this.pu;
        if (mpVar == null || !mpVar.ud()) {
            final int iHx = sz.l().hx();
            try {
                requestWindowFeature(1);
                getWindow().addFlags(16777216);
                getWindow().addFlags(128);
                sz.hp(this.as);
                if (!this.f20272ms.f()) {
                    getWindow().addFlags(1024);
                    if (iHx == 1) {
                        if (Build.VERSION.SDK_INT >= 30) {
                            getWindow().setDecorFitsSystemWindows(true);
                        }
                        getWindow().getDecorView().setFitsSystemWindows(true);
                    }
                }
            } catch (Throwable unused) {
            }
            if (iHx == 1) {
                return;
            }
            try {
                decorView = getWindow().getDecorView();
            } catch (Throwable unused2) {
                decorView = null;
            }
            if (decorView == null) {
                return;
            }
            decorView.post(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (xh.l() && TTBaseVideoActivity.this.yj == 1 && TTBaseVideoActivity.this.as.getResources().getConfiguration().orientation == 1) {
                            int height = TTBaseVideoActivity.this.getWindow().getDecorView().getHeight();
                            if (iHx == 1) {
                                Rect rect = new Rect();
                                TTBaseVideoActivity.this.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                                height = rect.bottom - rect.top;
                            }
                            if (Math.abs(xh.s((Context) TTBaseVideoActivity.this.as) - height) == 0 && decorView.isAttachedToWindow()) {
                                View view = decorView;
                                view.setPadding(view.getPaddingLeft(), (int) (decorView.getPaddingTop() + xh.e((Context) TTBaseVideoActivity.this.as)), decorView.getPaddingRight(), decorView.getPaddingBottom());
                            }
                        }
                    } catch (Throwable unused3) {
                    }
                }
            });
        }
    }

    private boolean rk() {
        if (this.pu != null && com.byazt.yx.l.hp().l(this.pu)) {
            String strU = this.pu.u();
            if (TextUtils.isEmpty(strU)) {
                return false;
            }
            try {
                if (new JSONObject(strU).optInt("saas_play_time_type") == 1) {
                    return true;
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    private void ru() {
        com.byazt.vsq.hp hpVarHp = com.byazt.vsq.j.hp(this.as, this.pu);
        this.f20272ms = hpVarHp;
        if (hpVarHp == null) {
            u.l("TTBaseVideoActivity", "initAdType failed , finish activity");
            finish();
            return;
        }
        hpVarHp.getClass();
        if (!lv.l(o(), this.pu, true)) {
            this.f20273n = this.pu.dh() == 1;
        }
        this.f20272ms.hp(this.nu, this.f20276r, this.dy, this.ky, this.lv);
        jx jxVar = new jx(o(), this.pu, this.f20276r, this.f20272ms);
        this.kg = jxVar;
        jxVar.l(this.pc);
        this.f20272ms.hp(this.hp, this.f20273n, o(), this.kg);
        this.f20272ms.s();
    }

    private void t() {
        if (this.dy.r() || !this.ns || ea() || !this.f20272ms.qu() || this.f20276r.ky()) {
            return;
        }
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if ((hpVar instanceof com.byazt.vsq.jx) || (hpVar instanceof com.byazt.vsq.e)) {
            return;
        }
        this.f20270l.removeMessages(300);
        this.f20270l.sendEmptyMessageDelayed(300, 5000L);
    }

    private boolean tw() {
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if (hpVar instanceof com.byazt.vsq.e) {
            return true;
        }
        return hpVar instanceof com.byazt.vsq.jx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ux() {
        return (this.pu.hy() == 180 && ea.xs(this.pu) && jl.hp(this.pu) && this.hq.q() == 7) ? false : true;
    }

    private void wt() {
        this.f20265d = new RewardFullBaseLayout(this.as);
        this.nu = new com.byazt.td.w(this.as);
        this.dy = new com.byazt.td.l(this.as);
        this.lv = new com.byazt.td.hp(this.as);
        this.f20276r = new a(this.as);
        this.ky = new com.byazt.td.j(this.as);
        this.xh = new com.byazt.td.jx(this.as);
    }

    private void x() {
        final View decorView;
        try {
            decorView = getWindow().getDecorView();
        } catch (Throwable unused) {
            decorView = null;
        }
        if (decorView == null) {
            return;
        }
        decorView.post(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    decorView.findViewById(R.id.statusBarBackground).setVisibility(8);
                } catch (Exception unused2) {
                }
            }
        });
        decorView.postDelayed(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    decorView.findViewById(R.id.statusBarBackground).setVisibility(8);
                } catch (Exception unused2) {
                }
            }
        }, 300L);
    }

    private void yj() {
        com.byazt.jdb.j.hp(this.pu, getClass().getName());
        this.mp = ky.zy(this.pu);
        this.gd = this.pu.qo();
        this.yj = this.pu.wf();
        ea.hp(this.pu, false);
        ea.l(this.pu, false);
        com.byazt.ij.a.jx = false;
        com.byazt.ij.a.f21118l = 0;
        com.byazt.ij.a.hp = 0;
        com.byazt.ij.a.f21117j = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zb() {
        if (di()) {
            t();
            this.f20276r.hp(false, this);
        }
    }

    public void an() {
        this.su.l(false);
    }

    public void as() {
        k(0);
    }

    public abstract void d();

    public String dy() {
        return "";
    }

    public boolean ea() {
        com.byazt.vsq.hp hpVar = this.f20272ms;
        return (hpVar != null && hpVar.gd()) || !this.f20281w.isEmpty();
    }

    public void f() {
    }

    public void fi() {
        this.su.hp(this.f20265d);
    }

    @Override // com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void finish() {
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if (hpVar != null) {
            hpVar.v();
        }
        Map<String, Object> mapMp = mp();
        com.byazt.td.l lVar = this.dy;
        if (lVar != null) {
            lVar.hp(mapMp);
            this.dy.w();
        }
        com.byazt.vsq.hp hpVar2 = this.f20272ms;
        if (hpVar2 != null) {
            hpVar2.l(mapMp);
        }
        com.byazt.jdb.j.a(this.pu, this.hp, "click_close", mapMp);
        d();
        super.finish();
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) throws JSONException {
        int i2 = message.what;
        if (i2 == 300) {
            gu();
            return;
        }
        if (i2 == 400) {
            this.f20276r.q();
            if (this.f20272ms.a()) {
                this.hq.hp(true);
            }
            hp(false, true);
            return;
        }
        if (i2 == 500) {
            this.dy.s();
            this.f20276r.s();
            this.wv.jx(false);
            this.hq.jx(false);
            this.hq.j();
            return;
        }
        if (i2 == 600) {
            this.nu.hp(false, null, null, true, true);
            return;
        }
        if (i2 == 700) {
            this.dy.dy();
            return;
        }
        if (i2 == 1200) {
            if (ea.xs(this.pu)) {
                return;
            }
            if (this.dy.ud()) {
                hp(1, false);
                this.ky.hp(xh(), this.f20272ms.xh());
                jx(0);
            }
            this.f20270l.sendEmptyMessageDelayed(1200, 1000L);
            return;
        }
        if (i2 != 1300) {
            return;
        }
        this.f20270l.sendEmptyMessageDelayed(1300, this.kg.q());
        if (b()) {
            return;
        }
        this.kg.s();
        if (!ea()) {
            this.kg.eb();
            if (y().s(true)) {
                this.f20276r.l(this.kg.w() * 1000);
                this.hq.hp(String.valueOf(Math.max(0, (int) (this.f20276r.d() - this.kg.w()))), this.kg.w(), 0, false);
            }
        }
        com.byazt.moz.j jVar = new com.byazt.moz.j();
        if (lv.l(o()) > 0) {
            int iW = lv.w(this.pu) / 1000;
            int iL = lv.l(o());
            if (iW < iL) {
                iL = iW;
            }
            if (iW - iL <= this.f20272ms.wv()) {
                jVar.hp = true;
                jVar.f23160l = iL;
            }
        }
        hp(2, jVar);
        com.byazt.moz.j jVar2 = new com.byazt.moz.j();
        jVar2.hp = true;
        hp(3, jVar2);
        this.su.eb();
        this.f20272ms.vq();
    }

    public a hd() {
        return this.f20276r;
    }

    public String hp() {
        return null;
    }

    public abstract void hp(String str, Bundle bundle);

    public int hq() {
        return 0;
    }

    public void j(int i2) {
    }

    public void jx(int i2) {
    }

    public abstract void jx(boolean z2);

    public void kg() {
        v(0);
    }

    public ud ky() {
        return this.f20270l;
    }

    public RewardFullBaseLayout lv() {
        return this.f20265d;
    }

    public Double m() {
        return this.qh;
    }

    public Map<String, Object> mp() {
        return hp(this.pu);
    }

    public void ms() {
        this.f20270l.removeMessages(600);
    }

    public boolean nd() {
        return this.ky.j() || this.dy.r() || !ea.jx(this.pu, this.f20272ms.eb());
    }

    public boolean nr() {
        return this.f20266e.get();
    }

    public String nu() {
        return "";
    }

    public abstract boolean o();

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        xh.l((Activity) this.as);
        try {
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.byazt.fyd.TTBaseVideoActivity.8
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i2) {
                    if (i2 == 0) {
                        com.byazt.rp.l lVar = TTBaseVideoActivity.this.zx;
                        if (lVar != null) {
                            lVar.hp();
                        }
                        try {
                            if (TTBaseVideoActivity.this.isFinishing()) {
                                return;
                            }
                            if (TTBaseVideoActivity.this.yj == 2) {
                                TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.8.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        xh.hp((Activity) TTBaseVideoActivity.this.as);
                                    }
                                }, 2500L);
                            } else {
                                TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.8.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        xh.l((Activity) TTBaseVideoActivity.this.as);
                                    }
                                }, 500L);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        mp mpVar = this.pu;
        if (mpVar == null) {
            return;
        }
        if (mp.j(mpVar) || this.pu.pk() == 1 || (this.f20272ms instanceof s)) {
            this.dy.u();
        }
        com.byazt.rp.l lVar = this.zx;
        if ((lVar == null || !lVar.l(this.as, this.pu)) && ec.zy(this.pu)) {
            e();
        }
    }

    @Override // com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        eb.l(this);
        super.onCreate(bundle);
        this.as = this;
        wt();
        hp(getIntent());
        l(bundle);
        l(getIntent());
        if (hp(bundle)) {
            yj();
            ru();
            qh();
            q();
            this.f20272ms.hp(this.tw, this.jd);
            setContentView(this.f20265d);
            j();
            this.f20272ms.l();
            com.byazt.yni.w wVar = this.hq;
            if (wVar != null) {
                wVar.hp(this.pi);
            }
            if (rk()) {
                this.df = new j();
            }
            SaasAuthRewardDialog saasAuthRewardDialog = (SaasAuthRewardDialog) findViewById(2114387968);
            if (saasAuthRewardDialog != null) {
                saasAuthRewardDialog.hp(this.pu, this.hp, o() ? 7 : 5);
            }
            if (lv.l(o(), this.pu, true)) {
                lv().getSceneFrameContainer().post(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.19
                    @Override // java.lang.Runnable
                    public void run() {
                        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, TTBaseVideoActivity.this.lv().getSceneFrameContainer().getHeight(), 0.0f);
                        translateAnimation.setDuration(300L);
                        translateAnimation.setFillAfter(true);
                        TTBaseVideoActivity.this.lv().getSceneFrameContainer().startAnimation(translateAnimation);
                    }
                });
            }
        }
    }

    @Override // com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onDestroy() throws JSONException {
        super.onDestroy();
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if (hpVar != null) {
            hpVar.u();
        }
        if (!tw()) {
            this.xh.w().hp(16);
        }
        com.byazt.ih.l lVar = this.yr;
        if (lVar != null) {
            lVar.resetDislikeStatus();
        }
        jd();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        com.byazt.rp.l lVar = this.zx;
        if (lVar != null) {
            lVar.hp(i2);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.fi > 0) {
            this.nr += System.currentTimeMillis() - this.fi;
            this.fi = 0L;
        }
        com.byazt.vv.hp hpVar = this.f20283y;
        if (hpVar != null && hpVar.jx()) {
            Bundle bundle = new Bundle();
            bundle.putLong("foreground_time", this.nr);
            com.byazt.vv.l.hp().hp(this.mp, bundle);
        }
        as();
        this.ns = false;
        com.byazt.vsq.hp hpVar2 = this.f20272ms;
        if (hpVar2 != null) {
            hpVar2.k();
        }
        this.lv.w();
        this.dy.w();
        j jVar = this.df;
        if (jVar != null) {
            jVar.hp();
        }
        this.f20270l.removeMessages(1300);
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        if (o() && this.rv.l()) {
            l();
        }
    }

    @Override // android.app.Activity
    public void onResume() throws JSONException {
        Bundle bundleHp;
        super.onResume();
        this.fi = System.currentTimeMillis();
        if (this.su.w()) {
            l();
            return;
        }
        com.byazt.vv.hp hpVar = this.f20283y;
        if (hpVar != null && hpVar.j() && (bundleHp = com.byazt.vv.l.hp().hp(this.mp)) != null) {
            hp(Math.round((bundleHp.getLong("foreground_time", 0L) / 1000) * ea.o(this.pu)), true);
            com.byazt.vv.l.hp().l(this.mp);
            this.f20283y.l(false);
        }
        j jVar = this.df;
        if (jVar != null) {
            jVar.l();
            int iHp = (int) this.df.hp(TimeUnit.SECONDS);
            hp(iHp, false);
            this.df.jx();
            if (this.hq != null && !ea.xs(this.pu)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("time", iHp);
                } catch (JSONException unused) {
                }
                this.hq.hp("reduceTime", jSONObject);
            }
        }
        this.ns = true;
        this.dy.jx();
        this.lv.j();
        com.byazt.vsq.hp hpVar2 = this.f20272ms;
        if (hpVar2 != null) {
            hpVar2.l(this.f20268j.containsKey(0));
            kg();
            this.ky.hp();
            x();
        }
        com.byazt.moz.j jVar2 = new com.byazt.moz.j();
        jVar2.hp = lv.hp(o()) > 0;
        jVar2.f23160l = lv.hp(o());
        hp(1, jVar2);
        this.f20270l.sendEmptyMessageDelayed(1300, this.kg.q());
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            bundle.putString("multi_process_key", this.f20271m);
            bundle.putBoolean("is_preload", this.cx);
            bundle.putLong("object_create_ts", this.f20264b);
            bundle.putBoolean("is_adm", this.di);
            bundle.putInt("key_video_cache_callback", this.f20274o);
            bundle.putLong("video_current", this.f20276r.u());
            bundle.putBoolean("is_mute", this.f20273n);
            bundle.putString("rit_scene", this.f20267f);
            Double d2 = this.qh;
            bundle.putString("_client_bidding_aution_price", d2 == null ? "" : String.valueOf(d2));
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    public void onSkipBorderClick(View view) {
        this.f20272ms.hp(view);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.dy.zy();
        com.byazt.dnb.hp hpVar = this.ux;
        if (hpVar != null) {
            hpVar.hp();
        }
        com.byazt.rdt.jx.hp().hp(this, this.pu, this.f20273n);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if (hpVar != null) {
            hpVar.jx(this.f20263a.get());
        }
        this.dy.a();
        com.byazt.dnb.hp hpVar2 = this.ux;
        if (hpVar2 != null) {
            hpVar2.l();
        }
        com.byazt.rdt.jx.hp().l((Context) this, this.pu, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (tw()) {
            return;
        }
        this.xh.w().hp(1.0f, z2 ? 12 : 13);
    }

    public void pc() {
        this.f20272ms.zx();
    }

    public void pu() {
        this.ky.l();
    }

    public void qu() throws JSONException {
        if (!this.f20276r.nu() && !this.f20276r.jl()) {
            df();
        }
        a(1);
    }

    public void r() {
        boolean z2 = !this.f20273n;
        this.f20273n = z2;
        this.f20272ms.w(z2);
    }

    public void rv() {
        this.ec.set(true);
    }

    public void rz() throws JSONException {
        if (this.jl.getAndSet(true)) {
            return;
        }
        a(3);
    }

    public void s(int i2) {
    }

    public void su() {
        this.nu.a();
    }

    public String ud() {
        return "";
    }

    public boolean vq() {
        return this.f20268j.containsKey(0);
    }

    public boolean wv() {
        return false;
    }

    public int xh() {
        return Math.max(this.f20272ms.nd() - (((int) (this.f20276r.hq() / 1000)) + this.f20272ms.rz()), 0);
    }

    public com.byazt.vsq.hp y() {
        return this.f20272ms;
    }

    public void yr() throws JSONException {
        if (this.gu.getAndSet(true)) {
            return;
        }
        a(1);
    }

    public com.byazt.td.jx zx() {
        return this.xh;
    }

    public void a() throws JSONException {
        if (this.f20272ms.qu()) {
            if (l(this.f20276r.a(), false)) {
                return;
            }
            hp(true, true);
        } else {
            if (n.eb(this.pu)) {
                return;
            }
            l(true, true);
        }
    }

    public boolean b() {
        return bu() || n() || this.f20272ms.dy() || this.bu;
    }

    public void cx() throws JSONException {
        this.ky.jx();
        this.dy.pu();
        this.nu.hp(1);
        this.f20270l.removeMessages(1200);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("state", 0);
            if (o()) {
                jSONObject.put("reduce_duration", this.f20272ms.rz());
            }
            this.hq.hp("playableStateChange", jSONObject);
        } catch (Exception unused) {
        }
        if (!this.su.hp(1)) {
            this.f20280v.set(true);
        }
        hp(1, (com.byazt.moz.j) null);
    }

    public boolean di() {
        if (b() || this.f20276r.ky()) {
            return false;
        }
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if ((hpVar != null && !hpVar.qu()) || this.ky.j() || this.dy.r()) {
            return false;
        }
        if (this.f20276r.ns()) {
            if ((!this.f20276r.jx() && !this.f20276r.l()) || this.f20276r.l()) {
                return false;
            }
            this.f20276r.jx();
        }
        return true;
    }

    public void e() {
        if (this.dy.v()) {
            this.dy.u();
            return;
        }
        if (!this.dy.o() && !com.byazt.la.e.w(this.pu) && !com.byazt.la.e.j(this.pu)) {
            l();
            return;
        }
        com.byazt.jwq.e eVar = new com.byazt.jwq.e() { // from class: com.byazt.fyd.TTBaseVideoActivity.4
            @Override // com.byazt.jwq.e
            public void hp() {
                if (ec.zy(TTBaseVideoActivity.this.pu)) {
                    new hp.C0281hp().w(TTBaseVideoActivity.this.pu.j()).hp("rewarded_video").l("popup_play").j(TTBaseVideoActivity.this.pu.w_()).hp((com.byazt.dhy.hp) null);
                    if (com.byazt.la.e.w(TTBaseVideoActivity.this.pu) || com.byazt.la.e.j(TTBaseVideoActivity.this.pu)) {
                        return;
                    }
                    TTBaseVideoActivity.this.l("onClickModalCallback");
                }
            }

            @Override // com.byazt.jwq.e
            public void l() {
                if (ec.zy(TTBaseVideoActivity.this.pu)) {
                    new hp.C0281hp().w(TTBaseVideoActivity.this.pu.j()).hp("rewarded_video").l("popup_cancel").j(TTBaseVideoActivity.this.pu.w_()).hp((com.byazt.dhy.hp) null);
                    TTBaseVideoActivity.this.k();
                    TTBaseVideoActivity.this.l();
                }
            }
        };
        if (com.byazt.la.e.w(this.pu) || com.byazt.la.e.j(this.pu)) {
            hp(eVar);
        } else {
            l(eVar);
        }
    }

    public void eb() {
        com.byazt.go.w wVar = new com.byazt.go.w(this.as, this.pu, this.hp, o() ? 7 : 5) { // from class: com.byazt.fyd.TTBaseVideoActivity.20
            @Override // com.byazt.go.w, com.byazt.go.l, com.byazt.go.j
            public void hp(View view, e eVar) throws JSONException {
                if (TTBaseVideoActivity.this.pu != null && TTBaseVideoActivity.this.pu.wf() == 1 && TTBaseVideoActivity.this.hq != null) {
                    if (eVar == null) {
                        eVar = new e();
                    }
                    eVar.l(TTBaseVideoActivity.this.hq.a() ? TTBaseVideoActivity.this.hq.e() : (byte) 0);
                }
                super.hp(view, eVar);
                com.byazt.pf.l lVar = (com.byazt.pf.l) this.f20519s.hp(com.byazt.pf.l.class);
                if (lVar == null || !lVar.l(view)) {
                    return;
                }
                TTBaseVideoActivity.this.hp(2);
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.lv.hp(view, tTBaseVideoActivity.ru, eVar);
            }
        };
        this.nd = wVar;
        if (this.gd != 100.0f) {
            ((com.byazt.sw.hp) wVar.hp(com.byazt.sw.hp.class)).hp(this.pi);
        }
        hp((com.byazt.ey.jx) this.nd.hp(com.byazt.ey.jx.class));
        this.nd.hp(this.wv.zy());
        ((com.byazt.ey.hp) this.nd.hp(com.byazt.ey.hp.class)).hp(mp());
        com.byazt.go.l lVar = new com.byazt.go.l(this.as, this.pu, this.hp, o() ? 7 : 5) { // from class: com.byazt.fyd.TTBaseVideoActivity.21
            @Override // com.byazt.go.l, com.byazt.go.j
            public void hp(View view, e eVar) {
                TTBaseVideoActivity.this.xh.hp(view, eVar);
            }
        };
        this.rk = lVar;
        hp((com.byazt.ey.jx) lVar.hp(com.byazt.ey.jx.class));
        this.ru = new hp.InterfaceC0369hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.22
            @Override // com.byazt.td.hp.InterfaceC0369hp
            public void hp(String str, JSONObject jSONObject) {
                TTBaseVideoActivity.this.xh.hp(str, jSONObject);
            }

            @Override // com.byazt.td.hp.InterfaceC0369hp
            public void hp(View view, e eVar) {
                TTBaseVideoActivity.this.xh.hp(view, eVar);
            }
        };
        this.wt = new hp.l() { // from class: com.byazt.fyd.TTBaseVideoActivity.2
            @Override // com.byazt.td.hp.l
            public void hp(boolean z2) {
                if (z2) {
                    TTBaseVideoActivity.this.dy.hp(1, 0);
                }
                TTBaseVideoActivity.this.hp("点击开始下载");
            }

            @Override // com.byazt.td.hp.l
            public void jx(boolean z2, long j2, long j3, String str, String str2) {
                if (z2) {
                    TTBaseVideoActivity.this.dy.hp(j3, j2, 4);
                }
                TTBaseVideoActivity.this.hp("下载失败");
            }

            @Override // com.byazt.td.hp.l
            public void l(boolean z2, long j2, long j3, String str, String str2) {
                if (z2) {
                    TTBaseVideoActivity.this.dy.hp(j3, j2, 2);
                }
                TTBaseVideoActivity.this.hp("下载暂停");
            }

            @Override // com.byazt.td.hp.l
            public void hp(boolean z2, long j2, long j3, String str, String str2) {
                long j4;
                long j5;
                if (z2) {
                    j4 = j2;
                    j5 = j3;
                    TTBaseVideoActivity.this.dy.hp(j5, j4, 3);
                } else {
                    j4 = j2;
                    j5 = j3;
                }
                if (j4 > 0) {
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    tTBaseVideoActivity.hp("已下载" + ((int) ((100 * j5) / j4)) + "%");
                }
            }

            @Override // com.byazt.td.hp.l
            public void hp(boolean z2, long j2, String str, String str2) {
                if (z2) {
                    TTBaseVideoActivity.this.dy.hp(5, 100);
                }
                TTBaseVideoActivity.this.hp("点击安装");
            }

            @Override // com.byazt.td.hp.l
            public void hp(boolean z2, String str, String str2) {
                if (z2) {
                    TTBaseVideoActivity.this.dy.hp(6, 100);
                }
                TTBaseVideoActivity.this.hp("点击打开");
            }
        };
        this.f20272ms.hp(this.nd);
    }

    public byte ec() {
        com.byazt.yni.w wVar = this.hq;
        if (wVar != null) {
            return wVar.e();
        }
        return (byte) 0;
    }

    public void gu() throws JSONException {
        if (this.f20272ms.qu()) {
            this.f20276r.hp(3);
            this.f20276r.ec();
            this.f20276r.jx(true);
            hp(false, false);
        }
    }

    public void jl() {
        k.hp().hp(this.pu, "stats_reward_full_completed", this.xh.hp(new JSONObject()));
        if (this.f20266e.getAndSet(true)) {
            return;
        }
        hp("onVideoComplete", (Bundle) null);
    }

    public void k() {
        if (this.f20266e.get() || this.f20277s.getAndSet(true)) {
            return;
        }
        hp("onSkippedVideo", (Bundle) null);
    }

    public void l() {
        finish();
    }

    public boolean n() {
        com.byazt.ih.l lVar = this.yr;
        if (lVar != null) {
            return lVar.isShow();
        }
        return false;
    }

    public void ns() throws JSONException {
        this.nu.hp(1);
        if (!ea.xs(this.pu)) {
            this.nu.hp(false, null, null, true, true);
        }
        this.nu.hp(true);
        this.nu.w(true);
        this.nu.a(false);
        this.nu.l(this.pu.jc());
        this.ky.hp(this.f20273n, this.f20268j.containsKey(0));
        this.f20270l.sendEmptyMessage(1200);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("state", 1);
            this.hq.hp("playableStateChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void q() {
        float[] fArrHp = com.byazt.jki.l.hp(this.as.getApplicationContext(), this.gd, this.yj);
        float f2 = fArrHp[0];
        float f3 = fArrHp[1];
        if (this.gd == 100.0f) {
            this.tw = (int) f2;
            this.jd = (int) f3;
            return;
        }
        int[] iArrHp = com.byazt.jki.l.hp(this.as.getApplicationContext(), this.gd, this.pu.vd(), this.yj);
        int i2 = iArrHp[0];
        int i3 = iArrHp[1];
        int i4 = iArrHp[2];
        int i5 = iArrHp[3];
        float f4 = i2;
        float f5 = i4;
        this.tw = (int) ((f2 - f4) - f5);
        float f6 = i3;
        float f7 = i5;
        this.jd = (int) ((f3 - f6) - f7);
        if (!hq.hp(this.pu) || com.byazt.am.j.hp(String.valueOf(this.mp))) {
            try {
                this.f20265d.hp(xh.jx(this.as, f4), xh.jx(this.as, f6), xh.jx(this.as, f5), xh.jx(this.as, f7));
            } catch (Throwable unused) {
            }
        }
    }

    public void sz() {
        com.byazt.yni.w wVar;
        if (this.hd == null || (wVar = this.hq) == null || wVar.zy() == null) {
            return;
        }
        this.hq.zy().setEasyPlayableSender(this.hd.hp());
        this.hd.hp(this.hq.zy().getEasyPlayableLayout(), null);
    }

    public void u() {
        this.f20270l.removeMessages(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL);
    }

    public void v() {
        this.f20270l.removeMessages(700);
        this.f20270l.removeMessages(600);
    }

    public void vv() throws JSONException {
        w();
    }

    public void w() throws JSONException {
        com.byazt.td.l lVar;
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.vsq.hp hpVar = this.f20272ms;
            if (hpVar != null) {
                jSONObject.put("reward_full_scene_type", hpVar.nu());
            }
        } catch (Exception unused) {
        }
        k.hp().hp(this.pu, "stats_reward_full_show_endcard", jSONObject);
        if (isDestroyed() || isFinishing() || (lVar = this.dy) == null || lVar.r()) {
            return;
        }
        if (!ec.j(this.pu)) {
            this.dy.j(true);
        }
        this.f20272ms.di();
        if (this.f20272ms instanceof com.byazt.vsq.e) {
            this.su.l(true);
            this.su.a();
        }
        if (!(this.f20272ms instanceof com.byazt.vsq.eb) || !this.dy.sz() || (this.f20272ms instanceof s)) {
            this.dy.ns();
        }
        this.nu.hp(true);
        this.ky.hp(this.f20273n);
        this.dy.jl();
        if ((this.f20272ms instanceof com.byazt.vsq.eb) && this.dy.hq()) {
            this.dy.q();
            return;
        }
        this.nu.hp(2);
        com.byazt.ih.l lVar2 = this.yr;
        if (lVar2 != null) {
            lVar2.resetDislikeStatus();
        }
        l.hp hpVar2 = this.f20278t;
        if (hpVar2 != null) {
            hpVar2.w();
        }
        com.byazt.yni.l lVar3 = this.wv;
        if (lVar3 != null) {
            lVar3.w(8);
        }
        this.dy.jx(false);
        if (!this.dy.xs()) {
            if (!df.gu(this.pu)) {
                this.dy.hp(false, TTAdConstant.INTERACTION_TYPE_CODE, "end_card_timeout");
            }
            this.dy.w(true);
            this.f20276r.s();
            return;
        }
        if (!df.gu(this.pu) && !n.l(this.pu)) {
            this.dy.hp(true, 0, (String) null);
        }
        this.dy.k();
        this.f20270l.sendEmptyMessageDelayed(500, 100L);
    }

    public void xs() {
        this.f20276r.e();
    }

    public void zy() {
        if (this.f20275q.getAndSet(true)) {
            return;
        }
        hp("onVideoError", (Bundle) null);
    }

    private void l(final com.byazt.jwq.e eVar) {
        final boolean[] zArr = {false};
        com.byazt.vna.l.hp(new l.hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.5
            @Override // com.byazt.vna.l.hp
            public void hp() {
                zArr[0] = true;
                eVar.l();
            }

            @Override // com.byazt.vna.l.hp
            public void hp(int i2) {
                zArr[0] = true;
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this.as;
                if (tTBaseVideoActivity != null && tTBaseVideoActivity.getIntent() != null) {
                    TTBaseVideoActivity.this.as.getIntent().putExtra("remainTime", i2);
                }
                if (i2 > 0) {
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    if (tTBaseVideoActivity2.hp(tTBaseVideoActivity2.pu, eVar)) {
                        return;
                    }
                }
                eVar.l();
            }
        });
        l("onClickBrowseClose");
        new CountDownTimer(1000L, 1000L) { // from class: com.byazt.fyd.TTBaseVideoActivity.6
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (zArr[0]) {
                    return;
                }
                TTBaseVideoActivity.this.l();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }
        }.start();
    }

    public boolean hp(Bundle bundle) {
        this.lv.hp(this.pu, this.hp, this.f20271m);
        if (bundle != null) {
            this.lv.hp();
        }
        com.byazt.jz.j.hp().l(this.pu);
        if (this.pu != null) {
            return true;
        }
        u.l("TTBaseVideoActivity", "mMaterialMeta is null , no data to display ,the TTBaseVideoActivity finished !!");
        l();
        return false;
    }

    public void j() {
        this.f20265d.hp(this.f20272ms);
        gd();
        this.wv = this.f20272ms.hp(o());
        this.hq = this.f20272ms.jl();
        this.ud = this.f20272ms.zy();
        this.wv.hp();
        eb();
        this.wv.hp(this.nd, this.rk);
        this.wv.hp(this.lv.eb());
        this.nu.hp(this.pu, this.dy, o(), this.nd);
        this.nu.j(this.f20273n);
        if (this.lv.jx()) {
            ((com.byazt.sw.hp) this.nd.hp(com.byazt.sw.hp.class)).hp(this.lv.l());
            this.lv.hp(this.ru);
        }
        this.lv.hp(this.wt);
        this.lv.hp(this.pi);
        this.dy.hp(this.nu, this.lv, o(), this.hp, this.tw, this.jd);
        this.dy.hp(this.pu, this.nd, this.pi.getVideoModel(), this.ud);
        this.ky.hp(this.dy, this.pu, this.hp, this.nu);
        this.xh.hp(this.pu, this.hp, this.wv.zy());
        this.f20276r.hp(this.pu);
        this.ux = new com.byazt.dnb.hp();
        this.hd = new w(this.pu, this.ea);
        this.zx = new com.byazt.rp.l(this.hp);
        this.f20283y = new com.byazt.vv.hp(this.pu, this.as);
    }

    public void jx() throws JSONException {
        this.f20276r.pu();
        this.f20276r.hp(2);
        this.f20276r.q();
        k();
        a(2);
    }

    public Map<String, Object> s() {
        com.byazt.yni.w wVar;
        Map<String, Object> mapMp = mp();
        if (this.f20264b > 0) {
            mapMp.put("object_media_holder_time", Long.valueOf((System.currentTimeMillis() - this.f20264b) / 1000));
        }
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if (hpVar != null && hpVar.a() && (wVar = this.hq) != null) {
            o.hp(mapMp, this.pu, wVar.zy());
        }
        return mapMp;
    }

    public void u(int i2) {
        if (i2 == 0) {
            return;
        }
        this.f20281w.put(Integer.valueOf(i2), Boolean.TRUE);
    }

    public void vv(final int i2) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.15
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                int i3 = i2;
                if (i3 == 0) {
                    TTBaseVideoActivity.this.su.jx();
                } else if (i3 == 1) {
                    TTBaseVideoActivity.this.jl();
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    TTBaseVideoActivity.this.a(1);
                }
            }
        });
    }

    public void xs(int i2) {
        if (i2 == 0) {
            return;
        }
        this.f20281w.remove(Integer.valueOf(i2));
    }

    public void v(int i2) {
        com.byazt.yni.w wVar;
        xs(i2);
        if (this.f20272ms instanceof s) {
            this.f20270l.postDelayed(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.14
                @Override // java.lang.Runnable
                public void run() {
                    TTBaseVideoActivity.this.zb();
                }
            }, 500L);
        } else {
            zb();
        }
        if (!b()) {
            if (this.dy.ud()) {
                this.f20270l.sendEmptyMessageDelayed(1200, 1000L);
            }
            if (!ea() || this.dy.r() || this.dy.ud()) {
                this.f20272ms.cx();
            }
            this.dy.j();
        }
        if (i2 == 1 || (wVar = this.hq) == null) {
            return;
        }
        wVar.j(b());
    }

    public void zy(int i2) {
        this.wv.w(i2);
    }

    public void jl(int i2) {
        this.f20272ms.jx(i2);
        jx(0);
    }

    public void k(int i2) {
        com.byazt.vsq.hp hpVar;
        com.byazt.yni.w wVar;
        if (this.f20276r.l()) {
            HashMap map = new HashMap();
            map.put("pause_from", Integer.valueOf(i2));
            this.f20276r.hp(map);
        }
        this.f20270l.removeMessages(300);
        this.f20270l.removeMessages(1200);
        u(i2);
        if ((ea() && ea.xs(this.pu) && this.ky.j()) || (hpVar = this.f20272ms) == null) {
            return;
        }
        hpVar.ns();
        this.dy.l(ea());
        if (i2 == 1 || (wVar = this.hq) == null) {
            return;
        }
        wVar.j(b());
    }

    public void a(int i2) throws JSONException {
        int iW = w(i2);
        if (i2 != 2) {
            if (this.ky.j()) {
                return;
            }
            if (this.f20276r.jl()) {
                this.f20276r.e();
                return;
            }
            if (ea.xs(this.pu)) {
                if (this.gu.get() && !this.jl.get()) {
                    if (iW == 1 && !this.f20268j.containsKey(0) && o()) {
                        this.nu.l((this.pu.q() == 3 && ea.vv(this.pu)) ? "奖励就快来了\n去详情页看看也累计时长哦～" : "奖励还在路上狂奔\n再等一下下哦～");
                    }
                    this.f20276r.xh();
                }
                if (!this.gu.get() && this.jl.get()) {
                    return;
                }
                if (iW == 1 && (!this.gu.get() || !this.jl.get())) {
                    return;
                }
            }
        }
        if (iW == 1) {
            l();
            return;
        }
        if (iW == 2) {
            if (this.eb.get()) {
                this.dy.ns();
            }
            w();
        } else if (iW == 3) {
            this.f20276r.xh();
        } else if (iW == 4 && i2 != 3) {
            xs();
        }
    }

    public void gu(int i2) throws JSONException {
        if (this.hq != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("time", i2);
            } catch (JSONException unused) {
            }
            this.hq.hp("reduceTime", jSONObject);
        }
    }

    public void jx(String str) {
        if (isFinishing()) {
            return;
        }
        if (this.yr == null) {
            com.byazt.ih.l lVar = new com.byazt.ih.l(this.as, this.pu.ju(), this.hp, true, com.byazt.ws.l.hp());
            this.yr = lVar;
            com.byazt.jde.jx.hp(this.as, this.pu, lVar);
            this.yr.setDislikeInteractionCallback(new l.hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.10
                @Override // com.byazt.ih.l.hp
                public void hp() {
                    TTBaseVideoActivity.this.as();
                }

                @Override // com.byazt.ih.l.hp
                public void l() {
                    TTBaseVideoActivity.this.kg();
                }

                @Override // com.byazt.ih.l.hp
                public void hp(int i2, String str2, boolean z2) {
                    TTBaseVideoActivity.this.f20270l.post(new Runnable() { // from class: com.byazt.fyd.TTBaseVideoActivity.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TTBaseVideoActivity.this.kg();
                        }
                    });
                }
            });
        }
        this.yr.setDislikeSource(str);
        this.yr.showDislikeDialog();
    }

    public void l(String str) {
        com.byazt.jz.ud udVarD = this.dy.d();
        if (udVarD != null && !isFinishing()) {
            try {
                udVarD.jx(str, null);
                return;
            } catch (Exception unused) {
                l();
                return;
            }
        }
        l();
    }

    public boolean hp(long j2, boolean z2) {
        if (!this.f20276r.ns()) {
            return false;
        }
        if (!z2 || !this.f20276r.cx()) {
            t();
        }
        boolean zHp = this.f20276r.hp(j2, this.f20273n, this.f20272ms.b());
        if (zHp && !z2) {
            if (n.eb(this.pu)) {
                return true;
            }
            l(true, true);
        }
        return zHp;
    }

    public void e(int i2) throws JSONException {
        com.byazt.tm.l lVarPu;
        com.byazt.yni.w wVar;
        com.byazt.vsq.hp hpVar = this.f20272ms;
        if ((hpVar instanceof s) && (lVarPu = hpVar.pu()) != null && lVarPu.gu() == 1 && i2 == 1) {
            if (this.ed.getAndSet(false)) {
                int displayDpi = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi();
                float fA = xh.a(sz.getContext());
                float fEb = xh.eb(sz.getContext());
                Map<String, Object> mapMp = mp();
                mapMp.putAll(lVarPu.eb());
                q.hp hpVarL = new q.hp().a(-1.0f).w(-1.0f).j(-1.0f).jx(-1.0f).l(-1L).hp(-1L).j(-1).w(-1).a(-1024).jx(com.byazt.jz.s.u().l() ? 1 : 2).l(displayDpi).hp(fA).l(fEb);
                mp mpVar = this.pu;
                if (mpVar != null && mpVar.wf() == 1 && (wVar = this.hq) != null) {
                    hpVarL.hp(wVar.a() ? this.hq.e() : (byte) 0);
                }
                hpVarL.hp(com.byazt.fy.s.l(this.pu));
                com.byazt.jdb.j.hp("click", this.pu, hpVarL.hp(), this.hp, true, mapMp, -1, false, false);
            }
        }
    }

    public void l(int i2) {
        if (i2 <= 0) {
            this.nu.hp(false, null, null, true, true);
        } else {
            this.f20270l.sendEmptyMessageDelayed(600, i2);
        }
    }

    public void eb(int i2) {
        this.f20265d.hp(i2);
    }

    public void hp(final com.byazt.ey.jx jxVar) {
        jxVar.hp(new jx.hp() { // from class: com.byazt.fyd.TTBaseVideoActivity.3
            @Override // com.byazt.ey.jx.hp
            public boolean hp() {
                jxVar.hp(TTBaseVideoActivity.this.s());
                jxVar.hp(TTBaseVideoActivity.this.hp);
                jxVar.hp(TTBaseVideoActivity.this.qh);
                return TTBaseVideoActivity.this.qu.get();
            }
        });
    }

    public void l(boolean z2) {
        Message message = new Message();
        message.what = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        this.f20270l.sendMessageDelayed(message, z2 ? 2000L : 0L);
    }

    public void hp(String str) {
        this.dy.hp(str);
    }

    private void hp(com.byazt.jwq.e eVar) {
        int iXh = this.f20272ms.xh();
        TTBaseVideoActivity tTBaseVideoActivity = this.as;
        if (tTBaseVideoActivity != null && tTBaseVideoActivity.getIntent() != null) {
            this.as.getIntent().putExtra("remainTime", iXh);
        }
        if (iXh > 0) {
            if (hp(this.pu, eVar)) {
                return;
            }
            eVar.l();
            return;
        }
        l();
    }

    public void l(boolean z2, boolean z3) {
        if (z2) {
            Map<String, Object> mapS = s();
            this.qu.set(true);
            mapS.put("is_adm", Boolean.valueOf(this.di));
            mapS.put("is_play_again", Boolean.valueOf(wv()));
            mapS.put("if_cache_callback", Integer.valueOf(this.f20274o == 1 ? 1 : 0));
            mapS.put("src_req_id", this.pu.lr());
            mapS.put("is_map", Boolean.valueOf(this.pu.in()));
            mapS.put("is_repeat", Boolean.valueOf(this.vv.getAndSet(true)));
            com.byazt.jdb.j.hp(this.pu, this.hp, mapS, this.qh);
            this.xh.w().hp(1.0f, 11);
            com.byazt.cqt.hp.hp().j();
            com.byazt.zn.r.hp(this.pu.nu());
        }
        if (z3) {
            if (!lv.l(o(), this.pu, true)) {
                boolean zQk = sz.l().qk();
                if (this.xs.getAndSet(true) && !zQk) {
                    k.hp().j(this.pu, "stats_callback_repeat");
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("has_show_event", this.qu.get());
                    hp("onAdShow", bundle);
                }
            }
            if (this.f20272ms.a()) {
                this.hq.eb();
            }
            w wVar = this.hd;
            if (wVar != null && wVar.hp() != null) {
                this.hd.hp().j();
            }
            if (this.pu.o() && this.pu.k() != null) {
                com.byazt.sl.hp.hp().hp(getApplicationContext(), this.pu.k().l());
            }
        }
        jx(false);
    }

    public void q(int i2) {
        if (this.f20283y == null) {
            return;
        }
        com.byazt.jt.l lVarHp = com.byazt.vo.hp.hp().hp(this.pu, ky.hp(this.pu, ""));
        this.f20283y.l(true);
        this.f20283y.hp(i2, lVarHp);
    }

    public boolean hp(mp mpVar, final com.byazt.jwq.e eVar) {
        if (!o() || !this.pu.lu() || this.f20268j.containsKey(0) || isFinishing()) {
            return false;
        }
        if (System.currentTimeMillis() - this.f20282x < 1000) {
            return true;
        }
        this.f20282x = System.currentTimeMillis();
        l.hp hpVarHp = this.f20272ms.hp(mpVar, new com.byazt.jwq.e() { // from class: com.byazt.fyd.TTBaseVideoActivity.7
            @Override // com.byazt.jwq.e
            public void hp() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.xh.hp("reward_retain_dialog_cancel", tTBaseVideoActivity.f20278t.hp(), TTBaseVideoActivity.this.f20278t.l());
            }

            @Override // com.byazt.jwq.e
            public void jx() {
            }

            @Override // com.byazt.jwq.e
            public void l() {
                TTBaseVideoActivity.this.zy.set(true);
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.xh.hp("reward_retain_dialog_skip", tTBaseVideoActivity.f20278t.hp(), TTBaseVideoActivity.this.f20278t.l());
            }

            @Override // com.byazt.jwq.e
            public void hp(int i2) throws JSONException {
                TTBaseVideoActivity.this.hp(i2, true);
                TTBaseVideoActivity.this.nu.l("恭喜您，可提前" + i2 + "s获得奖励～");
            }
        });
        this.f20278t = hpVarHp;
        this.xh.hp("reward_retain_dialog_show", hpVarHp.hp(), this.f20278t.l());
        return this.f20278t.jx();
    }

    public void j(boolean z2) {
        this.bu = z2;
    }

    public void hp(long j2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 700;
        this.f20270l.sendMessageDelayed(messageObtain, j2);
    }

    @Override // com.byazt.ij.l
    public void hp(boolean z2) {
        if (z2) {
            if (this.hq.a()) {
                return;
            }
            this.f20272ms.j(true);
            return;
        }
        if (this.hq.a() && this.f20276r.dy() != null) {
            this.f20276r.dy().hp(8);
        }
        this.f20272ms.j(false);
        if (this.hq.a() || this.yj == 2 || !com.byazt.we.hp.hp(this.pu)) {
            return;
        }
        this.wv.a(8);
    }

    public int w(int i2) {
        boolean z2 = i2 == 2;
        int iYu = this.pu.yu();
        if (iYu != 1) {
            return iYu != 3 ? (iYu == 4 || iYu == 5) ? z2 ? 1 : 3 : iYu != 6 ? (iYu == 7 && z2 && this.zy.get()) ? 1 : 2 : z2 ? 1 : 4 : z2 ? 1 : 2;
        }
        return 1;
    }

    public void hp(boolean z2, boolean z3) throws JSONException {
        this.f20276r.l(z3);
        zy();
        if (z2) {
            this.f20269k.set(true);
            if (ea.xs(this.pu)) {
                this.f20272ms.ud();
            }
            this.nu.hp(false, null, null, true, true);
            w();
            return;
        }
        if (ea.n(this.pu)) {
            this.dy.xh();
        } else {
            this.nu.hp(false, null, null, true, true);
            j(0);
        }
        if (this.f20276r.ky()) {
            return;
        }
        if (ea.xs(this.pu)) {
            this.f20272ms.ud();
        }
        w();
    }

    public boolean l(long j2, boolean z2) {
        this.f20276r.hp(this.nd);
        this.f20276r.hp(this.f20272ms.ec(), this.hp, o());
        this.f20276r.l(s());
        if (this.f20272ms.a()) {
            this.hq.hp(this.f20276r.r());
        }
        this.f20276r.hp(this.vq);
        boolean zHp = hp(j2, z2);
        if (zHp && !z2) {
            this.rz = (int) (System.currentTimeMillis() / 1000);
        }
        return zHp;
    }

    public void l(Bundle bundle) {
        if (bundle != null) {
            this.f20271m = bundle.getString("multi_process_key");
            this.cx = bundle.getBoolean("is_preload");
            this.f20264b = bundle.getLong("object_create_ts");
            this.di = bundle.getBoolean("is_adm");
            this.f20274o = bundle.getInt("key_video_cache_callback", -1);
            this.f20267f = bundle.getString("rit_scene");
            String string = bundle.getString("_client_bidding_aution_price");
            this.qh = TextUtils.isEmpty(string) ? null : Double.valueOf(Double.parseDouble(string));
            this.f20273n = bundle.getBoolean("is_mute");
            long j2 = bundle.getLong("video_current");
            if (j2 > 0) {
                this.f20276r.hp(j2);
            }
        }
    }

    public void hp(int i2, com.byazt.moz.j jVar) {
        if (n.jx(this.pu) || this.zy.get() || this.f20275q.get()) {
            return;
        }
        int iE = 0;
        if (i2 == 1) {
            if (!this.f20280v.get()) {
                return;
            }
            if (jVar == null || !jVar.hp) {
                this.f20280v.set(false);
            }
        }
        int iHp = this.su.hp(i2, jVar != null && jVar.f23159j);
        if (iHp == 0) {
            return;
        }
        if (iHp == 3 && jVar != null && jVar.jx) {
            iE = lv.e();
        }
        this.su.hp(new jx.hp().hp(this.f20271m).hp(this.f20272ms.xh()).l(iE).hp(this.f20266e.get()).hp(this.f20268j.keySet()).l(this.f20273n).hp(this.rv).jx(iHp).j(this.f20272ms.wv()).jx(this.su.j() ? this.an : mp.jx(this.pu)).hp(), iHp, jVar);
    }

    public void l(Intent intent) {
        if (intent == null || TextUtils.isEmpty(intent.getStringExtra("insert_ad_bundle"))) {
            return;
        }
        com.byazt.moz.jx jxVar = new com.byazt.moz.jx(intent.getStringExtra("insert_ad_bundle"));
        this.f20271m = jxVar.hp();
        if (lv.hp(this.pu) == 1) {
            this.pc = jxVar.e();
        }
        this.an = jxVar.gu();
        this.f20266e.set(jxVar.j());
        this.f20268j.putAll(jxVar.s());
        this.su.hp(jxVar);
        this.f20273n = jxVar.w();
        this.rv.jx(jxVar.a());
    }

    @Override // com.byazt.ij.l
    public void hp(int i2) throws JSONException {
        this.ec.set(true);
        if (System.currentTimeMillis() - this.zb > 50) {
            this.zb = System.currentTimeMillis();
            hp("onAdVideoBarClick", (Bundle) null);
        }
        if (!isFinishing()) {
            com.byazt.qk.s.hp(this.hq.zy());
        }
        if (!this.f20263a.get()) {
            this.f20263a.set(true);
        }
        if (!this.su.hp(1)) {
            this.f20280v.set(true);
        }
        jx(0);
        e(i2);
    }

    public void hp(Intent intent) {
        if (intent != null) {
            this.f20267f = intent.getStringExtra("rit_scene");
            this.cx = intent.getBooleanExtra("is_preload", false);
            this.f20264b = intent.getLongExtra("object_create_ts", 0L);
            this.di = intent.getBooleanExtra("is_adm", false);
            this.f20271m = intent.getStringExtra("multi_process_key");
            this.f20274o = intent.getIntExtra("key_video_cache_callback", -1);
            String stringExtra = intent.getStringExtra("_client_bidding_aution_price");
            this.qh = TextUtils.isEmpty(stringExtra) ? null : Double.valueOf(Double.parseDouble(stringExtra));
            com.byazt.vv.hp hpVar = this.f20283y;
            if (hpVar != null) {
                hpVar.hp(intent.getBooleanExtra("is_second_page", false));
            }
        }
    }

    public void hp(int i2, boolean z2) throws JSONException {
        jl(i2);
        if (z2) {
            gu(i2);
        }
    }

    public void hp(float f2, float f3, float f4, float f5, int i2) {
        com.byazt.yni.w wVar = this.hq;
        if (wVar == null || wVar.hp() == null) {
            return;
        }
        int measuredWidth = this.hq.hp().getMeasuredWidth();
        int measuredHeight = this.hq.hp().getMeasuredHeight();
        if (this.f20276r.r() instanceof com.byazt.tm.hp ? ((com.byazt.tm.hp) this.f20276r.r()).m() : false) {
            this.hq.hp().animate().translationY(-(measuredHeight * (1.0f - f3))).setDuration(i2).start();
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, f2, 1.0f, f3, measuredWidth * f4, measuredHeight * f5);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setDuration(i2);
        this.hq.hp().startAnimation(scaleAnimation);
    }

    public Map<String, Object> hp(mp mpVar) {
        HashMap map = new HashMap();
        String str = this.f20267f;
        if (str != null) {
            map.put("rit_scene", str);
        }
        map.put("insert_ad_control", Integer.valueOf(lv.hp(mpVar)));
        map.put("carousel_pos", Integer.valueOf(lv.j(mpVar)));
        map.put("refresh_ad_control", Integer.valueOf(lv.l(mpVar)));
        if (this.su.l() != 0) {
            map.put("carousel_type", Integer.valueOf(this.su.l()));
        } else if (zx.s(mpVar)) {
            map.put("carousel_type", 4);
        }
        com.byazt.td.jx jxVar = this.xh;
        if (jxVar != null) {
            jxVar.hp(map);
        }
        return map;
    }

    public void hp(mp mpVar, com.byazt.go.l lVar) {
        this.dy.hp(mpVar, lVar);
        this.ky.hp(mpVar);
    }

    public void hp(int i2, int i3) {
        this.su.hp(i2, i3, 0);
    }

    public void hp(int i2, int i3, int i4) {
        this.su.hp(i2, i3, i4);
    }
}
