package com.octopus.ad.internal.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.C;
import com.octopus.ad.R;
import com.octopus.ad.d.b.f;
import com.octopus.ad.internal.c.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.utilities.ViewUtil;
import java.util.LinkedList;

/* loaded from: classes4.dex */
public class BrowserAdActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static LinkedList<WebView> f34160a = new LinkedList<>();

    /* renamed from: b, reason: collision with root package name */
    private int f34161b;

    /* renamed from: c, reason: collision with root package name */
    private WebView f34162c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f34163d;

    @Override // android.app.Activity
    public void onBackPressed() {
        f.a("OctopusAd", "...........................backPressed...........................");
        WebView webView = this.f34162c;
        if (webView == null || !webView.canGoBack()) {
            a();
        } else {
            this.f34162c.goBack();
            f.a("OctopusAd", " mWebView.goBack()");
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.oct_activity_in_app_browser);
        WebView webViewPoll = f34160a.poll();
        this.f34162c = webViewPoll;
        if (webViewPoll == null) {
            a();
            return;
        }
        webViewPoll.getSettings();
        this.f34161b = getIntent().getIntExtra("REPEAT_NUM", 0);
        this.f34163d = (TextView) findViewById(R.id.tv_title);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        getWindow().setAttributes(attributes);
        WebView webView = (WebView) findViewById(R.id.web_view);
        webView.getSettings().setSavePassword(false);
        ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
        ViewGroup viewGroup = (ViewGroup) webView.getParent();
        int iIndexOfChild = viewGroup.indexOfChild(webView);
        viewGroup.removeView(webView);
        ViewUtil.removeChildFromParent(this.f34162c);
        this.f34162c.setLayoutParams(layoutParams);
        this.f34162c.getSettings().setUseWideViewPort(true);
        this.f34162c.getSettings().setLoadWithOverviewMode(true);
        WebView.setWebContentsDebuggingEnabled(false);
        viewGroup.addView(this.f34162c, iIndexOfChild);
        final ProgressBar progressBar = (ProgressBar) findViewById(R.id.progress_bar);
        this.f34162c.setDownloadListener(new DownloadListener() { // from class: com.octopus.ad.internal.activity.BrowserAdActivity.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                try {
                    BrowserAdActivity.this.f34162c.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    BrowserAdActivity.this.a();
                } catch (Exception e2) {
                    f.a("OctopusAd", "An Exception Caught", e2);
                }
            }
        });
        this.f34162c.setWebViewClient(new WebViewClient() { // from class: com.octopus.ad.internal.activity.BrowserAdActivity.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView webView2, RenderProcessGoneDetail renderProcessGoneDetail) {
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                if (str.startsWith("http")) {
                    return false;
                }
                BrowserAdActivity.this.a(str);
                return true;
            }
        });
        this.f34162c.setWebChromeClient(new WebChromeClient() { // from class: com.octopus.ad.internal.activity.BrowserAdActivity.3
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i2) {
                if (i2 < 100 && progressBar.getVisibility() == 8) {
                    progressBar.setVisibility(0);
                }
                progressBar.setProgress(i2);
                if (i2 == 100) {
                    progressBar.setVisibility(8);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView2, String str) {
                super.onReceivedTitle(webView2, str);
                if (BrowserAdActivity.this.f34163d == null || TextUtils.isEmpty(str) || str.startsWith("http")) {
                    return;
                }
                BrowserAdActivity.this.f34163d.setText(str);
            }
        });
        ((ImageView) findViewById(R.id.close_iv)).setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.BrowserAdActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BrowserAdActivity.this.a();
            }
        });
    }

    @Override // android.app.Activity
    public void onDestroy() {
        q.a().f35022m.remove("dpForbid");
        WebView webView = this.f34162c;
        if (webView != null) {
            webView.setDownloadListener(null);
            this.f34162c.setWebChromeClient(null);
            this.f34162c.setWebViewClient(null);
            ViewUtil.removeChildFromParent(this.f34162c);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        Uri uri = p.a(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            startActivity(intent);
            if (this.f34161b == 0) {
                a();
            }
            this.f34161b--;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f34161b != 100) {
            finish();
        }
    }
}
