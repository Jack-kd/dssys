package com.byazt.rq;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.ar.w;
import com.byazt.cx.j;
import com.byazt.dnb.s;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.nc.hp;
import com.byazt.qfg.TsView;
import com.byazt.qk.NativeExpressVideoView;
import com.byazt.qk.NativeExpressView;
import com.byazt.qk.SplashExpressBackupView;
import com.byazt.qk.a;
import com.byazt.qk.o;
import com.byazt.rq.SlideInterceptView;
import com.byazt.rq.hp;
import com.byazt.su.jx;
import com.byazt.vu.eb;
import com.byazt.vu.q;
import com.byazt.xci.b;
import com.byazt.xci.d;
import com.byazt.xci.df;
import com.byazt.xci.gd;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.wt;
import com.byazt.xci.x;
import com.byazt.xci.zy;
import com.byazt.xse.l;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 659, 34})
/* loaded from: classes3.dex */
public class l extends hp implements jx.j, jx.InterfaceC0367jx, hp.l, hp.InterfaceC0317hp {
    public NativeExpressView as;

    /* renamed from: f, reason: collision with root package name */
    public int f25306f;
    public SlideInterceptView hd;
    public Context kg;

    /* renamed from: m, reason: collision with root package name */
    public String f25307m;
    public com.byazt.jt.l mp;
    public w nd;
    public WeakReference<ViewGroup> rz;

    /* renamed from: y, reason: collision with root package name */
    public volatile com.byazt.qk.w f25308y;
    public volatile a zx;
    public final AtomicBoolean yr = new AtomicBoolean(false);
    public final SlideInterceptView.hp vq = new SlideInterceptView.hp() { // from class: com.byazt.rq.l.1
        @Override // com.byazt.rq.SlideInterceptView.hp
        public void hp(View view, b bVar) throws JSONException {
            if (l.this.as != null) {
                l.this.as.hp(view, 2, bVar, -1);
            }
            l.this.a();
        }

        @Override // com.byazt.rq.SlideInterceptView.hp
        public com.byazt.qk.w hp() {
            return l.this.f25308y;
        }
    };

    public l(Context context, com.byazt.jt.l lVar, String str, int i2, com.byazt.vu.jx jxVar, j<q, eb> jVar, com.byazt.ocx.hp hpVar) {
        if (jxVar != null) {
            this.f25287l = jxVar.l();
            initLifecycle(jxVar.l(), jxVar.eb());
        }
        this.kg = context;
        this.mp = lVar;
        this.f25307m = str;
        this.f25306f = i2;
        this.eb = this;
        hp(jxVar, jVar, hpVar);
        l(jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jl() {
        final wt wtVarSh = this.f25287l.sh();
        if (wtVarSh == null || ((hp) this).hp == null) {
            return;
        }
        if ((this.ky.get() != 1 || wtVarSh.xs() == 1) && wtVarSh.u() > 0.0f) {
            ((hp) this).hp.postDelayed(new Runnable() { // from class: com.byazt.rq.l.5
                @Override // java.lang.Runnable
                public void run() {
                    View rootView = ((hp) l.this).hp.getRootView();
                    if (rootView instanceof FrameLayout) {
                        ViewGroup viewGroup = (ViewGroup) rootView;
                        int height = ((hp) l.this).hp.getHeight();
                        int iS = xh.s(l.this.kg);
                        if (wtVarSh.u() >= 1.0f) {
                            float f2 = iS;
                            if (height <= wtVarSh.u() * f2 && !l.this.gu) {
                                int iDi = wtVarSh.sz() == 1 ? iS - height : wtVarSh.di() > 0.0f ? (int) (f2 * wtVarSh.di()) : 0;
                                l.this.hd = new SlideInterceptView(l.this.kg, wtVarSh, l.this.vq);
                                if (iDi <= 0) {
                                    iDi = -1;
                                }
                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, iDi);
                                layoutParams.gravity = 80;
                                viewGroup.addView(l.this.hd, layoutParams);
                            }
                        }
                    }
                }
            }, wtVarSh.n());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        NativeExpressView nativeExpressView = this.as;
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.hp(this.jl, 0);
        this.as.setDynamicSkipListener(new com.byazt.xse.jx() { // from class: com.byazt.rq.l.7
            @Override // com.byazt.xse.jx
            public void hp() {
                l.this.hp();
            }
        });
        ((hp) this).hp.l();
        com.byazt.xse.l lVar = new com.byazt.xse.l();
        this.xh = lVar;
        lVar.hp(this.jl);
        this.xh.hp(new l.hp() { // from class: com.byazt.rq.l.8
            @Override // com.byazt.xse.l.hp
            public void hp() {
                l.this.j();
            }

            @Override // com.byazt.xse.l.hp
            public void hp(int i2) {
                if (l.this.as != null) {
                    l.this.as.hp(l.this.jl, i2);
                }
            }
        });
        if (this.pu.get()) {
            this.xh.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        this.nd = new w(this.f25287l, new com.byazt.ar.hp() { // from class: com.byazt.rq.l.9
            @Override // com.byazt.qk.gu
            public long hp() {
                return 0L;
            }

            @Override // com.byazt.qk.gu
            public void j() {
            }

            @Override // com.byazt.qk.gu
            public int jx() {
                return 0;
            }

            @Override // com.byazt.qk.gu
            public int l() {
                return 0;
            }

            @Override // com.byazt.qk.gu
            public void setPauseFromExpressView(boolean z2) {
            }

            @Override // com.byazt.qk.gu
            public void w() {
            }

            @Override // com.byazt.qk.gu
            public void hp(float f2) {
            }

            @Override // com.byazt.qk.gu
            public void j(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void jx(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void l(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2) {
            }

            @Override // com.byazt.qk.gu
            public void hp(int i2, String str) {
            }

            @Override // com.byazt.qk.gu
            public void hp(mp mpVar) {
            }

            @Override // com.byazt.ar.hp
            public void hp(View view) {
                l.this.q();
                l lVar = l.this;
                com.byazt.mu.hp hpVar = lVar.f25294s;
                if (hpVar != null) {
                    hpVar.l(lVar);
                }
                mp mpVar = l.this.f25287l;
                com.byazt.ar.jx.l(mpVar, d.eb(mpVar), true, null);
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, x xVar) throws JSONException {
                if (l.this.as != null) {
                    l.this.as.hp(view, i2, jxVar, -1);
                }
                com.byazt.ar.jx.hp(l.this.f25287l, (zy) xVar, false, (JSONObject) null, jxVar instanceof b ? ((b) jxVar).hp().optBoolean("isLottieInternalClick", false) : false);
                l.this.a();
            }

            @Override // com.byazt.ar.hp
            public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) throws JSONException {
                if (l.this.as != null) {
                    l.this.as.hp(view, i2, jxVar, i3);
                }
                l.this.a();
            }

            @Override // com.byazt.ar.hp
            public void hp(ViewGroup viewGroup) {
                if (d.s(l.this.f25287l).gu()) {
                    TextView textView = new TextView(l.this.kg);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    textView.setTextSize(1, 20.0f);
                    int iJx = xh.jx(sz.getContext(), 80.0f);
                    textView.setText("跳转至详情页或第三方应用");
                    layoutParams.bottomMargin = iJx;
                    int i2 = iJx / 3;
                    layoutParams.leftMargin = i2;
                    layoutParams.rightMargin = i2;
                    layoutParams.gravity = 81;
                    textView.setTextColor(-1);
                    int i3 = iJx / 6;
                    textView.setPadding(0, i3, 0, i3);
                    textView.setGravity(17);
                    textView.setLayoutParams(layoutParams);
                    textView.setClickable(true);
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.rq.l.9.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) throws JSONException {
                            if (l.this.as != null) {
                                l.this.as.hp(view, 2, new b.hp().hp(), -1);
                            }
                        }
                    });
                    textView.bringToFront();
                    viewGroup.addView(textView);
                }
            }
        });
    }

    private void zy() {
        if (this.f25293r > 0) {
            return;
        }
        if (this.lv == 1) {
            this.f25293r = 1;
        } else {
            this.f25293r = 2;
        }
    }

    @Override // com.byazt.rq.hp
    public void bindDownloadAdapterToClickListener(com.byazt.gog.jx jxVar) {
        super.bindDownloadAdapterToClickListener(jxVar);
        if (this.zx != null) {
            ((com.byazt.sw.hp) this.zx.hp(com.byazt.sw.hp.class)).hp(jxVar);
        }
        if (this.f25308y != null) {
            ((com.byazt.sw.hp) this.f25308y.hp(com.byazt.sw.hp.class)).hp(jxVar);
        }
        if (this.jx != null) {
            this.jx.hp(this);
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.l.jx(getLifecycleId(), 3);
    }

    @Override // com.byazt.nc.hp.InterfaceC0317hp
    public boolean getHasUseCustomizeVideo() {
        return false;
    }

    @Override // com.byazt.rq.hp, com.byazt.qt.l
    public View getSplashView() {
        if (this.f25293r == -1) {
            this.f25293r = 0;
        }
        mp mpVar = this.f25287l;
        if (mpVar != null) {
            com.byazt.ktd.l.hp(mpVar.hp());
        }
        return ((hp) this).hp;
    }

    @Override // com.byazt.nc.hp.InterfaceC0317hp
    public com.byazt.nc.hp getVideoModel() {
        NativeExpressView nativeExpressView;
        com.byazt.nc.hp hpVar = new com.byazt.nc.hp();
        jx videoController = this.nu;
        if (videoController == null && (nativeExpressView = this.as) != null) {
            videoController = nativeExpressView.getVideoController();
        }
        if (videoController != null) {
            hpVar.eb = videoController.gu();
            hpVar.hp = videoController.sz();
            hpVar.f23533s = videoController.ec();
        }
        return hpVar;
    }

    public void onClickSkip() {
    }

    public void onCountDownEnd() {
    }

    public void onCountDownPause() {
    }

    public void onCountDownStart() {
    }

    @Override // com.byazt.rq.hp, com.byazt.qfg.TsView.hp
    public void onDetachedFromWindow() throws JSONException {
        super.onDetachedFromWindow();
        NativeExpressView nativeExpressView = this.as;
        if (nativeExpressView != null) {
            nativeExpressView.jl();
        }
        this.as = null;
        this.eb = null;
        this.f25280a = null;
        Map<String, Object> map = this.f25283e;
        if (map != null) {
            map.clear();
        }
        w wVar = this.nd;
        if (wVar != null) {
            wVar.l();
        }
        a();
        hp(false);
        w();
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onProgressUpdate(long j2, long j3) {
    }

    @Override // com.byazt.rq.hp.l
    public void onShow() {
        mp mpVar = this.f25287l;
        if (mpVar == null || this.ec == null) {
            return;
        }
        if (hd.hp(mpVar) == 2) {
            if (this.yr.get()) {
                NativeExpressView nativeExpressView = this.as;
                if (nativeExpressView != null) {
                    nativeExpressView.v();
                    o.hp(this.ec, this.f25287l, this.as);
                }
                this.ec.put("splash_show_type", 3);
            }
        } else if (this.hq) {
            if (TextUtils.isEmpty(df.hp(this.f25287l))) {
                this.ec.put("splash_show_type", 2);
            }
            this.ec.put("splash_show_type", 1);
        } else {
            this.ec.put("splash_show_type", 0);
        }
        hp(this.f25287l);
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdContinuePlay() {
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdPaused() {
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdStartPlay() {
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoComplete() {
        com.byazt.rk.l.jx(getLifecycleId(), 1);
        this.cx = false;
        com.byazt.jdb.j.l(this.f25295u, this.f25287l);
        com.byazt.mu.hp hpVar = this.f25294s;
        if (hpVar != null) {
            this.gu = true;
            hpVar.hp(this, 4);
            hp(false);
        }
        w();
    }

    @Override // com.byazt.su.jx.j
    public void onVideoError(int i2, int i3) {
        this.cx = false;
    }

    @Override // com.byazt.su.jx.j
    public void onVideoLoad() {
    }

    public void renderExpressAd() {
        NativeExpressView nativeExpressView = this.as;
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.s(this.f25306f);
        this.as.u();
    }

    public void renderSplash(com.byazt.vu.jx jxVar, j<q, eb> jVar) {
        this.zy = 3;
        jx(jVar);
        renderExpressAd();
    }

    public void setExpressTimeOut(int i2) {
        this.f25306f = i2;
    }

    @Override // com.byazt.rq.hp, com.byazt.qt.l
    public void showSplashView(ViewGroup viewGroup) throws JSONException {
        s();
        if (viewGroup == null) {
            u.l(MediationConstant.RIT_TYPE_SPLASH, "展示开屏的容器不能为空");
            return;
        }
        mp mpVar = this.f25287l;
        if (mpVar != null) {
            com.byazt.ktd.l.hp(mpVar.hp());
        }
        zy();
        WeakReference<ViewGroup> weakReference = new WeakReference<>(viewGroup);
        this.rz = weakReference;
        if (!this.f25291o.get() || ((hp) this).hp == null) {
            this.f25282d.set(true);
        } else {
            hp(weakReference);
        }
    }

    private void e() {
        if (this.f25287l.wf() == 2) {
            this.as = new NativeExpressView(true, this.kg, this.f25287l, this.mp, this.f25307m, true);
        } else {
            this.as = new NativeExpressView(false, this.kg, this.f25287l, this.mp, this.f25307m, true);
        }
    }

    private void gu() {
        if (this.f25287l.wf() == 2) {
            this.as = new NativeExpressVideoView(true, this.kg, this.f25287l, this.mp, this.f25307m);
        } else {
            this.as = new NativeExpressVideoView(false, this.kg, this.f25287l, this.mp, this.f25307m);
        }
        if (this.as.getVideoController() instanceof com.byazt.oh.j) {
            this.nu = (com.byazt.oh.j) this.as.getVideoController();
        }
        this.as.setVideoAdListener(this);
        this.as.setVideoAdInteractionListener(this);
    }

    private void jx(final j<q, eb> jVar) {
        if (jVar == null || this.f25287l == null) {
            return;
        }
        if (this.hq) {
            this.f25290n = true;
            gu();
        } else {
            this.f25290n = false;
            e();
        }
        eb ebVar = this.di;
        if (ebVar != null) {
            ebVar.hp(this);
        }
        NativeExpressView nativeExpressView = this.as;
        if (nativeExpressView == null) {
            this.di.l(3);
            this.di.hp("no render express");
            jVar.hp(this.di);
        } else {
            nativeExpressView.setBackupListener(new com.byazt.fub.jx() { // from class: com.byazt.rq.l.3
                @Override // com.byazt.fub.jx
                public boolean hp(ViewGroup viewGroup, int i2) {
                    try {
                        SplashExpressBackupView splashExpressBackupView = new SplashExpressBackupView(l.this.kg);
                        l lVar = l.this;
                        splashExpressBackupView.hp(lVar.wv, lVar.f25287l, (NativeExpressView) viewGroup);
                        if (splashExpressBackupView.getVideoController() instanceof com.byazt.oh.j) {
                            l.this.nu = (com.byazt.oh.j) splashExpressBackupView.getVideoController();
                        }
                        splashExpressBackupView.setVideoAdListener(l.this);
                        l.this.jx();
                        TsView tsView = ((hp) l.this).hp;
                        if (tsView == null) {
                            return true;
                        }
                        tsView.hp();
                        return true;
                    } catch (Exception unused) {
                        return false;
                    }
                }
            });
            this.zy = 3;
            this.as.setExpressInteractionListener(new com.byazt.qk.hp() { // from class: com.byazt.rq.l.4
                @Override // com.byazt.qk.hp
                public void hp(View view, int i2) {
                    l.this.q();
                    l lVar = l.this;
                    com.byazt.jdb.j.l(lVar.f25295u, lVar.f25287l);
                    l lVar2 = l.this;
                    com.byazt.mu.hp hpVar = lVar2.f25294s;
                    if (hpVar != null) {
                        hpVar.l(lVar2);
                    }
                    l.this.l();
                    l.this.a();
                }

                @Override // com.byazt.qk.hp
                public void hp(View view, final String str, int i2) {
                    final Runnable runnable = new Runnable() { // from class: com.byazt.rq.l.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                u.l(MediationConstant.RIT_TYPE_SPLASH, "onRenderFail:" + str);
                                l.this.di.l(3);
                                l.this.di.hp("render splash express fail");
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                jVar.hp(l.this.di);
                            } catch (Throwable unused) {
                            }
                        }
                    };
                    com.byazt.qfg.w.hp(new Runnable() { // from class: com.byazt.rq.l.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            s.hp(runnable);
                        }
                    });
                }

                @Override // com.byazt.qk.hp
                public void hp(final View view, final float f2, final float f3) {
                    com.byazt.kl.hp.hp("Splash_FullLink", "CSJSplashExpressRender- onRenderSuccess");
                    final Runnable runnable = new Runnable() { // from class: com.byazt.rq.l.4.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                com.byazt.kl.hp.hp("Splash_FullLink", "CSJSplashExpressRender- runOnUiThread - onRenderSuccess");
                                if (view == null || f2 <= 0.0f || f3 <= 0.0f) {
                                    l.this.di.l(3);
                                    l.this.di.hp("render splash view error");
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    jVar.hp(l.this.di);
                                    return;
                                }
                                q qVar = new q(l.this.dy.get(), l.this);
                                boolean zN = l.this.as.n();
                                if (l.this.as != null && !zN) {
                                    ((hp) l.this).hp.setComplianceBarVisibility(8);
                                }
                                qVar.hp(zN);
                                l.this.ky.set(zN ? 1 : 2);
                                l.this.f25291o.set(true);
                                l lVar = l.this;
                                ((hp) lVar).hp.setExpressView(lVar.as);
                                l.this.yr.set(true);
                                if (l.this.f25282d.get()) {
                                    l lVar2 = l.this;
                                    lVar2.hp((WeakReference<ViewGroup>) lVar2.rz);
                                    l.this.f25282d.set(false);
                                }
                                if (!l.this.f25292q.get() && !zN && gd.hp(l.this.f25287l)) {
                                    l.this.k();
                                }
                                jVar.l(qVar);
                                l.this.nd.hp(((hp) l.this).hp.getEasyPlayableLayout(), l.this.as.getVideoContainer());
                                l.this.jl();
                            } catch (Throwable th) {
                                u.l(MediationConstant.RIT_TYPE_SPLASH, "onRenderFail:" + th.getMessage());
                            }
                        }
                    };
                    com.byazt.qfg.w.hp(new Runnable() { // from class: com.byazt.rq.l.4.4
                        @Override // java.lang.Runnable
                        public void run() {
                            s.hp(runnable);
                        }
                    });
                }
            });
        }
    }

    private void l(final j<q, eb> jVar) {
        try {
            com.byazt.qfg.w.hp(new Runnable() { // from class: com.byazt.rq.l.2
                @Override // java.lang.Runnable
                public void run() {
                    System.currentTimeMillis();
                    l.this.hp(jVar);
                    l.this.v();
                    System.currentTimeMillis();
                }
            });
        } catch (Throwable th) {
            u.l("splrender", th.getMessage());
        }
    }

    @Override // com.byazt.rq.hp
    public void a() {
        try {
            SlideInterceptView slideInterceptView = this.hd;
            if (slideInterceptView == null) {
                return;
            }
            slideInterceptView.hp();
            if (((ViewGroup) this.hd.getParent()) == null) {
                return;
            }
            this.hd.post(new Runnable() { // from class: com.byazt.rq.l.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ViewGroup viewGroup = (ViewGroup) l.this.hd.getParent();
                        if (viewGroup == null) {
                            return;
                        }
                        viewGroup.removeView(l.this.hd);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    private void hp(JSONArray jSONArray, View view) throws JSONException {
        if (view == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", view.getClass().getSimpleName());
            jSONObject.put("id", view.getId());
            if (view instanceof ViewGroup) {
                JSONArray jSONArray2 = new JSONArray();
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    hp(jSONArray2, viewGroup.getChildAt(i2));
                }
                jSONObject.put("children", jSONArray2);
            }
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(WeakReference<ViewGroup> weakReference) throws JSONException {
        ViewGroup viewGroup;
        if (weakReference == null || (viewGroup = weakReference.get()) == null) {
            return;
        }
        if (((hp) this).hp.getParent() != null) {
            ((ViewGroup) ((hp) this).hp.getParent()).removeView(((hp) this).hp);
        }
        try {
            viewGroup.addView(((hp) this).hp);
        } catch (Exception e2) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                hp(jSONArray, ((hp) this).hp);
                jSONObject.put("root", jSONArray);
                u.l(MediationConstant.RIT_TYPE_SPLASH, "showTsView.addView:" + e2.getMessage());
                k.hp().hp("splash_add_view_error", jSONObject, e2);
            } catch (JSONException unused) {
            }
        }
    }

    private void hp(mp mpVar) {
        if (this.as == null || mpVar == null) {
            return;
        }
        Context context = this.kg;
        String str = this.f25307m;
        this.zx = new a(context, mpVar, str, ky.j(str));
        this.zx.hp(this.as);
        ((com.byazt.sw.hp) this.zx.hp(com.byazt.sw.hp.class)).hp(this.jx);
        ((com.byazt.ey.hp) this.zx.hp(com.byazt.ey.hp.class)).hp(this.f25283e);
        this.as.setClickListener(this.zx);
        Context context2 = this.kg;
        String str2 = this.f25307m;
        this.f25308y = new com.byazt.qk.w(context2, mpVar, str2, ky.j(str2));
        ((com.byazt.sw.hp) this.f25308y.hp(com.byazt.sw.hp.class)).hp(this);
        this.f25308y.hp(this.as);
        ((com.byazt.sw.hp) this.f25308y.hp(com.byazt.sw.hp.class)).hp(this.jx);
        ((com.byazt.ey.hp) this.f25308y.hp(com.byazt.ey.hp.class)).hp(this.f25283e);
        this.as.setClickCreativeListener(this.f25308y);
        if (this.jx != null) {
            this.jx.hp(this);
        }
    }
}
