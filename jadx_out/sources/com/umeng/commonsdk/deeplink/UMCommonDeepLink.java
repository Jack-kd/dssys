package com.umeng.commonsdk.deeplink;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.umeng.analytics.pro.ab;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.deeplink.f;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class UMCommonDeepLink {
    private static volatile UMCommonDeepLink sInstance;
    private static volatile a sPendingAttribution;
    private static volatile b sPendingInstall;
    private UMCommonDeepLinkCallback mCallback;
    private Handler mCallbackHandler;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final Context f50014a;

        /* renamed from: b, reason: collision with root package name */
        final String f50015b;

        /* renamed from: c, reason: collision with root package name */
        final String f50016c;

        /* renamed from: d, reason: collision with root package name */
        final String f50017d;

        /* renamed from: e, reason: collision with root package name */
        volatile boolean f50018e = false;

        public a(Context context, String str, String str2, String str3) {
            this.f50014a = context;
            this.f50015b = str;
            this.f50016c = str2;
            this.f50017d = TextUtils.isEmpty(str3) ? "url" : str3;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        final Context f50019a;

        /* renamed from: b, reason: collision with root package name */
        final Handler f50020b;

        /* renamed from: c, reason: collision with root package name */
        final InstallParamsCallback f50021c;

        /* renamed from: d, reason: collision with root package name */
        volatile boolean f50022d = false;

        public b(Context context, Handler handler, InstallParamsCallback installParamsCallback) {
            this.f50019a = context;
            this.f50020b = handler;
            this.f50021c = installParamsCallback;
        }
    }

    private UMCommonDeepLink() {
    }

    private static Map<String, Object> buildHandleOpenURLParams(Uri uri) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (queryParameterNames != null) {
            for (String str : queryParameterNames) {
                map2.put(str, uri.getQueryParameter(str));
            }
        }
        map.put("install_params", map2);
        String path = uri.getPath();
        if (!TextUtils.isEmpty(path)) {
            map.put("install_path", path);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void callbackInstallFailure(Handler handler, final InstallParamsCallback installParamsCallback, final int i2, final String str) {
        if (installParamsCallback == null) {
            return;
        }
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [deeplink] callbackInstallFailure: code=" + i2 + ", msg=" + str);
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new Runnable() { // from class: com.umeng.commonsdk.deeplink.UMCommonDeepLink.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    installParamsCallback.onFailure(i2, str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void callbackInstallSuccess(Handler handler, final InstallParamsCallback installParamsCallback, final Map<String, Object> map) {
        if (installParamsCallback == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("--->>> [deeplink] callbackInstallSuccess: params=");
        sb.append(map != null ? map.toString() : "null");
        UMRTLog.i(UMRTLog.RTLOG_TAG, sb.toString());
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new Runnable() { // from class: com.umeng.commonsdk.deeplink.UMCommonDeepLink.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    installParamsCallback.onSuccess(map);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void dispatchAttribution(Context context, String str, String str2, String str3) {
        a aVar = new a(context, str, str2, str3);
        if (UMConfigure.needSendZcfgEnv(context)) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] dispatchAttribution: pending for ZERO_RECV_RESPONSE");
            sPendingAttribution = aVar;
        } else if (!UMConfigure.getInitStatus()) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] dispatchAttribution: pending for SDK init");
            sPendingAttribution = aVar;
        } else if (TextUtils.isEmpty(ab.a().d(context))) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] dispatchAttribution: pending for START_SESSION (sessionId empty)");
            sPendingAttribution = aVar;
        } else {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] dispatchAttribution: execute immediately");
            UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f50089I, com.umeng.commonsdk.internal.b.a(context).a(), aVar);
        }
    }

    private void dispatchInstallRequest(Context context, Handler handler, InstallParamsCallback installParamsCallback) {
        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f50088H, com.umeng.commonsdk.internal.b.a(context).a(), new b(context, handler, installParamsCallback));
    }

    public static void executeAttributionReport(Object obj) {
        if (obj instanceof a) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] executeAttributionReport: start");
            a aVar = (a) obj;
            c.a(aVar.f50014a, aVar.f50015b, aVar.f50016c, aVar.f50017d);
        }
    }

    public static void executeInstallRequest(Object obj) {
        if (obj instanceof b) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] executeInstallRequest: start DDL request");
            b bVar = (b) obj;
            final Context context = bVar.f50019a;
            final Handler handler = bVar.f50020b;
            final InstallParamsCallback installParamsCallback = bVar.f50021c;
            try {
                f.a(g.a(context), new f.a() { // from class: com.umeng.commonsdk.deeplink.UMCommonDeepLink.2
                    @Override // com.umeng.commonsdk.deeplink.f.a
                    public void a(JSONObject jSONObject, String str, String str2) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] DDL onSuccess: path=" + str + ", refId=" + str2);
                        d.a(context, jSONObject, str);
                        Map mapA = d.a(context);
                        if (mapA == null) {
                            mapA = new HashMap();
                        }
                        UMCommonDeepLink.callbackInstallSuccess(handler, installParamsCallback, mapA);
                    }

                    @Override // com.umeng.commonsdk.deeplink.f.a
                    public void a(int i2, Throwable th) {
                        String message = th != null ? th.getMessage() : "Unknown error";
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [deeplink] DDL onFailure: code=" + i2 + ", msg=" + message);
                        UMCommonDeepLink.callbackInstallFailure(handler, installParamsCallback, i2, message);
                    }
                });
            } catch (Throwable th) {
                callbackInstallFailure(handler, installParamsCallback, -4, "Request error: " + th.getMessage());
            }
        }
    }

    public static UMCommonDeepLink getInstance() {
        if (sInstance == null) {
            synchronized (UMCommonDeepLink.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new UMCommonDeepLink();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    public static void handleTimeout(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (bVar.f50022d) {
                return;
            }
            bVar.f50022d = true;
            sPendingInstall = null;
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [deeplink] timeout: callback with error");
            callbackInstallFailure(bVar.f50020b, bVar.f50021c, -5, "处理超时。");
        }
    }

    public static void processPendingAttributionOnSessionStart(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        a aVar = sPendingAttribution;
        if (aVar == null || aVar.f50018e) {
            return;
        }
        aVar.f50018e = true;
        sPendingAttribution = null;
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] processPendingOnSessionStart: dispatch attribution report");
        UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.f50089I, com.umeng.commonsdk.internal.b.a(applicationContext).a(), aVar);
    }

    public static void processPendingTasks(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        b bVar = sPendingInstall;
        if (bVar != null && !bVar.f50022d) {
            bVar.f50022d = true;
            sPendingInstall = null;
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] processPending: dispatch install request");
            getInstance().dispatchInstallRequest(applicationContext, bVar.f50020b, bVar.f50021c);
        }
        a aVar = sPendingAttribution;
        if (aVar == null || aVar.f50018e) {
            return;
        }
        if (TextUtils.isEmpty(ab.a().d(applicationContext))) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] processPending: attribution held, sessionId still empty, wait for START_SESSION");
            return;
        }
        aVar.f50018e = true;
        sPendingAttribution = null;
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] processPending: dispatch attribution report");
        UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.f50089I, com.umeng.commonsdk.internal.b.a(applicationContext).a(), aVar);
    }

    private boolean processUrlInternal(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Context applicationContext = context.getApplicationContext();
                Uri uri = Uri.parse(str);
                String queryParameter = uri.getQueryParameter("_umlnk_refid");
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] processUrl: urlKey=" + str2 + ", url=" + str);
                if (TextUtils.isEmpty(queryParameter)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] processUrl: no _umlnk_refid found");
                    return false;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] processUrl: _umlnk_refid=" + queryParameter);
                StringBuilder sb = new StringBuilder();
                sb.append("--->>> [deeplink] processUrl: callback ");
                sb.append(this.mCallback != null ? "will fire" : "is null, skip");
                UMRTLog.i(UMRTLog.RTLOG_TAG, sb.toString());
                if (this.mCallback != null) {
                    final Map<String, Object> mapBuildHandleOpenURLParams = buildHandleOpenURLParams(uri);
                    Handler handler = this.mCallbackHandler;
                    if (handler == null) {
                        handler = new Handler(Looper.getMainLooper());
                    }
                    final UMCommonDeepLinkCallback uMCommonDeepLinkCallback = this.mCallback;
                    handler.post(new Runnable() { // from class: com.umeng.commonsdk.deeplink.UMCommonDeepLink.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                uMCommonDeepLinkCallback.onResolveDeepLink(mapBuildHandleOpenURLParams);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
                dispatchAttribution(applicationContext, str, queryParameter, str2);
                return true;
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
            }
        }
        return false;
    }

    private void scheduleTimeout(Context context, b bVar) {
        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f50090J, com.umeng.commonsdk.internal.b.a(context).a(), bVar, 5000L);
    }

    public void getInstallParams(Context context, Handler handler, InstallParamsCallback installParamsCallback) {
        Map<String, Object> mapA;
        if (context == null || installParamsCallback == null) {
            return;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (d.b(applicationContext) && (mapA = d.a(applicationContext)) != null) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] getInstallParams: cache hit");
                callbackInstallSuccess(handler, installParamsCallback, mapA);
                return;
            }
            if (UMConfigure.needSendZcfgEnv(applicationContext)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] getInstallParams: pending for ZERO_RECV_RESPONSE");
                b bVar = new b(applicationContext, handler, installParamsCallback);
                sPendingInstall = bVar;
                scheduleTimeout(applicationContext, bVar);
                return;
            }
            if (UMConfigure.getInitStatus()) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] getInstallParams: execute immediately");
                dispatchInstallRequest(applicationContext, handler, installParamsCallback);
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] getInstallParams: pending for LOAD_CFGFD_COMPLETE");
                b bVar2 = new b(applicationContext, handler, installParamsCallback);
                sPendingInstall = bVar2;
                scheduleTimeout(applicationContext, bVar2);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            callbackInstallFailure(handler, installParamsCallback, -3, "内部错误。");
        }
    }

    public boolean handleOpenURL(Context context, Uri uri) {
        if (uri == null) {
            return false;
        }
        return handleOpenURL(context, uri.toString());
    }

    public boolean handlePasteboardURL(Context context, String str) {
        return processUrlInternal(context, str, "pb_url");
    }

    public void setCallback(UMCommonDeepLinkCallback uMCommonDeepLinkCallback, Handler handler) {
        this.mCallback = uMCommonDeepLinkCallback;
        this.mCallbackHandler = handler;
        StringBuilder sb = new StringBuilder();
        sb.append("--->>> [deeplink] setCallback: registered, handler=");
        sb.append(handler != null ? "custom" : "mainThread");
        UMRTLog.i(UMRTLog.RTLOG_TAG, sb.toString());
    }

    public boolean handleOpenURL(Context context, String str) {
        return processUrlInternal(context, str, "url");
    }
}
