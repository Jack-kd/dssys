package com.byazt.ay;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.hq;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 525, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends AlertDialog {
    public static volatile AtomicInteger hp = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    public hp f18362a;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f18363e;
    public String eb;
    public ImageView gu;

    /* renamed from: j, reason: collision with root package name */
    public TextView f18364j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public SSWebView f18365l;

    /* renamed from: q, reason: collision with root package name */
    public RelativeLayout f18366q;

    /* renamed from: s, reason: collision with root package name */
    public RelativeLayout f18367s;

    /* renamed from: w, reason: collision with root package name */
    public String f18368w;

    public interface hp {
        void hp(Dialog dialog);
    }

    public gu(Context context, String str) {
        super(context);
        this.eb = str;
        this.jx = context;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        hp.set(0);
        hp hpVar = this.f18362a;
        if (hpVar != null) {
            hpVar.hp(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vi.eb.l(this);
        setContentView(com.byazt.vi.a.as(this.jx));
        l();
        hp();
    }

    public void hp() {
        String strVg = sz.l().vg();
        if (TextUtils.isEmpty(strVg)) {
            this.f18368w = "https://www.pangle.cn/privacy/partner";
        } else {
            this.f18368w = strVg;
        }
        if (TextUtils.isEmpty(this.eb)) {
            return;
        }
        if (this.f18368w.contains("?")) {
            this.f18368w += "&ad_info=" + this.eb;
            return;
        }
        this.f18368w += "?ad_info=" + this.eb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void l() {
        this.f18365l = (SSWebView) findViewById(2114387763);
        TextView textView = (TextView) findViewById(2114387652);
        this.f18364j = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.gu.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (gu.this.f18362a != null) {
                    gu.this.f18362a.hp(gu.this);
                }
            }
        });
        setCanceledOnTouchOutside(false);
        this.f18365l.setWebViewClient(new com.byazt.cf.j(this.jx, null, 0 == true ? 1 : 0) { // from class: com.byazt.ay.gu.2
            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, WebResourceRequest webResourceRequest) {
                this.f18835s = gu.hp;
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
                    String lowerCase = scheme.toLowerCase(Locale.US);
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
                this.f18835s = gu.hp;
                return super.hp(webView, str);
            }
        });
        this.f18365l.setJavaScriptEnabled(true);
        this.f18365l.setDisplayZoomControls(false);
        this.f18365l.setCacheMode(2);
        this.f18365l.loadUrl(this.f18368w);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2114387883);
        this.f18367s = relativeLayout;
        relativeLayout.setVisibility(0);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(2114387894);
        this.f18366q = relativeLayout2;
        relativeLayout2.setVisibility(8);
        this.f18364j.setVisibility(8);
        this.f18363e = (ImageView) findViewById(2114387813);
        this.gu = (ImageView) findViewById(2114387836);
        this.f18363e.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.gu.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (gu.this.f18362a != null) {
                    gu.this.f18362a.hp(gu.this);
                    gu.hp.set(0);
                }
            }
        });
        this.gu.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.gu.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    ((ClipboardManager) gu.this.jx.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, gu.this.f18368w));
                    hq.hp(gu.this.jx, "链接复制成功", 1);
                } catch (Throwable unused) {
                    hq.hp(gu.this.jx, "链接复制失败", 1);
                }
            }
        });
    }

    public gu hp(hp hpVar) {
        this.f18362a = hpVar;
        return this;
    }
}
