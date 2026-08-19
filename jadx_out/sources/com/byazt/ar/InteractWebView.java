package com.byazt.ar;

import android.R;
import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.byazt.jz.d;
import com.byazt.jz.ud;
import com.byazt.ql.k;
import com.byazt.sq.e;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.u;
import com.byazt.yp.hp;
import com.byazt.zn.ky;
import com.byazt.zn.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 1826})
/* loaded from: classes2.dex */
public class InteractWebView extends SSWebView {

    /* renamed from: a, reason: collision with root package name */
    public ud f18097a;
    public Map<String, Object> eb;

    /* renamed from: q, reason: collision with root package name */
    public k f18098q;

    /* renamed from: s, reason: collision with root package name */
    public mp f18099s;

    /* renamed from: w, reason: collision with root package name */
    public Context f18100w;

    public InteractWebView(Context context) {
        super(context);
        this.f18100w = context;
    }

    private void hp(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.byazt.cf.l.hp(this.f18100w).hp(false).hp(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            sz.hp(sSWebView, d.f21856j, mp.w(this.f18099s));
            sSWebView.setMixedContentMode(0);
            sSWebView.setJavaScriptEnabled(true);
            sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.setDomStorageEnabled(true);
            sSWebView.setDatabaseEnabled(true);
            sSWebView.setAppCacheEnabled(true);
            sSWebView.setAllowFileAccess(false);
            sSWebView.setSupportZoom(true);
            sSWebView.setBuiltInZoomControls(true);
            sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            sSWebView.setUseWideViewPort(true);
        } catch (Exception e2) {
            u.l("InteractWebView", e2.toString());
        }
    }

    public void a() {
        Map<String, Object> map = this.eb;
        if (map == null || map.size() <= 0 || !this.eb.containsKey("key_material")) {
            return;
        }
        Object obj = this.eb.get("key_material");
        if (obj instanceof mp) {
            this.f18099s = (mp) obj;
            this.f18097a = (ud) this.eb.get("key_js_object");
            if (this.eb.containsKey("key_data_list") && (this.eb.get("key_data_list") instanceof List)) {
                this.f18097a.l((List<JSONObject>) this.eb.get("key_data_list"));
            }
            this.f18097a.l(this).hp(this.f18099s).hp(ky.l(this.f18099s)).l(this.f18099s.j()).j(this.f18099s.w_()).w(ky.sz(this.f18099s)).hp((SSWebView) this);
        }
    }

    public void eb() {
        setBackgroundColor(0);
        setBackgroundResource(R.color.transparent);
        hp((SSWebView) this);
        if (this.f18099s != null) {
            Context context = this.f18100w;
            ud udVar = this.f18097a;
            mp mpVar = this.f18099s;
            setWebViewClient(new hp(context, udVar, mpVar, mpVar.j()));
        } else {
            setWebViewClient(new SSWebView.hp());
        }
        com.byazt.wx.w.hp().hp(this, this.f18097a);
        setWebChromeClient(new com.byazt.cf.jx(this.f18097a));
    }

    public k getUGenContext() {
        return this.f18098q;
    }

    @Override // com.byazt.vz.BizWebView, com.byazt.ikh.j
    public void loadUrl(String str) {
        super.loadUrl(str);
    }

    @Override // com.byazt.ykc.SSWebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void setUGenContext(k kVar) {
        this.f18098q = kVar;
    }

    public void setUGenExtraMap(Map<String, Object> map) {
        this.eb = map;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 734})
    public static class hp extends com.byazt.cf.j {
        public mp hp;

        public hp(Context context, ud udVar, mp mpVar, String str) {
            super(context, udVar, str);
            this.hp = mpVar;
        }

        @Override // com.byazt.cf.j, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(final WebView webView, String str) {
            try {
                com.byazt.ir.hp hpVarHp = com.byazt.yp.hp.hp(webView, this.hp, str, new hp.InterfaceC0426hp() { // from class: com.byazt.ar.InteractWebView.hp.1
                    @Override // com.byazt.yp.hp.InterfaceC0426hp
                    public boolean hp() {
                        return false;
                    }

                    @Override // com.byazt.yp.hp.InterfaceC0426hp
                    public com.byazt.ir.hp hp(String str2, e.hp hpVar, String str3) {
                        com.byazt.ir.hp hpVar2 = new com.byazt.ir.hp();
                        hpVar2.hp(5);
                        hpVar2.hp(com.byazt.wv.l.l().hp(webView, hpVar, str2));
                        return hpVar2;
                    }
                });
                if (hpVarHp != null && hpVarHp.hp() != null) {
                    return hpVarHp.hp();
                }
            } catch (Throwable unused) {
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // com.byazt.cf.j, android.webkit.WebViewClient
        @RequiresApi(api = 21)
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
            } catch (Throwable th) {
                u.hp("InteractWebView", "shouldInterceptRequest error1", th);
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        }
    }
}
