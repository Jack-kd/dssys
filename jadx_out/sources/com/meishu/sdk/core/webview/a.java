package com.meishu.sdk.core.webview;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.b1;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.v;
import com.meishu.sdk.core.utils.y0;
import com.meishu.sdk.core.view.DownloadView;
import com.meishu.sdk.core.webview.jsbridge.a;
import com.meishu.sdk.core.webview.jsbridge.bean.CheckAppInstallParam;
import com.meishu.sdk.core.webview.jsbridge.bean.ClickAppDownloadInfoParam;
import com.meishu.sdk.core.webview.jsbridge.bean.ClickTempParam;
import com.meishu.sdk.core.webview.jsbridge.bean.EventUrlReportParam;
import com.meishu.sdk.core.webview.jsbridge.bean.GetH5AdInfoResBean;
import com.meishu.sdk.core.webview.jsbridge.bean.H5NotifyErrorParam;
import com.meishu.sdk.core.webview.jsbridge.bean.InvokeDeepLinkParam;
import com.meishu.sdk.core.webview.jsbridge.bean.OpenWebViewPageParam;
import com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam;
import java.lang.ref.SoftReference;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public BaseAdSlot f32086a;

    /* renamed from: b, reason: collision with root package name */
    public final com.meishu.sdk.platform.ms.c f32087b;

    /* renamed from: c, reason: collision with root package name */
    public final g f32088c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f32089d;

    /* renamed from: e, reason: collision with root package name */
    public final k f32090e;

    /* renamed from: f, reason: collision with root package name */
    public com.meishu.sdk.core.webview.listener.c f32091f;

    /* renamed from: g, reason: collision with root package name */
    public com.meishu.sdk.core.webview.listener.d f32092g;

    /* renamed from: h, reason: collision with root package name */
    public SoftReference<WebView> f32093h;

    /* renamed from: com.meishu.sdk.core.webview.a$a, reason: collision with other inner class name */
    public class C0677a extends k {
        public C0677a() {
        }
    }

    public class b extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ InvokeDeepLinkParam f32095a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f32096b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f32097c;

        public b(InvokeDeepLinkParam invokeDeepLinkParam, int i2, String str) {
            this.f32095a = invokeDeepLinkParam;
            this.f32096b = i2;
            this.f32097c = str;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            SoftReference<WebView> softReference;
            a aVar = a.this;
            aVar.getClass();
            try {
                softReference = aVar.f32093h;
            } catch (Exception unused) {
            }
            WebView webView = softReference != null ? softReference.get() : null;
            com.meishu.sdk.core.webview.jsbridge.util.a.a(webView, this.f32095a.getCallbackFunc(), "{\"code\":" + this.f32096b + ",\"msg\":\"" + this.f32097c + "\"}");
        }
    }

    public a(com.meishu.sdk.platform.ms.c cVar, WebView webView, g gVar, boolean z2) {
        this.f32087b = cVar;
        this.f32088c = gVar;
        this.f32089d = z2;
        AdSlot adSlotA = cVar != null ? cVar.a() : null;
        if (adSlotA instanceof BaseAdSlot) {
            BaseAdSlot baseAdSlot = (BaseAdSlot) adSlotA;
            this.f32086a = baseAdSlot;
            baseAdSlot.getReq_id();
        }
        this.f32093h = new SoftReference<>(webView);
        this.f32090e = new C0677a();
    }

    @JavascriptInterface
    public String checkAppInstall(String str) {
        CheckAppInstallParam checkAppInstallParam = (CheckAppInstallParam) a(str, CheckAppInstallParam.class);
        if (checkAppInstallParam != null) {
            checkAppInstallParam.getUuid();
            if (a()) {
                return "{\"install_status\":" + (!TextUtils.isEmpty(checkAppInstallParam.getDeep_link()) ? com.meishu.sdk.core.utils.f.a(checkAppInstallParam.getDeep_link()) : false) + "}";
            }
        }
        LogUtil.dev("ADMateJSBridge", "checkAppInstall, The request is invalid");
        return "";
    }

    @JavascriptInterface
    public void clickAppDownloadInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ClickAppDownloadInfoParam clickAppDownloadInfoParam = (ClickAppDownloadInfoParam) a(str, ClickAppDownloadInfoParam.class);
        if (clickAppDownloadInfoParam != null) {
            clickAppDownloadInfoParam.getUuid();
            if (a()) {
                try {
                    com.meishu.sdk.core.webview.listener.d dVar = this.f32092g;
                    if (dVar != null) {
                        if (dVar.clickAppDownloadInfo(clickAppDownloadInfoParam.getType())) {
                            return;
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                DownloadView.openByType(this.f32087b, clickAppDownloadInfoParam.getType());
                return;
            }
        }
        LogUtil.dev("ADMateJSBridge", "clickAppDownloadInfo, The request is invalid");
    }

    @JavascriptInterface
    public void clickTemp(String str) {
        a(str, true);
    }

    @JavascriptInterface
    public void closePage(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UUIDParam uUIDParam = (UUIDParam) a(str, UUIDParam.class);
        if (uUIDParam != null) {
            uUIDParam.getUuid();
            if (a()) {
                try {
                    com.meishu.sdk.core.webview.listener.d dVar = this.f32092g;
                    if (dVar != null) {
                        dVar.onClosePage();
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        LogUtil.dev("ADMateJSBridge", "closePage, The request is invalid");
    }

    @JavascriptInterface
    public void dismissAd(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UUIDParam uUIDParam = (UUIDParam) a(str, UUIDParam.class);
        if (uUIDParam != null) {
            uUIDParam.getUuid();
            if (a()) {
                try {
                    com.meishu.sdk.core.webview.listener.d dVar = this.f32092g;
                    if (dVar != null) {
                        dVar.dismissAd();
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        LogUtil.dev("ADMateJSBridge", "dismissAd, The request is invalid");
    }

    @JavascriptInterface
    public void eventUrlReport(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        EventUrlReportParam eventUrlReportParam = (EventUrlReportParam) a(str, EventUrlReportParam.class);
        if (eventUrlReportParam != null) {
            eventUrlReportParam.getUuid();
            if (a()) {
                try {
                    p1.a(this.f32086a.getEventUrl(), eventUrlReportParam.getEvent_id(), eventUrlReportParam.getError_code(), eventUrlReportParam.getError_mesg());
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        LogUtil.dev("ADMateJSBridge", "eventUrlReport, The request is invalid");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getActivityState(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            java.lang.String r1 = ""
            if (r0 != 0) goto L56
            java.lang.Class<com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam> r0 = com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam.class
            java.lang.Object r4 = r3.a(r4, r0)
            com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam r4 = (com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam) r4
            java.lang.String r0 = "ADMateJSBridge"
            if (r4 == 0) goto L51
            r4.getUuid()
            boolean r4 = r3.a()
            if (r4 != 0) goto L1e
            goto L51
        L1e:
            com.meishu.sdk.core.webview.listener.d r4 = r3.f32092g
            if (r4 == 0) goto L56
            java.lang.String r4 = r4.getActivityState()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "{\"state\":"
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = "}"
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getActivityState callback."
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r1)
            return r4
        L51:
            java.lang.String r4 = "getActivityState, The request is invalid"
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r4)
        L56:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.a.getActivityState(java.lang.String):java.lang.String");
    }

    @JavascriptInterface
    public String getAdInfo(String str) {
        UUIDParam uUIDParam = (UUIDParam) a(str, UUIDParam.class);
        if (uUIDParam != null) {
            uUIDParam.getUuid();
            if (a()) {
                String json = v.f32031a.toJson(GetH5AdInfoResBean.make(this.f32086a, y0.b(AdSdk.getContext()), this.f32089d));
                LogUtil.dev("ADMateJSBridge", "getAdInfo, callback:" + json);
                return json;
            }
        }
        LogUtil.dev("ADMateJSBridge", "getAdInfo, The request is invalid");
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getDeviceInfo(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            java.lang.String r1 = ""
            if (r0 != 0) goto L40
            java.lang.Class<com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam> r0 = com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam.class
            java.lang.Object r4 = r3.a(r4, r0)
            com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam r4 = (com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam) r4
            java.lang.String r0 = "ADMateJSBridge"
            if (r4 == 0) goto L3b
            r4.getUuid()
            boolean r4 = r3.a()
            if (r4 != 0) goto L1e
            goto L3b
        L1e:
            com.meishu.sdk.core.webview.listener.d r4 = r3.f32092g
            if (r4 == 0) goto L40
            java.lang.String r4 = r4.getDeviceInfo()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getDeviceInfo callback."
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r1)
            return r4
        L3b:
            java.lang.String r4 = "getDeviceInfo, The request is invalid"
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r4)
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.a.getDeviceInfo(java.lang.String):java.lang.String");
    }

    @JavascriptInterface
    public String getJSApiVersion(String str) {
        UUIDParam uUIDParam = (UUIDParam) a(str, UUIDParam.class);
        if (uUIDParam != null) {
            uUIDParam.getUuid();
            if (a()) {
                return "{\"version\":2051300}";
            }
        }
        LogUtil.dev("ADMateJSBridge", "getJSApiVersion, The request is invalid");
        return "";
    }

    @JavascriptInterface
    public void h5NotifyError(String str) {
        try {
            H5NotifyErrorParam h5NotifyErrorParam = (H5NotifyErrorParam) a(str, H5NotifyErrorParam.class);
            if (h5NotifyErrorParam != null) {
                h5NotifyErrorParam.getUuid();
                if (a()) {
                    try {
                        b1.a(this.f32086a, 15, h5NotifyErrorParam.getCode(), h5NotifyErrorParam.getMessage());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    try {
                        this.f32090e.a(false);
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
            }
            LogUtil.dev("ADMateJSBridge", "h5NotifyError, The request is invalid");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @JavascriptInterface
    public void h5Readied(String str) {
        UUIDParam uUIDParam = (UUIDParam) a(str, UUIDParam.class);
        if (uUIDParam != null) {
            uUIDParam.getUuid();
            if (a()) {
                try {
                    this.f32090e.a(true);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        LogUtil.dev("ADMateJSBridge", "h5Readied, The request is invalid");
    }

    @JavascriptInterface
    public void invokeDeepLink(String str) {
        final InvokeDeepLinkParam invokeDeepLinkParam = (InvokeDeepLinkParam) a(str, InvokeDeepLinkParam.class);
        if (invokeDeepLinkParam != null) {
            invokeDeepLinkParam.getUuid();
            if (a()) {
                new com.meishu.sdk.core.webview.jsbridge.a(this.f32087b).a(invokeDeepLinkParam, new a.InterfaceC0680a() { // from class: O0.a
                    @Override // com.meishu.sdk.core.webview.jsbridge.a.InterfaceC0680a
                    public final void a(int i2, String str2) {
                        this.f394a.a(invokeDeepLinkParam, i2, str2);
                    }
                });
                return;
            }
        }
        LogUtil.dev("ADMateJSBridge", "invokeDeepLink, The request is invalid");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String isAppBackground(java.lang.String r3) {
        /*
            r2 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            java.lang.String r1 = ""
            if (r0 != 0) goto L42
            java.lang.Class<com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam> r0 = com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam.class
            java.lang.Object r3 = r2.a(r3, r0)
            com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam r3 = (com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam) r3
            if (r3 == 0) goto L3b
            r3.getUuid()
            boolean r3 = r2.a()
            if (r3 != 0) goto L1c
            goto L3b
        L1c:
            com.meishu.sdk.core.webview.listener.d r3 = r2.f32092g
            if (r3 == 0) goto L42
            boolean r3 = r3.isAppBackground()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "{\"is_background\":"
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = "}"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            return r3
        L3b:
            java.lang.String r3 = "ADMateJSBridge"
            java.lang.String r0 = "isAppBackground, The request is invalid"
            com.meishu.sdk.core.utils.LogUtil.dev(r3, r0)
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.a.isAppBackground(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String isSoundsOpen(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            java.lang.String r1 = ""
            if (r0 != 0) goto L56
            java.lang.Class<com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam> r0 = com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam.class
            java.lang.Object r4 = r3.a(r4, r0)
            com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam r4 = (com.meishu.sdk.core.webview.jsbridge.bean.UUIDParam) r4
            java.lang.String r0 = "ADMateJSBridge"
            if (r4 == 0) goto L51
            r4.getUuid()
            boolean r4 = r3.a()
            if (r4 != 0) goto L1e
            goto L51
        L1e:
            com.meishu.sdk.core.webview.listener.d r4 = r3.f32092g
            if (r4 == 0) goto L56
            boolean r4 = r4.isSoundsOpen()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "isSoundsOpen isOpen:"
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r1)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "{\"isOpen\":"
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = "}"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            return r4
        L51:
            java.lang.String r4 = "isSoundsOpen, The request is invalid"
            com.meishu.sdk.core.utils.LogUtil.dev(r0, r4)
        L56:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.a.isSoundsOpen(java.lang.String):java.lang.String");
    }

    @JavascriptInterface
    public void notifyRewarded(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UUIDParam uUIDParam = (UUIDParam) a(str, UUIDParam.class);
        if (uUIDParam != null) {
            uUIDParam.getUuid();
            if (a()) {
                try {
                    com.meishu.sdk.core.webview.listener.d dVar = this.f32092g;
                    if (dVar != null) {
                        dVar.notifyRewarded();
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        LogUtil.dev("ADMateJSBridge", "notifyRewarded, The request is invalid");
    }

    @JavascriptInterface
    @Deprecated
    public void onQuickRewardClick(String str) {
        a(str, false);
    }

    @JavascriptInterface
    public String openWebViewPage(String str) {
        OpenWebViewPageParam openWebViewPageParam = (OpenWebViewPageParam) a(str, OpenWebViewPageParam.class);
        String string = "";
        if (openWebViewPageParam != null) {
            openWebViewPageParam.getUuid();
            if (a()) {
                com.meishu.sdk.platform.ms.c cVar = this.f32087b;
                com.meishu.sdk.core.webview.jsbridge.b bVar = new com.meishu.sdk.core.webview.jsbridge.b(cVar);
                try {
                    if (bVar.f32126a == null) {
                        return com.meishu.sdk.core.webview.jsbridge.b.a(false, "初始化错误");
                    }
                    if (TextUtils.isEmpty(openWebViewPageParam.getUrl())) {
                        return com.meishu.sdk.core.webview.jsbridge.b.a(false, "url 为空");
                    }
                    bVar.f32126a.setdUrl(new String[]{openWebViewPageParam.getUrl()});
                    com.meishu.sdk.core.utils.f.b(cVar, AdSdk.getContext(), bVar.f32126a, openWebViewPageParam.getOpen_type() == 1);
                    return com.meishu.sdk.core.webview.jsbridge.b.a(true, "");
                } catch (Exception e2) {
                    e2.printStackTrace();
                    StringBuilder sb = new StringBuilder();
                    sb.append("未知错误:");
                    try {
                        string = e2.toString();
                    } catch (Exception unused) {
                    }
                    sb.append(string);
                    return com.meishu.sdk.core.webview.jsbridge.b.a(false, sb.toString());
                }
            }
        }
        LogUtil.dev("ADMateJSBridge", "openWebViewPage, The request is invalid");
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String setShakeOrTurnState(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            java.lang.String r1 = ""
            if (r0 != 0) goto L4b
            java.lang.Class<com.meishu.sdk.core.webview.jsbridge.bean.SetShakeOrTurnStateParam> r0 = com.meishu.sdk.core.webview.jsbridge.bean.SetShakeOrTurnStateParam.class
            java.lang.Object r4 = r3.a(r4, r0)
            com.meishu.sdk.core.webview.jsbridge.bean.SetShakeOrTurnStateParam r4 = (com.meishu.sdk.core.webview.jsbridge.bean.SetShakeOrTurnStateParam) r4
            if (r4 == 0) goto L44
            r4.getUuid()
            boolean r0 = r3.a()
            if (r0 != 0) goto L1c
            goto L44
        L1c:
            com.meishu.sdk.core.webview.listener.d r0 = r3.f32092g     // Catch: java.lang.Exception -> L3f
            if (r0 == 0) goto L4b
            boolean r4 = r4.getIsOpen()     // Catch: java.lang.Exception -> L3f
            boolean r4 = r0.setShakeOrTurnState(r4)     // Catch: java.lang.Exception -> L3f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3f
            r0.<init>()     // Catch: java.lang.Exception -> L3f
            java.lang.String r2 = "{\"isOpen\":"
            r0.append(r2)     // Catch: java.lang.Exception -> L3f
            r0.append(r4)     // Catch: java.lang.Exception -> L3f
            java.lang.String r4 = "}"
            r0.append(r4)     // Catch: java.lang.Exception -> L3f
            java.lang.String r4 = r0.toString()     // Catch: java.lang.Exception -> L3f
            return r4
        L3f:
            r4 = move-exception
            r4.printStackTrace()
            goto L4b
        L44:
            java.lang.String r4 = "ADMateJSBridge"
            java.lang.String r0 = "setShakeOrTurnState, The request is invalid"
            com.meishu.sdk.core.utils.LogUtil.dev(r4, r0)
        L4b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.a.setShakeOrTurnState(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String setSoundsOpen(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            java.lang.String r1 = ""
            if (r0 != 0) goto L4e
            java.lang.Class<com.meishu.sdk.core.webview.jsbridge.bean.SetSoundsOpenParam> r0 = com.meishu.sdk.core.webview.jsbridge.bean.SetSoundsOpenParam.class
            java.lang.Object r4 = r3.a(r4, r0)
            com.meishu.sdk.core.webview.jsbridge.bean.SetSoundsOpenParam r4 = (com.meishu.sdk.core.webview.jsbridge.bean.SetSoundsOpenParam) r4
            if (r4 == 0) goto L47
            r4.getUuid()
            boolean r0 = r3.a()
            if (r0 != 0) goto L1c
            goto L47
        L1c:
            com.meishu.sdk.core.webview.listener.d r0 = r3.f32092g     // Catch: java.lang.Exception -> L42
            if (r0 == 0) goto L4e
            boolean r2 = r4.getIsOpen()     // Catch: java.lang.Exception -> L42
            r0.setSoundsOpen(r2)     // Catch: java.lang.Exception -> L42
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L42
            r0.<init>()     // Catch: java.lang.Exception -> L42
            java.lang.String r2 = "{\"isOpen\":"
            r0.append(r2)     // Catch: java.lang.Exception -> L42
            boolean r4 = r4.getIsOpen()     // Catch: java.lang.Exception -> L42
            r0.append(r4)     // Catch: java.lang.Exception -> L42
            java.lang.String r4 = "}"
            r0.append(r4)     // Catch: java.lang.Exception -> L42
            java.lang.String r4 = r0.toString()     // Catch: java.lang.Exception -> L42
            return r4
        L42:
            r4 = move-exception
            r4.printStackTrace()
            goto L4e
        L47:
            java.lang.String r4 = "ADMateJSBridge"
            java.lang.String r0 = "setSoundsOpen, The request is invalid"
            com.meishu.sdk.core.utils.LogUtil.dev(r4, r0)
        L4e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.a.setSoundsOpen(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String setVideoPlayState(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            java.lang.String r1 = ""
            if (r0 != 0) goto L4e
            java.lang.Class<com.meishu.sdk.core.webview.jsbridge.bean.SetVideoPlayStateParam> r0 = com.meishu.sdk.core.webview.jsbridge.bean.SetVideoPlayStateParam.class
            java.lang.Object r4 = r3.a(r4, r0)
            com.meishu.sdk.core.webview.jsbridge.bean.SetVideoPlayStateParam r4 = (com.meishu.sdk.core.webview.jsbridge.bean.SetVideoPlayStateParam) r4
            if (r4 == 0) goto L47
            r4.getUuid()
            boolean r0 = r3.a()
            if (r0 != 0) goto L1c
            goto L47
        L1c:
            com.meishu.sdk.core.webview.listener.d r0 = r3.f32092g     // Catch: java.lang.Exception -> L42
            if (r0 == 0) goto L4e
            boolean r2 = r4.getIsPlay()     // Catch: java.lang.Exception -> L42
            r0.setVideoPlayState(r2)     // Catch: java.lang.Exception -> L42
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L42
            r0.<init>()     // Catch: java.lang.Exception -> L42
            java.lang.String r2 = "{\"isPlay\":"
            r0.append(r2)     // Catch: java.lang.Exception -> L42
            boolean r4 = r4.getIsPlay()     // Catch: java.lang.Exception -> L42
            r0.append(r4)     // Catch: java.lang.Exception -> L42
            java.lang.String r4 = "}"
            r0.append(r4)     // Catch: java.lang.Exception -> L42
            java.lang.String r4 = r0.toString()     // Catch: java.lang.Exception -> L42
            return r4
        L42:
            r4 = move-exception
            r4.printStackTrace()
            goto L4e
        L47:
            java.lang.String r4 = "ADMateJSBridge"
            java.lang.String r0 = "setVideoPlayState, The request is invalid"
            com.meishu.sdk.core.utils.LogUtil.dev(r4, r0)
        L4e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.webview.a.setVideoPlayState(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InvokeDeepLinkParam invokeDeepLinkParam, int i2, String str) {
        if (TextUtils.isEmpty(invokeDeepLinkParam.getCallbackFunc())) {
            return;
        }
        SdkHandler.runOnMainThread(new b(invokeDeepLinkParam, i2, str));
    }

    public void a(String str, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ClickTempParam clickTempParam = (ClickTempParam) a(str, ClickTempParam.class);
        if (clickTempParam != null) {
            clickTempParam.getUuid();
            if (a()) {
                if (z2 && clickTempParam.getAct_type() <= 0) {
                    LogUtil.dev("ADMateJSBridge", "clickTemp, The act_type is invalid");
                    return;
                }
                try {
                    com.meishu.sdk.core.webview.listener.d dVar = this.f32092g;
                    if (dVar != null) {
                        dVar.onWebClicked(clickTempParam);
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        LogUtil.dev("ADMateJSBridge", "clickTemp, The request is invalid");
    }

    public final <T> T a(String str, Class<T> cls) {
        try {
            return (T) v.f32031a.fromJson(str, (Class) cls);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final boolean a() {
        try {
            return o.a(this.f32088c.f32119d);
        } catch (Exception unused) {
            return false;
        }
    }
}
