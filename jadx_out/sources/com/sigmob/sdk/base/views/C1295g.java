package com.sigmob.sdk.base.views;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.RomUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import com.sigmob.sdk.base.common.InterfaceC1246b;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.views.ae;
import com.sigmob.sdk.base.views.af;
import com.sigmob.sdk.nativead.APKStatusBroadcastReceiver;
import com.sigmob.sdk.videoplayer.C1383c;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: com.sigmob.sdk.base.views.g, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1295g extends WebView {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36971a = "g";

    /* renamed from: b, reason: collision with root package name */
    private static boolean f36972b = false;

    /* renamed from: c, reason: collision with root package name */
    private APKStatusBroadcastReceiver f36973c;

    /* renamed from: d, reason: collision with root package name */
    private WeakReference<InterfaceC1246b> f36974d;

    /* renamed from: e, reason: collision with root package name */
    private BaseAdUnit f36975e;

    /* renamed from: f, reason: collision with root package name */
    private final Set<String> f36976f;

    /* renamed from: g, reason: collision with root package name */
    private final Map<String, String> f36977g;

    /* renamed from: com.sigmob.sdk.base.views.g$1, reason: invalid class name */
    public class AnonymousClass1 implements af.a {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            Activity activityC = com.sigmob.sdk.base.utils.w.c(C1295g.this);
            if (activityC == null) {
                return;
            }
            C1383c.h((Context) activityC);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            Activity activityC = com.sigmob.sdk.base.utils.w.c(C1295g.this);
            if (activityC == null) {
                return;
            }
            C1383c.j(activityC);
        }

        @Override // com.sigmob.sdk.base.views.af.a
        public void a() {
            ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.sigmob.sdk.base.views.O
                @Override // java.lang.Runnable
                public final void run() {
                    this.f36686b.d();
                }
            });
        }

        @Override // com.sigmob.sdk.base.views.af.a
        public void b() {
            ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.sigmob.sdk.base.views.P
                @Override // java.lang.Runnable
                public final void run() {
                    this.f36687b.c();
                }
            });
        }
    }

    public C1295g(Context context) throws Throwable {
        super(context);
        this.f36976f = new HashSet();
        this.f36977g = new HashMap();
        removeJavascriptInterface("searchBoxJavaBridge_");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        a(getSettings());
        if (!f36972b) {
            b(getContext());
            f36972b = true;
        }
        resumeTimers();
        a(context);
    }

    public static void d() {
        CookieManager cookieManager = CookieManager.getInstance();
        if (com.sigmob.sdk.base.i.a().i()) {
            cookieManager.setAcceptCookie(true);
            CookieManager.setAcceptFileSchemeCookies(true);
            return;
        }
        cookieManager.setAcceptCookie(false);
        CookieManager.setAcceptFileSchemeCookies(false);
        cookieManager.removeSessionCookies(null);
        cookieManager.removeAllCookies(null);
        cookieManager.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1246b getListener() {
        WeakReference<InterfaceC1246b> weakReference = this.f36974d;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // android.webkit.WebView
    @SuppressLint({"JavascriptInterface"})
    public void addJavascriptInterface(Object obj, String str) {
        super.addJavascriptInterface(obj, str);
        this.f36976f.add(str);
    }

    public void b() {
        com.sigmob.sdk.base.utils.w.a(this);
        APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = this.f36973c;
        if (aPKStatusBroadcastReceiver != null) {
            aPKStatusBroadcastReceiver.b(aPKStatusBroadcastReceiver);
            this.f36973c = null;
        }
        setWebViewClient(null);
        removeAllViews();
        Iterator<String> it = this.f36976f.iterator();
        while (it.hasNext()) {
            removeJavascriptInterface(it.next());
        }
        this.f36976f.clear();
        setWebChromeClient(null);
        loadUrl("");
        this.f36975e = null;
    }

    public void c() {
        setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.base.views.g.3
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                SigmobLog.i(str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
                SigmobLog.i(str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
                SigmobLog.i(str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                SigmobLog.i(str2);
                jsPromptResult.confirm();
                return true;
            }
        });
    }

    @Override // android.webkit.WebView
    public void destroy() {
        b();
        SigmobLog.d(" BaseWebView destroy called ");
        super.destroy();
    }

    public void e() {
        a("bridge.notifyApkDownloadStartEvent();", (ValueCallback) null);
    }

    public void f() {
        a("bridge.notifyApkDownloadFailEvent();", (ValueCallback) null);
    }

    public void g() {
        a("bridge.notifyApkDownloadPauseEvent();", (ValueCallback) null);
    }

    public void h() {
        a("bridge.notifyApkDownloadEndEvent();", (ValueCallback) null);
    }

    public void i() {
        a("bridge.notifyApkDownloadInstalledEvent();", (ValueCallback) null);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        String url = StringUtil.getUrl(str);
        this.f36977g.put("Referer", "");
        BaseAdUnit baseAdUnit = this.f36975e;
        if (baseAdUnit != null && baseAdUnit.isDisablexRequestWith()) {
            this.f36977g.put("X-Requested-With", "");
        }
        loadUrl(url, this.f36977g);
    }

    public void setAdUnit(BaseAdUnit baseAdUnit) {
        this.f36975e = baseAdUnit;
        if (baseAdUnit == null) {
            return;
        }
        addJavascriptInterface(new ae(getContext(), baseAdUnit, new ae.a() { // from class: com.sigmob.sdk.base.views.N
            @Override // com.sigmob.sdk.base.views.ae.a
            public final void onApkDownloadProcess() {
                this.f36685a.a();
            }
        }), "sigandroidapk");
        addJavascriptInterface(new af(baseAdUnit, new AnonymousClass1()), "sigandroidh5");
    }

    private void b(Context context) {
    }

    public void a() {
        if (this.f36975e == null || this.f36973c != null) {
            return;
        }
        APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = new APKStatusBroadcastReceiver(new InterfaceC1246b() { // from class: com.sigmob.sdk.base.views.g.2
            @Override // com.sigmob.sdk.base.common.InterfaceC1246b
            public void a(boolean z2) {
                InterfaceC1246b listener = C1295g.this.getListener();
                if (listener != null) {
                    listener.a(z2);
                }
            }

            @Override // com.sigmob.sdk.base.common.InterfaceC1246b
            public void b(boolean z2) {
                InterfaceC1246b listener = C1295g.this.getListener();
                if (listener != null) {
                    listener.b(z2);
                } else if (z2) {
                    C1295g.this.i();
                } else {
                    C1295g.this.f();
                }
            }

            @Override // com.sigmob.sdk.base.common.InterfaceC1246b
            public void c(boolean z2, long j2) {
                InterfaceC1246b listener = C1295g.this.getListener();
                if (listener != null) {
                    listener.c(z2, j2);
                }
                C1295g.this.g();
            }

            @Override // com.sigmob.sdk.base.common.InterfaceC1246b
            public void a(boolean z2, long j2) {
                InterfaceC1246b listener = C1295g.this.getListener();
                if (listener != null) {
                    listener.b(z2, j2);
                } else if (z2) {
                    C1295g.this.e();
                } else {
                    C1295g.this.f();
                }
            }

            @Override // com.sigmob.sdk.base.common.InterfaceC1246b
            public void b(boolean z2, long j2) {
                InterfaceC1246b listener = C1295g.this.getListener();
                if (listener != null) {
                    listener.b(z2, j2);
                } else if (z2) {
                    C1295g.this.h();
                } else {
                    C1295g.this.f();
                }
            }
        }, this.f36975e.getUuid());
        this.f36973c = aPKStatusBroadcastReceiver;
        aPKStatusBroadcastReceiver.a(aPKStatusBroadcastReceiver);
    }

    private static void a(Context context) throws Throwable {
        StringBuilder sb;
        if (context == null || Build.VERSION.SDK_INT < 28) {
            return;
        }
        try {
            String absolutePath = context.getDataDir().getAbsolutePath();
            HashSet hashSet = new HashSet();
            String packageName = context.getPackageName();
            String processName = Application.getProcessName();
            if (TextUtils.equals(packageName, processName)) {
                String str = "_" + processName;
                hashSet.add(absolutePath + "/app_webview/webview_data.lock");
                hashSet.add(absolutePath + "/app_webview" + str + "/webview_data.lock");
                if (RomUtils.isHuawei()) {
                    hashSet.add(absolutePath + "/app_hws_webview/webview_data.lock");
                    sb = new StringBuilder();
                    sb.append(absolutePath);
                    sb.append("/app_hws_webview");
                    sb.append(str);
                    sb.append("/webview_data.lock");
                    hashSet.add(sb.toString());
                }
            } else {
                if (!TextUtils.isEmpty(processName)) {
                    packageName = processName;
                }
                WebView.setDataDirectorySuffix(packageName);
                String str2 = "_" + packageName;
                hashSet.add(absolutePath + "/app_webview" + str2 + "/webview_data.lock");
                if (RomUtils.isHuawei()) {
                    sb = new StringBuilder();
                    sb.append(absolutePath);
                    sb.append("/app_hws_webview");
                    sb.append(str2);
                    sb.append("/webview_data.lock");
                    hashSet.add(sb.toString());
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                File file = new File((String) it.next());
                if (file.exists()) {
                    a(file);
                    return;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(boolean z2) {
        if (z2) {
            stopLoading();
            loadUrl("");
        }
        onPause();
    }

    private void a(WebSettings webSettings) {
        com.sigmob.sdk.base.utils.j.a(f36971a, webSettings);
        webSettings.setDomStorageEnabled(true);
        webSettings.setUseWideViewPort(true);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setSupportZoom(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        webSettings.setBlockNetworkImage(false);
        webSettings.setBlockNetworkLoads(false);
        webSettings.setCacheMode(-1);
        int i2 = Build.VERSION.SDK_INT;
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        webSettings.setLoadsImagesAutomatically(true);
        webSettings.setAllowContentAccess(true);
        if (i2 >= 26) {
            try {
                webSettings.setSafeBrowsingEnabled(false);
            } catch (Throwable th) {
                com.sigmob.sdk.base.utils.k.f(f36971a, "setSafeBrowsingEnabled: error = " + th.getMessage(), new Object[0]);
            }
        }
        try {
            webSettings.setMixedContentMode(0);
        } catch (Throwable th2) {
            com.sigmob.sdk.base.utils.k.f(f36971a, "setMixedContentMode: error = " + th2.getMessage(), new Object[0]);
        }
    }

    public static void a(WebView webView) {
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, com.sigmob.sdk.base.i.a().i());
    }

    public void a(InterfaceC1246b interfaceC1246b) {
        this.f36974d = new WeakReference<>(interfaceC1246b);
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x012f A[Catch: Exception -> 0x012b, TryCatch #1 {Exception -> 0x012b, blocks: (B:66:0x0121, B:68:0x0127, B:72:0x012f, B:74:0x0134), top: B:78:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0134 A[Catch: Exception -> 0x012b, TRY_LEAVE, TryCatch #1 {Exception -> 0x012b, blocks: (B:66:0x0121, B:68:0x0127, B:72:0x012f, B:74:0x0134), top: B:78:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.annotation.TargetApi(28)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.io.File r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.views.C1295g.a(java.io.File):void");
    }

    private static void a(File file, String str) throws IOException {
        com.sigmob.sdk.base.utils.k.e(f36971a, str, new Object[0]);
        a(file, file.exists() ? file.delete() : false);
    }

    private static void a(File file, boolean z2) throws IOException {
        if (z2) {
            try {
                if (file.exists()) {
                    return;
                }
                file.createNewFile();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(String str, ValueCallback valueCallback) {
        SigmobLog.d("Injecting Javascript into MRAID WebView:\n\t" + str);
        if (str.startsWith("bridge")) {
            str = str.replaceFirst("bridge", StringUtil.decode(StringUtil.f29700s));
        }
        evaluateJavascript(str, valueCallback);
    }

    public void a(boolean z2) {
    }
}
