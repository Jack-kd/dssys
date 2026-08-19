package com.kwad.components.ad.splashscreen.presenter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.ad.splashscreen.h;
import com.kwad.components.core.webview.jshandler.ac;
import com.kwad.components.core.webview.jshandler.af;
import com.kwad.components.core.webview.jshandler.am;
import com.kwad.components.core.webview.jshandler.as;
import com.kwad.components.core.webview.jshandler.az;
import com.kwad.components.core.webview.jshandler.bb;
import com.kwad.components.core.webview.jshandler.bc;
import com.kwad.components.core.webview.jshandler.z;
import com.kwad.sdk.R;
import com.kwad.sdk.core.adlog.a;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.view.AdBaseFrameLayout;
import com.kwad.sdk.core.webview.KsAdWebView;
import com.kwad.sdk.mvp.Presenter;
import com.kwad.sdk.utils.as;
import com.kwad.sdk.utils.by;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class t extends e implements com.kwad.components.ad.splashscreen.e, com.kwad.components.ad.splashscreen.g, com.kwad.sdk.core.j.c {
    private com.kwad.components.ad.splashscreen.e.b Jj;
    private boolean Jk;
    private long Jm;
    private az Jn;
    private ViewGroup Jp;

    @Nullable
    private KsAdWebView ff;
    private com.kwad.components.core.webview.a fh;
    private com.kwad.sdk.core.webview.b fi;
    private com.kwad.sdk.core.g.d hu;
    private Vibrator hw;
    private AdInfo mAdInfo;
    private AdTemplate mAdTemplate;
    private long mStartTime;
    private boolean Jl = false;
    private boolean Jo = false;
    private final Runnable Jq = new Runnable() { // from class: com.kwad.components.ad.splashscreen.presenter.t.1
        @Override // java.lang.Runnable
        public final void run() {
            t.a(t.this, true);
            com.kwad.components.ad.splashscreen.monitor.c.a(t.this.mAdTemplate, com.kwad.sdk.core.response.helper.b.cT(t.this.mAdTemplate), SystemClock.elapsedRealtime() - t.this.Jm, 1, "");
            t.this.ng();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public Vibrator F(Context context) {
        if (context != null) {
            return (Vibrator) getContext().getSystemService("vibrator");
        }
        return null;
    }

    private void bi() {
        com.kwad.sdk.core.webview.b bVar = new com.kwad.sdk.core.webview.b();
        this.fi = bVar;
        bVar.setAdTemplate(this.mAdTemplate);
        com.kwad.sdk.core.webview.b bVar2 = this.fi;
        bVar2.mScreenOrientation = 0;
        AdBaseFrameLayout adBaseFrameLayout = this.HC.mRootContainer;
        bVar2.bbV = adBaseFrameLayout;
        bVar2.adW = adBaseFrameLayout;
        bVar2.ade = this.ff;
        bVar2.mReportExtData = null;
        bVar2.bbX = false;
        bVar2.bbY = com.kwad.components.ad.splashscreen.h.o(this.mAdInfo);
    }

    private void bl() {
        com.kwad.components.core.webview.a aVar = this.fh;
        if (aVar != null) {
            aVar.destroy();
            this.fh = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cL() {
        if (this.hu != null || this.Jl) {
            return;
        }
        float fDK = com.kwad.sdk.core.response.helper.b.dK(this.HC.mAdTemplate);
        boolean zDZ = com.kwad.sdk.core.response.helper.b.dZ(com.kwad.sdk.core.response.helper.e.eO(this.HC.mAdTemplate));
        boolean zEa = com.kwad.sdk.core.response.helper.b.ea(com.kwad.sdk.core.response.helper.e.eO(this.HC.mAdTemplate));
        com.kwad.sdk.core.g.d dVar = new com.kwad.sdk.core.g.d(zDZ, fDK);
        this.hu = dVar;
        dVar.bG(zEa);
        this.hu.a(new com.kwad.sdk.core.g.b() { // from class: com.kwad.components.ad.splashscreen.presenter.t.6
            @Override // com.kwad.sdk.core.g.b
            public final void a(double d2) {
                boolean zPG = com.kwad.components.core.e.c.b.pG();
                if (!t.this.HC.GP.Ae() || zPG) {
                    return;
                }
                t.this.f(d2);
                if (t.this.hw == null) {
                    t tVar = t.this;
                    tVar.hw = tVar.F(tVar.getContext());
                }
                by.a(t.this.getContext(), t.this.hw);
                t.this.hu.cc(t.this.getContext());
            }

            @Override // com.kwad.sdk.core.g.b
            public final void cj() {
            }
        });
        this.hu.cb(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ng() {
        this.Jl = true;
        KsAdWebView ksAdWebView = this.ff;
        if (ksAdWebView != null) {
            ksAdWebView.setVisibility(8);
        }
        ViewGroup viewGroup = this.Jp;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        final Presenter presenterZ = z(this.mAdInfo);
        if (presenterZ != null) {
            by.postOnUiThread(new Runnable() { // from class: com.kwad.components.ad.splashscreen.presenter.t.8
                @Override // java.lang.Runnable
                public final void run() {
                    t.this.a(presenterZ, true);
                }
            });
        } else {
            nh();
        }
    }

    private void nh() {
        nf();
        com.kwad.components.ad.splashscreen.e.b bVar = new com.kwad.components.ad.splashscreen.e.b((ViewGroup) getRootView(), (ViewStub) findViewById(R.id.ksad_splash_actionbar_native_stub), com.kwad.sdk.core.response.helper.d.eD(this.mAdTemplate), this.HC.mApkDownloadHelper);
        this.Jj = bVar;
        bVar.az(this.mAdTemplate);
        this.Jj.a(this);
        this.Jj.ng();
    }

    private z ni() {
        return new z(this.fi, this.HC.mApkDownloadHelper, new com.kwad.sdk.core.webview.d.a.a() { // from class: com.kwad.components.ad.splashscreen.presenter.t.9
            @Override // com.kwad.sdk.core.webview.d.a.a
            public final void a(com.kwad.sdk.core.webview.d.b.a aVar) throws JSONException {
                if (com.kwad.sdk.c.a.a.HW()) {
                    return;
                }
                if (aVar.PM() || com.kwad.components.ad.splashscreen.h.o(t.this.mAdInfo)) {
                    t.this.a(false, aVar.ara, aVar.nm, aVar.arb.QY);
                }
            }
        });
    }

    private ac nj() {
        return new ac(this.fi, this.HC.mApkDownloadHelper, new com.kwad.sdk.core.webview.d.a.a() { // from class: com.kwad.components.ad.splashscreen.presenter.t.10
            @Override // com.kwad.sdk.core.webview.d.a.a
            public final void a(com.kwad.sdk.core.webview.d.b.a aVar) throws JSONException {
                if (aVar.aqY || !com.kwad.components.ad.splashscreen.h.o(t.this.mAdInfo)) {
                    t.this.a(false, aVar.aqY ? 1 : 3, aVar.nm, "");
                }
            }
        }, (byte) 0);
    }

    private Presenter z(AdInfo adInfo) {
        if (com.kwad.sdk.core.response.helper.a.dv(com.kwad.sdk.core.response.helper.e.eO(this.HC.mAdTemplate))) {
            if (com.kwad.sdk.core.response.helper.b.ei(adInfo)) {
                return new m();
            }
            return null;
        }
        if (com.kwad.sdk.core.response.helper.b.eg(this.mAdInfo)) {
            return new o();
        }
        if (com.kwad.sdk.core.response.helper.b.ei(this.mAdInfo)) {
            return new m();
        }
        if (com.kwad.sdk.core.response.helper.b.el(this.mAdInfo)) {
            return new r();
        }
        if (as.isOrientationPortrait() && com.kwad.sdk.core.response.helper.b.em(this.mAdInfo)) {
            return new l();
        }
        if (as.isOrientationPortrait() && com.kwad.sdk.core.response.helper.b.en(this.mAdInfo)) {
            return new n();
        }
        if (as.isOrientationPortrait() && com.kwad.sdk.core.response.helper.b.eo(this.mAdInfo)) {
            return new q();
        }
        if (as.isOrientationPortrait() && com.kwad.sdk.core.response.helper.b.ep(this.mAdInfo)) {
            return new p();
        }
        return null;
    }

    @Override // com.kwad.components.ad.splashscreen.g
    public final void aw(int i2) {
    }

    @Override // com.kwad.components.ad.splashscreen.presenter.e, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.mStartTime = SystemClock.elapsedRealtime();
        this.HC.GP.a(this);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.ksad_splash_webview_container);
        this.Jp = viewGroup;
        viewGroup.setVisibility(0);
        try {
            this.ff = new KsAdWebView(getContext());
            this.ff.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.Jp.addView(this.ff);
        } catch (Throwable unused) {
        }
        AdTemplate adTemplate = this.HC.mAdTemplate;
        this.mAdTemplate = adTemplate;
        this.mAdInfo = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        this.Jk = false;
        this.Jl = false;
        String strCT = com.kwad.sdk.core.response.helper.b.cT(this.mAdTemplate);
        if (this.ff == null || TextUtils.isEmpty(strCT) || this.HC.GU) {
            ng();
        } else {
            this.Jm = SystemClock.elapsedRealtime();
            com.kwad.components.ad.splashscreen.monitor.c.ay(this.mAdTemplate);
            a(this.ff, strCT);
            by.a(this.Jq, null, com.kwad.sdk.core.response.helper.b.et(this.mAdInfo));
        }
        this.HC.a(this);
    }

    @Override // com.kwad.sdk.core.j.c
    public final void bA() {
        com.kwad.sdk.core.g.d dVar = this.hu;
        if (dVar != null) {
            dVar.cc(getContext());
        }
    }

    @Override // com.kwad.sdk.core.j.c
    public final void bz() {
        com.kwad.sdk.core.g.d dVar = this.hu;
        if (dVar != null) {
            dVar.cb(getContext());
        }
    }

    @Override // com.kwad.components.ad.splashscreen.g
    public final void mc() {
        com.kwad.sdk.core.g.d dVar = this.hu;
        if (dVar != null) {
            dVar.cc(getContext());
        }
    }

    @SuppressLint({"WrongConstant"})
    public final void nf() {
        if (this.Jk) {
            return;
        }
        this.Jk = true;
        a.C0601a c0601a = new a.C0601a();
        c0601a.aLk = com.kwad.components.ad.splashscreen.local.b.t(this.mAdInfo);
        com.kwad.sdk.core.adlog.c.d(this.HC.mAdTemplate, (JSONObject) null, new com.kwad.sdk.core.adlog.c.b().ee(123).b(c0601a));
        com.kwad.components.core.webview.tachikoma.e.a.zA().cl(123);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        com.kwad.sdk.core.j.a aVar;
        super.onUnbind();
        com.kwad.components.ad.splashscreen.e.b bVar = this.Jj;
        if (bVar != null) {
            bVar.onUnbind();
        }
        com.kwad.sdk.core.g.d dVar = this.hu;
        if (dVar != null) {
            dVar.cc(getContext());
        }
        az azVar = this.Jn;
        if (azVar != null) {
            azVar.yz();
            this.Jn.yA();
        }
        com.kwad.components.ad.splashscreen.h hVar = this.HC;
        if (hVar != null && (aVar = hVar.GP) != null) {
            aVar.b(this);
        }
        bl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(final double d2) {
        com.kwad.components.ad.splashscreen.h hVar = this.HC;
        if (hVar != null) {
            hVar.a(1, getContext(), 157, 2, new h.a() { // from class: com.kwad.components.ad.splashscreen.presenter.t.7
                @Override // com.kwad.components.ad.splashscreen.h.a
                public final void b(@NonNull com.kwad.sdk.core.adlog.c.b bVar) {
                    bVar.j(d2);
                }
            });
        }
    }

    @Override // com.kwad.components.ad.splashscreen.e
    public final void i(boolean z2, boolean z3) throws JSONException {
        com.kwad.sdk.core.d.c.d("SplashWebViewPresenter", "isClick: " + z2 + ", isActionBar: " + z3);
        a(!z2, z3 ? 1 : 3, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, null);
    }

    public static /* synthetic */ boolean a(t tVar, boolean z2) {
        tVar.Jo = true;
        return true;
    }

    private void a(KsAdWebView ksAdWebView, final String str) {
        ksAdWebView.setBackgroundColor(0);
        ksAdWebView.setVisibility(0);
        bi();
        a((WebView) ksAdWebView, str);
        ksAdWebView.setClientConfig(ksAdWebView.getClientConfig().fo(this.HC.mAdTemplate).b(new com.kwad.sdk.core.webview.f() { // from class: com.kwad.components.ad.splashscreen.presenter.t.3
            @Override // com.kwad.sdk.core.webview.f, com.kwad.sdk.core.webview.KsAdWebView.e
            public final void onPageFinished() {
                super.onPageFinished();
                com.kwad.components.ad.splashscreen.monitor.c.b(t.this.mAdTemplate, str, SystemClock.elapsedRealtime() - t.this.Jm);
            }

            @Override // com.kwad.sdk.core.webview.f, com.kwad.sdk.core.webview.KsAdWebView.e
            public final void onReceivedHttpError(int i2, String str2, String str3) {
                super.onReceivedHttpError(i2, str2, str3);
                by.b(t.this.Jq);
                t.this.ng();
                com.kwad.components.ad.splashscreen.monitor.c.a(t.this.mAdTemplate, str, SystemClock.elapsedRealtime() - t.this.Jm, 2, str2);
            }
        }));
        com.kwad.components.ad.splashscreen.monitor.c.d(str, this.mAdTemplate);
        try {
            ksAdWebView.loadUrl(str);
        } catch (Throwable unused) {
            ng();
        }
    }

    @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface", "JavascriptInterface"})
    private void a(WebView webView, String str) {
        bl();
        webView.getSettings().setAllowFileAccess(true);
        com.kwad.components.core.webview.a aVar = new com.kwad.components.core.webview.a(webView);
        this.fh = aVar;
        a(aVar, str);
        webView.addJavascriptInterface(this.fh, "KwaiAd");
    }

    private void a(com.kwad.components.core.webview.a aVar, final String str) {
        aVar.a(new bc(this.fi, this.HC.mApkDownloadHelper));
        aVar.a(nj());
        aVar.a(ni());
        aVar.a(new af(this.fi));
        aVar.a(new com.kwad.components.core.webview.tachikoma.b.f());
        aVar.a(new com.kwad.components.core.webview.jshandler.as(new as.b() { // from class: com.kwad.components.ad.splashscreen.presenter.t.4
            @Override // com.kwad.components.core.webview.jshandler.as.b
            public final void a(as.a aVar2) {
                com.kwad.sdk.core.d.c.d("SplashWebViewPresenter", "updatePageStatus: " + aVar2);
                by.b(t.this.Jq);
                if (aVar2.status != 1) {
                    com.kwad.components.ad.splashscreen.monitor.c.a(t.this.mAdTemplate, str, SystemClock.elapsedRealtime() - t.this.Jm, 3, "");
                    t.this.ng();
                    return;
                }
                t.this.HC.Hf = SystemClock.elapsedRealtime() - t.this.mStartTime;
                if (t.this.Jo) {
                    t.this.HC.isWebTimeout = true;
                } else if (t.this.Jn != null) {
                    t.this.Jn.yx();
                    t.this.Jn.yy();
                }
                if (com.kwad.sdk.core.response.helper.b.er(t.this.mAdInfo)) {
                    t.this.nf();
                }
            }
        }, str));
        aVar.a(new bb(new bb.a() { // from class: com.kwad.components.ad.splashscreen.presenter.t.5
            @Override // com.kwad.components.core.webview.jshandler.bb.a
            public final void cR() {
                t.this.cL();
            }
        }));
        aVar.a(new am(this.fi));
        aVar.b(new com.kwad.components.core.webview.jshandler.o(this.fi));
        aVar.b(new com.kwad.components.core.webview.jshandler.n(this.fi));
        az azVar = new az();
        this.Jn = azVar;
        aVar.a(azVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r11, int r12, int r13, java.lang.String r14) throws org.json.JSONException {
        /*
            r10 = this;
            com.kwad.components.ad.splashscreen.h r0 = r10.HC
            r0.ab()
            boolean r0 = android.text.TextUtils.isEmpty(r14)
            r1 = r0 ^ 1
            r2 = 0
            r3 = 1
            if (r12 != r3) goto L11
            r4 = r3
            goto L12
        L11:
            r4 = r2
        L12:
            if (r0 == 0) goto L4d
            org.json.JSONObject r5 = new org.json.JSONObject
            r5.<init>()
            com.kwad.components.ad.splashscreen.h r6 = r10.HC     // Catch: org.json.JSONException -> L2b
            if (r6 == 0) goto L4d
            com.kwad.components.ad.splashscreen.d.a r6 = r6.GN     // Catch: org.json.JSONException -> L2b
            if (r6 == 0) goto L2e
            java.lang.String r7 = "duration"
            long r8 = r6.getCurrentPosition()     // Catch: org.json.JSONException -> L2b
            r5.put(r7, r8)     // Catch: org.json.JSONException -> L2b
            goto L2e
        L2b:
            r11 = move-exception
            r2 = r13
            goto L49
        L2e:
            if (r11 == 0) goto L33
            r2 = 153(0x99, float:2.14E-43)
            goto L37
        L33:
            if (r4 == 0) goto L37
            r2 = 132(0x84, float:1.85E-43)
        L37:
            com.kwad.sdk.core.adlog.c.b r11 = new com.kwad.sdk.core.adlog.c.b     // Catch: org.json.JSONException -> L48
            r11.<init>()     // Catch: org.json.JSONException -> L48
            com.kwad.sdk.core.adlog.c.b r11 = r11.ec(r2)     // Catch: org.json.JSONException -> L48
            com.kwad.components.ad.splashscreen.h r6 = r10.HC     // Catch: org.json.JSONException -> L48
            com.kwad.sdk.core.response.model.AdTemplate r6 = r6.mAdTemplate     // Catch: org.json.JSONException -> L48
            com.kwad.sdk.core.adlog.c.a(r6, r11, r5)     // Catch: org.json.JSONException -> L48
            goto L4e
        L48:
            r11 = move-exception
        L49:
            com.kwad.sdk.core.d.c.printStackTrace(r11)
            goto L4e
        L4d:
            r2 = r13
        L4e:
            com.kwad.components.core.e.d.a$a r11 = new com.kwad.components.core.e.d.a$a
            com.kwad.components.ad.splashscreen.h r5 = r10.HC
            com.kwad.sdk.core.view.AdBaseFrameLayout r5 = r5.mRootContainer
            android.content.Context r5 = r5.getContext()
            r11.<init>(r5)
            com.kwad.components.ad.splashscreen.h r5 = r10.HC
            com.kwad.sdk.core.response.model.AdTemplate r5 = r5.mAdTemplate
            com.kwad.components.core.e.d.a$a r11 = r11.aJ(r5)
            com.kwad.components.ad.splashscreen.h r5 = r10.HC
            com.kwad.components.core.e.d.d r5 = r5.mApkDownloadHelper
            com.kwad.components.core.e.d.a$a r11 = r11.b(r5)
            com.kwad.components.core.e.d.a$a r11 = r11.as(r4)
            com.kwad.components.core.e.d.a$a r11 = r11.aN(r12)
            if (r0 != 0) goto L76
            goto L77
        L76:
            r13 = r2
        L77:
            com.kwad.components.core.e.d.a$a r11 = r11.aM(r13)
            com.kwad.components.core.e.d.a$a r11 = r11.aq(r14)
            com.kwad.components.core.e.d.a$a r11 = r11.aL(r3)
            com.kwad.components.core.e.d.a$a r11 = r11.au(r1)
            com.kwad.components.ad.splashscreen.presenter.t$2 r12 = new com.kwad.components.ad.splashscreen.presenter.t$2
            r12.<init>()
            com.kwad.components.core.e.d.a$a r11 = r11.a(r12)
            com.kwad.components.core.e.d.a.a(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.splashscreen.presenter.t.a(boolean, int, int, java.lang.String):void");
    }
}
