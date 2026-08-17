package com.baidu.oauth.sdkbqt.auth;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class x extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f11840a;

    public x(i iVar) {
        this.f11840a = iVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (o.g.h(this.f11840a.getContext()) && this.f11840a.f11797e != null && this.f11840a.f11797e.getVisibility() != 4) {
            this.f11840a.f11797e.setVisibility(4);
        }
        if (this.f11840a.f11795c != null) {
            this.f11840a.loadUrl("javascript:prompt(JSON.stringify({action:{name:'action_set_title',params:[document.title, 'prompt_on_cancel', 'prompt_on_cancel']}}));");
        }
        this.f11840a.f11804l.removeCallbacks(this.f11840a.f11805m);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        if (!o.g.h(this.f11840a.getContext()) && !str.startsWith("javascript:")) {
            this.f11840a.L();
        }
        this.f11840a.f11805m.b(str);
        this.f11840a.f11804l.postDelayed(this.f11840a.f11805m, this.f11840a.f11803k);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
        this.f11840a.J();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f11840a.J();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) throws JSONException {
        o.d.b(i.f11793r, "override the loading url that is " + str);
        if (TextUtils.isEmpty(str) || !str.contains(C1121b.b().f())) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        HashMap mapE = o.g.e(str.substring(str.indexOf("#") + 1, str.length()));
        s.d dVar = new s.d();
        if (mapE.containsKey("error")) {
            dVar.c(-204);
            dVar.d((String) mapE.get("error_description"));
            this.f11840a.f11807o.onFailure(dVar);
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("code", mapE.get("code"));
                jSONObject.put("state", mapE.get("state"));
                jSONObject.put("showLogin", this.f11840a.f11800h ? "1" : "0");
                jSONObject.put("finishLogin", "1");
                dVar.f52747o = jSONObject;
                dVar.c(0);
                this.f11840a.f11807o.onSuccess(dVar);
            } catch (JSONException e2) {
                o.d.c(e2);
                dVar.c(-201);
                this.f11840a.f11807o.onFailure(dVar);
            }
        }
        this.f11840a.v();
        return true;
    }
}
