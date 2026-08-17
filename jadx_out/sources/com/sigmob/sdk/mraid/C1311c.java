package com.sigmob.sdk.mraid;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.component.ttvideo.log.LiveError;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.json.CyclicObjectException;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.common.utils.TouchLocation;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.toolbox.StringUtil;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.InterfaceC1246b;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.aq;
import com.sigmob.sdk.base.models.AppInfo;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.CurrentAppOrientation;
import com.sigmob.sdk.base.models.ExposureChange;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.MraidEnv;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.base.models.VideoItem;
import com.sigmob.sdk.base.models.ViewState;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AdSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.RvAdSetting;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import com.sigmob.sdk.mraid.C1310b;
import com.sigmob.sdk.mraid.C1321m;
import com.sigmob.sdk.mraid.v;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.umeng.analytics.pro.be;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1311c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f37889a = "MraidBridge";

    /* renamed from: b, reason: collision with root package name */
    static final String f37890b = "mraid://open?url=";

    /* renamed from: c, reason: collision with root package name */
    BaseAdUnit f37891c;

    /* renamed from: d, reason: collision with root package name */
    InterfaceC1312d f37892d;

    /* renamed from: e, reason: collision with root package name */
    v f37893e;

    /* renamed from: f, reason: collision with root package name */
    private final PlacementType f37894f;

    /* renamed from: g, reason: collision with root package name */
    private final C1321m f37895g;

    /* renamed from: h, reason: collision with root package name */
    private String f37896h;

    /* renamed from: i, reason: collision with root package name */
    private aq f37897i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f37898j;

    /* renamed from: k, reason: collision with root package name */
    private final w f37899k;

    /* renamed from: l, reason: collision with root package name */
    private InterfaceC1313e f37900l;

    /* renamed from: com.sigmob.sdk.mraid.c$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f37903a;

        static {
            int[] iArr = new int[EnumC1319k.values().length];
            f37903a = iArr;
            try {
                iArr[EnumC1319k.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37903a[EnumC1319k.UNLOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37903a[EnumC1319k.OPENFOURELEMENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37903a[EnumC1319k.RESIZE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37903a[EnumC1319k.EXPAND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37903a[EnumC1319k.USE_CUSTOM_CLOSE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37903a[EnumC1319k.OPEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37903a[EnumC1319k.feedBack.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37903a[EnumC1319k.SET_ORIENTATION_PROPERTIES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37903a[EnumC1319k.PLAY_VIDEO.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f37903a[EnumC1319k.STORE_PICTURE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f37903a[EnumC1319k.CREATE_CALENDAR_EVENT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f37903a[EnumC1319k.VPAID.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f37903a[EnumC1319k.EXTENSION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f37903a[EnumC1319k.UNSPECIFIED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public C1311c(BaseAdUnit baseAdUnit, PlacementType placementType) {
        this(baseAdUnit, placementType, new C1321m());
    }

    private URI c(String str, String str2) throws C1314f {
        try {
            try {
                return str == null ? new URI(str2) : new URI(str);
            } catch (URISyntaxException unused) {
                return new URI(str2);
            }
        } catch (URISyntaxException unused2) {
            throw new C1314f("Invalid URL parameter: " + str);
        }
    }

    private int f(String str) throws C1314f {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException unused) {
            throw new C1314f("Invalid numeric parameter: " + str);
        }
    }

    private p g(String str) throws C1314f {
        if ("portrait".equals(str)) {
            return p.PORTRAIT;
        }
        if ("landscape".equals(str)) {
            return p.LANDSCAPE;
        }
        if (com.baidu.mobads.sdk.internal.a.f10877a.equals(str)) {
            return p.NONE;
        }
        throw new C1314f("Invalid orientation: " + str);
    }

    private URI i(String str) throws C1314f {
        if (str == null) {
            throw new C1314f("Parameter cannot be null");
        }
        try {
            return new URI(str);
        } catch (URISyntaxException unused) {
            throw new C1314f("Invalid URL parameter: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f37898j) {
            return;
        }
        this.f37898j = true;
        InterfaceC1312d interfaceC1312d = this.f37892d;
        if (interfaceC1312d != null) {
            interfaceC1312d.a();
        }
    }

    public void d() {
        c("mraidbridge.fireChangeEvent({\"hostSDKVersion\":4.25.12});");
    }

    public void e() {
        c("mraidbridge.notifyReadyEvent();");
    }

    public void h() {
        c("bridge.notifyApkDownloadEndEvent();");
    }

    public void j() {
        c("mraidbridge.startAd();");
    }

    public boolean k() {
        aq aqVar = this.f37897i;
        return aqVar != null && aqVar.c();
    }

    public boolean l() {
        v vVar = this.f37893e;
        return vVar != null && vVar.j();
    }

    public boolean m() {
        return this.f37893e != null;
    }

    public boolean n() {
        return this.f37898j;
    }

    public C1311c(BaseAdUnit baseAdUnit, PlacementType placementType, C1321m c1321m) {
        this.f37899k = new w() { // from class: com.sigmob.sdk.mraid.c.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                C1311c.this.o();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i2, String str, String str2) {
                ad.a("h5_error", "mraid1", i2, str2 + " error:" + str, (WindAdRequest) null, (LoadAdRequest) null, C1311c.this.f37891c, (ad.a) null);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                ad.a("h5_error", "mraid1", webResourceResponse.getStatusCode(), webResourceRequest.getUrl().toString(), (WindAdRequest) null, (LoadAdRequest) null, C1311c.this.f37891c, (ad.a) null);
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                C1311c.this.a(renderProcessGoneDetail);
                return true;
            }

            @Override // com.sigmob.sdk.mraid.w, com.sigmob.sdk.base.l, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                if (com.sigmob.sdk.base.utils.x.a(str)) {
                    return null;
                }
                String videoPath = C1311c.this.f37891c.getVideoPath();
                boolean zIsVideoExist = C1311c.this.f37891c.isVideoExist();
                if (com.sigmob.sdk.base.utils.s.b(videoPath) && str.endsWith(videoPath) && zIsVideoExist) {
                    try {
                        return new WebResourceResponse(DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4, "UTF-8", new FileInputStream(videoPath));
                    } catch (FileNotFoundException e2) {
                        SigmobLog.e(e2.getMessage());
                    }
                }
                return super.shouldInterceptRequest(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return C1311c.this.a(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                SigmobLog.i("onReceivedError:" + webResourceError.toString());
                ad.a("h5_error", "mraid1", 0, webResourceRequest.getUrl() + " error:" + ((Object) webResourceError.getDescription()), (WindAdRequest) null, (LoadAdRequest) null, C1311c.this.f37891c, (ad.a) null);
            }
        };
        this.f37891c = baseAdUnit;
        this.f37894f = placementType;
        this.f37895g = c1321m;
    }

    private int a(int i2, int i3, int i4) throws C1314f {
        if (i2 >= i3 && i2 <= i4) {
            return i2;
        }
        throw new C1314f("Integer parameter out of range: " + i2);
    }

    private String b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    private boolean h(String str) throws C1314f {
        if ("true".equals(str)) {
            return true;
        }
        if ("false".equals(str)) {
            return false;
        }
        throw new C1314f("Invalid boolean parameter: " + str);
    }

    public void c() {
        c("bridge.fireChangeEvent({\"osType\":2});");
    }

    public void d(String str) {
        c("mraidbridge.fireVideoSrc(\"" + str + "\")");
    }

    public void e(String str) {
        c("mraidbridge.nativeCallCompleteV2(" + JSONObject.quote(str) + ")");
    }

    public void f() {
        c("bridge.notifyApkDownloadStartEvent();");
    }

    public void g() {
        c("bridge.notifyApkDownloadFailEvent();");
    }

    public void i() {
        c("bridge.notifyApkDownloadInstalledEvent();");
    }

    private C1310b.a a(String str, C1310b.a aVar) throws C1314f {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return aVar;
        }
        str.getClass();
        switch (str) {
            case "center":
                return C1310b.a.CENTER;
            case "top-right":
                return C1310b.a.TOP_RIGHT;
            case "top-left":
                return C1310b.a.TOP_LEFT;
            case "bottom-left":
                return C1310b.a.BOTTOM_LEFT;
            case "bottom-right":
                return C1310b.a.BOTTOM_RIGHT;
            case "bottom-center":
                return C1310b.a.BOTTOM_CENTER;
            case "top-center":
                return C1310b.a.TOP_CENTER;
            default:
                throw new C1314f("Invalid close position: " + str);
        }
    }

    public void b() {
        this.f37892d = null;
        this.f37900l = null;
        v vVar = this.f37893e;
        if (vVar == null) {
            return;
        }
        vVar.destroy();
        this.f37893e = null;
    }

    public void c(String str) {
        if (this.f37893e == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + str);
            return;
        }
        if (str.startsWith("bridge")) {
            str = str.replaceFirst("bridge", StringUtil.decode(StringUtil.f29700s));
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView:\n\t" + str);
        this.f37893e.evaluateJavascript(str, null);
    }

    public String a() {
        return this.f37896h;
    }

    public void b(ValueCallback valueCallback) {
        a("mraidbridge.getAdDuration();", valueCallback);
    }

    public void c(String str, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", str);
            jSONObject.put("state", i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.setvdPlayStateChanged(" + jSONObject + ")");
    }

    private String a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    @SuppressLint({"JavascriptInterface"})
    public void b(String str) {
        v vVar = this.f37893e;
        if (vVar == null) {
            SigmobLog.e("MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        vVar.addJavascriptInterface(new C1309a(this), "sigandroid");
        this.f37898j = false;
        this.f37893e.loadUrl(str);
    }

    public static String a(String str) {
        if (str == null || str.equalsIgnoreCase("null") || str.equalsIgnoreCase("undefined")) {
            return null;
        }
        return str;
    }

    public void b(String str, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", str);
            jSONObject.put("state", i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.setvdLoadStateChanged(" + jSONObject + ")");
    }

    private URI a(String str, URI uri) throws C1314f {
        return str == null ? uri : i(str);
    }

    public void b(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", str);
            jSONObject.put("error", str2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.setvdPlayError(" + jSONObject + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z2) {
        InterfaceC1312d interfaceC1312d = this.f37892d;
        if (interfaceC1312d == null) {
            return;
        }
        interfaceC1312d.a(z2);
    }

    public void a(int i2) {
        c("bridge.notifyApkDownloadProcessEvent(" + i2 + ");");
    }

    public void a(int i2, int i3, int i4, int i5) {
        c("mraidbridge.setSafeAreaInsets(" + (i2 + "," + i3 + "," + i4 + "," + i5) + ")");
    }

    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public void a(Context context, String str) {
        v vVar = this.f37893e;
        if (vVar == null) {
            SigmobLog.e("MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        vVar.addJavascriptInterface(new C1309a(this), "sigandroid");
        this.f37898j = false;
        File fileB = com.sigmob.sdk.base.utils.n.b(str, Md5Util.md5(str) + ".html");
        if (fileB == null || com.sigmob.sdk.base.utils.s.a((CharSequence) fileB.getAbsolutePath())) {
            this.f37893e.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://localhost/", str, "text/html", "UTF-8", null);
            return;
        }
        this.f37893e.loadUrl("file://" + fileB.getAbsolutePath());
    }

    public void a(Location location) {
        c("mraidbridge.setLocation(" + location.getLatitude() + "," + location.getLongitude() + ",\"" + location.getProvider() + "\");");
    }

    @TargetApi(26)
    public void a(RenderProcessGoneDetail renderProcessGoneDetail) {
        WindAdError windAdError = (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? WindAdError.RENDER_PROCESS_GONE_UNSPECIFIED : WindAdError.RENDER_PROCESS_GONE_WITH_CRASH;
        SigmobLog.e("handleRenderProcessGone " + windAdError);
        b();
        InterfaceC1312d interfaceC1312d = this.f37892d;
        if (interfaceC1312d != null) {
            interfaceC1312d.a(windAdError);
        }
    }

    public void a(ValueCallback valueCallback) {
        a("mraidbridge.getPlayProgress();", valueCallback);
    }

    public void a(AppInfo appInfo) {
        c("bridge.fireChangeEvent({" + appInfo.toString().replace("=", ":") + "});");
    }

    public void a(CurrentAppOrientation currentAppOrientation) {
        c("mraidbridge.fireChangeEvent({" + currentAppOrientation.toString().replace("=", ":") + "});");
    }

    public void a(ExposureChange exposureChange) {
        c("mraidbridge.fireChangeEvent({" + exposureChange.toString().replace("=", ":") + "});");
    }

    public void a(MraidEnv mraidEnv) throws CyclicObjectException {
        c("mraidbridge.fireChangeEvent(" + JSONSerializer.Serialize(mraidEnv, be.f48798a, true) + ");");
    }

    public void a(PlacementType placementType) {
        c("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.toJavascriptString()) + ")");
    }

    public void a(VideoItem videoItem) throws CyclicObjectException {
        c("bridge.fireChangeEvent(" + JSONSerializer.Serialize(videoItem, "video", false) + ");");
    }

    public void a(ViewState viewState) {
        c("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    public void a(Ad ad, SlotAdSetting slotAdSetting) throws JSONException, CyclicObjectException {
        String strSerialize = JSONSerializer.Serialize(ad, "ad", true);
        try {
            String strSerialize2 = JSONSerializer.Serialize(slotAdSetting, null, true);
            JSONObject jSONObject = new JSONObject(strSerialize);
            jSONObject.getJSONObject("ad").put("slotAdSetting", new JSONObject(strSerialize2));
            c("bridge.fireChangeEvent(" + jSONObject.toString() + ");");
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void a(MaterialMeta materialMeta) throws CyclicObjectException {
        c("bridge.fireChangeEvent(" + JSONSerializer.Serialize(materialMeta, ClickCommon.CLICK_AREA_MATERIAL, true) + ");");
    }

    public void a(RvAdSetting rvAdSetting) throws CyclicObjectException {
        c("bridge.fireChangeEvent(" + JSONSerializer.Serialize(rvAdSetting, "rvSetting", false) + ");");
    }

    public void a(InterfaceC1312d interfaceC1312d) {
        this.f37892d = interfaceC1312d;
    }

    public void a(InterfaceC1313e interfaceC1313e) {
        this.f37900l = interfaceC1313e;
    }

    private void a(EnumC1319k enumC1319k) {
        c("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(enumC1319k.a()) + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(EnumC1319k enumC1319k, C1314f c1314f) {
        a(enumC1319k, c1314f.getMessage());
    }

    private void a(EnumC1319k enumC1319k, String str) {
        c("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(enumC1319k.a()) + ", " + JSONObject.quote(str) + ")");
    }

    public void a(final EnumC1319k enumC1319k, Map<String, String> map) throws C1314f {
        if (this.f37892d == null) {
            throw new C1314f("Invalid state to execute this command.");
        }
        if (this.f37893e == null) {
            throw new C1314f("The current WebView is being destroyed.");
        }
        switch (AnonymousClass3.f37903a[enumC1319k.ordinal()]) {
            case 1:
                this.f37892d.d();
                return;
            case 2:
                this.f37892d.e();
                return;
            case 3:
                this.f37892d.f();
                return;
            case 4:
                this.f37892d.a(a(f(map.get("width")), 0, 100000), a(f(map.get("height")), 0, 100000), a(f(map.get("offsetX")), LiveError.PARSE_JSON, 100000), a(f(map.get("offsetY")), LiveError.PARSE_JSON, 100000), a(map.get("customClosePosition"), C1310b.a.TOP_RIGHT), a(map.get("allowOffscreen"), true));
                return;
            case 5:
                this.f37892d.a(a(map.get("url"), (URI) null), a(map.get("shouldUseCustomClose"), false));
                return;
            case 6:
                this.f37892d.b(a(map.get("shouldUseCustomClose"), false));
                return;
            case 7:
                SigmobLogger.d(f37889a, "runCommand: command = " + enumC1319k.a(), new Object[0]);
                this.f37892d.a(c(map.get("url"), ""), 1, a(map.get(com.sigmob.sdk.base.n.f36450m)));
                return;
            case 8:
                this.f37892d.g();
                return;
            case 9:
                this.f37892d.a(h(map.get("allowOrientationChange")), g(map.get("forceOrientation")));
                return;
            case 10:
                this.f37892d.a(i(map.get(ContentProviderManager.PROVIDER_URI)));
                return;
            case 11:
                this.f37895g.a(this.f37893e.getContext(), i(map.get(ContentProviderManager.PROVIDER_URI)).toString(), new C1321m.a() { // from class: com.sigmob.sdk.mraid.D
                    @Override // com.sigmob.sdk.mraid.C1321m.a
                    public final void onFailure(C1314f c1314f) {
                        this.f37846a.a(enumC1319k, c1314f);
                    }
                });
                return;
            case 12:
                this.f37895g.a(this.f37893e.getContext(), map);
                return;
            case 13:
                this.f37892d.a(map.get(NotificationCompat.CATEGORY_EVENT), map);
                return;
            case 14:
                this.f37892d.b(map.get(NotificationCompat.CATEGORY_EVENT), map);
                return;
            case 15:
                throw new C1314f("Unspecified MRAID Javascript command");
            default:
                return;
        }
    }

    public void a(q qVar) {
        c("mraidbridge.setScreenSize(" + b(qVar.c()) + ");mraidbridge.setMaxSize(" + b(qVar.e()) + ");mraidbridge.setCurrentPosition(" + a(qVar.g()) + ");mraidbridge.setDefaultPosition(" + a(qVar.i()) + ")");
        StringBuilder sb = new StringBuilder();
        sb.append("mraidbridge.notifySizeChangeEvent(");
        sb.append(b(qVar.g()));
        sb.append(")");
        c(sb.toString());
    }

    public void a(v vVar) {
        this.f37893e = vVar;
        WebSettings settings = vVar.getSettings();
        com.sigmob.sdk.base.utils.j.a(f37889a, settings);
        if (this.f37894f == PlacementType.INTERSTITIAL) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        this.f37899k.b(this.f37891c.isDisablexRequestWith());
        this.f37899k.a(com.sigmob.sdk.base.o.a().ad());
        this.f37893e.setScrollContainer(false);
        this.f37893e.setVerticalScrollBarEnabled(false);
        this.f37893e.setHorizontalScrollBarEnabled(false);
        this.f37893e.setBackgroundColor(0);
        this.f37893e.setAdUnit(this.f37891c);
        this.f37893e.a((InterfaceC1246b) null);
        this.f37893e.setWebViewClient(this.f37899k);
        this.f37893e.setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.mraid.c.2
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                InterfaceC1312d interfaceC1312d = C1311c.this.f37892d;
                return interfaceC1312d == null ? super.onConsoleMessage(consoleMessage) : interfaceC1312d.a(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                InterfaceC1312d interfaceC1312d = C1311c.this.f37892d;
                return interfaceC1312d == null ? super.onJsAlert(webView, str, str2, jsResult) : interfaceC1312d.a(str2, jsResult);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
            }
        });
        this.f37897i = new aq(this.f37893e.getContext(), this.f37893e, this.f37891c);
        this.f37893e.setVisibilityChangedListener(new v.a() { // from class: com.sigmob.sdk.mraid.C
            @Override // com.sigmob.sdk.mraid.v.a
            public final void onVisibilityChanged(boolean z2) {
                this.f37845a.b(z2);
            }
        });
    }

    public void a(String str, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", str);
            jSONObject.put("currentTime", i2 / 1000.0f);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.setvdPlayToEnd(" + jSONObject + ")");
    }

    public void a(String str, int i2, int i3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", str);
            jSONObject.put("currentTime", i2 / 1000.0f);
            jSONObject.put("duration", i3 / 1000.0f);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.setvdPlayCurrentTime(" + jSONObject + ")");
    }

    public void a(String str, int i2, int i3, int i4) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", str);
            jSONObject.put("duration", i2 / 1000.0f);
            jSONObject.put("width", i3);
            jSONObject.put("height", i4);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.setvdReadyToPlay(" + jSONObject + ")");
    }

    public void a(String str, ValueCallback valueCallback) {
        if (this.f37893e == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + str);
            return;
        }
        if (str.startsWith("bridge")) {
            str = str.replaceFirst("bridge", StringUtil.decode(StringUtil.f29700s));
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView:\n\t" + str);
        this.f37893e.evaluateJavascript(str, valueCallback);
    }

    public void a(String str, String str2) {
        this.f37896h = String.format("%s,%s,%s,%s", str, str2, str, str2);
        this.f37891c.getMacroCommon().updateClickMarco(str, str2, str, str2);
        this.f37891c.getClickCommon().down = new TouchLocation(Integer.parseInt(str), Integer.parseInt(str2));
        this.f37891c.getClickCommon().up = new TouchLocation(Integer.parseInt(str), Integer.parseInt(str2));
    }

    public void a(String str, String str2, String str3, HashMap<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str3);
            jSONObject2.put("uniqueId", str);
            if (map != null) {
                jSONObject2.put("args", new JSONObject(map));
            }
            jSONObject.put("onChangeFired", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String str, String str2, JSONObject jSONObject) {
        if (this.f37900l == null) {
            return;
        }
        str.getClass();
        switch (str) {
            case "motion":
                this.f37900l.d(str2, jSONObject);
                break;
            case "motionView":
                this.f37900l.e(str2, jSONObject);
                break;
            case "addSubview":
                this.f37900l.c(str2, jSONObject);
                break;
            case "vpaid":
                this.f37900l.a(str2, jSONObject);
                break;
            case "belowSubview":
                this.f37900l.b(str2, jSONObject);
                break;
        }
    }

    public void a(String str, HashMap<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, str);
            if (map != null) {
                jSONObject2.put("args", new JSONObject(map));
            }
            jSONObject.put("onChangeEvent", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(boolean z2) {
        c("mraidbridge.setIsViewable(" + z2 + ")");
    }

    public void a(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        c("mraidbridge.setSupports(" + z2 + "," + z3 + "," + z4 + "," + z5 + "," + z6 + "," + z7 + "," + z8 + ")");
    }

    public boolean a(WebView webView, String str) {
        int i2;
        InterfaceC1312d interfaceC1312d;
        SigmobLog.d("MraidBridge#handleShouldOverrideUrl: url = " + str);
        try {
            new URI(str);
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if (StringUtil.decode(StringUtil.f29700s).equals(scheme)) {
                if ("failLoad".equals(host) && this.f37894f == PlacementType.INLINE && (interfaceC1312d = this.f37892d) != null) {
                    interfaceC1312d.c();
                }
                return true;
            }
            if (BaseAdActivity.f35509c.equals(scheme)) {
                SigmobLogger.d(f37889a, "handleShouldOverrideUrl: uri = " + uri, new Object[0]);
                EnumC1319k enumC1319kA = EnumC1319k.a(host);
                try {
                    a(enumC1319kA, ClientMetadata.getQueryParamMap(uri));
                } catch (Throwable th) {
                    a(enumC1319kA, th.getMessage());
                }
                a(enumC1319kA);
                return true;
            }
            if (com.sigmob.sdk.base.utils.s.b(str)) {
                if (str.startsWith("http")) {
                    webView.loadUrl(str);
                } else {
                    try {
                        AdSetting adSetting = this.f37891c.getAdSetting();
                        List<String> list = adSetting == null ? null : adSetting.scheme_white_list;
                        if (com.sigmob.sdk.base.utils.f.a(list)) {
                            return true;
                        }
                        while (i2 < list.size()) {
                            String str2 = list.get(i2);
                            i2 = (str.startsWith(str2) || str2.equals("*")) ? 0 : i2 + 1;
                            com.sigmob.sdk.base.utils.h.a(this.f37893e.getContext(), Uri.parse(str));
                            return true;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            return true;
        } catch (URISyntaxException unused) {
            SigmobLog.e("Invalid MRAID URL: " + str);
            a(EnumC1319k.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    private boolean a(String str, boolean z2) throws C1314f {
        return str == null ? z2 : h(str);
    }
}
