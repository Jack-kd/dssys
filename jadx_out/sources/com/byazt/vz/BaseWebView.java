package com.byazt.vz;

import android.content.Context;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.byazt.ikh.jx;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY, TTAdConstant.LIVE_FEED_URL_CODE})
/* loaded from: classes3.dex */
public class BaseWebView extends WebView {

    /* renamed from: a, reason: collision with root package name */
    public View.OnScrollChangeListener f26730a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f26731b;
    public Boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public Boolean f26732d;
    public Integer di;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f26733e;
    public Boolean eb;
    public Boolean ec;
    public Boolean gu;
    public Map<String, hp> hp;
    public jx.hp hq;

    /* renamed from: j, reason: collision with root package name */
    public DownloadListener f26734j;
    public Boolean jl;
    public WebChromeClient jx;

    /* renamed from: k, reason: collision with root package name */
    public Integer f26735k;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ykc.l f26736l;

    /* renamed from: n, reason: collision with root package name */
    public Boolean f26737n;
    public Boolean ns;

    /* renamed from: o, reason: collision with root package name */
    public Boolean f26738o;

    /* renamed from: q, reason: collision with root package name */
    public Boolean f26739q;

    /* renamed from: s, reason: collision with root package name */
    public Boolean f26740s;
    public Boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public String f26741u;

    /* renamed from: v, reason: collision with root package name */
    public Integer f26742v;
    public WebSettings.LayoutAlgorithm vv;

    /* renamed from: w, reason: collision with root package name */
    public Integer f26743w;
    public Boolean wv;
    public Boolean xs;
    public Boolean zy;

    public BaseWebView(Context context) {
        super(context);
        this.f26730a = null;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        l();
        super.destroy();
    }

    public Boolean getAllowFileAccess() {
        return this.jl;
    }

    public Boolean getAllowFileAccessFromFileURLs() {
        return this.f26733e;
    }

    public Boolean getAllowUniversalAccessFromFileURLs() {
        return this.f26739q;
    }

    public Boolean getAppCacheEnabled() {
        return this.f26731b;
    }

    public Integer getBackgroundColor() {
        return this.f26743w;
    }

    public Boolean getBlockNetworkImage() {
        return this.gu;
    }

    public Boolean getBuiltInZoomControls() {
        return this.ec;
    }

    public Integer getCacheMode() {
        return this.di;
    }

    public WebChromeClient getChromeClient() {
        return this.jx;
    }

    public com.byazt.ykc.l getClient() {
        return this.f26736l;
    }

    public Boolean getDatabaseEnabled() {
        return this.zy;
    }

    public Integer getDefaultFontSize() {
        return this.f26742v;
    }

    public String getDefaultTextEncodingName() {
        return this.f26741u;
    }

    public Boolean getDisplayZoomControls() {
        return this.f26738o;
    }

    public Boolean getDomStorageEnabled() {
        return this.sz;
    }

    public DownloadListener getDownloadListener() {
        return this.f26734j;
    }

    public Boolean getJavaScriptCanOpenWindowsAutomatically() {
        return this.f26737n;
    }

    public Boolean getJavaScriptEnabled() {
        return this.f26732d;
    }

    public Map<String, hp> getJavascriptInterfaces() {
        return this.hp;
    }

    public WebSettings.LayoutAlgorithm getLayoutAlgorithm() {
        return this.vv;
    }

    public Boolean getLoadWithOverviewMod() {
        return this.xs;
    }

    public Boolean getMediaPlaybackRequiresUserGesture() {
        return this.eb;
    }

    public Integer getMixedContentMode() {
        return this.f26735k;
    }

    public Boolean getNetworkAvailable() {
        return this.wv;
    }

    public View.OnScrollChangeListener getOnScrollChangeListener() {
        return this.f26730a;
    }

    public jx.hp getOnTouchEventListener() {
        return this.hq;
    }

    public Boolean getSavePassword() {
        return this.f26740s;
    }

    public Boolean getSupportZoom() {
        return this.ns;
    }

    public Boolean getUseWideViewPort() {
        return this.cx;
    }

    public void hp(Runnable runnable) {
        if (hp()) {
            runnable.run();
        } else {
            e.l().post(runnable);
        }
    }

    public void l() {
        this.hp = null;
        this.f26736l = null;
        this.jx = null;
        this.f26734j = null;
        this.f26730a = null;
        this.f26743w = null;
        this.eb = null;
        this.f26740s = null;
        this.f26739q = null;
        this.f26733e = null;
        this.gu = null;
        this.jl = null;
        this.zy = null;
        this.f26735k = null;
        this.f26742v = null;
        this.f26741u = null;
        this.xs = null;
        this.vv = null;
        this.ec = null;
        this.sz = null;
        this.f26737n = null;
        this.ns = null;
        this.cx = null;
        this.f26731b = null;
        this.di = null;
        this.f26738o = null;
        this.f26732d = null;
        this.wv = null;
        this.hq = null;
    }

    public BaseWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26730a = null;
    }

    public boolean hp() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public BaseWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f26730a = null;
    }

    public void hp(String str, String str2, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("__msg_type", "callback");
            jSONObject2.putOpt("__callback_id", str2);
            jSONObject2.putOpt("__params", jSONObject);
            hp(str, jSONObject2);
        } catch (Throwable unused) {
        }
    }

    private void hp(String str, JSONObject jSONObject) {
        evaluateJavascript("javascript:" + str + "._handleMessageFromToutiao(" + jSONObject + ")", null);
    }

    public void l(String str, String str2, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("__msg_type", NotificationCompat.CATEGORY_EVENT);
            jSONObject2.putOpt("__event_id", str2);
            jSONObject2.putOpt("__params", jSONObject);
            hp(str, jSONObject2);
        } catch (Throwable unused) {
        }
    }
}
