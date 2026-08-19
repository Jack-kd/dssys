package com.byazt.oa;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes3.dex */
public class di extends hp {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ boolean f23874q = true;
    public String eb;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.ikh.j f23875s;

    @Override // com.byazt.oa.hp
    public Context getContext(e eVar) {
        Context context = eVar.f23885w;
        if (context != null) {
            return context;
        }
        com.byazt.ikh.j jVar = eVar.hp;
        if (jVar != null) {
            View view = jVar.getView();
            if (view != null) {
                return view.getContext();
            }
            WebView webView = eVar.hp.getWebView();
            if (webView != null) {
                return webView.getContext();
            }
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @Override // com.byazt.oa.hp
    public String hp() {
        return this.f23875s.getUrl();
    }

    @Override // com.byazt.oa.hp
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }

    @SuppressLint({"AddJavascriptInterface"})
    public void j() {
        if (!f23874q && this.f23875s == null) {
            throw new AssertionError();
        }
        com.byazt.ikh.j jVar = this.f23875s;
        if (jVar != null) {
            jVar.addJavascriptInterface(this, this.eb);
        }
    }

    @Override // com.byazt.oa.hp
    public void jx() {
        super.jx();
        w();
    }

    public void w() {
        com.byazt.ikh.j jVar = this.f23875s;
        if (jVar != null) {
            jVar.removeJavascriptInterface(this.eb);
        }
    }

    @Override // com.byazt.oa.hp
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public void hp(e eVar) {
        this.f23875s = eVar.hp;
        this.eb = eVar.jx;
        if (eVar.f23879k) {
            return;
        }
        j();
    }

    @Override // com.byazt.oa.hp
    public void hp(String str, u uVar) {
        if (uVar != null && !TextUtils.isEmpty(uVar.f23920s)) {
            String str2 = uVar.f23920s;
            hp(str, String.format("javascript:(function(){   const iframe = document.querySelector(atob('%s'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob('%s'));   }})()", Base64.encodeToString(String.format("iframe[src=\"%s\"", str2).getBytes(), 2), str, Base64.encodeToString(str2.getBytes(), 2)));
            return;
        }
        super.hp(str, uVar);
    }

    @Override // com.byazt.oa.hp
    public void hp(String str) {
        hp(str, "javascript:" + this.eb + "._handleMessageFromToutiao(" + str + ")");
    }

    private void hp(String str, String str2) {
        if (this.f23902w || TextUtils.isEmpty(str2) || this.f23902w) {
            return;
        }
        try {
            this.f23875s.evaluateJavascript(str2, null);
        } catch (Throwable unused) {
        }
    }
}
