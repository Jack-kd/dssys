package com.byazt.ay;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.dth.TTViewStub;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.xh;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 525, 150})
/* loaded from: classes2.dex */
public class q extends AlertDialog {

    /* renamed from: j, reason: collision with root package name */
    public static volatile AtomicInteger f18419j = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    public ImageView f18420a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.ih.l f18421e;
    public ImageView eb;
    public Intent gu;
    public SSWebView hp;
    public String jl;
    public hp jx;

    /* renamed from: k, reason: collision with root package name */
    public TTViewStub f18422k;

    /* renamed from: l, reason: collision with root package name */
    public Context f18423l;

    /* renamed from: q, reason: collision with root package name */
    public TextView f18424q;

    /* renamed from: s, reason: collision with root package name */
    public TextView f18425s;

    /* renamed from: u, reason: collision with root package name */
    public FrameLayout f18426u;

    /* renamed from: v, reason: collision with root package name */
    public TTViewStub f18427v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f18428w;
    public int xs;
    public com.byazt.bl.l zy;

    public interface hp {
        void hp(Dialog dialog);
    }

    public q(Context context, Intent intent) {
        super(context);
        this.xs = 0;
        this.f18423l = context;
        this.gu = intent;
    }

    public static /* synthetic */ int jx(q qVar) {
        int i2 = qVar.xs;
        qVar.xs = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int l(q qVar) {
        int i2 = qVar.xs;
        qVar.xs = i2 - 1;
        return i2;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        f18419j.set(0);
        hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.hp(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        mp mpVar;
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vi.eb.l(this);
        getWindow().clearFlags(131072);
        getWindow().setBackgroundDrawable(new ColorDrawable(-1));
        LinearLayout linearLayout = new LinearLayout(this.f18423l);
        this.f18428w = linearLayout;
        linearLayout.setBackgroundColor(-1);
        this.f18428w.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f18428w.setOrientation(1);
        this.hp = new SSWebView(this.f18423l);
        if (this.gu != null && (mpVar = TTDelegateActivity.hp) != null) {
            this.zy = mpVar.ju();
            this.jl = this.gu.getStringExtra("event_tag");
        }
        setContentView(com.byazt.vi.a.ky(this.f18423l));
        l();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        getWindow().getAttributes().height = xh.w(this.f18423l) - xh.jx(this.f18423l, 50.0f);
    }

    private void jx() {
        TTViewStub tTViewStub;
        this.f18426u = (FrameLayout) findViewById(2114387634);
        this.f18422k = (TTViewStub) findViewById(2114387770);
        this.f18427v = (TTViewStub) findViewById(2114387792);
        this.f18426u.addView(this.hp, new LinearLayout.LayoutParams(-1, -1));
        int iHq = com.byazt.jz.s.u().hq();
        if (iHq == 0) {
            TTViewStub tTViewStub2 = this.f18422k;
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
        } else if (iHq == 1 && (tTViewStub = this.f18427v) != null) {
            tTViewStub.setVisibility(0);
        }
        ImageView imageView = (ImageView) findViewById(2114387705);
        this.f18420a = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.q.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    q.f18419j.set(0);
                    SSWebView sSWebView = q.this.hp;
                    if (sSWebView != null && sSWebView.canGoBack() && q.this.xs > 1) {
                        q.this.hp.goBack();
                        q.l(q.this);
                        return;
                    }
                    q.this.dismiss();
                    q qVar = q.this;
                    hp hpVar = qVar.jx;
                    if (hpVar != null) {
                        hpVar.hp(qVar);
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387704);
        this.eb = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.q.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    q.f18419j.set(0);
                    q.this.dismiss();
                    q qVar = q.this;
                    hp hpVar = qVar.jx;
                    if (hpVar != null) {
                        hpVar.hp(qVar);
                    }
                }
            });
        }
        this.f18425s = (TextView) findViewById(2114387952);
        TextView textView = (TextView) findViewById(2114387627);
        this.f18424q = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.q.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    q.this.hp();
                }
            });
        }
    }

    public void hp() {
        com.byazt.bl.l lVar;
        Context context = this.f18423l;
        if (context == null || (lVar = this.zy) == null) {
            return;
        }
        if (this.f18421e == null) {
            com.byazt.ih.l lVar2 = new com.byazt.ih.l(context, lVar, this.jl, true, com.byazt.ws.l.hp());
            this.f18421e = lVar2;
            com.byazt.jde.jx.hp(this.f18423l, TTDelegateActivity.hp, lVar2);
        }
        this.f18421e.showDislikeDialog();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void l() {
        mp mpVar;
        jx();
        if (this.f18425s != null && (mpVar = TTDelegateActivity.hp) != null && !TextUtils.isEmpty(mpVar.v_())) {
            this.f18425s.setText(TTDelegateActivity.hp.v_());
        }
        com.byazt.cf.l.hp(this.f18423l).hp(false).l(false).hp(this.hp);
        this.hp.setWebViewClient(new com.byazt.cf.j(this.f18423l, null, 0 == true ? 1 : 0) { // from class: com.byazt.ay.q.4
            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, WebResourceRequest webResourceRequest) {
                this.f18835s = q.f18419j;
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
                    q.jx(q.this);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }

            @Override // com.byazt.cf.j
            public boolean hp(WebView webView, String str) {
                this.f18835s = q.f18419j;
                return super.hp(webView, str);
            }
        });
        this.hp.setJavaScriptEnabled(true);
        this.hp.setDisplayZoomControls(false);
        this.hp.setCacheMode(2);
        this.hp.loadUrl("https://phoniex.toutiao.com");
    }

    public q hp(hp hpVar) {
        this.jx = hpVar;
        return this;
    }
}
