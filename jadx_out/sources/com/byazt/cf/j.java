package com.byazt.cf;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byakv.z.SoftDecTool;
import com.byazt.jdb.a;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.jz.ud;
import com.byazt.wx.w;
import com.byazt.xci.mp;
import com.byazt.xci.r;
import com.byazt.xci.ud;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.e;
import com.byazt.ymw.eb;
import com.byazt.ymw.k;
import com.byazt.ymw.l;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.zn.b;
import com.byazt.zn.dy;
import com.byazt.zn.kg;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.sigmob.sdk.base.n;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 864, 38})
/* loaded from: classes2.dex */
public class j extends WebViewClient implements SSWebView.jx {
    public static final HashSet<String> gu;
    public com.byazt.qg.j hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f18832j;
    public final Context jx;

    /* renamed from: l, reason: collision with root package name */
    public final ud f18833l;

    /* renamed from: w, reason: collision with root package name */
    public a f18836w;

    /* renamed from: a, reason: collision with root package name */
    public boolean f18830a = true;
    public boolean eb = true;

    /* renamed from: s, reason: collision with root package name */
    public volatile AtomicInteger f18835s = new AtomicInteger(0);

    /* renamed from: q, reason: collision with root package name */
    public long f18834q = -1;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18831e = false;

    static {
        HashSet<String> hashSet = new HashSet<>();
        gu = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    public j(Context context, ud udVar, String str) {
        this.jx = context;
        this.f18833l = udVar;
        this.f18832j = str;
    }

    private boolean hp(Uri uri) throws IOException {
        File fileL = eb.l(sz.getContext(), false, null);
        if (uri != null) {
            try {
                String lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment != null) {
                    File canonicalFile = new File(fileL, lastPathSegment).getCanonicalFile();
                    if (canonicalFile.exists()) {
                        if (!canonicalFile.getPath().startsWith(fileL.toString())) {
                            return true;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static String l(String str) {
        int iLastIndexOf;
        String strSubstring;
        if (str == null || (iLastIndexOf = str.lastIndexOf(46)) < 0 || iLastIndexOf == str.length() - 1 || (strSubstring = str.substring(iLastIndexOf)) == null || !gu.contains(strSubstring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/" + strSubstring;
    }

    public void jx() {
        this.f18831e = true;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        a aVar = this.f18836w;
        if (aVar != null) {
            aVar.hp(webView);
        }
        if (webView != null && this.f18830a) {
            try {
                String strHp = l.hp(sz.l().su(), this.f18832j);
                if (!TextUtils.isEmpty(strHp)) {
                    k.hp(webView, strHp);
                }
            } catch (Throwable unused) {
            }
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        a aVar = this.f18836w;
        if (aVar != null) {
            aVar.hp(webView, str, bitmap);
        }
        if (this.eb) {
            l.hp(this.jx).hp(true).hp(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
        a aVar = this.f18836w;
        if (aVar != null) {
            aVar.hp(i2, str, str2, l(str2));
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(21)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.f18836w == null || webResourceResponse == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String str = "";
        String string = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (requestHeaders.containsKey("Accept")) {
            str = requestHeaders.get("Accept");
        } else if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.f18836w.hp(webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), string, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable unused) {
            }
        }
        if (this.f18836w != null) {
            int primaryError = 0;
            String str = "SslError: unknown";
            String url = null;
            if (sslError != null) {
                try {
                    primaryError = sslError.getPrimaryError();
                    str = "SslError: " + String.valueOf(sslError);
                    url = sslError.getUrl();
                } catch (Throwable unused2) {
                }
            }
            this.f18836w.hp(primaryError, str, url, l(url));
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        if (renderProcessGoneDetail.didCrash()) {
            u.l("WebChromeClient", "The WebView rendering process crashed!");
            if (webView != null) {
                ViewGroup viewGroup = (ViewGroup) webView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(webView);
                }
                webView.destroy();
                w.hp().l();
            }
            return true;
        }
        u.l("WebChromeClient", "System killed the WebView rendering process to reclaim memory. Recreating...");
        if (webView != null) {
            ViewGroup viewGroup2 = (ViewGroup) webView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(webView);
            }
            webView.destroy();
            w.hp().l();
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest != null && hp(webResourceRequest.getUrl())) {
            return null;
        }
        WebResourceResponse webResourceResponseShouldInterceptRequest = super.shouldInterceptRequest(webView, webResourceRequest);
        if (this.hp != null) {
            webResourceResponseShouldInterceptRequest = this.hp.hp(webView, new com.byazt.qg.l(webResourceRequest, null), webResourceResponseShouldInterceptRequest);
        }
        if (hp(webView, webResourceRequest)) {
            return new WebResourceResponse("", "", null);
        }
        Set<ud.jx> setHp = kg.hp().hp(webResourceRequest.getUrl().toString());
        if (setHp == null || setHp.isEmpty()) {
            return webResourceResponseShouldInterceptRequest;
        }
        kg kgVarHp = kg.hp();
        String string = webResourceRequest.getUrl().toString();
        a aVar = this.f18836w;
        return kgVarHp.hp(webResourceResponseShouldInterceptRequest, string, setHp, aVar != null ? aVar.s() : null);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.byazt.jz.ud udVar;
        hp(str);
        try {
        } catch (Exception e2) {
            com.byazt.lf.k.hp().hp("wb_loading", e2);
            com.byazt.jz.ud udVar2 = this.f18833l;
            if (udVar2 != null && udVar2.q()) {
                return true;
            }
        }
        if (hp(webView, str)) {
            return true;
        }
        com.byazt.qg.j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(webView, str);
        }
        Uri uri = Uri.parse(str);
        String lowerCase = uri.getScheme().toLowerCase();
        if ("bytedance".equals(lowerCase)) {
            com.byazt.zn.sz.hp(uri, this.f18833l);
            return true;
        }
        if (s.u().xh() != null && ((Boolean) s.u().xh().apply(com.byazt.wi.j.hp().hp(15).hp(Boolean.class).hp(0, new dy().hp(ContentProviderManager.PROVIDER_URI, uri)).l())).booleanValue()) {
            com.byazt.jz.ud udVar3 = this.f18833l;
            boolean zHp = (udVar3 == null || udVar3.s() == null) ? false : com.byazt.hy.jx.hp(uri, this.f18833l.s(), this.jx, this.f18833l.wv(), hashCode());
            com.byazt.jz.l.hp().put("is_landing_page_open_market", true);
            if (zHp) {
                return true;
            }
        }
        if (!vv.hp(str) && (udVar = this.f18833l) != null && udVar.s() != null) {
            String strWv = this.f18833l.wv();
            mp mpVarS = this.f18833l.s();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            HashMap map = new HashMap();
            map.put(n.f36449l, "TTWebViewClient");
            map.put(NativeModel.JSON_KEY_SCHEME, lowerCase);
            com.byazt.jdb.j.hp(mpVarS, strWv, (Map<String, Object>) map, true);
            if (!ky.o()) {
                try {
                    ComponentName componentNameResolveActivity = intent.resolveActivity(this.jx.getPackageManager());
                    if (componentNameResolveActivity == null || !componentNameResolveActivity.getPackageName().equals(this.jx.getPackageName())) {
                        if ((intent.getFlags() & MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO) == 0) {
                            hp(this.jx, intent, mpVarS, strWv);
                        } else {
                            com.byazt.jdb.j.hp(mpVarS, strWv, (Throwable) new RuntimeException("webview client intent flag error"), true, false);
                        }
                    }
                } catch (Throwable th) {
                    com.byazt.jdb.j.hp(mpVarS, strWv, th, true, false);
                }
            } else if (ky.hp(intent)) {
                hp(this.jx, intent, mpVarS, strWv);
            } else {
                com.byazt.jdb.j.hp(mpVarS, strWv, (Throwable) new RuntimeException("query is true,install is false"), true, false);
            }
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.f18836w == null || webResourceError == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String str = "";
        String string = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (requestHeaders.containsKey("Accept")) {
            str = requestHeaders.get("Accept");
        } else if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.f18836w.hp(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), string, str);
    }

    public boolean hp(WebView webView, WebResourceRequest webResourceRequest) {
        return r.hp(webView, this.f18835s, this.f18833l, webResourceRequest, false, l()) && !(this instanceof com.byazt.qk.eb);
    }

    public boolean hp(WebView webView, String str) {
        return r.hp(webView, this.f18835s, this.f18833l, str, false, l()) && !(this instanceof com.byazt.qk.eb);
    }

    private void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.contains("weixin://wap/pay") || str.contains("weixin://dl/business/?ticket") || str.contains("alipays://platformapi/startapp?appId")) {
            com.byazt.jdb.j.jx(this.f18833l.s(), "landingpage", "lp_pay");
        }
    }

    public boolean l() {
        return System.currentTimeMillis() - this.f18834q < ((long) sz.l().uj());
    }

    public void l(boolean z2) {
        if (!z2 || this.f18831e) {
            this.f18834q = System.currentTimeMillis();
        }
    }

    public j(Context context, com.byazt.jz.ud udVar, String str, a aVar) {
        this.jx = context;
        this.f18833l = udVar;
        this.f18832j = str;
        this.f18836w = aVar;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (str != null && hp(Uri.parse(str))) {
            return null;
        }
        WebResourceResponse webResourceResponseShouldInterceptRequest = super.shouldInterceptRequest(webView, str);
        if (this.hp != null) {
            webResourceResponseShouldInterceptRequest = this.hp.hp(webView, new com.byazt.qg.l(null, str), webResourceResponseShouldInterceptRequest);
        }
        if (hp(webView, str)) {
            return new WebResourceResponse("", "", null);
        }
        Set<ud.jx> setHp = kg.hp().hp(str);
        if (setHp == null || setHp.isEmpty()) {
            return webResourceResponseShouldInterceptRequest;
        }
        kg kgVarHp = kg.hp();
        a aVar = this.f18836w;
        return kgVarHp.hp(webResourceResponseShouldInterceptRequest, str, setHp, aVar != null ? aVar.s() : null);
    }

    private void hp(Context context, Intent intent, final mp mpVar, final String str) {
        com.byazt.ymw.l.hp(context, intent, new l.hp() { // from class: com.byazt.cf.j.1
            @Override // com.byazt.ymw.l.hp
            public void hp() throws JSONException {
                com.byazt.jdb.j.hp(mpVar, str, (Throwable) null, true, true);
                com.byazt.jdb.s.hp().hp(mpVar, str, true, false, null);
            }

            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) throws JSONException {
                com.byazt.jdb.j.hp(mpVar, str, th, true, false);
            }
        }, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
    }

    @Override // com.byazt.ykc.SSWebView.jx
    public void hp(boolean z2) {
        com.byazt.jz.ud udVar = this.f18833l;
        if (udVar != null) {
            udVar.jx(z2);
        }
    }

    @Override // com.byazt.ykc.SSWebView.jx
    public void hp(MotionEvent motionEvent) {
        mp mpVarS;
        JSONObject jSONObjectQ_;
        com.byazt.jz.ud udVar = this.f18833l;
        if (udVar == null || (mpVarS = udVar.s()) == null || (jSONObjectQ_ = mpVarS.q_()) == null) {
            return;
        }
        final int iOptInt = jSONObjectQ_.optInt("rit", 0);
        int toolType = motionEvent.getToolType(0);
        if (motionEvent.getActionMasked() == 0) {
            b.hp(motionEvent);
            if (toolType == 0) {
                e.hp().post(new Runnable() { // from class: com.byazt.cf.j.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SoftDecTool.codeIdCountMap.put(Integer.valueOf(iOptInt), Integer.valueOf(SoftDecTool.codeIdCountMap.getOrDefault(Integer.valueOf(iOptInt), 0).intValue() + 1));
                    }
                });
            }
        }
    }

    public j(Context context, com.byazt.jz.ud udVar, String str, a aVar, com.byazt.qg.j jVar) {
        this.jx = context;
        this.f18833l = udVar;
        this.f18832j = str;
        this.f18836w = aVar;
        this.hp = jVar;
    }
}
