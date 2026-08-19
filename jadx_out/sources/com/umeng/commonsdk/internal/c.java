package com.umeng.commonsdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bg;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.bx;
import com.umeng.analytics.pro.by;
import com.umeng.analytics.pro.bz;
import com.umeng.analytics.pro.r;
import com.umeng.commonsdk.UMConfigureImpl;
import com.umeng.commonsdk.UMInnerManager;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.listener.OnGetOaidListener;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.idtracking.i;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.commonsdk.utils.onMessageSendListener;
import com.umeng.umzid.ZIDManager;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class c implements UMLogDataProtocol {

    /* renamed from: b, reason: collision with root package name */
    public static final String f50127b = "preInitInvokedFlag";

    /* renamed from: c, reason: collision with root package name */
    public static final String f50128c = "policyGrantInvokedFlag";

    /* renamed from: d, reason: collision with root package name */
    public static final String f50129d = "policyGrantResult";

    /* renamed from: f, reason: collision with root package name */
    private static int f50130f = 1;

    /* renamed from: e, reason: collision with root package name */
    private Context f50138e;

    /* renamed from: a, reason: collision with root package name */
    public static final String f50126a = be.b().b(be.f48814q);

    /* renamed from: g, reason: collision with root package name */
    private static Class<?> f50131g = null;

    /* renamed from: h, reason: collision with root package name */
    private static Method f50132h = null;

    /* renamed from: i, reason: collision with root package name */
    private static Method f50133i = null;

    /* renamed from: j, reason: collision with root package name */
    private static Method f50134j = null;

    /* renamed from: k, reason: collision with root package name */
    private static volatile String f50135k = "";

    /* renamed from: l, reason: collision with root package name */
    private static volatile String f50136l = "";

    /* renamed from: m, reason: collision with root package name */
    private static boolean f50137m = false;

    static {
        c();
    }

    public c(Context context) {
        if (context != null) {
            this.f50138e = context.getApplicationContext();
        }
    }

    public static String b() {
        Method method;
        if (!TextUtils.isEmpty(f50136l)) {
            return f50136l;
        }
        Class<?> cls = f50131g;
        if (cls == null || (method = f50132h) == null || f50134j == null) {
            return "";
        }
        try {
            Object objInvoke = method.invoke(cls, null);
            if (objInvoke == null) {
                return "";
            }
            String str = (String) f50134j.invoke(objInvoke, null);
            try {
                f50136l = str;
                return str;
            } catch (Throwable unused) {
                return str;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    private static void c() {
        try {
            f50131g = ZIDManager.class;
            Method declaredMethod = ZIDManager.class.getDeclaredMethod("getInstance", null);
            if (declaredMethod != null) {
                f50132h = declaredMethod;
            }
            Method declaredMethod2 = f50131g.getDeclaredMethod("getZID", Context.class);
            if (declaredMethod2 != null) {
                f50133i = declaredMethod2;
            }
            Method declaredMethod3 = f50131g.getDeclaredMethod("getSDKVersion", null);
            if (declaredMethod3 != null) {
                f50134j = declaredMethod3;
            }
        } catch (Throwable unused) {
        }
    }

    private void d() {
        bx bxVarA = bx.a(this.f50138e);
        by byVarA = bxVarA.a(bz.f48984c);
        if (byVarA != null) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建成真正信封。");
            try {
                String str = byVarA.f48976a;
                String str2 = byVarA.f48977b;
                JSONObject jSONObjectA = new com.umeng.commonsdk.statistics.b().a(this.f50138e.getApplicationContext(), new JSONObject(byVarA.f48978c), new JSONObject(byVarA.f48979d), byVarA.f48980e, str2, byVarA.f48981f);
                if (jSONObjectA == null || !jSONObjectA.has("exception")) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建真正信封 成功! 删除二级缓存记录。");
                } else {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建真正信封 失败。删除二级缓存记录");
                }
                bxVarA.a(bz.f48984c, str);
                bxVarA.b();
            } catch (Throwable unused) {
            }
        }
    }

    private void e() {
        if (f50137m) {
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
                return;
            }
            f50137m = false;
        } else if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
            f50137m = true;
            a(this.f50138e, new OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.4
                @Override // com.umeng.commonsdk.listener.OnGetOaidListener
                public void onGetOaid(String str) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> OAID云控参数更新(不采集->采集)：采集完成");
                    if (TextUtils.isEmpty(str)) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> oaid返回null或者空串，不需要 伪冷启动。");
                        return;
                    }
                    try {
                        SharedPreferences sharedPreferences = c.this.f50138e.getSharedPreferences(i.f50314a, 0);
                        if (sharedPreferences != null) {
                            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                            editorEdit.putString(i.f50315b, str);
                            editorEdit.commit();
                        }
                    } catch (Throwable unused) {
                    }
                    UMWorkDispatch.sendEvent(c.this.f50138e, a.f50119w, b.a(c.this.f50138e).a(), null);
                }
            });
        }
    }

    private void f() {
        if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
            f50137m = true;
            UMConfigureImpl.registerInterruptFlag();
            UMConfigureImpl.init(this.f50138e);
            f50130f++;
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 要读取 oaid，需等待读取结果.");
            UMConfigureImpl.registerMessageSendListener(new onMessageSendListener() { // from class: com.umeng.commonsdk.internal.c.5
                @Override // com.umeng.commonsdk.utils.onMessageSendListener
                public void onMessageSend() {
                    if (c.this.f50138e != null) {
                        UMWorkDispatch.sendEvent(c.this.f50138e, a.f50120x, b.a(c.this.f50138e).a(), null);
                    }
                    UMConfigureImpl.removeMessageSendListener(this);
                }
            });
            a(this.f50138e, true);
        }
    }

    private void g() {
        if (f50130f <= 0) {
            h();
            e(this.f50138e);
        }
    }

    private void h() {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 真实构建条件满足，开始构建业务信封。");
        if (UMUtils.isMainProgress(this.f50138e)) {
            f(this.f50138e);
            UMInnerManager.sendInnerPackage(this.f50138e);
            if (!FieldManager.allow(com.umeng.commonsdk.utils.d.at) && SdkVersion.SDK_TYPE == 0 && UMUtils.isMainProgress(this.f50138e)) {
                Context context = this.f50138e;
                UMWorkDispatch.sendEvent(context, a.f50087G, b.a(context).a(), null, 5000L);
            }
            Context context2 = this.f50138e;
            UMWorkDispatch.sendEvent(context2, r.a.f49645z, CoreProtocol.getInstance(context2), null);
            Context context3 = this.f50138e;
            UMWorkDispatch.sendEvent(context3, a.f50116t, b.a(context3).a(), null);
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0312  */
    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void workEvent(java.lang.Object r11, int r12) throws org.json.JSONException, java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.c.workEvent(java.lang.Object, int):void");
    }

    public String a() {
        Method method;
        if (!TextUtils.isEmpty(f50135k)) {
            return f50135k;
        }
        Class<?> cls = f50131g;
        if (cls == null || (method = f50132h) == null || f50133i == null) {
            return "";
        }
        try {
            Object objInvoke = method.invoke(cls, null);
            if (objInvoke == null) {
                return "";
            }
            String str = (String) f50133i.invoke(objInvoke, this.f50138e);
            try {
                f50135k = str;
                return str;
            } catch (Throwable unused) {
                return str;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    private void b(Context context) {
        try {
            String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, bv.f48906g, "");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("appkey"), UMGlobalContext.getInstance(context).getAppkey());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(bv.f48906g), strImprintProperty);
            JSONObject jSONObjectBuildSilentEnvelopeWithExtHeader = UMEnvelopeBuild.buildSilentEnvelopeWithExtHeader(context, jSONObject, null, UMServerURL.SILENT_HEART_BEAT);
            if (jSONObjectBuildSilentEnvelopeWithExtHeader == null || !jSONObjectBuildSilentEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建心跳报文 成功!!!");
            } else {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建心跳报文失败.");
            }
        } catch (Throwable unused) {
        }
    }

    private void a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("appkey"), UMGlobalContext.getInstance(context).getAppkey());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMGlobalContext.getInstance(context).getAppVersion());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(bv.f48923x), AnalyticsConstants.SDK_TYPE);
            JSONObject jSONObjectBuildZeroEnvelopeWithExtHeader = UMEnvelopeBuild.buildZeroEnvelopeWithExtHeader(context, jSONObject, null, UMServerURL.ZCFG_PATH);
            if (jSONObjectBuildZeroEnvelopeWithExtHeader == null || !jSONObjectBuildZeroEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建零号报文 成功!!!");
            } else {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建零号报文失败.");
            }
        } catch (Throwable unused) {
        }
    }

    private void e(Context context) {
        Object objInvoke;
        Method declaredMethod;
        Context applicationContext = context.getApplicationContext();
        String appkey = UMUtils.getAppkey(context);
        try {
            Class<?> clsA = a("com.umeng.umzid.ZIDManager");
            Method declaredMethod2 = clsA.getDeclaredMethod("getInstance", null);
            if (declaredMethod2 == null || (objInvoke = declaredMethod2.invoke(clsA, null)) == null || (declaredMethod = clsA.getDeclaredMethod("init", Context.class, String.class, a("com.umeng.umzid.IZIDCompletionCallback"))) == null) {
                return;
            }
            declaredMethod.invoke(objInvoke, applicationContext, appkey, null);
        } catch (Throwable unused) {
        }
    }

    private static void c(final Context context) {
        if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
            a(context, new OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.3
                @Override // com.umeng.commonsdk.listener.OnGetOaidListener
                public void onGetOaid(String str) {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    try {
                        SharedPreferences sharedPreferences = context.getSharedPreferences(i.f50314a, 0);
                        if (sharedPreferences == null || sharedPreferences.getString(i.f50315b, "").equalsIgnoreCase(str)) {
                            return;
                        }
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 更新本地缓存OAID");
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString(i.f50315b, str);
                        editorEdit.commit();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    private static void f(Context context) {
        File file = new File(context.getFilesDir().getAbsolutePath() + File.separator + bz.f48993l);
        if (file.exists()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
    }

    public static void a(final Context context, final boolean z2) {
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.internal.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SharedPreferences sharedPreferences = context.getSharedPreferences(i.f50314a, 0);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String strA = bg.a(context);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (!TextUtils.isEmpty(strA) && sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString(i.f50316c, (jCurrentTimeMillis2 - jCurrentTimeMillis) + "");
                        editorEdit.commit();
                    }
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                        editorEdit2.putString(i.f50315b, strA);
                        editorEdit2.commit();
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: write oaid to sp complete.");
                    }
                    if (DeviceConfig.isHonorDevice() && sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
                        editorEdit3.putString(com.umeng.commonsdk.statistics.idtracking.c.f50291b, strA);
                        editorEdit3.commit();
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: write oaid to sp complete.");
                    }
                    if (z2) {
                        UMConfigureImpl.removeInterruptFlag();
                    }
                } catch (Throwable unused) {
                }
            }
        }).start();
    }

    private void d(Context context) {
        long jLongValue;
        long jLongValue2;
        if (context == null) {
            return;
        }
        String str = AnalyticsConfig.RTD_SP_FILE;
        String strA = com.umeng.common.b.a(context, str, AnalyticsConfig.DEBUG_KEY);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        String strA2 = com.umeng.common.b.a(context, str, AnalyticsConfig.RTD_START_TIME);
        String strA3 = com.umeng.common.b.a(context, str, AnalyticsConfig.RTD_PERIOD);
        if (TextUtils.isEmpty(strA2)) {
            jLongValue = 0;
        } else {
            try {
                jLongValue = Long.valueOf(strA2).longValue();
            } catch (Throwable unused) {
            }
        }
        if (TextUtils.isEmpty(strA3)) {
            jLongValue2 = 0;
        } else {
            try {
                jLongValue2 = Long.valueOf(strA3).longValue();
            } catch (Throwable unused2) {
            }
        }
        if (jLongValue == 0 || jLongValue2 == 0) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [RTD]本地缓存startTime或者duration值无效，清除缓存数据");
            com.umeng.common.b.a(context, AnalyticsConfig.RTD_SP_FILE);
            return;
        }
        if (System.currentTimeMillis() - jLongValue > jLongValue2 * 60000) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [RTD]本地缓存dk值已经超时，清除缓存数据。");
            com.umeng.common.b.a(context, AnalyticsConfig.RTD_SP_FILE);
            if (AnalyticsConfig.isRealTimeDebugMode()) {
                AnalyticsConfig.turnOffRealTimeDebug();
                return;
            }
            return;
        }
        HashMap map = new HashMap();
        map.put(AnalyticsConfig.DEBUG_KEY, strA);
        if (AnalyticsConfig.isRealTimeDebugMode()) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [RTD]本地缓存dk值在有效期内，切换到埋点验证模式。");
        AnalyticsConfig.turnOnRealTimeDebug(map);
    }

    private static void a(Context context, final OnGetOaidListener onGetOaidListener) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.internal.c.2
            @Override // java.lang.Runnable
            public void run() {
                String strA = bg.a(applicationContext);
                OnGetOaidListener onGetOaidListener2 = onGetOaidListener;
                if (onGetOaidListener2 != null) {
                    onGetOaidListener2.onGetOaid(strA);
                }
            }
        }).start();
    }

    private static Class<?> a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
