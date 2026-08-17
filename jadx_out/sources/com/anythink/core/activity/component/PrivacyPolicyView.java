package com.anythink.core.activity.component;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.api.ATSDK;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.p;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public class PrivacyPolicyView extends RelativeLayout implements View.OnClickListener {

    /* renamed from: n, reason: collision with root package name */
    private static String f1547n = "PrivacyPolicyView";

    /* renamed from: a, reason: collision with root package name */
    ViewGroup f1548a;

    /* renamed from: b, reason: collision with root package name */
    LinearLayout f1549b;

    /* renamed from: c, reason: collision with root package name */
    LoadingView f1550c;

    /* renamed from: d, reason: collision with root package name */
    TextView f1551d;

    /* renamed from: e, reason: collision with root package name */
    FrameLayout f1552e;

    /* renamed from: f, reason: collision with root package name */
    WebView f1553f;

    /* renamed from: g, reason: collision with root package name */
    CheckBox f1554g;

    /* renamed from: h, reason: collision with root package name */
    View f1555h;

    /* renamed from: i, reason: collision with root package name */
    TextView f1556i;

    /* renamed from: j, reason: collision with root package name */
    boolean f1557j;

    /* renamed from: k, reason: collision with root package name */
    boolean f1558k;

    /* renamed from: l, reason: collision with root package name */
    String f1559l;

    /* renamed from: m, reason: collision with root package name */
    a f1560m;

    /* renamed from: com.anythink.core.activity.component.PrivacyPolicyView$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                PrivacyPolicyView privacyPolicyView = PrivacyPolicyView.this;
                if (privacyPolicyView.f1553f == null || privacyPolicyView.f1558k) {
                    return;
                }
                privacyPolicyView.f1557j = true;
                String unused = PrivacyPolicyView.f1547n;
                PrivacyPolicyView privacyPolicyView2 = PrivacyPolicyView.this;
                privacyPolicyView2.loadPolicyUrl(privacyPolicyView2.f1559l);
            } catch (Throwable unused2) {
            }
        }
    }

    /* renamed from: com.anythink.core.activity.component.PrivacyPolicyView$2, reason: invalid class name */
    public class AnonymousClass2 extends WebViewClient {
        public AnonymousClass2() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            try {
                String unused = PrivacyPolicyView.f1547n;
                boolean z2 = PrivacyPolicyView.this.f1557j;
                if (PrivacyPolicyView.this.f1559l.equals(str)) {
                    PrivacyPolicyView privacyPolicyView = PrivacyPolicyView.this;
                    if (privacyPolicyView.f1557j) {
                        privacyPolicyView.f1549b.setVisibility(4);
                        PrivacyPolicyView.this.f1548a.setVisibility(0);
                        PrivacyPolicyView.this.f1549b.setVisibility(8);
                        PrivacyPolicyView.this.f1550c.clearAnimation();
                        a aVar = PrivacyPolicyView.this.f1560m;
                        if (aVar != null) {
                            aVar.onPageLoadSuccess();
                        }
                    } else {
                        privacyPolicyView.f1549b.setVisibility(0);
                        PrivacyPolicyView.this.f1550c.clearAnimation();
                        PrivacyPolicyView.this.f1551d.setVisibility(0);
                        PrivacyPolicyView.this.f1548a.setVisibility(8);
                        a aVar2 = PrivacyPolicyView.this.f1560m;
                        if (aVar2 != null) {
                            aVar2.onPageLoadFail();
                        }
                    }
                    PrivacyPolicyView.this.f1558k = false;
                    super.onPageFinished(webView, str);
                }
            } catch (Throwable unused2) {
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            String unused = PrivacyPolicyView.f1547n;
            "onPageStarted:".concat(String.valueOf(str));
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(23)
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            PrivacyPolicyView.this.f1557j = false;
            String unused = PrivacyPolicyView.f1547n;
            webResourceError.getErrorCode();
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            String unused = PrivacyPolicyView.f1547n;
            "shouldOverrideUrlLoading:".concat(String.valueOf(str));
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            PrivacyPolicyView.a(PrivacyPolicyView.this.getContext(), str);
            return true;
        }
    }

    /* renamed from: com.anythink.core.activity.component.PrivacyPolicyView$3, reason: invalid class name */
    public class AnonymousClass3 extends WebChromeClient {
        public AnonymousClass3() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onReceivedTitle(WebView webView, String str) {
            if (!TextUtils.isEmpty(str) && str.toLowerCase().contains("error")) {
                PrivacyPolicyView.this.f1557j = false;
            }
            super.onReceivedTitle(webView, str);
        }
    }

    public interface a {
        void onLevelSelect(int i2);

        void onPageLoadFail();

        void onPageLoadSuccess();
    }

    public PrivacyPolicyView(Context context) {
        super(context);
        this.f1557j = true;
        this.f1558k = false;
        LayoutInflater.from(getContext()).inflate(p.a(getContext(), "privace_policy_layout", "layout"), this);
        this.f1548a = (ViewGroup) findViewById(p.a(getContext(), "policy_content_view", "id"));
        this.f1549b = (LinearLayout) findViewById(p.a(getContext(), "policy_loading_view", "id"));
        this.f1550c = new LoadingView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(p.a(getContext(), 30.0f), p.a(getContext(), 30.0f));
        layoutParams.gravity = 1;
        this.f1550c.setLayoutParams(layoutParams);
        this.f1551d = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = p.a(getContext(), 5.0f);
        this.f1551d.setLayoutParams(layoutParams2);
        this.f1551d.setText("Page failed to load, please try again later.");
        this.f1551d.setTextColor(-8947849);
        this.f1551d.setTextSize(1, 12.0f);
        this.f1549b.addView(this.f1550c);
        this.f1549b.addView(this.f1551d);
        this.f1549b.setOnClickListener(new AnonymousClass1());
        this.f1552e = (FrameLayout) findViewById(p.a(getContext(), "policy_webview_area", "id"));
        WebView webView = new WebView(getContext());
        this.f1553f = webView;
        o.a(webView);
        this.f1552e.addView(this.f1553f, new FrameLayout.LayoutParams(-1, -1));
        WebSettings settings = this.f1553f.getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(false);
            settings.setCacheMode(-1);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(false);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            settings.setPluginState(WebSettings.PluginState.ON);
            settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            settings.setLoadWithOverviewMode(true);
            settings.setUseWideViewPort(true);
        }
        this.f1553f.setWebViewClient(new AnonymousClass2());
        this.f1553f.setWebChromeClient(new AnonymousClass3());
        this.f1554g = (CheckBox) findViewById(p.a(getContext(), "policy_check_box", "id"));
        this.f1555h = findViewById(p.a(getContext(), "policy_agree_view", "id"));
        this.f1556i = (TextView) findViewById(p.a(getContext(), "policy_reject_view", "id"));
        this.f1555h.setOnClickListener(this);
        this.f1556i.setOnClickListener(this);
        int iA = p.a(getContext(), 20.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-13472268);
        gradientDrawable.setCornerRadius(iA);
        this.f1555h.setBackgroundDrawable(gradientDrawable);
        this.f1556i.setText(Html.fromHtml("<u>No,Thanks</u>"));
    }

    private void b() {
        LayoutInflater.from(getContext()).inflate(p.a(getContext(), "privace_policy_layout", "layout"), this);
        this.f1548a = (ViewGroup) findViewById(p.a(getContext(), "policy_content_view", "id"));
        this.f1549b = (LinearLayout) findViewById(p.a(getContext(), "policy_loading_view", "id"));
        this.f1550c = new LoadingView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(p.a(getContext(), 30.0f), p.a(getContext(), 30.0f));
        layoutParams.gravity = 1;
        this.f1550c.setLayoutParams(layoutParams);
        this.f1551d = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = p.a(getContext(), 5.0f);
        this.f1551d.setLayoutParams(layoutParams2);
        this.f1551d.setText("Page failed to load, please try again later.");
        this.f1551d.setTextColor(-8947849);
        this.f1551d.setTextSize(1, 12.0f);
        this.f1549b.addView(this.f1550c);
        this.f1549b.addView(this.f1551d);
        this.f1549b.setOnClickListener(new AnonymousClass1());
        this.f1552e = (FrameLayout) findViewById(p.a(getContext(), "policy_webview_area", "id"));
        WebView webView = new WebView(getContext());
        this.f1553f = webView;
        o.a(webView);
        this.f1552e.addView(this.f1553f, new FrameLayout.LayoutParams(-1, -1));
        WebSettings settings = this.f1553f.getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(false);
            settings.setCacheMode(-1);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(false);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            settings.setPluginState(WebSettings.PluginState.ON);
            settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            settings.setLoadWithOverviewMode(true);
            settings.setUseWideViewPort(true);
        }
        this.f1553f.setWebViewClient(new AnonymousClass2());
        this.f1553f.setWebChromeClient(new AnonymousClass3());
        this.f1554g = (CheckBox) findViewById(p.a(getContext(), "policy_check_box", "id"));
        this.f1555h = findViewById(p.a(getContext(), "policy_agree_view", "id"));
        this.f1556i = (TextView) findViewById(p.a(getContext(), "policy_reject_view", "id"));
        this.f1555h.setOnClickListener(this);
        this.f1556i.setOnClickListener(this);
        int iA = p.a(getContext(), 20.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-13472268);
        gradientDrawable.setCornerRadius(iA);
        this.f1555h.setBackgroundDrawable(gradientDrawable);
        this.f1556i.setText(Html.fromHtml("<u>No,Thanks</u>"));
    }

    private void c() {
        WebSettings settings = this.f1553f.getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(false);
            settings.setCacheMode(-1);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(false);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            settings.setPluginState(WebSettings.PluginState.ON);
            settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            settings.setLoadWithOverviewMode(true);
            settings.setUseWideViewPort(true);
        }
        this.f1553f.setWebViewClient(new AnonymousClass2());
        this.f1553f.setWebChromeClient(new AnonymousClass3());
    }

    public void destory() {
        try {
            removeAllViews();
            ViewGroup viewGroup = this.f1548a;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            FrameLayout frameLayout = this.f1552e;
            if (frameLayout != null) {
                frameLayout.removeView(this.f1553f);
                this.f1553f.removeAllViews();
            }
            WebView webView = this.f1553f;
            if (webView != null) {
                webView.clearHistory();
                this.f1553f.clearCache(true);
                this.f1553f.destroy();
                this.f1553f = null;
            }
        } catch (Throwable unused) {
        }
    }

    public void loadPolicyUrl(String str) {
        if (this.f1558k) {
            return;
        }
        this.f1559l = str;
        if (!p.a(getContext())) {
            this.f1557j = false;
            this.f1549b.setVisibility(0);
            this.f1550c.clearAnimation();
            this.f1551d.setVisibility(0);
            this.f1548a.setVisibility(8);
            a aVar = this.f1560m;
            if (aVar != null) {
                aVar.onPageLoadFail();
                return;
            }
            return;
        }
        this.f1557j = true;
        this.f1549b.setVisibility(0);
        this.f1550c.clearAnimation();
        this.f1550c.startAnimation();
        this.f1551d.setVisibility(8);
        this.f1558k = true;
        if (this.f1559l.equals(this.f1553f.getUrl())) {
            this.f1553f.reload();
        } else {
            this.f1553f.loadUrl(this.f1559l);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f1555h) {
            ATSDK.setGDPRUploadDataLevel(getContext(), 0);
            view.setTag(0);
            a aVar = this.f1560m;
            if (aVar != null) {
                aVar.onLevelSelect(0);
                return;
            }
            return;
        }
        if (view == this.f1556i) {
            ATSDK.setGDPRUploadDataLevel(getContext(), 1);
            view.setTag(1);
            a aVar2 = this.f1560m;
            if (aVar2 != null) {
                aVar2.onLevelSelect(1);
            }
        }
    }

    public void setResultCallbackListener(a aVar) {
        this.f1560m = aVar;
    }

    public static /* synthetic */ void a(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
    }

    private static void b(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
    }
}
