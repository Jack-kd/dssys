package com.beizi.fusion.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.R;
import com.beizi.fusion.f9;
import com.beizi.fusion.nq;
import com.beizi.fusion.zp;

/* loaded from: classes2.dex */
public class BZLpView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private WebView f16996a;

    /* renamed from: b, reason: collision with root package name */
    private ProgressBar f16997b;

    /* renamed from: c, reason: collision with root package name */
    private d f16998c;

    public class b extends zp {
        public b(Activity activity) {
            super(activity);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            if (BZLpView.this.f16997b == null) {
                return;
            }
            if (i2 < 100 && BZLpView.this.f16997b.getVisibility() == 8) {
                BZLpView.this.f16997b.setVisibility(0);
            }
            BZLpView.this.f16997b.setProgress(i2);
            if (i2 == 100) {
                BZLpView.this.f16997b.setVisibility(8);
            }
        }

        @Override // com.beizi.fusion.zp, android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                BZLpView.this.removeAllViews();
                BZLpView.this.detachedFromWindow();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface d {
        void onDetachedFromWindow();
    }

    public BZLpView(@NonNull Context context) {
        super(context);
        a();
    }

    public void detachedFromWindow() {
        try {
            d dVar = this.f16998c;
            if (dVar != null) {
                dVar.onDetachedFromWindow();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setData(String str) {
        WebView webView;
        try {
            if (TextUtils.isEmpty(str) || (webView = this.f16996a) == null) {
                return;
            }
            webView.loadUrl(str, f9.a());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setOnDetachedFromWindowListener(d dVar) {
        this.f16998c = dVar;
    }

    private void a() {
        try {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.activtiy_beizi_landingpage, (ViewGroup) null);
            viewInflate.setBackgroundColor(Color.parseColor("#FFFFFF"));
            this.f16996a = (WebView) viewInflate.findViewById(R.id.lp_web_view);
            this.f16997b = (ProgressBar) findViewById(R.id.lp_progress_bar);
            nq.c(this.f16996a);
            this.f16996a.setWebViewClient(new a());
            if (getContext() instanceof Activity) {
                this.f16996a.setWebChromeClient(new b((Activity) getContext()));
            }
            ((ImageView) viewInflate.findViewById(R.id.lp_close_iv)).setOnClickListener(new c());
            addView(viewInflate, new RelativeLayout.LayoutParams(-1, -1));
        } catch (Exception unused) {
        }
    }

    public BZLpView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                Uri url = webResourceRequest.getUrl();
                if (url == null) {
                    return false;
                }
                return !url.toString().startsWith("http");
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return !str.startsWith("http");
        }
    }

    public BZLpView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
