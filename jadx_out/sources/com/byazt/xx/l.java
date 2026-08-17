package com.byazt.xx;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.fub.k;
import com.byazt.fy.s;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jdb.a;
import com.byazt.jdb.e;
import com.byazt.jz.ud;
import com.byazt.rm.AbstractEndCardFrameLayout;
import com.byazt.vsq.w;
import com.byazt.xci.df;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.byazt.xm.l;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.byazt.zn.pu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: d, reason: collision with root package name */
    public final com.byazt.cey.l f27840d;
    public final Map<String, Bitmap> di;
    public String dy;
    public double hq;
    public boolean lv;
    public double nu;

    /* renamed from: o, reason: collision with root package name */
    public final com.byazt.ko.hp f27841o;
    public double ud;
    public double wv;

    public l(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, String str, int i2, int i3, boolean z2, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        super(tTBaseVideoActivity, mpVar, str, i2, i3, z2);
        this.di = new HashMap();
        this.f27841o = new com.byazt.ko.hp() { // from class: com.byazt.xx.l.1
            @Override // com.byazt.ko.hp
            public void hp() {
                l.this.hp.s(1);
            }
        };
        this.f27840d = new com.byazt.cey.l() { // from class: com.byazt.xx.l.2
            @Override // com.byazt.cey.l
            public void hp(boolean z3, int i4, String str2) throws JSONException {
                if (z3) {
                    l lVar = l.this;
                    lVar.f27827u = true;
                    if (lVar.lv) {
                        l lVar2 = l.this;
                        lVar2.hp(lVar2.wv, l.this.hq, l.this.ud, l.this.nu, l.this.dy);
                        l.this.lv = false;
                    }
                }
                if (df.gu(l.this.f27823l)) {
                    l.this.hp(z3, i4, str2);
                }
                SSWebView sSWebView = l.this.eb;
                if (sSWebView != null) {
                    if (sSWebView.getVisibility() == 0) {
                        l.this.f27826s.a(true);
                        l.this.hp(true);
                        l.this.hp(false, true);
                    } else {
                        l.this.f27826s.a(false);
                        l.this.hp(false);
                        l.this.hp(true, false);
                    }
                }
            }
        };
        this.eb = abstractEndCardFrameLayout.getEndCardWebView();
        hp();
    }

    private void hq() {
        float fQo = this.f27823l.qo();
        String strQ = df.q(this.f27823l);
        this.f27820e = strQ;
        if (TextUtils.isEmpty(strQ)) {
            return;
        }
        String strTrim = this.f27820e.trim();
        this.f27820e = strTrim;
        Uri.Builder builderBuildUpon = Uri.parse(strTrim).buildUpon();
        if (this.ec == 1) {
            builderBuildUpon.appendQueryParameter("orientation", "portrait");
        }
        String string = builderBuildUpon.appendQueryParameter("height", String.valueOf(this.f27824n)).appendQueryParameter("width", String.valueOf(this.sz)).appendQueryParameter("aspect_ratio", String.valueOf(fQo)).toString();
        this.f27820e = string;
        String strHp = com.byazt.jki.hp.hp(string);
        this.f27820e = strHp;
        this.f27820e = pu.jx(strHp);
    }

    @Override // com.byazt.xx.hp
    public String b() {
        return "endcard";
    }

    public boolean d() {
        String str = this.f27820e;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.xx.hp
    public void v() {
        super.v();
        this.di.clear();
    }

    public void wv() {
        SSWebView sSWebView;
        if (this.f27828v || (sSWebView = this.eb) == null || sSWebView.getWebView() == null) {
            return;
        }
        this.eb.loadUrl(this.f27820e);
        this.f27828v = true;
    }

    @Override // com.byazt.xx.hp
    public void hp(boolean z2, Map<String, Object> map, View view) {
        if (this.eb == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        e eVar = new e(this.jx, this.f27823l, jSONObject, null);
        this.f27825q = eVar;
        eVar.hp(jSONObject, "webview_source", (Object) 2);
        a aVarL = new a(this.f27823l, this.eb).l(true);
        this.jl = aVarL;
        aVarL.hp(true);
        hq();
        this.jl.hp(d() ? "landingpage_endcard" : z2 ? "reward_endcard" : "fullscreen_endcard");
        ud udVar = new ud(this.hp);
        this.f27826s = udVar;
        udVar.l(this.eb).hp(this.f27823l).l(this.f27823l.j()).j(this.f27823l.w_()).jx(z2 ? 7 : 5).hp(this.cx).w(ky.sz(this.f27823l)).hp(this.eb).l(s.hp(this.f27823l)).hp(this.f27825q).hp(this.jx).hp(map).hp(this.f27819b).hp(view).jx(this.hp.hp()).hp(this.f27841o);
        this.f27826s.hp(this.f27840d);
    }

    @Override // com.byazt.xx.hp
    public void hp(DownloadListener downloadListener, com.byazt.go.l lVar) {
        if (this.eb == null) {
            return;
        }
        com.byazt.cf.j jVar = new com.byazt.cf.j(this.hp, this.f27826s, this.f27823l.j(), this.jl) { // from class: com.byazt.xx.l.3
            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                e eVar = l.this.f27825q;
                if (eVar != null) {
                    eVar.eb();
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                e eVar = l.this.f27825q;
                if (eVar != null) {
                    eVar.a();
                }
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i2, String str, String str2) throws JSONException {
                l.this.xs.set(false);
                l.this.vv = this.f18835s;
                l lVar2 = l.this;
                lVar2.zy = i2;
                lVar2.f27822k = str;
                if (lVar2.f27825q != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", i2);
                        jSONObject.put("msg", str);
                        l.this.f27825q.l(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i2, str, str2);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) throws JSONException {
                if (l.this.f27825q != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", webResourceResponse.getStatusCode());
                        jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        l.this.f27825q.l(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (l.this.f27820e.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        l.this.xs.set(false);
                        l.this.vv = this.f18835s;
                    }
                    if (webResourceResponse != null) {
                        l.this.zy = webResourceResponse.getStatusCode();
                        l.this.f27822k = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                WebResourceResponse webResourceResponseHp = l.this.hp(str);
                return webResourceResponseHp != null ? webResourceResponseHp : super.shouldInterceptRequest(webView, str);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String string = webResourceRequest.getUrl().toString();
                    l lVar2 = l.this;
                    if (lVar2.f27823l != null) {
                        WebResourceResponse webResourceResponseHp = lVar2.hp(string);
                        if (webResourceResponseHp != null) {
                            return webResourceResponseHp;
                        }
                        if (TextUtils.isEmpty(l.this.f27823l.jx())) {
                            return super.shouldInterceptRequest(webView, string);
                        }
                        l.this.f27829w++;
                        return super.shouldInterceptRequest(webView, string);
                    }
                    return super.shouldInterceptRequest(webView, string);
                } catch (Throwable th) {
                    u.hp("CommonEndCard", "shouldInterceptRequest error1", th);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) throws JSONException {
                if (webResourceRequest.isForMainFrame()) {
                    l.this.xs.set(false);
                    l.this.vv = this.f18835s;
                }
                if (l.this.f27825q != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", webResourceError.getErrorCode());
                        jSONObject.put("msg", webResourceError.getDescription());
                        l.this.f27825q.l(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                l.this.zy = webResourceError.getErrorCode();
                l.this.f27822k = String.valueOf(webResourceError.getDescription());
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        };
        this.gu = jVar;
        this.eb.setWebViewClient(jVar);
        hp(this.eb);
        this.eb.setBackgroundColor(-1);
        this.eb.setDisplayZoomControls(false);
        this.eb.setWebChromeClient(new com.byazt.cf.jx(this.f27826s, this.jl) { // from class: com.byazt.xx.l.4
            @Override // com.byazt.cf.jx, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i2) {
                super.onProgressChanged(webView, i2);
            }
        });
        this.eb.setDownloadListener(downloadListener);
    }

    @Override // com.byazt.xx.hp
    public void hp(int i2) throws JSONException {
        super.hp(i2);
        hp(true);
        jx(true);
        hp(false, true);
    }

    public void hp(double d2, double d3, double d4, double d5, String str) throws JSONException {
        if (this.f27826s == null || this.hp.isFinishing()) {
            return;
        }
        if (!this.f27827u) {
            this.wv = d2;
            this.hq = d3;
            this.nu = d5;
            this.ud = d4;
            this.dy = str;
            this.lv = true;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", d2);
            jSONObject.put("y", d3);
            jSONObject.put("width", d4);
            jSONObject.put("height", d5);
            jSONObject.put("videoFrameKey", str);
            this.f27826s.l("endcardTransform", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void hp(k kVar) {
        double dQ;
        double d2;
        double d3;
        double d4;
        if (ea.b(this.f27823l)) {
            double d5 = this.sz;
            double d6 = this.f27824n;
            if (kVar == null || !this.hp.y().eb() || (kVar.s() == 0.0d && kVar.q() == 0.0d)) {
                dQ = d6;
                d2 = 0.0d;
                d3 = d5;
                d4 = 0.0d;
            } else {
                double dA = kVar.a();
                double dEb = kVar.eb();
                double dS = kVar.s();
                dQ = kVar.q();
                d2 = dEb;
                d4 = dA;
                d3 = dS;
            }
            hp(d4, d2, d3, dQ, null);
            if (this.hp.y() instanceof w) {
                return;
            }
            final double d7 = dQ;
            final double d8 = d3;
            final double d9 = d2;
            final double d10 = d4;
            com.byazt.xm.l.hp(2147483647L, df.hp(this.f27823l), new l.InterfaceC0408l() { // from class: com.byazt.xx.l.5
                @Override // com.byazt.xm.l.InterfaceC0408l
                public void hp(Bitmap bitmap) throws JSONException {
                    if (bitmap != null) {
                        String strValueOf = String.valueOf(bitmap.hashCode());
                        l.this.di.put(strValueOf, bitmap);
                        l.this.hp(d10, d9, d8, d7, strValueOf);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebResourceResponse hp(String str) {
        if (!str.startsWith("csjclientimg://")) {
            return null;
        }
        Bitmap bitmap = this.di.get(str.replace("csjclientimg://", ""));
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    }
}
