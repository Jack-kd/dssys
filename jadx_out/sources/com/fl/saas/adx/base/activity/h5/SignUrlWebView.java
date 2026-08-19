package com.fl.saas.adx.base.activity.h5;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.bykv.vk.component.ttvideo.player.C;
import com.fl.saas.adx.base.widget.FLCommonDialog;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class SignUrlWebView extends WebView {
    private boolean enableQuickApp;
    private boolean hasFastAppJump;
    public LinearLayout layout;
    private WebViewStatus mStatus;
    private ProgressBar progressbar;
    private FLCommonDialog ydCommonDialog;

    public class HsWebChromeClient extends WebChromeClient {
        public HsWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return super.onJsConfirm(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            ProgressBar progressBar;
            int i3;
            if (SignUrlWebView.this.progressbar != null) {
                if (i2 >= 100) {
                    progressBar = SignUrlWebView.this.progressbar;
                    i3 = 8;
                } else if (SignUrlWebView.this.progressbar.getVisibility() != 0) {
                    progressBar = SignUrlWebView.this.progressbar;
                    i3 = 0;
                }
                progressBar.setVisibility(i3);
            }
            super.onProgressChanged(webView, i2);
        }
    }

    public class HsWebViewClient extends WebViewClient {
        public HsWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (SignUrlWebView.this.progressbar != null) {
                SignUrlWebView.this.progressbar.setVisibility(8);
            }
            if (SignUrlWebView.this.mStatus != null) {
                String title = webView.getTitle();
                if (title == null || (webView.getUrl() != null && webView.getUrl().contains(title))) {
                    title = "";
                }
                SignUrlWebView.this.mStatus.onTitle(title);
                SignUrlWebView.this.mStatus.onLoadSuccess();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (SignUrlWebView.this.progressbar != null) {
                SignUrlWebView.this.progressbar.setVisibility(0);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (SignUrlWebView.this.progressbar != null) {
                SignUrlWebView.this.progressbar.setVisibility(8);
            }
            if (SignUrlWebView.this.mStatus != null) {
                SignUrlWebView.this.mStatus.onLoadFailed();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (SignUrlWebView.this.urlCanLoad(webResourceRequest.getUrl().toString().toLowerCase())) {
                return false;
            }
            return SignUrlWebView.this.startThirdPartyApp(webResourceRequest.getUrl());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (SignUrlWebView.this.urlCanLoad(str.toLowerCase())) {
                return false;
            }
            return SignUrlWebView.this.startThirdPartyApp(Uri.parse(str));
        }
    }

    public interface WebViewStatus {
        void onEndScroll();

        void onLoadFailed();

        void onLoadSuccess();

        void onStartScroll();

        void onTitle(String str);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public SignUrlWebView(Context context) {
        super(context);
        this.hasFastAppJump = false;
        initConfig(context);
    }

    public static /* synthetic */ void a(SignUrlWebView signUrlWebView, Uri uri) {
        signUrlWebView.getClass();
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            if (signUrlWebView.isInstall(intent)) {
                signUrlWebView.getContext().startActivity(intent);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private boolean isInstall(Intent intent) {
        try {
            return !getContext().getPackageManager().queryIntentActivities(intent, 65536).isEmpty();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean startThirdPartyApp(final Uri uri) {
        if (uri != null) {
            try {
                String string = uri.toString();
                QuickAppHelper.getInstance().reportUrl(string);
                if (this.hasFastAppJump) {
                    return false;
                }
                if (!(!this.enableQuickApp ? QuickAppHelper.getInstance().urlIntercept(string) : false)) {
                    Intent intent = new Intent("android.intent.action.VIEW", uri);
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    if (isInstall(intent)) {
                        getContext().startActivity(intent);
                    }
                    return true;
                }
                this.hasFastAppJump = true;
                if (QuickAppHelper.getInstance().getQuickAppInterceptionType() == 1) {
                    if (this.ydCommonDialog == null) {
                        this.ydCommonDialog = new FLCommonDialog(getContext()).setTitle("跳转提示").setContent("想要打开“快应用”\n是否允许").setCanDismiss(false).setCancelName("拒绝").setSubmitName("允许");
                    }
                    if (!this.ydCommonDialog.isShowing()) {
                        this.ydCommonDialog.setOnSubmitListener(new FLCommonDialog.OnSubmitListener() { // from class: com.fl.saas.adx.base.activity.h5.a
                            @Override // com.fl.saas.adx.base.widget.FLCommonDialog.OnSubmitListener
                            public final void onClick() {
                                SignUrlWebView.a(this.f30128a, uri);
                            }
                        }).show();
                    }
                }
                return false;
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean urlCanLoad(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://") || str.startsWith("ftp://") || str.startsWith("file://");
    }

    public boolean canScroll() {
        return canScrollVertically(1) || canScrollVertically(-1);
    }

    public ProgressBar getProgressbar() {
        return this.progressbar;
    }

    public void initConfig(Context context) {
        try {
            WebView.setWebContentsDebuggingEnabled(false);
            setLayerType(0, null);
            getSettings().setJavaScriptEnabled(true);
            getSettings().setDomStorageEnabled(true);
            getSettings().setDefaultTextEncodingName("UTF-8");
            getSettings().setSupportZoom(true);
            getSettings().setBuiltInZoomControls(false);
            getSettings().setLoadWithOverviewMode(true);
            getSettings().setSavePassword(false);
            getSettings().setAllowFileAccess(false);
            setVerticalScrollBarEnabled(false);
            setHorizontalScrollBarEnabled(false);
            getSettings().setUseWideViewPort(true);
            getSettings().setMixedContentMode(0);
            this.layout = new LinearLayout(context);
            this.layout.setLayoutParams(new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
            this.layout.setGravity(17);
            ProgressBar progressBar = new ProgressBar(context, null, R.attr.progressBarStyle);
            this.progressbar = progressBar;
            progressBar.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            this.layout.addView(this.progressbar);
            addView(this.layout);
            setWebChromeClient(new HsWebChromeClient());
            setWebViewClient(new HsWebViewClient());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        WebViewStatus webViewStatus;
        int action = motionEvent.getAction();
        if (action == 0) {
            WebViewStatus webViewStatus2 = this.mStatus;
            if (webViewStatus2 != null) {
                webViewStatus2.onStartScroll();
            }
        } else if ((action == 1 || action == 3) && (webViewStatus = this.mStatus) != null) {
            webViewStatus.onEndScroll();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setEnableQuickApp(boolean z2) {
        this.enableQuickApp = z2;
    }

    public void setProgressbar(ProgressBar progressBar) {
        this.progressbar = progressBar;
    }

    public void setStatusListener(WebViewStatus webViewStatus) {
        this.mStatus = webViewStatus;
    }

    public SignUrlWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.hasFastAppJump = false;
        initConfig(context);
    }
}
