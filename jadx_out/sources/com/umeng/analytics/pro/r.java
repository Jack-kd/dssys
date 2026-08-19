package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.process.UMProcessDBHelper;
import com.umeng.common.AnalyticsSdkVersion;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.deeplink.UMCommonDeepLink;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.utils.JSONArraySortUtil;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    private static Context f49587a = null;

    /* renamed from: l, reason: collision with root package name */
    private static final String f49588l = "first_activate_time";

    /* renamed from: m, reason: collision with root package name */
    private static final String f49589m = "ana_is_f";

    /* renamed from: n, reason: collision with root package name */
    private static final String f49590n = "thtstart";

    /* renamed from: o, reason: collision with root package name */
    private static final String f49591o = "dstk_last_time";

    /* renamed from: p, reason: collision with root package name */
    private static final String f49592p = "dstk_cnt";

    /* renamed from: q, reason: collision with root package name */
    private static final String f49593q = "gkvc";

    /* renamed from: r, reason: collision with root package name */
    private static final String f49594r = "ekvc";

    /* renamed from: t, reason: collision with root package name */
    private static final String f49595t = "-1";

    /* renamed from: x, reason: collision with root package name */
    private static final String f49596x = "com.umeng.umcrash.UMCrashUtils";

    /* renamed from: y, reason: collision with root package name */
    private static Class<?> f49597y;

    /* renamed from: z, reason: collision with root package name */
    private static Method f49598z;

    /* renamed from: b, reason: collision with root package name */
    private c f49599b;

    /* renamed from: c, reason: collision with root package name */
    private SharedPreferences f49600c;

    /* renamed from: d, reason: collision with root package name */
    private String f49601d;

    /* renamed from: e, reason: collision with root package name */
    private String f49602e;

    /* renamed from: f, reason: collision with root package name */
    private int f49603f;

    /* renamed from: g, reason: collision with root package name */
    private JSONArray f49604g;

    /* renamed from: h, reason: collision with root package name */
    private final int f49605h;

    /* renamed from: i, reason: collision with root package name */
    private int f49606i;

    /* renamed from: j, reason: collision with root package name */
    private int f49607j;

    /* renamed from: k, reason: collision with root package name */
    private long f49608k;

    /* renamed from: s, reason: collision with root package name */
    private final long f49609s;

    /* renamed from: u, reason: collision with root package name */
    private boolean f49610u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f49611v;

    /* renamed from: w, reason: collision with root package name */
    private Object f49612w;

    public static class a {

        /* renamed from: A, reason: collision with root package name */
        public static final int f49613A = 8209;

        /* renamed from: B, reason: collision with root package name */
        public static final int f49614B = 8210;

        /* renamed from: C, reason: collision with root package name */
        public static final int f49615C = 8211;

        /* renamed from: D, reason: collision with root package name */
        public static final int f49616D = 8212;

        /* renamed from: E, reason: collision with root package name */
        public static final int f49617E = 8213;

        /* renamed from: F, reason: collision with root package name */
        public static final int f49618F = 8214;

        /* renamed from: G, reason: collision with root package name */
        public static final int f49619G = 8215;

        /* renamed from: a, reason: collision with root package name */
        public static final int f49620a = 4097;

        /* renamed from: b, reason: collision with root package name */
        public static final int f49621b = 4098;

        /* renamed from: c, reason: collision with root package name */
        public static final int f49622c = 4099;

        /* renamed from: d, reason: collision with root package name */
        public static final int f49623d = 4100;

        /* renamed from: e, reason: collision with root package name */
        public static final int f49624e = 4101;

        /* renamed from: f, reason: collision with root package name */
        public static final int f49625f = 4102;

        /* renamed from: g, reason: collision with root package name */
        public static final int f49626g = 4103;

        /* renamed from: h, reason: collision with root package name */
        public static final int f49627h = 4104;

        /* renamed from: i, reason: collision with root package name */
        public static final int f49628i = 4105;

        /* renamed from: j, reason: collision with root package name */
        public static final int f49629j = 4106;

        /* renamed from: k, reason: collision with root package name */
        public static final int f49630k = 4352;

        /* renamed from: l, reason: collision with root package name */
        public static final int f49631l = 4353;

        /* renamed from: m, reason: collision with root package name */
        public static final int f49632m = 4354;

        /* renamed from: n, reason: collision with root package name */
        public static final int f49633n = 4355;

        /* renamed from: o, reason: collision with root package name */
        public static final int f49634o = 4356;

        /* renamed from: p, reason: collision with root package name */
        public static final int f49635p = 4357;

        /* renamed from: q, reason: collision with root package name */
        public static final int f49636q = 4358;

        /* renamed from: r, reason: collision with root package name */
        public static final int f49637r = 8193;

        /* renamed from: s, reason: collision with root package name */
        public static final int f49638s = 8194;

        /* renamed from: t, reason: collision with root package name */
        public static final int f49639t = 8195;

        /* renamed from: u, reason: collision with root package name */
        public static final int f49640u = 8196;

        /* renamed from: v, reason: collision with root package name */
        public static final int f49641v = 8197;

        /* renamed from: w, reason: collision with root package name */
        public static final int f49642w = 8199;

        /* renamed from: x, reason: collision with root package name */
        public static final int f49643x = 8200;

        /* renamed from: y, reason: collision with root package name */
        public static final int f49644y = 8201;

        /* renamed from: z, reason: collision with root package name */
        public static final int f49645z = 8208;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static final r f49646a = new r();

        private b() {
        }
    }

    static {
        h();
    }

    public static r a(Context context) {
        if (f49587a == null && context != null) {
            f49587a = context.getApplicationContext();
        }
        return b.f49646a;
    }

    private void e(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (!a(this.f49608k, this.f49606i)) {
                    return;
                } else {
                    this.f49606i++;
                }
            } else if (2049 == jSONObject.getInt("__t")) {
                if (!a(this.f49608k, this.f49607j)) {
                    return;
                } else {
                    this.f49607j++;
                }
            }
            if (AnalyticsConfig.isRealTimeDebugMode()) {
                if (this.f49604g == null) {
                    this.f49604g = new JSONArray();
                }
                this.f49604g.put(jSONObject);
                l.a(f49587a).a(this.f49604g);
                this.f49604g = new JSONArray();
                return;
            }
            if (this.f49604g.length() >= this.f49603f) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** 超过10个事件，事件落库。");
                l.a(f49587a).a(this.f49604g);
                this.f49604g = new JSONArray();
            }
            if (this.f49608k == 0) {
                this.f49608k = System.currentTimeMillis();
            }
            this.f49604g.put(jSONObject);
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    private void f(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        try {
            if (!jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header")).has(g.aH)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics")) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"))) != null && jSONObjectOptJSONObject.length() > 0 && jSONObjectOptJSONObject.has(g.f49353n)) {
                    l.a(f49587a).a(true, false);
                }
                l.a(f49587a).b();
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"));
                if (jSONObject2.has(g.f49353n) && (jSONObjectOptJSONObject2 = jSONObject2.getJSONArray(g.f49353n).optJSONObject(0)) != null) {
                    String strOptString = jSONObjectOptJSONObject2.optString("id");
                    if (!TextUtils.isEmpty(strOptString)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: really delete instant session data");
                        l.a(f49587a).b(strOptString);
                    }
                }
            }
            l.a(f49587a).b();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE.");
            Context context = f49587a;
            UMWorkDispatch.sendEvent(context, a.f49631l, CoreProtocol.getInstance(context), null);
        } catch (Exception unused) {
        }
    }

    private static void h() {
        try {
            Class<?> cls = Class.forName(f49596x);
            f49597y = cls;
            Method declaredMethod = cls.getDeclaredMethod("setPuidAndProvider", String.class, String.class);
            if (declaredMethod != null) {
                f49598z = declaredMethod;
            }
        } catch (Throwable unused) {
        }
    }

    private void i() {
        JSONObject jSONObjectB = b(UMEnvelopeBuild.maxDataSpace(f49587a));
        if (jSONObjectB == null || jSONObjectB.length() < 1) {
            return;
        }
        JSONObject jSONObject = (JSONObject) jSONObjectB.opt("header");
        JSONObject jSONObject2 = (JSONObject) jSONObjectB.opt("content");
        if (f49587a == null || jSONObject == null || jSONObject2 == null) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> constructInstantMessage: request build envelope.");
        JSONObject jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(f49587a, jSONObject, jSONObject2);
        if (jSONObjectBuildEnvelopeWithExtHeader != null) {
            try {
                if (jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + jSONObjectBuildEnvelopeWithExtHeader.getInt("exception"));
                }
            } catch (Throwable unused) {
            }
            if (UMConfigure.isDebugLog()) {
                e(jSONObjectBuildEnvelopeWithExtHeader);
            }
            b((Object) jSONObjectBuildEnvelopeWithExtHeader);
        }
    }

    private void j() {
        JSONObject jSONObjectBuildEnvelopeWithExtHeader;
        JSONObject jSONObjectA = a(UMEnvelopeBuild.maxDataSpace(f49587a));
        if (jSONObjectA == null || jSONObjectA.length() < 1) {
            return;
        }
        JSONObject jSONObject = (JSONObject) jSONObjectA.opt("header");
        JSONObject jSONObject2 = (JSONObject) jSONObjectA.opt("content");
        Context context = f49587a;
        if (context == null || jSONObject == null || jSONObject2 == null || (jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, jSONObject2)) == null) {
            return;
        }
        try {
            if (jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + jSONObjectBuildEnvelopeWithExtHeader.getInt("exception"));
            }
        } catch (Throwable unused) {
        }
        if (UMConfigure.isDebugLog()) {
            d(jSONObjectBuildEnvelopeWithExtHeader);
        }
        a((Object) jSONObjectBuildEnvelopeWithExtHeader);
    }

    private JSONObject k() {
        JSONObject jSONObjectL = l();
        if (jSONObjectL != null) {
            try {
                jSONObjectL.put("st", "1");
            } catch (Throwable unused) {
            }
        }
        return jSONObjectL;
    }

    private JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (AnalyticsConfig.mWrapperType != null && AnalyticsConfig.mWrapperVersion != null) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("wrapper_version"), AnalyticsConfig.mWrapperVersion);
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("wrapper_type"), AnalyticsConfig.mWrapperType);
            }
            int verticalType = AnalyticsConfig.getVerticalType(f49587a);
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.f49348i), verticalType);
            String str = AnalyticsSdkVersion.SDK_VERSION;
            if (verticalType == 1) {
                String gameSdkVersion = AnalyticsConfig.getGameSdkVersion(f49587a);
                if (!TextUtils.isEmpty(gameSdkVersion)) {
                    str = gameSdkVersion;
                }
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("sdk_version"), str);
            } else {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("sdk_version"), AnalyticsSdkVersion.SDK_VERSION);
            }
            String strMD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(f49587a));
            if (!TextUtils.isEmpty(strMD5)) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("secret"), strMD5);
            }
            String strImprintProperty = UMEnvelopeBuild.imprintProperty(f49587a, "pr_ve", null);
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49587a);
            String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(f49587a, g.at, "");
            if (!TextUtils.isEmpty(strImprintProperty2)) {
                if (AnalyticsConfig.CLEAR_EKV_BL) {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.av), "");
                } else {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.av), strImprintProperty2);
                }
            }
            String strImprintProperty3 = UMEnvelopeBuild.imprintProperty(f49587a, g.au, "");
            if (!TextUtils.isEmpty(strImprintProperty3)) {
                if (AnalyticsConfig.CLEAR_EKV_WL) {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.aw), "");
                } else {
                    jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.aw), strImprintProperty3);
                }
            }
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.an), "1.0.0");
            if (s()) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.ap), "1");
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putLong(f49589m, 0L).commit();
                }
            }
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.f49351l), m());
            jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.f49352m), n());
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("vers_name", "");
                if (!TextUtils.isEmpty(string)) {
                    String str2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (TextUtils.isEmpty(strImprintProperty)) {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.f49351l), sharedPreferences.getString("vers_pre_version", "0"));
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a(g.f49352m), sharedPreferences.getString("vers_date", str2));
                    }
                    sharedPreferences.edit().putString("pre_version", string).putString("cur_version", DeviceConfig.getAppVersionName(f49587a)).putString("pre_date", str2).remove("vers_name").remove("vers_code").remove("vers_date").remove("vers_pre_version").commit();
                }
            }
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    private String m() {
        String string = "0";
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(f49587a, "pr_ve", null);
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(strImprintProperty)) {
            string = strImprintProperty;
        } else {
            if (!TextUtils.isEmpty(this.f49601d)) {
                return this.f49601d;
            }
            if (this.f49600c == null) {
                this.f49600c = PreferenceWrapper.getDefault(f49587a);
            }
            String string2 = this.f49600c.getString("pre_version", "");
            String appVersionName = DeviceConfig.getAppVersionName(f49587a);
            if (TextUtils.isEmpty(string2)) {
                this.f49600c.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
            } else {
                string = this.f49600c.getString("cur_version", "");
                if (appVersionName.equals(string)) {
                    string = string2;
                } else {
                    this.f49600c.edit().putString("pre_version", string).putString("cur_version", appVersionName).commit();
                }
            }
        }
        this.f49601d = string;
        return string;
    }

    private String n() {
        String strImprintProperty = null;
        try {
            strImprintProperty = UMEnvelopeBuild.imprintProperty(f49587a, "ud_da", null);
            if (TextUtils.isEmpty(strImprintProperty)) {
                if (!TextUtils.isEmpty(this.f49602e)) {
                    return this.f49602e;
                }
                if (this.f49600c == null) {
                    this.f49600c = PreferenceWrapper.getDefault(f49587a);
                }
                String string = this.f49600c.getString("pre_date", "");
                if (TextUtils.isEmpty(string)) {
                    string = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    this.f49600c.edit().putString("pre_date", string).commit();
                } else {
                    String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (!string.equals(str)) {
                        this.f49600c.edit().putString("pre_date", str).commit();
                        strImprintProperty = str;
                    }
                }
                strImprintProperty = string;
            }
        } catch (Throwable unused) {
        }
        this.f49602e = strImprintProperty;
        return strImprintProperty;
    }

    private void o() {
        try {
            this.f49606i = 0;
            this.f49607j = 0;
            this.f49608k = System.currentTimeMillis();
            PreferenceWrapper.getDefault(f49587a).edit().putLong(f49591o, System.currentTimeMillis()).putInt(f49592p, 0).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean p() {
        try {
            if (!TextUtils.isEmpty(x.a().b())) {
                b(f49587a);
            }
            if (this.f49604g.length() <= 0) {
                return false;
            }
            for (int i2 = 0; i2 < this.f49604g.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = this.f49604g.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                    String strOptString = jSONObjectOptJSONObject.optString("__i");
                    if (TextUtils.isEmpty(strOptString) || f49595t.equals(strOptString)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    private void q() {
        if (this.f49604g.length() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < this.f49604g.length(); i2++) {
                try {
                    JSONObject jSONObject = this.f49604g.getJSONObject(i2);
                    if (jSONObject == null || jSONObject.length() <= 0) {
                        jSONArray.put(jSONObject);
                    } else {
                        String strOptString = jSONObject.optString("__i");
                        boolean zIsEmpty = TextUtils.isEmpty(strOptString);
                        String str = f49595t;
                        if (zIsEmpty || f49595t.equals(strOptString)) {
                            String strB = x.a().b();
                            if (!TextUtils.isEmpty(strB)) {
                                str = strB;
                            }
                            jSONObject.put("__i", str);
                        }
                        jSONArray.put(jSONObject);
                    }
                } catch (Throwable unused) {
                }
            }
            this.f49604g = jSONArray;
        }
    }

    private void r() {
        Context context;
        SharedPreferences sharedPreferences;
        try {
            if (!s() || (context = f49587a) == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null || sharedPreferences.getLong(f49588l, 0L) != 0) {
                return;
            }
            sharedPreferences.edit().putLong(f49588l, System.currentTimeMillis()).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean s() {
        SharedPreferences sharedPreferences;
        try {
            Context context = f49587a;
            if (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return false;
            }
            return sharedPreferences.getLong(f49589m, -1L) != 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void b() {
    }

    public void c() {
        b(f49587a);
        d();
        a(true);
    }

    public void d() {
        try {
            if (this.f49604g.length() > 0) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** flushMemoryData: 事件落库。");
                l.a(f49587a).a(this.f49604g);
                this.f49604g = new JSONArray();
            }
            PreferenceWrapper.getDefault(f49587a).edit().putLong(f49590n, this.f49608k).putInt(f49593q, this.f49606i).putInt(f49594r, this.f49607j).commit();
        } catch (Throwable unused) {
        }
    }

    private r() {
        this.f49599b = null;
        this.f49600c = null;
        this.f49601d = null;
        this.f49602e = null;
        this.f49603f = 10;
        this.f49604g = new JSONArray();
        this.f49605h = 5000;
        this.f49606i = 0;
        this.f49607j = 0;
        this.f49608k = 0L;
        this.f49609s = 28800000L;
        this.f49610u = false;
        this.f49611v = false;
        this.f49612w = new Object();
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49587a);
            this.f49608k = sharedPreferences.getLong(f49590n, 0L);
            this.f49606i = sharedPreferences.getInt(f49593q, 0);
            this.f49607j = sharedPreferences.getInt(f49594r, 0);
            this.f49599b = new c();
        } catch (Throwable unused) {
        }
    }

    private void b(JSONObject jSONObject) {
        JSONObject jSONObjectF;
        if (l.a(UMGlobalContext.getAppContext(f49587a)).c() || (jSONObjectF = l.a(UMGlobalContext.getAppContext(f49587a)).f()) == null) {
            return;
        }
        String strOptString = jSONObjectF.optString("__av");
        String strOptString2 = jSONObjectF.optString("__vc");
        try {
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMUtils.getAppVersionName(f49587a));
            } else {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), strOptString);
            }
            if (TextUtils.isEmpty(strOptString2)) {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), UMUtils.getAppVersionCode(f49587a));
            } else {
                jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), strOptString2);
            }
        } catch (Throwable unused) {
        }
    }

    private void g(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        try {
            if (jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header")).has(g.aH)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                    if (!jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics")).has(g.f49353n)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Error, Should not go to this branch.");
                        return;
                    }
                    l.a(f49587a).i();
                    l.a(f49587a).h();
                    l.a(f49587a).b(true, false);
                    l.a(f49587a).a();
                    return;
                }
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics")) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"))) != null && jSONObjectOptJSONObject.length() > 0) {
                if (jSONObjectOptJSONObject.has(g.f49353n)) {
                    l.a(f49587a).b(true, false);
                }
                if (jSONObjectOptJSONObject.has("ekv") || jSONObjectOptJSONObject.has(g.f49339Z)) {
                    l.a(f49587a).h();
                }
                if (jSONObjectOptJSONObject.has("error")) {
                    l.a(f49587a).i();
                }
            }
            l.a(f49587a).a();
        } catch (Exception unused) {
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private ReportPolicy.ReportStrategy f49647a = null;

        /* renamed from: b, reason: collision with root package name */
        private int f49648b = -1;

        /* renamed from: c, reason: collision with root package name */
        private int f49649c = -1;

        /* renamed from: d, reason: collision with root package name */
        private int f49650d = -1;

        /* renamed from: e, reason: collision with root package name */
        private int f49651e = -1;

        /* renamed from: f, reason: collision with root package name */
        private ABTest f49652f;

        public c() {
            this.f49652f = null;
            this.f49652f = ABTest.getService(r.f49587a);
        }

        public void a() {
            try {
                int[] iArrA = a(-1, -1);
                this.f49648b = iArrA[0];
                this.f49649c = iArrA[1];
            } catch (Throwable unused) {
            }
        }

        public void b() {
            Defcon service = Defcon.getService(r.f49587a);
            if (service.isOpen()) {
                ReportPolicy.ReportStrategy reportStrategy = this.f49647a;
                this.f49647a = ((reportStrategy instanceof ReportPolicy.DefconPolicy) && reportStrategy.isValid()) ? this.f49647a : new ReportPolicy.DefconPolicy(StatTracer.getInstance(r.f49587a), service);
            } else {
                int iA = 0;
                boolean z2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(r.f49587a, "integrated_test", r.f49595t)).intValue() == 1;
                if (UMConfigure.isDebugLog() && z2 && !MLog.DEBUG) {
                    UMLog.mutlInfo(m.f49471K, 3, "\\|", null, null);
                }
                if (MLog.DEBUG && z2) {
                    this.f49647a = new ReportPolicy.DebugPolicy(StatTracer.getInstance(r.f49587a));
                } else if (this.f49652f.isInTest() && "RPT".equals(this.f49652f.getTestName())) {
                    if (this.f49652f.getTestPolicy() == 6) {
                        if (Integer.valueOf(UMEnvelopeBuild.imprintProperty(r.f49587a, "test_report_interval", r.f49595t)).intValue() != -1) {
                            iA = a(90000);
                        } else {
                            iA = this.f49649c;
                            if (iA <= 0) {
                                iA = this.f49651e;
                            }
                        }
                    }
                    this.f49647a = b(this.f49652f.getTestPolicy(), iA);
                } else {
                    int i2 = this.f49650d;
                    int i3 = this.f49651e;
                    int i4 = this.f49648b;
                    if (i4 != -1) {
                        i3 = this.f49649c;
                        i2 = i4;
                    }
                    this.f49647a = b(i2, i3);
                }
            }
            if (UMConfigure.isDebugLog()) {
                try {
                    ReportPolicy.ReportStrategy reportStrategy2 = this.f49647a;
                    if (reportStrategy2 instanceof ReportPolicy.ReportAtLaunch) {
                        UMLog.mutlInfo(m.f49469I, 3, "", null, null);
                        return;
                    }
                    if (reportStrategy2 instanceof ReportPolicy.ReportByInterval) {
                        UMLog.mutlInfo(m.f49470J, 3, "", new String[]{"@"}, new String[]{String.valueOf(((ReportPolicy.ReportByInterval) reportStrategy2).getReportInterval() / 1000)});
                    } else if (reportStrategy2 instanceof ReportPolicy.DebugPolicy) {
                        UMLog.mutlInfo(m.f49472L, 3, "", null, null);
                    } else if (reportStrategy2 instanceof ReportPolicy.ReportQuasiRealtime) {
                        UMLog.mutlInfo(m.f49473M, 3, "", new String[]{"@"}, new String[]{String.valueOf(((ReportPolicy.ReportQuasiRealtime) reportStrategy2).getReportInterval() / 1000)});
                    }
                } catch (Throwable unused) {
                }
            }
        }

        public ReportPolicy.ReportStrategy c() {
            b();
            return this.f49647a;
        }

        public int[] a(int i2, int i3) {
            int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(r.f49587a, "report_policy", r.f49595t)).intValue();
            int iIntValue2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(r.f49587a, "report_interval", r.f49595t)).intValue();
            if (iIntValue == -1 || !ReportPolicy.isValid(iIntValue)) {
                return new int[]{i2, i3};
            }
            if (6 == iIntValue) {
                if (iIntValue2 == -1 || iIntValue2 < 90 || iIntValue2 > 86400) {
                    iIntValue2 = 90;
                }
                return new int[]{iIntValue, iIntValue2 * 1000};
            }
            if (11 == iIntValue) {
                if (iIntValue2 == -1 || iIntValue2 < 15 || iIntValue2 > 3600) {
                    iIntValue2 = 15;
                }
                return new int[]{iIntValue, iIntValue2 * 1000};
            }
            return new int[]{i2, i3};
        }

        public int a(int i2) {
            int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(r.f49587a, "test_report_interval", r.f49595t)).intValue();
            return (iIntValue == -1 || iIntValue < 90 || iIntValue > 86400) ? i2 : iIntValue * 1000;
        }

        private ReportPolicy.ReportStrategy b(int i2, int i3) {
            if (i2 == 0) {
                ReportPolicy.ReportStrategy reportStrategy = this.f49647a;
                return reportStrategy instanceof ReportPolicy.ReportRealtime ? reportStrategy : new ReportPolicy.ReportRealtime();
            }
            if (i2 == 1) {
                ReportPolicy.ReportStrategy reportStrategy2 = this.f49647a;
                return reportStrategy2 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy2 : new ReportPolicy.ReportAtLaunch();
            }
            if (i2 == 4) {
                ReportPolicy.ReportStrategy reportStrategy3 = this.f49647a;
                return reportStrategy3 instanceof ReportPolicy.ReportDaily ? reportStrategy3 : new ReportPolicy.ReportDaily(StatTracer.getInstance(r.f49587a));
            }
            if (i2 == 5) {
                ReportPolicy.ReportStrategy reportStrategy4 = this.f49647a;
                return reportStrategy4 instanceof ReportPolicy.ReportWifiOnly ? reportStrategy4 : new ReportPolicy.ReportWifiOnly(r.f49587a);
            }
            if (i2 == 6) {
                ReportPolicy.ReportStrategy reportStrategy5 = this.f49647a;
                if (reportStrategy5 instanceof ReportPolicy.ReportByInterval) {
                    ((ReportPolicy.ReportByInterval) reportStrategy5).setReportInterval(i3);
                    return reportStrategy5;
                }
                return new ReportPolicy.ReportByInterval(StatTracer.getInstance(r.f49587a), i3);
            }
            if (i2 == 8) {
                ReportPolicy.ReportStrategy reportStrategy6 = this.f49647a;
                return reportStrategy6 instanceof ReportPolicy.SmartPolicy ? reportStrategy6 : new ReportPolicy.SmartPolicy(StatTracer.getInstance(r.f49587a));
            }
            if (i2 != 11) {
                ReportPolicy.ReportStrategy reportStrategy7 = this.f49647a;
                return reportStrategy7 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy7 : new ReportPolicy.ReportAtLaunch();
            }
            ReportPolicy.ReportStrategy reportStrategy8 = this.f49647a;
            if (reportStrategy8 instanceof ReportPolicy.ReportQuasiRealtime) {
                ((ReportPolicy.ReportQuasiRealtime) reportStrategy8).setReportInterval(i3);
                return reportStrategy8;
            }
            ReportPolicy.ReportQuasiRealtime reportQuasiRealtime = new ReportPolicy.ReportQuasiRealtime();
            reportQuasiRealtime.setReportInterval(i3);
            return reportQuasiRealtime;
        }
    }

    private void c(JSONObject jSONObject) {
        try {
            if (!l.a(f49587a).e()) {
                JSONObject jSONObjectG = l.a(f49587a).g();
                if (jSONObjectG != null) {
                    String strOptString = jSONObjectG.optString("__av");
                    String strOptString2 = jSONObjectG.optString("__vc");
                    if (TextUtils.isEmpty(strOptString)) {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMUtils.getAppVersionName(f49587a));
                    } else {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), strOptString);
                    }
                    if (TextUtils.isEmpty(strOptString2)) {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), UMUtils.getAppVersionCode(f49587a));
                        return;
                    } else {
                        jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), strOptString2);
                        return;
                    }
                }
                return;
            }
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("app_version"), UMUtils.getAppVersionName(f49587a));
            jSONObject.put(com.umeng.commonsdk.statistics.b.a("version_code"), UMUtils.getAppVersionCode(f49587a));
        } catch (Throwable unused) {
        }
    }

    public void a() {
        if (f49587a != null) {
            synchronized (this.f49612w) {
                try {
                    if (this.f49610u) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> network is now available, rebuild instant session data packet.");
                        Context context = f49587a;
                        UMWorkDispatch.sendEvent(context, a.f49631l, CoreProtocol.getInstance(context), null);
                    }
                } finally {
                }
            }
            synchronized (this.f49612w) {
                try {
                    if (this.f49611v) {
                        Context context2 = f49587a;
                        UMWorkDispatch.sendEvent(context2, a.f49632m, CoreProtocol.getInstance(context2), null);
                    }
                } finally {
                }
            }
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private Map<String, Object> f49653a;

        /* renamed from: b, reason: collision with root package name */
        private String f49654b;

        /* renamed from: c, reason: collision with root package name */
        private String f49655c;

        /* renamed from: d, reason: collision with root package name */
        private long f49656d;

        private d() {
            this.f49653a = null;
            this.f49654b = null;
            this.f49655c = null;
            this.f49656d = 0L;
        }

        public Map<String, Object> a() {
            return this.f49653a;
        }

        public String b() {
            return this.f49655c;
        }

        public String c() {
            return this.f49654b;
        }

        public long d() {
            return this.f49656d;
        }

        public d(String str, Map<String, Object> map, String str2, long j2) {
            this.f49653a = map;
            this.f49654b = str;
            this.f49656d = j2;
            this.f49655c = str2;
        }
    }

    private void h(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0 || !jSONObject.has("__ii")) {
                return;
            }
            String strOptString = jSONObject.optString("__ii");
            jSONObject.remove("__ii");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            l.a(f49587a).a(strOptString, obj.toString(), 2);
        } catch (Throwable unused) {
        }
    }

    private void d(JSONObject jSONObject) {
        String str;
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                JSONObject jSONObject4 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"));
                if (jSONObject4.has("ekv")) {
                    str = "channel";
                    jSONObject3.put("ekv", jSONObject4.getJSONArray("ekv"));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]事件:" + jSONObject3.toString());
                        } else {
                            MLog.d("事件:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                } else {
                    str = "channel";
                }
                if (jSONObject4.has(g.f49339Z)) {
                    jSONObject3.put(g.f49339Z, jSONObject4.getJSONArray(g.f49339Z));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]游戏事件:" + jSONObject3.toString());
                        } else {
                            MLog.d("游戏事件:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has("error")) {
                    jSONObject3.put("error", jSONObject4.getJSONArray("error"));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]错误:" + jSONObject3.toString());
                        } else {
                            MLog.d("错误:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(g.f49353n)) {
                    JSONArray jSONArray = jSONObject4.getJSONArray(g.f49353n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject5 = jSONArray.getJSONObject(i2);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            if (jSONObject5.has(g.f49360u)) {
                                jSONObject5.remove(g.f49360u);
                            }
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(g.f49353n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]会话:" + jSONObject3.toString());
                        } else {
                            MLog.d("会话:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(g.f49322I)) {
                    jSONObject3.put(g.f49322I, jSONObject4.getJSONObject(g.f49322I));
                }
                if (jSONObject4.has(g.f49325L)) {
                    jSONObject3.put(g.f49325L, jSONObject4.getJSONObject(g.f49325L));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]账号:" + jSONObject3.toString());
                        } else {
                            MLog.d("账号:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
            } else {
                str = "channel";
            }
            if (jSONObject.has("dplus")) {
                jSONObject3.put("dplus", jSONObject.getJSONObject("dplus"));
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("header")) && (jSONObject2 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header"))) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("sdk_version"))) {
                    jSONObject3.put("sdk_version", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("sdk_version")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_id"))) {
                    jSONObject3.put("device_id", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_id")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_model"))) {
                    jSONObject3.put("device_model", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_model")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("version_code"))) {
                    jSONObject3.put(cl.f49059n, jSONObject2.getInt(com.umeng.commonsdk.statistics.b.a("version_code")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("appkey"))) {
                    jSONObject3.put("appkey", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("appkey")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a(str))) {
                    jSONObject3.put(str, jSONObject2.getString(com.umeng.commonsdk.statistics.b.a(str)));
                }
                if (jSONObject3.length() > 0) {
                    MLog.d("基础信息:" + jSONObject3.toString());
                    jSONObject3 = new JSONObject();
                }
            }
            jSONObject3.length();
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public JSONObject b(long j2) {
        if (TextUtils.isEmpty(ab.a().d(UMGlobalContext.getAppContext(f49587a)))) {
            return null;
        }
        JSONObject jSONObjectB = l.a(UMGlobalContext.getAppContext(f49587a)).b(false);
        String[] strArrA = com.umeng.analytics.c.a(f49587a);
        if (strArrA != null && !TextUtils.isEmpty(strArrA[0]) && !TextUtils.isEmpty(strArrA[1])) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(g.f49326M, strArrA[0]);
                jSONObject.put(g.f49327N, strArrA[1]);
                if (jSONObject.length() > 0) {
                    jSONObjectB.put(g.f49325L, jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
        int iA = u.a().a(f49587a);
        if (jSONObjectB.length() == 1 && jSONObjectB.optJSONObject(g.f49325L) != null && iA != 3) {
            return null;
        }
        u.a().b(jSONObjectB, f49587a);
        if (jSONObjectB.length() <= 0 && iA != 3) {
            return null;
        }
        JSONObject jSONObjectK = k();
        if (jSONObjectK != null) {
            b(jSONObjectK);
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            if (iA == 3) {
                jSONObject3.put("analytics", new JSONObject());
            } else if (jSONObjectB.length() > 0) {
                jSONObject3.put("analytics", jSONObjectB);
            }
            if (jSONObjectK != null && jSONObjectK.length() > 0) {
                jSONObject2.put("header", jSONObjectK);
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("content", jSONObject3);
            }
            return b(jSONObject2, j2);
        } catch (Throwable unused2) {
            return jSONObject2;
        }
    }

    private boolean c(boolean z2) {
        if (s() || AnalyticsConfig.isRealTimeDebugMode()) {
            return true;
        }
        if (this.f49599b == null) {
            this.f49599b = new c();
        }
        this.f49599b.a();
        ReportPolicy.ReportStrategy reportStrategyC = this.f49599b.c();
        boolean zShouldSendMessage = reportStrategyC.shouldSendMessage(z2);
        if (zShouldSendMessage) {
            if (((reportStrategyC instanceof ReportPolicy.ReportByInterval) || (reportStrategyC instanceof ReportPolicy.DebugPolicy) || (reportStrategyC instanceof ReportPolicy.ReportQuasiRealtime)) && p()) {
                d();
            }
            if ((reportStrategyC instanceof ReportPolicy.DefconPolicy) && p()) {
                d();
            }
            if (UMConfigure.isDebugLog()) {
                MLog.d("数据发送策略 : " + reportStrategyC.getClass().getSimpleName());
            }
        }
        return zShouldSendMessage;
    }

    private void a(String str, String str2) {
        Method method;
        Class<?> cls = f49597y;
        if (cls == null || (method = f49598z) == null) {
            return;
        }
        try {
            method.invoke(cls, str, str2);
        } catch (Throwable unused) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> reflect call setPuidAndProvider method of crash lib failed.");
        }
    }

    private void e(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("analytics"))) {
                JSONObject jSONObject4 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("analytics"));
                if (jSONObject4.has(g.f49353n)) {
                    JSONArray jSONArray = jSONObject4.getJSONArray(g.f49353n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject5 = jSONArray.getJSONObject(i2);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(g.f49353n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        MLog.d("本次启动会话:" + jSONObject3.toString());
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(g.f49325L)) {
                    jSONObject3.put(g.f49325L, jSONObject4.getJSONObject(g.f49325L));
                    if (jSONObject3.length() > 0) {
                        MLog.d("本次启动账号:" + jSONObject3.toString());
                        jSONObject3 = new JSONObject();
                    }
                }
            }
            if (jSONObject.has(com.umeng.commonsdk.statistics.b.a("header")) && jSONObject.has(com.umeng.commonsdk.statistics.b.a("header")) && (jSONObject2 = jSONObject.getJSONObject(com.umeng.commonsdk.statistics.b.a("header"))) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("sdk_version"))) {
                    jSONObject3.put("sdk_version", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("sdk_version")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_id"))) {
                    jSONObject3.put("device_id", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_id")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("device_model"))) {
                    jSONObject3.put("device_model", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("device_model")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("version_code"))) {
                    jSONObject3.put(cl.f49059n, jSONObject2.getInt(com.umeng.commonsdk.statistics.b.a("version_code")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("appkey"))) {
                    jSONObject3.put("appkey", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("appkey")));
                }
                if (jSONObject2.has(com.umeng.commonsdk.statistics.b.a("channel"))) {
                    jSONObject3.put("channel", jSONObject2.getString(com.umeng.commonsdk.statistics.b.a("channel")));
                }
                if (jSONObject3.length() > 0) {
                    MLog.d("本次启动基础信息:" + jSONObject3.toString());
                    jSONObject3 = new JSONObject();
                }
            }
            jSONObject3.length();
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public void a(Object obj, int i2) {
        if (com.umeng.commonsdk.utils.c.a()) {
            if (i2 != 4357) {
                return;
            }
            try {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> clean db in silent mode.");
                k.a(f49587a);
                com.umeng.commonsdk.utils.c.c(f49587a);
            } catch (Throwable unused) {
            }
        }
        if (AnalyticsConfig.enable) {
            try {
                if (i2 != 4358) {
                    switch (i2) {
                        case 4097:
                            if (UMUtils.isMainProgress(f49587a)) {
                                if (obj != null) {
                                    e(obj);
                                }
                                if (f49595t.equals(((JSONObject) obj).optString("__i"))) {
                                    return;
                                }
                                a(false);
                                return;
                            }
                            UMProcessDBHelper.getInstance(f49587a).insertEventsInSubProcess(UMFrUtils.getSubProcessName(f49587a), new JSONArray().put(obj));
                            return;
                        case 4098:
                            if (obj != null) {
                                e(obj);
                            }
                            if (f49595t.equals(((JSONObject) obj).optString("__i"))) {
                                return;
                            }
                            a(false);
                            return;
                        case 4099:
                            y.a(f49587a);
                            return;
                        case 4100:
                            o.c(f49587a);
                            return;
                        case a.f49624e /* 4101 */:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNIN");
                            a((Object) null, true);
                            g(obj);
                            return;
                        case a.f49625f /* 4102 */:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNOFF");
                            a((Object) null, true);
                            f(obj);
                            return;
                        case a.f49626g /* 4103 */:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> START_SESSION");
                            x.a().a(f49587a, obj);
                            synchronized (this.f49612w) {
                                this.f49611v = true;
                            }
                            UMCommonDeepLink.processPendingAttributionOnSessionStart(f49587a);
                            return;
                        case a.f49627h /* 4104 */:
                            x.a().c(f49587a, obj);
                            return;
                        case a.f49628i /* 4105 */:
                            d();
                            return;
                        case a.f49629j /* 4106 */:
                            h(obj);
                            return;
                        default:
                            switch (i2) {
                                case a.f49630k /* 4352 */:
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> INSTANT_SESSION_START");
                                    x.a().b(f49587a, obj);
                                    synchronized (this.f49612w) {
                                        this.f49610u = true;
                                    }
                                    return;
                                case a.f49631l /* 4353 */:
                                    a(obj, true);
                                    return;
                                case a.f49632m /* 4354 */:
                                    c();
                                    return;
                                case a.f49633n /* 4355 */:
                                    if (!UMUtils.isMainProgress(f49587a)) {
                                        UMProcessDBHelper.getInstance(f49587a).insertEventsInSubProcess(UMFrUtils.getSubProcessName(f49587a), new JSONArray().put(obj));
                                        return;
                                    } else {
                                        if (obj != null) {
                                            e(obj);
                                            d();
                                            return;
                                        }
                                        return;
                                    }
                                case a.f49634o /* 4356 */:
                                    if (obj == null || f49597y == null || f49598z == null) {
                                        return;
                                    }
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_CHANGE_NOTIFY");
                                    String string = "";
                                    String string2 = "";
                                    if (obj instanceof JSONObject) {
                                        JSONObject jSONObject = (JSONObject) obj;
                                        if (jSONObject.has("uid") && jSONObject.has(g.f49326M)) {
                                            string = jSONObject.getString(g.f49326M);
                                            string2 = jSONObject.getString("uid");
                                        }
                                        a(string2, string);
                                        return;
                                    }
                                    return;
                                default:
                                    switch (i2) {
                                        case a.f49639t /* 8195 */:
                                            com.umeng.analytics.b.a().a(obj);
                                            return;
                                        case a.f49640u /* 8196 */:
                                            com.umeng.analytics.b.a().m();
                                            return;
                                        case 8197:
                                            com.umeng.analytics.b.a().k();
                                            return;
                                        default:
                                            switch (i2) {
                                                case a.f49642w /* 8199 */:
                                                case a.f49643x /* 8200 */:
                                                    com.umeng.analytics.b.a().b(obj);
                                                    return;
                                                case a.f49644y /* 8201 */:
                                                    com.umeng.analytics.b.a().b((Object) null);
                                                    return;
                                                default:
                                                    switch (i2) {
                                                        case a.f49645z /* 8208 */:
                                                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> receive DELAY_BUILD_ENVELOPE event.");
                                                            Context context = f49587a;
                                                            UMWorkDispatch.sendEvent(context, a.f49613A, CoreProtocol.getInstance(context), null);
                                                            Context context2 = f49587a;
                                                            UMWorkDispatch.sendEvent(context2, a.f49632m, CoreProtocol.getInstance(context2), null);
                                                            return;
                                                        case a.f49613A /* 8209 */:
                                                            a(obj, false);
                                                            return;
                                                        case a.f49614B /* 8210 */:
                                                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY.");
                                                            if (UMUtils.isMainProgress(f49587a) && !(this.f49599b.c() instanceof ReportPolicy.ReportQuasiRealtime)) {
                                                                a(true);
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            switch (i2) {
                                                                case a.f49617E /* 8213 */:
                                                                    if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50469E)) {
                                                                        if (DeviceConfig.getGlobleActivity(f49587a) != null) {
                                                                            x.b(f49587a);
                                                                        }
                                                                        Context context3 = f49587a;
                                                                        UMWorkDispatch.sendEventEx(context3, a.f49617E, CoreProtocol.getInstance(context3), null, 5000L);
                                                                        return;
                                                                    }
                                                                    return;
                                                                case a.f49618F /* 8214 */:
                                                                    if (obj != null && (obj instanceof JSONObject)) {
                                                                        String strOptString = ((JSONObject) obj).optString(AnalyticsConfig.RTD_START_TIME);
                                                                        String strOptString2 = ((JSONObject) obj).optString(AnalyticsConfig.RTD_PERIOD);
                                                                        String strOptString3 = ((JSONObject) obj).optString(AnalyticsConfig.DEBUG_KEY);
                                                                        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || TextUtils.isEmpty(strOptString3)) {
                                                                            return;
                                                                        }
                                                                        Context context4 = f49587a;
                                                                        String str = AnalyticsConfig.RTD_SP_FILE;
                                                                        com.umeng.common.b.a(context4, str, AnalyticsConfig.RTD_START_TIME, strOptString);
                                                                        com.umeng.common.b.a(f49587a, str, AnalyticsConfig.RTD_PERIOD, strOptString2);
                                                                        com.umeng.common.b.a(f49587a, str, AnalyticsConfig.DEBUG_KEY, strOptString3);
                                                                        return;
                                                                    }
                                                                    return;
                                                                case a.f49619G /* 8215 */:
                                                                    com.umeng.common.b.a(f49587a, AnalyticsConfig.RTD_SP_FILE);
                                                                    return;
                                                                default:
                                                                    return;
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                }
                if (obj != null && (obj instanceof JSONObject)) {
                    String strOptString4 = ((JSONObject) obj).optString(g.f49332S);
                    Object objOpt = ((JSONObject) obj).opt(g.f49333T);
                    if (TextUtils.isEmpty(strOptString4)) {
                        return;
                    }
                    String[] strArrA = com.umeng.analytics.c.a(f49587a);
                    if (strArrA != null && !TextUtils.isEmpty(strArrA[0]) && !TextUtils.isEmpty(strArrA[1])) {
                        if (g.f49328O.equals(strOptString4)) {
                            com.umeng.analytics.c.a((String) objOpt);
                            return;
                        } else if (g.f49329P.equals(strOptString4)) {
                            com.umeng.analytics.c.b((String) objOpt);
                            return;
                        } else {
                            com.umeng.analytics.c.a(strOptString4, objOpt);
                            return;
                        }
                    }
                    MLog.e("Please call MobclickAgent.onProfileSignIn() function before set user profile property.");
                }
            } catch (Throwable unused2) {
            }
        }
    }

    private void g(Object obj) {
        try {
            b(f49587a);
            d();
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                String string = jSONObject.getString(g.f49326M);
                String string2 = jSONObject.getString("uid");
                long j2 = jSONObject.getLong("ts");
                String[] strArrA = com.umeng.analytics.c.a(f49587a);
                if (strArrA != null && string.equals(strArrA[0]) && string2.equals(strArrA[1])) {
                    return;
                }
                x.a().a(f49587a, j2);
                String strC = ab.a().c(f49587a);
                boolean zB = x.a().b(f49587a, j2, false);
                com.umeng.analytics.c.a(f49587a, string, string2);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + strC);
                x.a().a(f49587a, j2, true);
                if (zB) {
                    x.a().b(f49587a, j2);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public long f() {
        SharedPreferences sharedPreferences;
        long jCurrentTimeMillis = 0;
        try {
            Context context = f49587a;
            if (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return 0L;
            }
            long j2 = sharedPreferences.getLong(f49588l, 0L);
            if (j2 != 0) {
                return j2;
            }
            try {
                jCurrentTimeMillis = System.currentTimeMillis();
                sharedPreferences.edit().putLong(f49588l, jCurrentTimeMillis).commit();
                return jCurrentTimeMillis;
            } catch (Throwable unused) {
                return j2;
            }
        } catch (Throwable unused2) {
            return jCurrentTimeMillis;
        }
    }

    public void c(Object obj) {
        b(f49587a);
        d();
        if (d(false)) {
            j();
        }
    }

    private void f(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                long j2 = jSONObject.getLong("ts");
                b(f49587a);
                d();
                String[] strArrA = com.umeng.analytics.c.a(f49587a);
                if (strArrA == null || TextUtils.isEmpty(strArrA[0]) || TextUtils.isEmpty(strArrA[1])) {
                    return;
                }
                x.a().a(f49587a, j2);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + ab.a().c(f49587a));
                boolean zB = x.a().b(f49587a, j2, false);
                com.umeng.analytics.c.b(f49587a);
                x.a().a(f49587a, j2, true);
                if (zB) {
                    x.a().b(f49587a, j2);
                }
            }
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    private JSONObject b(JSONObject jSONObject, long j2) {
        try {
            if (t.a(jSONObject) <= j2) {
                return jSONObject;
            }
            jSONObject = null;
            l.a(f49587a).a(true, false);
            l.a(f49587a).b();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Instant session packet overload !!! ");
            return null;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    public JSONObject b(boolean z2) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObjectA = null;
        try {
            jSONObjectA = l.a(f49587a).a(z2);
            if (jSONObjectA == null) {
                jSONObjectA = new JSONObject();
            } else {
                try {
                    boolean zHas = jSONObjectA.has(g.f49353n);
                    jSONObjectA = jSONObjectA;
                    if (zHas) {
                        JSONArray jSONArray3 = jSONObjectA.getJSONArray(g.f49353n);
                        JSONArray jSONArray4 = new JSONArray();
                        int i2 = 0;
                        while (i2 < jSONArray3.length()) {
                            JSONObject jSONObject = (JSONObject) jSONArray3.get(i2);
                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(g.f49359t);
                            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(g.f49360u);
                            if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 != null) {
                                jSONObject.put(g.f49359t, jSONArrayOptJSONArray2);
                                jSONObject.remove(g.f49360u);
                            }
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null) {
                                ArrayList arrayList = new ArrayList();
                                for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                    arrayList.add((JSONObject) jSONArrayOptJSONArray.get(i3));
                                }
                                for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                                    arrayList.add((JSONObject) jSONArrayOptJSONArray2.get(i4));
                                }
                                JSONArraySortUtil jSONArraySortUtil = new JSONArraySortUtil();
                                jSONArraySortUtil.setCompareKey(g.f49363x);
                                Collections.sort(arrayList, jSONArraySortUtil);
                                JSONArray jSONArray5 = new JSONArray();
                                int size = arrayList.size();
                                int i5 = 0;
                                while (i5 < size) {
                                    Object obj = arrayList.get(i5);
                                    i5++;
                                    jSONArray5.put((JSONObject) obj);
                                }
                                jSONObject.put(g.f49359t, jSONArray5);
                                jSONObject.remove(g.f49360u);
                            }
                            if (jSONObject.has(g.f49359t)) {
                                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(g.f49359t);
                                int i6 = 0;
                                while (i6 < jSONArrayOptJSONArray3.length()) {
                                    JSONObject jSONObject2 = jSONArrayOptJSONArray3.getJSONObject(i6);
                                    if (jSONObject2.has(g.f49363x)) {
                                        jSONArray2 = jSONArray3;
                                        jSONObject2.put("ts", jSONObject2.getLong(g.f49363x));
                                        jSONObject2.remove(g.f49363x);
                                    } else {
                                        jSONArray2 = jSONArray3;
                                    }
                                    i6++;
                                    jSONArray3 = jSONArray2;
                                }
                                jSONArray = jSONArray3;
                                jSONObject.put(g.f49359t, jSONArrayOptJSONArray3);
                                jSONObject.put(g.f49365z, jSONArrayOptJSONArray3.length());
                            } else {
                                jSONArray = jSONArray3;
                                jSONObject.put(g.f49365z, 0);
                            }
                            jSONArray4.put(jSONObject);
                            i2++;
                            jSONArray3 = jSONArray;
                        }
                        jSONObjectA.put(g.f49353n, jSONArray4);
                        jSONObjectA = jSONObjectA;
                    }
                } catch (Exception e2) {
                    MLog.e("merge pages error");
                    e2.printStackTrace();
                    jSONObjectA = jSONObjectA;
                }
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49587a);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    jSONObjectA.put("userlevel", string);
                }
            }
            String[] strArrA = com.umeng.analytics.c.a(f49587a);
            if (strArrA != null && !TextUtils.isEmpty(strArrA[0]) && !TextUtils.isEmpty(strArrA[1])) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(g.f49326M, strArrA[0]);
                jSONObject3.put(g.f49327N, strArrA[1]);
                if (jSONObject3.length() > 0) {
                    JSONObject jSONObject4 = new JSONObject();
                    String strA = com.umeng.analytics.c.a();
                    if (strA != null) {
                        jSONObject4.put(g.f49328O, strA);
                    }
                    String strB = com.umeng.analytics.c.b();
                    if (strB != null) {
                        jSONObject4.put(g.f49329P, strB);
                    }
                    Map<String, Object> mapC = com.umeng.analytics.c.c(f49587a);
                    if (mapC != null && mapC.size() > 0) {
                        for (String str : mapC.keySet()) {
                            jSONObject4.put(str, mapC.get(str));
                        }
                    }
                    if (jSONObject4.length() > 0) {
                        jSONObject3.put("up", jSONObject4);
                    }
                    jSONObjectA.put(g.f49325L, jSONObject3);
                }
            }
            if (ABTest.getService(f49587a).isInTest()) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put(ABTest.getService(f49587a).getTestName(), ABTest.getService(f49587a).getGroupInfo());
                jSONObjectA.put(g.f49324K, jSONObject5);
            }
            u.a().a(jSONObjectA, f49587a);
        } catch (Throwable unused) {
        }
        return jSONObjectA;
    }

    public void e() {
        if (d(false)) {
            j();
        }
    }

    public void d(Object obj) {
        r();
        m();
        n();
        a(true);
    }

    private boolean d(boolean z2) {
        if (this.f49599b == null) {
            this.f49599b = new c();
        }
        ReportPolicy.ReportStrategy reportStrategyC = this.f49599b.c();
        if (!(reportStrategyC instanceof ReportPolicy.DefconPolicy)) {
            return true;
        }
        if (z2) {
            return ((ReportPolicy.DefconPolicy) reportStrategyC).shouldSendMessageByInstant();
        }
        return reportStrategyC.shouldSendMessage(false);
    }

    public void b(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has("exception")) {
                        if (101 == jSONObject.getInt("exception")) {
                            return;
                        }
                        f(jSONObject);
                        return;
                    }
                    f(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void b(Context context) {
        try {
            l.a(context).d();
            q();
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z2) {
        if (c(z2)) {
            if (!(this.f49599b.c() instanceof ReportPolicy.ReportQuasiRealtime)) {
                if (UMEnvelopeBuild.isReadyBuild(f49587a, UMLogDataProtocol.UMBusinessType.U_APP)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> constructMessage()");
                    j();
                    return;
                }
                return;
            }
            if (z2) {
                if (UMEnvelopeBuild.isOnline(f49587a)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send session start in policy ReportQuasiRealtime.");
                    j();
                    return;
                }
                return;
            }
            if (UMEnvelopeBuild.isReadyBuild(f49587a, UMLogDataProtocol.UMBusinessType.U_APP)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send normal data in policy ReportQuasiRealtime.");
                j();
            }
        }
    }

    private boolean a(JSONArray jSONArray) {
        int length = jSONArray.length();
        List listAsList = Arrays.asList("$$_onUMengEnterForeground", "$$_onUMengEnterBackground", "$$_onUMengEnterForegroundInitError");
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i3);
                if (jSONObjectOptJSONObject != null && listAsList.contains(jSONObjectOptJSONObject.optString("id"))) {
                    i2++;
                }
            } catch (Throwable unused) {
            }
        }
        return i2 >= length;
    }

    private boolean a(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ekv");
        int length = jSONArrayOptJSONArray.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i3);
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(itKeys.next());
                    if (jSONArrayOptJSONArray2 != null && a(jSONArrayOptJSONArray2)) {
                        i2++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return i2 >= length;
    }

    public JSONObject a(long j2) {
        if (TextUtils.isEmpty(ab.a().d(f49587a))) {
            return null;
        }
        JSONObject jSONObjectB = b(false);
        int iA = u.a().a(f49587a);
        if (jSONObjectB.length() > 0) {
            if (jSONObjectB.length() == 1) {
                if (jSONObjectB.optJSONObject(g.f49325L) != null && iA != 3) {
                    return null;
                }
                if (!TextUtils.isEmpty(jSONObjectB.optString("userlevel")) && iA != 3) {
                    return null;
                }
            } else if (jSONObjectB.length() == 2 && jSONObjectB.optJSONObject(g.f49325L) != null && !TextUtils.isEmpty(jSONObjectB.optString("userlevel")) && iA != 3) {
                return null;
            }
            String strOptString = jSONObjectB.optString(g.f49353n);
            String strOptString2 = jSONObjectB.optString(g.f49339Z);
            String strOptString3 = jSONObjectB.optString("ekv");
            if (TextUtils.isEmpty(strOptString) && TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString3) && a(jSONObjectB)) {
                return null;
            }
        } else if (iA != 3) {
            return null;
        }
        JSONObject jSONObjectL = l();
        if (jSONObjectL != null) {
            c(jSONObjectL);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (iA == 3) {
                jSONObject2.put("analytics", new JSONObject());
            } else if (jSONObjectB.length() > 0) {
                jSONObject2.put("analytics", jSONObjectB);
            }
            if (jSONObjectL != null && jSONObjectL.length() > 0) {
                jSONObject.put("header", jSONObjectL);
            }
            if (jSONObject2.length() > 0) {
                jSONObject.put("content", jSONObject2);
            }
            return a(jSONObject, j2);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private JSONObject a(JSONObject jSONObject, long j2) {
        try {
            if (t.a(jSONObject) <= j2) {
                return jSONObject;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("header");
            jSONObject2.put(g.aH, t.a(jSONObject));
            jSONObject.put("header", jSONObject2);
            return t.a(f49587a, j2, jSONObject);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private boolean a(long j2, int i2) {
        if (j2 == 0) {
            return true;
        }
        if (System.currentTimeMillis() - j2 <= 28800000) {
            return i2 < 5000;
        }
        o();
        return true;
    }

    public void a(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has("exception")) {
                        if (101 == jSONObject.getInt("exception")) {
                            return;
                        }
                        g(jSONObject);
                        return;
                    }
                    g(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(Object obj, boolean z2) {
        if (z2) {
            if (d(true)) {
                i();
            }
        } else if (UMEnvelopeBuild.isOnline(f49587a) && d(true)) {
            i();
        }
    }
}
