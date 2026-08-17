package com.sigmob.sdk.base.common;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import com.sigmob.sdk.base.common.C1283w;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.LinkAction;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.views.C1295g;
import com.sigmob.sdk.base.views.EnumC1306s;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.windad.WindAdRequest;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.base.common.w, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1283w extends AbstractC1262j {

    /* renamed from: g, reason: collision with root package name */
    private static final String f36039g = "w";

    /* renamed from: f, reason: collision with root package name */
    C1295g f36040f;

    /* renamed from: h, reason: collision with root package name */
    private int f36041h;

    /* renamed from: i, reason: collision with root package name */
    private final BaseAdUnit f36042i;

    /* renamed from: j, reason: collision with root package name */
    private RelativeLayout f36043j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f36044k;

    /* renamed from: l, reason: collision with root package name */
    private ImageView f36045l;

    /* renamed from: m, reason: collision with root package name */
    private String f36046m;

    /* renamed from: com.sigmob.sdk.base.common.w$1, reason: invalid class name */
    public class AnonymousClass1 extends com.sigmob.sdk.base.l {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setUrl(str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            ad.a("h5_error", "landpage", i2, str2 + " error:" + str, (WindAdRequest) null, (LoadAdRequest) null, C1283w.this.f36042i, (ad.a) null);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            ad.a("h5_error", "landpage", webResourceResponse.getStatusCode(), webResourceRequest.getUrl().toString(), (WindAdRequest) null, (LoadAdRequest) null, C1283w.this.f36042i, (ad.a) null);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Context context;
            Uri uri;
            String scheme;
            String host;
            try {
                context = webView.getContext();
                uri = Uri.parse(str);
                scheme = uri.getScheme();
                host = uri.getHost();
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
            if (!StringUtil.scheme().equalsIgnoreCase(scheme) || com.sigmob.sdk.base.utils.s.a((CharSequence) host) || (!"track".equals(host) && !"active".equals(host))) {
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) scheme)) {
                    SigmobLog.i("load Url: " + str);
                    webView.loadUrl(str);
                } else {
                    LinkAction linkActionA = C1383c.a(C1283w.this.f36042i.getAdLinkActions(), uri);
                    if (linkActionA == null) {
                        linkActionA = C1383c.a(C1283w.this.f36042i.getSlotAdLinkActions(), uri);
                    }
                    boolean zHasReachedMaxRedirectCount = C1283w.this.f36042i.hasReachedMaxRedirectCount();
                    int quickAppMaxRedirectCount = C1283w.this.f36042i.getQuickAppMaxRedirectCount();
                    if (zHasReachedMaxRedirectCount) {
                        com.sigmob.sdk.base.utils.k.e(C1283w.f36039g, "reach max redirect count(%d).", Integer.valueOf(quickAppMaxRedirectCount));
                        return true;
                    }
                    int redirectCount = C1283w.this.f36042i.getRedirectCount(uri);
                    if (linkActionA != null && linkActionA.redirect_count.intValue() <= redirectCount) {
                        com.sigmob.sdk.base.utils.k.e(C1283w.f36039g, "%s reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                        return true;
                    }
                    if (!com.sigmob.sdk.base.utils.s.a(host, "hapjs.org") || (!scheme.equalsIgnoreCase("http") && !scheme.equalsIgnoreCase("https"))) {
                        C1283w.this.f36042i.addRedirectCount(uri);
                        C1283w.this.f36042i.incrementRedirectCount();
                        com.sigmob.sdk.base.utils.h.a(context, uri, com.sigmob.sdk.base.utils.s.a(host, "hapjs.org") ? com.sigmob.sdk.b.a() : com.sigmob.sdk.base.utils.h.a(context, uri, C1283w.this.f36042i.getMarketPackageNameList()));
                        ad.a(com.sigmob.sdk.base.a.LAND_PAGE, "click", C1283w.this.f36042i, "1", str, C1283w.this.f36046m, 0L, (JSONObject) null);
                        com.sigmob.sdk.base.utils.k.c(C1283w.f36039g, "%s(quick) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                        return true;
                    }
                    webView.loadUrl(str);
                    com.sigmob.sdk.base.utils.k.c(C1283w.f36039g, "%s(302) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                }
                return true;
            }
            String queryParameter = uri.getQueryParameter("data");
            String queryParameter2 = uri.getQueryParameter(NotificationCompat.CATEGORY_EVENT);
            if (!com.sigmob.sdk.base.utils.s.a((CharSequence) queryParameter2) && !com.sigmob.sdk.base.utils.s.a((CharSequence) queryParameter)) {
                final String str2 = new String(Base64.decode(queryParameter, 0), "utf-8");
                ad.a(host, queryParameter2, C1283w.this.f36042i, new ad.a() { // from class: com.sigmob.sdk.base.common.R0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1283w.AnonymousClass1.a(str2, obj);
                    }
                });
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            SigmobLog.i("onReceivedError:" + webResourceError.toString());
            ad.a("h5_error", "landpage", 0, webResourceRequest.getUrl() + " error:" + ((Object) webResourceError.getDescription()), (WindAdRequest) null, (LoadAdRequest) null, C1283w.this.f36042i, (ad.a) null);
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.w$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f36051a;

        static {
            int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
            f36051a = iArr;
            try {
                iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public C1283w(Activity activity, BaseAdUnit baseAdUnit, Bundle bundle, Bundle bundle2, String str, InterfaceC1264k interfaceC1264k) {
        super(activity, str, interfaceC1264k);
        this.f36042i = baseAdUnit;
        if (baseAdUnit != null) {
            n().requestWindowFeature(8);
        } else {
            a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            k().a();
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        int iC = com.sigmob.sdk.base.k.c();
        if (iC > 0) {
            n().getTheme().applyStyle(iC, true);
        }
        n().getWindow().addFlags(1024);
        r();
        p();
        String strMacroProcess = this.f36042i.getMacroCommon().macroProcess(this.f36042i.getMaterial().landing_page);
        String landUrl = this.f36042i.getLandUrl();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) landUrl)) {
            this.f36040f.loadUrl(strMacroProcess);
        } else {
            this.f36040f.loadUrl(landUrl);
        }
        a(IntentActions.ACTION_LANDPAGE_SHOW);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void f() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void g() {
        C1295g c1295g = this.f36040f;
        if (c1295g != null) {
            c1295g.resumeTimers();
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void h() {
        a(IntentActions.ACTION_LANDPAGE_DISMISS);
        ImageView imageView = this.f36045l;
        if (imageView != null) {
            imageView.setOnClickListener(null);
            this.f36045l = null;
        }
        C1295g c1295g = this.f36040f;
        if (c1295g != null) {
            c1295g.destroy();
            this.f36040f = null;
        }
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void i() {
        if (j()) {
            k().a();
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public boolean j() {
        if (!this.f36040f.canGoBack()) {
            return true;
        }
        this.f36040f.goBack();
        return false;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void o() {
    }

    private void p() {
        if (this.f36040f == null) {
            try {
                C1295g c1295g = new C1295g(n());
                this.f36040f = c1295g;
                c1295g.setScrollBarStyle(0);
                this.f36040f.setAdUnit(this.f36042i);
                this.f36040f.setWebViewClient(new AnonymousClass1());
                this.f36040f.setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.base.common.w.2
                    @Override // android.webkit.WebChromeClient
                    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                        if (AnonymousClass4.f36051a[consoleMessage.messageLevel().ordinal()] != 1) {
                            return false;
                        }
                        SigmobLog.e("onConsoleMessage " + consoleMessage.message());
                        ad.a("h5_error", "landpage", 0, consoleMessage.message(), (WindAdRequest) null, (LoadAdRequest) null, C1283w.this.f36042i, (ad.a) null);
                        return false;
                    }

                    @Override // android.webkit.WebChromeClient
                    public void onReceivedTitle(WebView webView, String str) {
                        if (str == null || str.isEmpty() || str.startsWith("http") || str.length() > 10) {
                            if (C1283w.this.f36044k != null) {
                                C1283w.this.f36044k.setVisibility(8);
                            }
                        } else if (C1283w.this.f36044k != null) {
                            C1283w.this.f36044k.setVisibility(0);
                            C1283w.this.f36044k.setText(str);
                        }
                    }
                });
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
                this.f35959d.a();
            }
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        LinearLayout linearLayout = new LinearLayout(n());
        linearLayout.addView(this.f36040f, 0, layoutParams);
        this.f35959d.onSetContentView(linearLayout);
        if (!this.f36042i.isDisable_download_listener()) {
            this.f36040f.setDownloadListener(new DownloadListener() { // from class: com.sigmob.sdk.base.common.Q0
                @Override // android.webkit.DownloadListener
                public final void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                    this.f35636b.a(str, str2, str3, str4, j2);
                }
            });
        }
        this.f36040f.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.base.common.w.3

            /* renamed from: a, reason: collision with root package name */
            MotionEvent f36049a = null;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                SigmobLog.d(motionEvent.toString());
                if (motionEvent.getAction() == 0) {
                    this.f36049a = MotionEvent.obtain(motionEvent);
                    return false;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                MotionEvent motionEvent2 = this.f36049a;
                if (motionEvent2 == null) {
                    C1283w.this.f36046m = SigMacroCommon.getCoordinate(motionEvent, motionEvent, true);
                    return false;
                }
                C1283w.this.f36046m = SigMacroCommon.getCoordinate(motionEvent2, motionEvent, true);
                return false;
            }
        });
    }

    private void q() {
        if (this.f36043j == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            int iDipsToIntPixels = Dips.dipsToIntPixels(20.0f, this.f35956a);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
            layoutParams2.addRule(15);
            layoutParams2.addRule(9);
            int i2 = iDipsToIntPixels / 2;
            layoutParams2.setMargins(i2, i2, 0, 0);
            ImageView imageView = new ImageView(this.f35956a);
            this.f36045l = imageView;
            imageView.setImageBitmap(EnumC1306s.BACK.a());
            this.f36045l.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f36045l.setClickable(true);
            this.f36045l.setId(ClientMetadata.generateViewId());
            this.f36045l.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.common.P0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f35632b.a(view);
                }
            });
            RelativeLayout relativeLayout = new RelativeLayout(l());
            this.f36043j = relativeLayout;
            relativeLayout.setLayoutParams(layoutParams);
            this.f36043j.setBackgroundColor(-1);
            this.f36043j.addView(this.f36045l, layoutParams2);
            TextView textView = new TextView(this.f35956a);
            this.f36044k = textView;
            textView.setTextColor(-16777216);
            this.f36044k.setTextSize(18.0f);
            this.f36044k.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(13);
            this.f36043j.addView(this.f36044k, layoutParams3);
        }
    }

    private void r() {
        ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-1, -1, 17);
        ActionBar actionBar = n().getActionBar();
        if (actionBar == null) {
            return;
        }
        q();
        actionBar.setCustomView(this.f36043j, layoutParams);
        actionBar.setDisplayOptions(16);
        actionBar.setDisplayShowCustomEnabled(true);
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(false);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Configuration configuration) {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        k().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setCoordinate(str);
        }
    }

    private void a(String str, String str2, BaseAdUnit baseAdUnit, final String str3) {
        ad.a(str2, str, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.O0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                C1283w.a(str3, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, String str3, String str4, long j2) {
        C1276q.a(str, this.f36042i);
        ad.a(com.sigmob.sdk.base.a.LAND_PAGE, "click", this.f36042i, "0", str, this.f36046m, 0L, (JSONObject) null);
        SigmobLog.d("onDownloadStart() called with: url = [" + str + "], userAgent = [" + str2 + "], contentDisposition = [" + str3 + "], mimetype = [" + str4 + "], contentLength = [" + j2 + "]");
    }
}
