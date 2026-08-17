package com.byazt.mpn;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.anythink.core.common.res.d;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jz.r;
import com.byazt.jz.ud;
import com.byazt.pu.TTDownloadField;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.ky;
import com.byazt.zn.sz;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 150})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class q implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    public String f23233a;

    /* renamed from: b, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "show_type")
    public int f23234b;

    @com.byazt.cv.hp(hp = "download_listener")
    public DownloadListener cx;

    /* renamed from: d, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "end_card_width")
    public int f23235d;

    @com.byazt.cv.hp(hp = "end_card_param")
    public com.byazt.khd.hp di;
    public double dy;
    public com.byazt.cf.j eb;

    @com.byazt.cv.hp(hp = "event_tag")
    public String ec;

    @com.byazt.cv.hp(hp = TTDownloadField.TT_ACTIVITY)
    public TTBaseVideoActivity hp;

    @com.byazt.cv.hp(hp = "action_type")
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public ud f23237j;
    public boolean ky;
    public double lv;

    /* renamed from: n, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "extra_map")
    public Map<String, Object> f23241n;

    @com.byazt.cv.hp(hp = com.anythink.core.common.k.aN)
    public View ns;
    public double nu;

    /* renamed from: o, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "orientation")
    public int f23242o;
    public String pu;

    /* renamed from: r, reason: collision with root package name */
    public double f23244r;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.jdb.a f23245s;

    @com.byazt.cv.hp(hp = "is_reward")
    public boolean sz;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.jdb.e f23248w;

    @com.byazt.cv.hp(hp = "end_card_height")
    public int wv;

    @com.byazt.cv.hp(hp = "web_view")
    public WeakReference<SSWebView> xs;
    public final Map<String, Bitmap> ud = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public int f23239l = 0;
    public int jx = 0;

    /* renamed from: q, reason: collision with root package name */
    public int f23243q = 0;

    /* renamed from: e, reason: collision with root package name */
    public String f23236e = "";
    public boolean gu = false;
    public boolean jl = false;
    public final AtomicBoolean zy = new AtomicBoolean(true);
    public Handler xh = new Handler(Looper.myLooper()) { // from class: com.byazt.mpn.q.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) throws JSONException {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    q.this.zy();
                    break;
                case 2:
                    q.this.w();
                    break;
                case 3:
                    q.this.eb();
                    break;
                case 4:
                    q.this.s();
                    break;
                case 5:
                    q.this.q();
                    break;
                case 6:
                    q.this.e();
                    break;
                case 7:
                    q.this.gu();
                    break;
                case 8:
                    q.this.jl();
                    break;
                case 9:
                    q.this.k();
                    break;
                case 10:
                    q.this.v();
                    break;
                case 11:
                    q.this.u();
                    break;
                case 12:
                    q.this.xs();
                    break;
                case 13:
                    q.this.vv();
                    break;
                case 14:
                    q.this.ec();
                    break;
            }
        }
    };

    /* renamed from: k, reason: collision with root package name */
    public AtomicBoolean f23238k = new AtomicBoolean(false);

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.cey.hp f23247v = new com.byazt.cey.hp() { // from class: com.byazt.mpn.q.6
        @Override // com.byazt.cey.hp
        public int hp() {
            SSWebView sSWebView = q.this.xs != null ? (SSWebView) q.this.xs.get() : null;
            int measuredHeight = sSWebView != null ? sSWebView.getMeasuredHeight() : -1;
            return measuredHeight <= 0 ? xh.w((Context) q.this.hp) : measuredHeight;
        }

        @Override // com.byazt.cey.hp
        public int l() {
            SSWebView sSWebView = q.this.xs != null ? (SSWebView) q.this.xs.get() : null;
            int measuredWidth = sSWebView != null ? sSWebView.getMeasuredWidth() : -1;
            return measuredWidth <= 0 ? xh.j((Context) q.this.hp) : measuredWidth;
        }
    };

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.cey.eb f23246u = new com.byazt.cey.eb() { // from class: com.byazt.mpn.q.7
        @Override // com.byazt.cey.eb
        public void hp() {
            SSWebView sSWebView = q.this.xs != null ? (SSWebView) q.this.xs.get() : null;
            if (sSWebView == null) {
                return;
            }
            sSWebView.onPause();
        }

        @Override // com.byazt.cey.eb
        public void l() {
            SSWebView sSWebView = q.this.xs != null ? (SSWebView) q.this.xs.get() : null;
            if (sSWebView == null) {
                return;
            }
            sSWebView.pauseTimers();
        }
    };

    /* renamed from: ms, reason: collision with root package name */
    public final com.byazt.cey.l f23240ms = new com.byazt.cey.l() { // from class: com.byazt.mpn.q.8
        @Override // com.byazt.cey.l
        public void hp(boolean z2, int i2, String str) throws JSONException {
            if (z2) {
                q qVar = q.this;
                qVar.jl = true;
                if (qVar.ky) {
                    q qVar2 = q.this;
                    qVar2.hp(qVar2.nu, q.this.dy, q.this.lv, q.this.f23244r, q.this.pu);
                    q.this.ky = false;
                }
            }
            if (df.gu(q.this.vv)) {
                q.this.hp(z2, i2, str);
            }
        }
    };
    public final com.byazt.ko.hp as = new com.byazt.ko.hp() { // from class: com.byazt.mpn.q.9
        @Override // com.byazt.ko.hp
        public void hp() {
            q.this.hp.s(1);
        }
    };

    private void b() {
        ud udVar = this.f23237j;
        if (udVar == null) {
            return;
        }
        udVar.hp(new SSWebView.l() { // from class: com.byazt.mpn.q.5
            @Override // com.byazt.ykc.SSWebView.l
            public void hp(int i2) throws JSONException {
                ud udVar2 = q.this.f23237j;
                if (udVar2 != null) {
                    udVar2.hp(i2);
                }
            }
        });
    }

    private void cx() {
        WeakReference<SSWebView> weakReference;
        final SSWebView sSWebView;
        if (this.f23238k.getAndSet(true) || (weakReference = this.xs) == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(sSWebView, "translationY", 0.0f, xh.w((Context) this.hp));
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.mpn.q.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                xh.hp((View) sSWebView, 8);
                q.this.f23238k.set(false);
            }
        });
        objectAnimatorOfFloat.start();
    }

    private void n() {
        this.f23233a = df.q(this.vv);
        float fQo = this.vv.qo();
        if (TextUtils.isEmpty(this.f23233a)) {
            return;
        }
        if (this.f23242o == 1) {
            if (this.f23233a.contains("?")) {
                this.f23233a += "&orientation=portrait";
            } else {
                this.f23233a += "?orientation=portrait";
            }
        }
        if (this.f23233a.contains("?")) {
            this.f23233a += "&height=" + this.wv + "&width=" + this.f23235d + "&aspect_ratio=" + fQo;
        } else {
            this.f23233a += "?height=" + this.wv + "&width=" + this.f23235d + "&aspect_ratio=" + fQo;
        }
        this.f23233a = com.byazt.jki.hp.hp(this.f23233a);
    }

    private void ns() {
        WeakReference<SSWebView> weakReference;
        if (this.f23238k.getAndSet(true) || (weakReference = this.xs) == null) {
            return;
        }
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(weakReference.get(), "translationY", xh.w((Context) this.hp), 0.0f);
            objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.mpn.q.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    q.this.f23238k.set(false);
                }
            });
            objectAnimatorOfFloat.start();
        } catch (Throwable unused) {
        }
    }

    private void sz() {
        com.byazt.khd.hp hpVar = this.di;
        if (hpVar == null) {
            return;
        }
        hpVar.hp(new com.byazt.khd.hp() { // from class: com.byazt.mpn.q.10
        });
    }

    public void e() throws JSONException {
        WeakReference<SSWebView> weakReference = this.xs;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            sSWebView.onResume();
        }
        ud udVar = this.f23237j;
        if (udVar != null) {
            udVar.hq();
            if (sSWebView != null) {
                if (sSWebView.getVisibility() == 0) {
                    this.f23237j.a(true);
                    hp(true);
                    hp(false, true);
                } else {
                    this.f23237j.a(false);
                    hp(false);
                    hp(true, false);
                }
            }
        }
        com.byazt.jdb.a aVar = this.f23245s;
        if (aVar != null) {
            aVar.j();
        }
        com.byazt.cf.j jVar = this.eb;
        if (jVar != null) {
            jVar.l(false);
        }
    }

    public void ec() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.loadUrl(d.f7446a);
    }

    public void gu() throws JSONException {
        WeakReference<SSWebView> weakReference = this.xs;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            sSWebView.onPause();
        }
        ud udVar = this.f23237j;
        if (udVar != null) {
            udVar.ud();
            this.f23237j.a(false);
            hp(false);
            hp(true, false);
        }
        com.byazt.cf.j jVar = this.eb;
        if (jVar != null) {
            jVar.jx();
        }
    }

    public void jl() {
        com.byazt.jdb.a aVar = this.f23245s;
        if (aVar != null) {
            aVar.w();
        }
    }

    public void k() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.onResume();
        sSWebView.resumeTimers();
        xh.hp((View) sSWebView, 1.0f);
        b();
    }

    public void q() {
        this.f23248w = null;
    }

    public void u() {
        com.byazt.jdb.e eVar = this.f23248w;
        if (eVar != null) {
            eVar.gu();
        }
    }

    public void v() {
        com.byazt.jdb.e eVar = this.f23248w;
        if (eVar != null) {
            eVar.q();
        }
    }

    public void vv() {
        com.byazt.jdb.e eVar = this.f23248w;
        if (eVar != null) {
            eVar.jx();
            this.f23248w.j();
        }
    }

    public void xs() {
        com.byazt.jdb.e eVar = this.f23248w;
        if (eVar != null) {
            eVar.jl();
        }
    }

    public void zy() {
        WeakReference<SSWebView> weakReference = this.xs;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        if (sSWebView != null) {
            r.hp(this.hp, sSWebView);
            r.hp(sSWebView);
            sSWebView.destroy();
        }
        WeakReference<SSWebView> weakReference2 = this.xs;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        ud udVar = this.f23237j;
        if (udVar != null) {
            udVar.nu();
        }
        com.byazt.jdb.e eVar = this.f23248w;
        if (eVar != null) {
            eVar.hp(true);
            this.f23248w.u();
        }
        com.byazt.jdb.a aVar = this.f23245s;
        if (aVar != null) {
            aVar.a();
        }
        this.ud.clear();
    }

    public void a() throws JSONException {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        xh.hp((View) sSWebView, 0);
        if (this.f23234b == 1) {
            xh.hp((View) sSWebView, 0.0f);
        }
        if (this.f23234b == 2) {
            ns();
        }
        ud udVar = this.f23237j;
        if (udVar != null) {
            udVar.hp(ky.sz(this.vv), false);
        }
        hp(true);
        l(true);
        hp(false, true);
    }

    public void eb() {
        com.byazt.jdb.a aVar = this.f23245s;
        if (aVar != null) {
            aVar.hp(System.currentTimeMillis());
        }
    }

    public boolean j() {
        String str = this.f23233a;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    public void jx() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        com.byazt.cf.j jVar = new com.byazt.cf.j(this.hp, this.f23237j, this.vv.j(), this.f23245s) { // from class: com.byazt.mpn.q.13
            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                com.byazt.jdb.e eVar = q.this.f23248w;
                if (eVar != null) {
                    eVar.eb();
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                com.byazt.jdb.e eVar = q.this.f23248w;
                if (eVar != null) {
                    eVar.a();
                }
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i2, String str, String str2) throws JSONException {
                q.this.zy.set(false);
                q qVar = q.this;
                qVar.f23243q = i2;
                qVar.f23236e = str;
                if (qVar.f23248w != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", i2);
                        jSONObject.put("msg", str);
                        q.this.f23248w.l(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i2, str, str2);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) throws JSONException {
                if (q.this.f23248w != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", webResourceResponse.getStatusCode());
                        jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        q.this.f23248w.l(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (q.this.f23233a.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        q.this.zy.set(false);
                    }
                    if (webResourceResponse != null) {
                        q.this.f23243q = webResourceResponse.getStatusCode();
                        q.this.f23236e = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                WebResourceResponse webResourceResponseHp = q.this.hp(str);
                return webResourceResponseHp != null ? webResourceResponseHp : super.shouldInterceptRequest(webView, str);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String string = webResourceRequest.getUrl().toString();
                    if (q.this.vv != null) {
                        WebResourceResponse webResourceResponseHp = q.this.hp(string);
                        if (webResourceResponseHp != null) {
                            return webResourceResponseHp;
                        }
                        if (TextUtils.isEmpty(q.this.vv.jx())) {
                            return super.shouldInterceptRequest(webView, string);
                        }
                        q.this.f23239l++;
                        return super.shouldInterceptRequest(webView, string);
                    }
                    return super.shouldInterceptRequest(webView, string);
                } catch (Throwable unused) {
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) throws JSONException {
                if (webResourceRequest.isForMainFrame()) {
                    q.this.zy.set(false);
                }
                if (q.this.f23248w != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", webResourceError.getErrorCode());
                        jSONObject.put("msg", webResourceError.getDescription());
                        q.this.f23248w.l(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                q.this.f23243q = webResourceError.getErrorCode();
                q.this.f23236e = String.valueOf(webResourceError.getDescription());
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        };
        this.eb = jVar;
        sSWebView.setWebViewClient(jVar);
        hp(sSWebView);
        sSWebView.setBackgroundColor(-1);
        sSWebView.setDisplayZoomControls(false);
        sSWebView.setWebChromeClient(new com.byazt.cf.jx(this.f23237j, this.f23245s) { // from class: com.byazt.mpn.q.2
            @Override // com.byazt.cf.jx, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i2) {
                super.onProgressChanged(webView, i2);
            }
        });
        sSWebView.setDownloadListener(this.cx);
    }

    public void l() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        com.byazt.jdb.e eVar = new com.byazt.jdb.e(this.ec, this.vv, jSONObject, null);
        this.f23248w = eVar;
        eVar.hp(jSONObject, "webview_source", (Object) 2);
        com.byazt.jdb.a aVarL = new com.byazt.jdb.a(this.vv, sSWebView).l(true);
        this.f23245s = aVarL;
        aVarL.hp(true);
        n();
        this.f23245s.hp(j() ? "landingpage_endcard" : this.sz ? "reward_endcard" : "fullscreen_endcard");
        ud udVar = new ud(this.hp) { // from class: com.byazt.mpn.q.12
        };
        this.f23237j = udVar;
        udVar.l(sSWebView).hp(this.vv).l(this.vv.j()).j(this.vv.w_()).jx(this.sz ? 7 : 5).hp(this.f23247v).w(ky.sz(this.vv)).hp(sSWebView).l(com.byazt.fy.s.hp(this.vv)).hp(this.f23248w).hp(this.ec).hp(this.f23241n).hp(this.f23246u).hp(this.ns).hp(this.as);
        this.f23237j.hp(this.f23240ms);
    }

    public void s() {
        if (this.hp.y() instanceof com.byazt.vsq.s) {
            cx();
            return;
        }
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null) {
            return;
        }
        xh.hp((View) weakReference.get(), 8);
    }

    public void w() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null || (sSWebView = weakReference.get()) == null || this.gu) {
            return;
        }
        sSWebView.loadUrl(this.f23233a);
        this.gu = true;
    }

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) throws JSONException {
        if (this.hq != 0) {
            a();
            return true;
        }
        hp();
        l();
        jx();
        sz();
        return true;
    }

    public void hp(boolean z2, int i2, String str) {
        com.byazt.jdb.e eVar = this.f23248w;
        if (eVar == null) {
            return;
        }
        if (z2) {
            eVar.l();
        } else {
            eVar.hp(i2, str);
        }
    }

    public void hp() {
        final SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.xs;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return;
        }
        sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.mpn.q.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() throws JSONException {
                SSWebView sSWebView2 = sSWebView;
                if (sSWebView2 == null || sSWebView2.getViewTreeObserver() == null) {
                    return;
                }
                sSWebView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int measuredWidth = sSWebView.getMeasuredWidth();
                int measuredHeight = sSWebView.getMeasuredHeight();
                if (sSWebView.getVisibility() == 0) {
                    q.this.hp(measuredWidth, measuredHeight);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3) throws JSONException {
        if (this.f23237j == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i2);
            jSONObject.put("height", i3);
            this.f23237j.l("resize", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void hp(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.byazt.cf.l.hp(this.hp).hp(false).l(false).hp(sSWebView);
        sz.hp(sSWebView, com.byazt.jz.d.f21856j, mp.w(this.vv));
        xh.hp((com.byazt.ikh.j) sSWebView);
        sSWebView.setMixedContentMode(0);
    }

    public void hp(boolean z2) throws JSONException {
        if (this.f23237j == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z2 ? 1 : 0);
            this.f23237j.l("viewableChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void l(boolean z2) {
        if (this.f23237j == null || this.hp.isFinishing()) {
            return;
        }
        try {
            this.f23237j.a(z2);
        } catch (Exception unused) {
        }
    }

    public void hp(boolean z2, boolean z3) throws JSONException {
        if (this.f23237j == null || this.hp.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z2);
            jSONObject.put("endcard_show", z3);
            this.f23237j.l("endcard_control_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void hp(double d2, double d3, double d4, double d5, String str) throws JSONException {
        if (this.f23237j == null || this.hp.isFinishing()) {
            return;
        }
        if (!this.jl) {
            this.nu = d2;
            this.dy = d3;
            this.f23244r = d5;
            this.lv = d4;
            this.pu = str;
            this.ky = true;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", d2);
            jSONObject.put("y", d3);
            jSONObject.put("width", d4);
            jSONObject.put("height", d5);
            jSONObject.put("videoFrameKey", str);
            this.f23237j.l("endcardTransform", jSONObject);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebResourceResponse hp(String str) {
        if (!str.startsWith("csjclientimg://")) {
            return null;
        }
        Bitmap bitmap = this.ud.get(str.replace("csjclientimg://", ""));
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    }
}
