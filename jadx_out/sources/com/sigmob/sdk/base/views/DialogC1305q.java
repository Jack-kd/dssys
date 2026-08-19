package com.sigmob.sdk.base.views;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.InterfaceC1246b;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.AdPrivacy;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.WindAdRequest;
import java.io.File;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.base.views.q, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class DialogC1305q extends Dialog implements DialogInterface.OnDismissListener, DialogInterface.OnShowListener {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37143a = "q";

    /* renamed from: b, reason: collision with root package name */
    private b f37144b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, String> f37145c;

    /* renamed from: d, reason: collision with root package name */
    private Context f37146d;

    /* renamed from: e, reason: collision with root package name */
    private Window f37147e;

    /* renamed from: f, reason: collision with root package name */
    private C1295g f37148f;

    /* renamed from: g, reason: collision with root package name */
    private final BaseAdUnit f37149g;

    /* renamed from: h, reason: collision with root package name */
    private ImageView f37150h;

    /* renamed from: i, reason: collision with root package name */
    private String f37151i;

    /* renamed from: j, reason: collision with root package name */
    private File f37152j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f37153k;

    /* renamed from: l, reason: collision with root package name */
    private RelativeLayout f37154l;

    /* renamed from: m, reason: collision with root package name */
    private Handler f37155m;

    /* renamed from: n, reason: collision with root package name */
    private Activity f37156n;

    /* renamed from: o, reason: collision with root package name */
    private int f37157o;

    /* renamed from: com.sigmob.sdk.base.views.q$a */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final Map<String, String> f37160a;

        public a(Map<String, String> map) {
            this.f37160a = map;
        }

        @JavascriptInterface
        public String getPrivacyInfo() {
            Map<String, String> map = this.f37160a;
            if (map != null && !map.isEmpty()) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, String> entry : this.f37160a.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                    return jSONObject.toString();
                } catch (Throwable th) {
                    com.sigmob.sdk.base.utils.k.f(DialogC1305q.f37143a, "getPrivacyInfo: error = " + th.getMessage(), new Object[0]);
                }
            }
            return null;
        }
    }

    /* renamed from: com.sigmob.sdk.base.views.q$b */
    public interface b {
        void a();

        void a(Error error);

        void a(String str, String str2);

        void b();
    }

    public DialogC1305q(Context context, BaseAdUnit baseAdUnit) {
        super(context, com.sigmob.sdk.base.k.f());
        this.f37147e = null;
        this.f37151i = "";
        this.f37146d = context.getApplicationContext();
        this.f37149g = baseAdUnit;
        this.f37148f = b();
        this.f37150h = f();
    }

    private ImageView f() {
        ImageView imageView = new ImageView(this.f37146d);
        this.f37150h = imageView;
        imageView.setImageBitmap(EnumC1306s.CLOSE.a());
        this.f37150h.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f37150h.setImageAlpha(127);
        this.f37150h.setClickable(true);
        this.f37150h.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.views.S
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f36688b.a(view);
            }
        });
        return this.f37150h;
    }

    private void g() {
        if (this.f37150h == null) {
            return;
        }
        int iDipsToIntPixels = Dips.dipsToIntPixels(18.0f, this.f37146d);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        int i2 = iDipsToIntPixels / 2;
        layoutParams.setMargins(0, i2, i2, 0);
        this.f37154l.addView(this.f37150h, layoutParams);
    }

    private void h() {
        Window window = getWindow();
        this.f37147e = window;
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        this.f37147e.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        if (this.f37153k) {
            return;
        }
        g();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.f37154l = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        Window window = getWindow();
        this.f37147e = window;
        C1383c.a(window);
        this.f37154l.setBackgroundColor(0);
        setContentView(this.f37154l);
        setOnShowListener(this);
        setOnDismissListener(this);
        if (this.f37148f != null) {
            this.f37154l.addView(this.f37148f, new RelativeLayout.LayoutParams(-1, -1));
        }
        Handler handler = new Handler(Looper.getMainLooper());
        this.f37155m = handler;
        handler.postDelayed(new Runnable() { // from class: com.sigmob.sdk.base.views.T
            @Override // java.lang.Runnable
            public final void run() {
                this.f36689b.i();
            }
        }, 5000L);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        h();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        com.sigmob.sdk.base.utils.k.b(f37143a, "onDismiss", new Object[0]);
        Activity activity = this.f37156n;
        if (activity != null) {
            activity.setRequestedOrientation(this.f37157o);
            this.f37156n = null;
        }
        b bVar = this.f37144b;
        if (bVar != null) {
            bVar.a();
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        com.sigmob.sdk.base.utils.k.b(3, f37143a, "onShow", this.f37149g, null);
        b bVar = this.f37144b;
        if (bVar != null) {
            bVar.b();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        Activity activity;
        super.show();
        Activity activityI = com.sigmob.sdk.b.i();
        this.f37156n = activityI;
        if (com.sigmob.sdk.base.utils.v.b(activityI)) {
            this.f37156n = com.sigmob.sdk.b.c();
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f37156n)) {
            this.f37157o = this.f37156n.getRequestedOrientation();
            Integer orientationInt = ClientMetadata.getInstance().getOrientationInt();
            if (com.sigmob.sdk.base.utils.v.b(orientationInt)) {
                int i2 = 1;
                if (orientationInt.intValue() == 1) {
                    activity = this.f37156n;
                } else {
                    activity = this.f37156n;
                    i2 = 0;
                }
                activity.setRequestedOrientation(i2);
            }
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        b bVar = this.f37144b;
        if (bVar == null) {
            return;
        }
        bVar.a();
    }

    private void e() {
        AdPrivacy adPrivacy;
        if (com.sigmob.sdk.base.utils.v.b(this.f37149g)) {
            MaterialMeta material = this.f37149g.getMaterial();
            if (material == null || (adPrivacy = material.ad_privacy) == null) {
                SigmobLog.d("showWebView: ad_privacy is null.");
            } else {
                if (com.sigmob.sdk.base.utils.f.b(adPrivacy.privacy_template_info)) {
                    this.f37145c = adPrivacy.privacy_template_info;
                }
                if (com.sigmob.sdk.base.utils.s.b(adPrivacy.privacy_template_url)) {
                    String strMd5 = Md5Util.md5(adPrivacy.privacy_template_url);
                    this.f37152j = com.sigmob.sdk.base.utils.n.a(com.sigmob.sdk.base.utils.n.d(com.sigmob.sdk.base.utils.n.f36610b), strMd5 + ".html");
                }
            }
        }
        boolean z2 = com.sigmob.sdk.base.utils.v.b(this.f37152j) && this.f37152j.exists();
        if (com.sigmob.sdk.base.utils.s.b(this.f37151i)) {
            this.f37148f.loadUrl(this.f37151i);
            return;
        }
        this.f37148f.addJavascriptInterface(new a(this.f37145c), "sigPrivacy");
        if (z2) {
            this.f37148f.loadUrl("file://" + this.f37152j.getAbsolutePath());
            return;
        }
        this.f37148f.loadDataWithBaseURL(null, new String(Base64.decode("PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9ImVuIj4KPGhlYWQ+CiAgICA8bWV0YSBjaGFyc2V0PSJVVEYtOCI+CiAgICA8bWV0YSBuYW1lPSJ2aWV3cG9ydCIKICAgICAgICAgIGNvbnRlbnQ9IndpZHRoPWRldmljZS13aWR0aCxpbml0aWFsLXNjYWxlPTEsbWF4aW11bS1zY2FsZT0xLHVzZXItc2NhbGFibGU9MCI+CiAgICA8bWV0YSBjb250ZW50PSJ5ZXMiIG5hbWU9ImFwcGxlLW1vYmlsZS13ZWItYXBwLWNhcGFibGUiPgogICAgPG1ldGEgaHR0cC1lcXVpdj0iWC1VQS1Db21wYXRpYmxlIiBjb250ZW50PSJJRT1lZGdlLGNocm9tZT0xIj4KICAgIDxtZXRhIG5hbWU9InJlbmRlcmVyIiBjb250ZW50PSJ3ZWJraXQiPgogICAgPGxpbmsgcmVsPSJpY29uIiBocmVmPSJkYXRhOmltYWdlL2ljbztiYXNlNjQsYVdOdiI+CiAgICA8dGl0bGU+5paw54mINuimgee0oDY2NjI8L3RpdGxlPgogICAgPHN0eWxlPmh0bWwsIGJvZHksICNhcHAgewogICAgICBtYXJnaW46IDA7CiAgICAgIHdpZHRoOiAxMDB2dzsKICAgICAgaGVpZ2h0OiAxMDB2aDsKICAgICAgb3ZlcmZsb3c6IGhpZGRlbjsKICAgICAgYmFja2dyb3VuZDogdHJhbnNwYXJlbnQgIWltcG9ydGFudDsKICAgIH0KICAgICNlcnJvcl9tYXNrIHsKICAgICAgZGlzcGxheTogbm9uZTsKICAgICAgZmxleC1kaXJlY3Rpb246IGNvbHVtbjsKICAgICAgd2lkdGg6IDEwMHZ3OwogICAgICBoZWlnaHQ6IDEwMHZoOwogICAgICBhbGlnbi1pdGVtczogY2VudGVyOwogICAgICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjsKICAgICAgYmFja2dyb3VuZDogcmdiYSgwLDAsMCwwLjYpOwogICAgfQogICAgI2Vycm9yX21hc2sgLmNsb3NlIHsKICAgICAgei1pbmRleDogOTk5OTsKICAgICAgd2lkdGg6IDI4cHg7CiAgICAgIGhlaWdodDogMjhweDsKICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UzMzEyMjsKICAgICAgY29sb3I6ICNmZmY7CiAgICAgIHBhZGRpbmc6IDRweDsKICAgICAgYm9yZGVyLXJhZGl1czogNTAlOwogICAgICB0b3A6IDEwcHg7CiAgICAgIHJpZ2h0OiAxMHB4OwogICAgfQogICAgI2Vycm9yX21hc2sgLmVycm9yIHsKICAgICAgZm9udC1zaXplOiAyMHB4OwogICAgICBjb2xvcjogI2UzMzEyMjsKICAgICAgbWFyZ2luLWJvdHRvbTogMjBweDsKICAgIH0KICAgIDwvc3R5bGU+CiAgICA8ZGl2IGlkPSJlcnJvcl9tYXNrIj48cCBjbGFzcz0iZXJyb3IiPuWFreimgee0oOWKoOi9veWksei0pX48L3A+CiAgICAgICAgPHN2ZyBjbGFzcz0iY2xvc2UiIGlkPSJjbG9zZSIgZmlsbD0iY3VycmVudENvbG9yIiB0PSIxNTk1NDc1OTMzNzE2IiBjbGFzcz0iaWNvbiIKICAgICAgICAgICAgIHZpZXdCb3g9IjAgMCAxMDI0IDEwMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBwLWlkPSIyMDExIgogICAgICAgICAgICAgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgICAgICAgICA8cGF0aCBkPSJNMTAzLjY4OCA5MzguNTc2YTI4IDI4IDAgMCAxLTE5LjgtNDcuOEw4OTguMTUyIDc2LjUyYTI4IDI4IDAgMSAxIDM5LjYgMzkuNTkyTDEyMy40ODggOTMwLjRhMjcuOTIgMjcuOTIgMCAwIDEtMTkuOCA4LjE3NnoiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTkxNy45NTIgOTM4LjU3NmEyNy45MjggMjcuOTI4IDAgMCAxLTE5LjgtOC4yTDgzLjg4OCAxMTYuMTEyYTI4IDI4IDAgMCAxIDM5LjYtMzkuNTkybDgxNC4yNjQgODE0LjI1NmEyOCAyOCAwIDAgMS0xOS44IDQ3Ljh6Ij48L3BhdGg+CiAgICAgICAgPC9zdmc+CiAgICA8L2Rpdj4KICAgIDxzY3JpcHQ+ZnVuY3Rpb24gaWZyYW1lU2VuZFNyYyhzcmMpIHsKICAgICAgdmFyIGlmcmFtZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2lmcmFtZScpCiAgICAgIGlmcmFtZS5zZXRBdHRyaWJ1dGUoJ3NyYycsIHNyYykKICAgICAgZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKGlmcmFtZSkKICAgICAgaWZyYW1lLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoaWZyYW1lKQogICAgICBpZnJhbWUgPSBudWxsCiAgICB9CgogICAgc2V0VGltZW91dCgoKSA9PiB7CiAgICAgIGlmICghd2luZG93LklOSVQpIHsKICAgICAgICBjb25zdCBlcnJvck1hc2sgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnZXJyb3JfbWFzaycpCiAgICAgICAgY29uc3QgY2xvc2VEb20gPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnY2xvc2UnKQogICAgICAgIGVycm9yTWFzay5zdHlsZS5kaXNwbGF5ID0gJ2ZsZXgnCiAgICAgICAgY2xvc2VEb20ub25jbGljayA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgIGlmcmFtZVNlbmRTcmMoJ3NpZ21vYkFkOi8vY2xvc2VGb3VyRWxlbWVudHMnKQogICAgICAgIH0KICAgICAgfQogICAgfSwgMzAwMCkKICAgIDwvc2NyaXB0PgogICAgPGxpbmsgaHJlZj0iaHR0cHM6Ly9uLnNpZ21vYi5jbi9tcmFpZC9wcm9kLzY2NjIvNjY2Mi5hMzM2ZDVlMS5qcyIgcmVsPSJwcmVsb2FkIiBhcz0ic2NyaXB0Ij4KICAgIDxsaW5rIGhyZWY9Imh0dHBzOi8vbi5zaWdtb2IuY24vbXJhaWQvcHJvZC82NjYyLzY2NjIuYzc1MDZhMDcuY3NzIiByZWw9InByZWxvYWQiIGFzPSJzdHlsZSI+CiAgICA8bGluayBocmVmPSJodHRwczovL24uc2lnbW9iLmNuL21yYWlkL3Byb2QvNjY2Mi82NjYyLmM3NTA2YTA3LmNzcyIgcmVsPSJzdHlsZXNoZWV0Ij4KICAgIDxzY3JpcHQ+CiAgICAgICAgdmFyIHNpZ21vYj13aW5kb3cuc2lnbW9iPXt9LHByaXZhY3lJbmZvPXt9LGlmcmFtZVNlbmRTcmM9ZnVuY3Rpb24oaSl7dmFyIG89ZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgiaWZyYW1lIik7by5zZXRBdHRyaWJ1dGUoInNyYyIsaSksZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKG8pLG8ucGFyZW50Tm9kZS5yZW1vdmVDaGlsZChvKX0saW5pdFByaXZhY3lJbmZvPShzaWdtb2IuZ2V0UHJpdmFjeUluZm89ZnVuY3Rpb24oKXtyZXR1cm4gcHJpdmFjeUluZm99LHNpZ21vYi5jbG9zZUZvdXJFbGVtZW50cz1mdW5jdGlvbigpe2lmcmFtZVNlbmRTcmMoInNpZ21vYkFkOi8vY2xvc2VGb3VyRWxlbWVudHMiKX0sc2lnbW9iLnVzZUN1c3RvbUNsb3NlPWZ1bmN0aW9uKCl7aWZyYW1lU2VuZFNyYygic2lnbW9iQWQ6Ly91c2VDdXN0b21DbG9zZSIpfSxzaWdtb2IuYnV0dG9uQ2xpY2s9ZnVuY3Rpb24oaSxvLG4pe2lmcmFtZVNlbmRTcmMobj8ic2lnbW9iQWQ6Ly9idXR0b25DbGljaz91cmw9IituKyImeD0iK2krIiZ5PSIrbzoic2lnbW9iQWQ6Ly9idXR0b25DbGljaz94PSIraSsiJnk9IitvKX0sZnVuY3Rpb24oKXt3aW5kb3cuc2lnUHJpdmFjeT9wcml2YWN5SW5mbz13aW5kb3cuc2lnUHJpdmFjeS5nZXRQcml2YWN5SW5mbygpOmNvbnNvbGUuZXJyb3IoInNpZ1ByaXZhY3nms6jlhozlpLHotKU9PT0iKX0pO2luaXRQcml2YWN5SW5mbygpOwogICAgPC9zY3JpcHQ+CjwvaGVhZD4KPGJvZHk+CjxkaXYgaWQ9ImFwcCI+PC9kaXY+CjxzY3JpcHQgc3JjPSJodHRwczovL24uc2lnbW9iLmNuL21yYWlkL3Byb2QvNjY2Mi82NjYyLmEzMzZkNWUxLmpzIj48L3NjcmlwdD4KPC9ib2R5Pgo8L2h0bWw+", 0)), "text/html", "utf-8", null);
        com.sigmob.sdk.base.common.ad.a("h5_error", "download_dialog", 0, " error: htmlUrl: " + this.f37151i + " htmlFile " + this.f37152j + " exists " + z2, (WindAdRequest) null, (LoadAdRequest) null, this.f37149g, (ad.a) null);
    }

    public C1295g b() {
        C1295g c1295g = new C1295g(this.f37146d);
        this.f37148f = c1295g;
        c1295g.a(true);
        this.f37148f.setAdUnit(this.f37149g);
        this.f37148f.a((InterfaceC1246b) null);
        this.f37148f.setBackgroundColor(0);
        this.f37148f.setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.base.views.q.1
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                ConsoleMessage.MessageLevel messageLevel = consoleMessage.messageLevel();
                if (messageLevel != null && messageLevel == ConsoleMessage.MessageLevel.ERROR) {
                    SigmobLog.e(DialogC1305q.f37143a + "onConsoleMessage: msg = " + consoleMessage.message());
                    com.sigmob.sdk.base.common.ad.a("h5_error", "download_dialog", 0, consoleMessage.message(), (WindAdRequest) null, (LoadAdRequest) null, DialogC1305q.this.f37149g, (ad.a) null);
                }
                return false;
            }
        });
        this.f37148f.setWebViewClient(new WebViewClient() { // from class: com.sigmob.sdk.base.views.q.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i2, String str, String str2) {
                com.sigmob.sdk.base.common.ad.a("h5_error", "download_dialog", 0, str2 + " error:" + str, (WindAdRequest) null, (LoadAdRequest) null, DialogC1305q.this.f37149g, (ad.a) null);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                com.sigmob.sdk.base.common.ad.a("h5_error", "download_dialog", 0, webResourceRequest.getUrl() + " error:" + webResourceResponse.getStatusCode(), (WindAdRequest) null, (LoadAdRequest) null, DialogC1305q.this.f37149g, (ad.a) null);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                com.sigmob.sdk.base.utils.k.f(DialogC1305q.f37143a, "onReceivedSslError: error = " + sslError.toString(), new Object[0]);
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    return com.sigmob.sdk.base.l.a(webResourceRequest.getUrl());
                } catch (Throwable unused) {
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:25:0x006f  */
            @Override // android.webkit.WebViewClient
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean shouldOverrideUrlLoading(android.webkit.WebView r11, java.lang.String r12) {
                /*
                    Method dump skipped, instructions count: 349
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.views.DialogC1305q.AnonymousClass2.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                com.sigmob.sdk.base.utils.k.f(DialogC1305q.f37143a, "onReceivedError: error = " + webResourceError.toString(), new Object[0]);
                com.sigmob.sdk.base.common.ad.a("h5_error", "download_dialog", 0, webResourceRequest.getUrl() + " error:" + ((Object) webResourceError.getDescription()), (WindAdRequest) null, (LoadAdRequest) null, DialogC1305q.this.f37149g, (ad.a) null);
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                if (com.sigmob.sdk.base.utils.x.a(str)) {
                    return null;
                }
                try {
                    return com.sigmob.sdk.base.l.a(Uri.parse(str));
                } catch (Throwable unused) {
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        return this.f37148f;
    }

    public void c() {
        C1295g c1295g = this.f37148f;
        if (c1295g != null) {
            c1295g.destroy();
            this.f37148f = null;
        }
        Handler handler = this.f37155m;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f37155m = null;
        }
        ImageView imageView = this.f37150h;
        if (imageView != null) {
            com.sigmob.sdk.base.utils.w.a(imageView);
            this.f37150h = null;
        }
        if (this.f37146d != null) {
            this.f37146d = null;
        }
        if (this.f37144b != null) {
            this.f37144b = null;
        }
    }

    public void a(b bVar) {
        this.f37144b = bVar;
    }

    public boolean a() {
        return true;
    }
}
