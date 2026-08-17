package com.byazt.ay;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.TextView;
import com.byazt.ykc.SSWebView;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 525, 38})
/* loaded from: classes2.dex */
public class j extends AlertDialog {

    /* renamed from: a, reason: collision with root package name */
    public static volatile AtomicInteger f18370a = new AtomicInteger(0);
    public String eb;
    public SSWebView hp;

    /* renamed from: j, reason: collision with root package name */
    public String f18371j;
    public TextView jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f18372l;

    /* renamed from: w, reason: collision with root package name */
    public hp f18373w;

    public interface hp {
        void hp(Dialog dialog);
    }

    public j(Context context, String str, String str2) {
        super(context);
        this.f18372l = context;
        this.eb = str2;
        this.f18371j = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp() {
        this.hp = (SSWebView) findViewById(2114387839);
        this.jx = (TextView) findViewById(2114387912);
        ((TextView) findViewById(2114387696)).setText(this.eb);
        this.jx.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.j.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j.f18370a.set(0);
                j jVar = j.this;
                hp hpVar = jVar.f18373w;
                if (hpVar != null) {
                    hpVar.hp(jVar);
                }
            }
        });
        setCanceledOnTouchOutside(false);
        this.hp.setWebViewClient(new com.byazt.cf.j(this.f18372l, null, 0 == true ? 1 : 0) { // from class: com.byazt.ay.j.2
            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, WebResourceRequest webResourceRequest) {
                this.f18835s = j.f18370a;
                return super.hp(webView, webResourceRequest);
            }

            @Override // com.byazt.cf.j, android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (webView == null) {
                    return true;
                }
                try {
                    if (TextUtils.isEmpty(str)) {
                        return true;
                    }
                    String scheme = Uri.parse(str).getScheme();
                    if (TextUtils.isEmpty(scheme)) {
                        return true;
                    }
                    String lowerCase = scheme.toLowerCase(Locale.getDefault());
                    if (!lowerCase.contains("http") && !lowerCase.contains("https")) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }

            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, String str) {
                this.f18835s = j.f18370a;
                return super.hp(webView, str);
            }
        });
        this.hp.setJavaScriptEnabled(true);
        this.hp.setDisplayZoomControls(false);
        this.hp.setCacheMode(2);
        this.hp.loadUrl(this.f18371j);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        f18370a.set(0);
        hp hpVar = this.f18373w;
        if (hpVar != null) {
            hpVar.hp(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vi.eb.l(this);
        setContentView(com.byazt.vi.a.y(getContext()));
        hp();
    }

    public j hp(hp hpVar) {
        this.f18373w = hpVar;
        return this;
    }
}
