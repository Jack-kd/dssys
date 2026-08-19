package com.meishu.sdk.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.renderscript.RenderScript;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.mobads.sdk.api.AdSettings;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.heytap.msp.mobad.api.MobAdManager;
import com.huawei.hms.ads.HwAds;
import com.jd.ad.sdk.bl.initsdk.JADYunSdk;
import com.kwad.sdk.api.KsAdSDK;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.PackageBean;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f0;
import com.meishu.sdk.core.utils.j;
import com.meishu.sdk.core.utils.r;
import com.meishu.sdk.core.utils.r0;
import com.meishu.sdk.core.utils.s;
import com.meishu.sdk.core.utils.u;
import com.meishu.sdk.core.utils.y0;
import com.qq.e.comm.managers.status.SDKStatus;
import com.sigmob.windad.WindAds;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class AdSdk {
    private static final String TAG = "AdSdk";
    private static MSAdConfig adConfig = null;
    private static Context context = null;
    private static long initSuccTime = 0;
    private static long initTime = 0;
    public static boolean isTestMode = false;
    private static String local_oaid = null;
    private static String oaid = null;
    private static int oaid_errno = -1;

    public class a extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MSAdConfig f31482a;

        public a(MSAdConfig mSAdConfig) {
            this.f31482a = mSAdConfig;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            a0.a("");
            s.a(AdSdk.context, this.f31482a.getAuthority());
            AdSdk.checkCleartextTrafficConfig(this.f31482a.secure());
            try {
                List<InetAddress> listAsList = Arrays.asList(InetAddress.getAllByName("sdk.1rtb.net"));
                synchronized (u.class) {
                    u.f32030a = listAsList;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public class b extends l {

        public class a extends TypeToken<List<PackageBean.DpFlagBean>> {
            public a(b bVar) {
            }
        }

        /* renamed from: com.meishu.sdk.core.AdSdk$b$b, reason: collision with other inner class name */
        public class C0647b extends TypeToken<List<String>> {
            public C0647b(b bVar) {
            }
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            PackageBean.HappyBean happyBean;
            r.a().a("", "");
            try {
                if (TextUtils.isEmpty(AdSdk.getSharedPreferences().getString("install_time", ""))) {
                    AdSdk.getSharedPreferences().edit().putString("install_time", String.valueOf(System.currentTimeMillis())).apply();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Gson gson = new Gson();
            try {
                r0.f31974e = r.a().a("splshsty", 1);
                String strA = r.a().a("dpflag", "");
                if (!TextUtils.isEmpty(strA)) {
                    r0.f31975f = (List) gson.fromJson(strA, new a(this).getType());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                String strA2 = r.a().a("black_scheme", "");
                if (!TextUtils.isEmpty(strA2)) {
                    r0.f31977h = AdSdk.getStringIntegerHashMap(strA2);
                }
            } catch (Throwable unused) {
            }
            try {
                String strA3 = r.a().a("happybean", "");
                if (!TextUtils.isEmpty(strA3) && (happyBean = (PackageBean.HappyBean) gson.fromJson(strA3, PackageBean.HappyBean.class)) != null) {
                    r0.f31979j = happyBean;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            r0.f31980k = r.a().a("dpstay", 2);
            r0.f31983n = Integer.valueOf(r.a().a("field_export", 0));
            r0.f31984o = r.a().a("use_browser", 0);
            r0.f31986q = r.a().a("olp", 0);
            r0.f31987r = r.a().a("syncSave", 0);
            r0.f31988s = r.a().a("due", 0);
            r0.f31989t = r.a().a("noldp", 0);
            r0.f31976g = r.a().a("shakeTimeout", 0L);
            r0.f31978i = r.a().a("verbosity", 0);
            try {
                String strA4 = r.a().a("jbUrlPrefixes", "");
                if (!TextUtils.isEmpty(strA4)) {
                    r0.f31985p = (List) gson.fromJson(strA4, new C0647b(this).getType());
                }
            } catch (Exception e3) {
                LogUtil.dev(AdSdk.TAG, e3);
            }
            RenderScript renderScript = f0.f31893a;
            try {
                f0.f31893a = RenderScript.create(AdSdk.getContext());
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
        }
    }

    public static MSAdConfig adConfig() {
        if (adConfig == null) {
            Log.e(LogUtil.TAG, "adConfig is null ,check sdk init");
        }
        return adConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkCleartextTrafficConfig(int i2) {
        if (y0.l()) {
            return;
        }
        if (i2 == 0) {
            String str = TAG;
            LogUtil.e(str, "==================================================");
            LogUtil.e(str, "配置冲突：SDK secure 配置为 SECURE_HTTP，但当前 App 不允许 HTTP 明文流量！");
            LogUtil.e(str, "请在 AndroidManifest.xml 中添加 android:usesCleartextTraffic=\"true\"");
            LogUtil.e(str, "或在 res/xml/network_security_config.xml 中配置允许明文流量");
            LogUtil.e(str, "==================================================");
            return;
        }
        if (i2 == 2) {
            String str2 = TAG;
            LogUtil.w(str2, "==================================================");
            LogUtil.w(str2, "配置提示：SDK secure 配置为 SECURE_ALL，但当前 App 不允许 HTTP 明文流量！");
            LogUtil.w(str2, "请在 AndroidManifest.xml 中添加 android:usesCleartextTraffic=\"true\"");
            LogUtil.w(str2, "或在 res/xml/network_security_config.xml 中配置允许明文流量");
            LogUtil.w(str2, "==================================================");
        }
    }

    public static IAdManager getAdManager() {
        return new MAdManager();
    }

    public static String getAdmobVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            Class.forName("com.google.android.gms.ads.MobileAds").getDeclaredMethod("getVersionString", null).setAccessible(true);
            return "21.0.0";
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getBDVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            return AdSettings.getSDKVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getCSJVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            int i2 = TTAdConstant.INTERACTION_TYPE_BROWSER;
            return TTAdSdk.getAdManager().getSDKVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Context getContext() {
        return context;
    }

    public static String getDuoMengVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            Method declaredMethod = Class.forName("com.domob.sdk.l.b").getDeclaredMethod("getSdkVersion", null);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getGDTVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            return SDKStatus.getIntegrationSDKVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getHWVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            if ("huawei".equalsIgnoreCase(Build.MANUFACTURER)) {
                Class.forName("com.huawei.hms.ads.HwAds");
                return HwAds.getSDKVersion();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static long getInitSuccTime() {
        return initSuccTime;
    }

    public static long getInitTime() {
        return initTime;
    }

    public static String getJDVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            return JADYunSdk.getSDKVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getKSVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            return KsAdSDK.getSDKVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getLocalOaid() {
        String str = j.f31914a;
        local_oaid = str;
        if ((TextUtils.isEmpty(str) || "unknown".equals(local_oaid)) && adConfig() != null && adConfig().customController() != null) {
            local_oaid = adConfig().customController().getOaid();
        }
        String str2 = local_oaid;
        if (TextUtils.isEmpty(str2) || str2.toLowerCase().startsWith("support:")) {
            return null;
        }
        return local_oaid;
    }

    public static String getMimoVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            if ("Xiaomi".equalsIgnoreCase(Build.MANUFACTURER)) {
                Class.forName("com.miui.zeus.mimo.sdk.BuildConfig");
                return "5.1.7";
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static String getOPPOVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            if ("OPPO".equalsIgnoreCase(Build.MANUFACTURER)) {
                Class.forName("com.heytap.msp.mobad.api.MobAdManager");
                return MobAdManager.getInstance().getSdkVerName();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static String getOaid() {
        String str = j.f31914a;
        oaid = str;
        if (TextUtils.isEmpty(str) && adConfig() != null && adConfig().customController() != null) {
            oaid = adConfig().customController().getOaid();
        }
        String str2 = oaid;
        if (TextUtils.isEmpty(str2) || str2.toLowerCase().startsWith("support:")) {
            return null;
        }
        return oaid;
    }

    public static int getOaid_errno() {
        return oaid_errno;
    }

    public static String getPangleVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            Class.forName("com.bytedance.sdk.openadsdk.api.init.PAGSdk");
            return PAGSdk.getSDKVersion();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String getSGMVersionName() {
        if (adConfig() != null && !adConfig().isUseMediation()) {
            return null;
        }
        try {
            return WindAds.getVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static SharedPreferences getSharedPreferences() {
        return context.getApplicationContext().getSharedPreferences(LogUtil.TAG, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashMap<String, Integer> getStringIntegerHashMap(String str) throws JSONException {
        HashMap<String, Integer> map = new HashMap<>();
        JSONObject jSONObject = new JSONObject(str.toString());
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, (Integer) jSONObject.get(next));
        }
        return map;
    }

    public static String getVersionName() {
        return "2.5.13.0";
    }

    public static String getWxVersionName() {
        try {
            return "" + getContext().getPackageManager().getApplicationInfo("com.tencent.mm", 128).metaData.getInt("com.tencent.mm.BuildInfo.OPEN_SDK_VERSION", 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void init(Context context2, MSAdConfig mSAdConfig) {
        try {
            if (adConfig != null) {
                return;
            }
            if (mSAdConfig == null) {
                throw new IllegalArgumentException("config is null");
            }
            initTime = System.currentTimeMillis();
            context = context2.getApplicationContext();
            new Thread(new a(mSAdConfig)).start();
            adConfig = mSAdConfig;
            setInstallTime();
            initSuccTime = System.currentTimeMillis();
        } catch (Exception e2) {
            adConfig = null;
            e2.printStackTrace();
            LogUtil.e(TAG, "SDK INIT ERROR");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void initOtherSdks() {
        /*
            com.meishu.sdk.core.MSAdConfig r0 = adConfig()
            if (r0 == 0) goto Le8
            com.meishu.sdk.core.MSAdConfig r0 = adConfig()
            boolean r0 = r0.isUseMediation()
            if (r0 == 0) goto Le8
            com.meishu.sdk.core.MSAdConfig r0 = adConfig()
            java.util.HashMap r0 = r0.getInitSdkMap()
            if (r0 == 0) goto Le8
            com.meishu.sdk.core.MSAdConfig r0 = adConfig()
            java.util.HashMap r0 = r0.getInitSdkMap()
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L2a:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Le8
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            boolean r3 = r1 instanceof java.lang.String
            r4 = 1
            if (r3 == 0) goto Lca
            java.lang.String r1 = (java.lang.String) r1
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L2a
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 != 0) goto L2a
            r2.getClass()
            int r3 = r2.hashCode()
            java.lang.String r5 = "BAIDU"
            java.lang.String r6 = "GDT"
            java.lang.String r7 = "CSJ"
            java.lang.String r8 = "KS"
            r9 = -1
            switch(r3) {
                case 2408: goto L81;
                case 67034: goto L7a;
                case 70423: goto L71;
                case 62961147: goto L68;
                default: goto L66;
            }
        L66:
            r4 = r9
            goto L89
        L68:
            boolean r2 = r2.equals(r5)
            if (r2 != 0) goto L6f
            goto L66
        L6f:
            r4 = 3
            goto L89
        L71:
            boolean r2 = r2.equals(r6)
            if (r2 != 0) goto L78
            goto L66
        L78:
            r4 = 2
            goto L89
        L7a:
            boolean r2 = r2.equals(r7)
            if (r2 != 0) goto L89
            goto L66
        L81:
            boolean r2 = r2.equals(r8)
            if (r2 != 0) goto L88
            goto L66
        L88:
            r4 = 0
        L89:
            java.lang.String r2 = ""
            switch(r4) {
                case 0: goto Lbb;
                case 1: goto Lac;
                case 2: goto L9d;
                case 3: goto L8f;
                default: goto L8e;
            }
        L8e:
            goto L2a
        L8f:
            com.meishu.sdk.core.e r3 = com.meishu.sdk.core.a.a(r5)
            com.meishu.sdk.core.d r3 = r3.config()
            android.content.Context r4 = com.meishu.sdk.core.AdSdk.context
            r3.init(r4, r1, r2)
            goto L2a
        L9d:
            com.meishu.sdk.core.e r3 = com.meishu.sdk.core.a.a(r6)
            com.meishu.sdk.core.d r3 = r3.config()
            android.content.Context r4 = com.meishu.sdk.core.AdSdk.context
            r3.init(r4, r1, r2)
            goto L2a
        Lac:
            com.meishu.sdk.core.e r3 = com.meishu.sdk.core.a.a(r7)
            com.meishu.sdk.core.d r3 = r3.config()
            android.content.Context r4 = com.meishu.sdk.core.AdSdk.context
            r3.init(r4, r1, r2)
            goto L2a
        Lbb:
            com.meishu.sdk.core.e r3 = com.meishu.sdk.core.a.a(r8)
            com.meishu.sdk.core.d r3 = r3.config()
            android.content.Context r4 = com.meishu.sdk.core.AdSdk.context
            r3.init(r4, r1, r2)
            goto L2a
        Lca:
            boolean r2 = r1 instanceof java.util.Map
            if (r2 == 0) goto L2a
            java.util.Map r1 = (java.util.Map) r1     // Catch: java.lang.Exception -> Le2
            java.lang.String r2 = "isUseMediation"
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Exception -> Le2
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Exception -> Le2
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Exception -> Le2
            if (r1 == 0) goto L2a
            com.meishu.sdk.core.utils.k0.f31920b = r4     // Catch: java.lang.Exception -> Le2
            goto L2a
        Le2:
            r1 = move-exception
            r1.printStackTrace()
            goto L2a
        Le8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.AdSdk.initOtherSdks():void");
    }

    public static void initSdkIfNot(Context context2, SdkAdInfo sdkAdInfo) {
        e eVarA = com.meishu.sdk.core.a.a(sdkAdInfo.getSdk());
        if (eVarA != null) {
            eVarA.config().init(context2, sdkAdInfo.getApp_id(), sdkAdInfo.getApp_key());
        }
    }

    private static void setInstallTime() {
        new Thread(new b()).start();
    }

    public static void setOaid_errno(int i2) {
        oaid_errno = i2;
    }
}
