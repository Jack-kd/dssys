package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.pro.au;
import com.umeng.analytics.pro.bt;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.dn;
import com.umeng.analytics.pro.g;
import com.umeng.common.AnalyticsSdkVersion;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.idtracking.f;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.commonsdk.utils.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static String f50219a = null;

    /* renamed from: b, reason: collision with root package name */
    public static String f50220b = "";

    /* renamed from: c, reason: collision with root package name */
    private static final String f50221c = "EnvelopeManager";

    /* renamed from: d, reason: collision with root package name */
    private static final String f50222d = "debug.umeng.umTaskId";

    /* renamed from: e, reason: collision with root package name */
    private static final String f50223e = "debug.umeng.umCaseId";

    /* renamed from: f, reason: collision with root package name */
    private static final String f50224f = "empty";

    /* renamed from: g, reason: collision with root package name */
    private static String f50225g = "";

    /* renamed from: h, reason: collision with root package name */
    private static String f50226h = "";

    /* renamed from: i, reason: collision with root package name */
    private static String f50227i;

    /* renamed from: j, reason: collision with root package name */
    private static Map<String, String> f50228j;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f50229l;

    /* renamed from: k, reason: collision with root package name */
    private int f50230k = 0;

    static {
        HashMap map = new HashMap();
        f50228j = map;
        map.put("header", "#h");
        f50228j.put(bv.f48920u, "#sdt");
        f50228j.put(bv.f48890Q, "#ac");
        f50228j.put("device_model", "#dm");
        f50228j.put(bv.f48906g, "#umid");
        f50228j.put(bv.f48923x, bv.f48923x);
        f50228j.put("language", "#lang");
        f50228j.put(bv.ac, "#dt");
        f50228j.put(bv.f48925z, "#rl");
        f50228j.put(bv.f48881H, "#dmf");
        f50228j.put(bv.f48883J, "#dn");
        f50228j.put("platform_version", "#pv");
        f50228j.put("font_size_setting", "#fss");
        f50228j.put(bv.f48924y, "#ov");
        f50228j.put(bv.f48882I, "#did");
        f50228j.put("platform_sdk_version", "#psv");
        f50228j.put(bv.f48879F, "#db");
        f50228j.put("appkey", "#ak");
        f50228j.put(bv.f48898Y, "#itr");
        f50228j.put("id_type", "#it");
        f50228j.put("uuid", "#ud");
        f50228j.put("device_id", "#dd");
        f50228j.put(bv.f48897X, "#imp");
        f50228j.put("sdk_version", "#sv");
        f50228j.put("st", "#st");
        f50228j.put("analytics", "#a");
        f50228j.put("package_name", "#pkg");
        f50228j.put(bv.f48915p, "#sig");
        f50228j.put(bv.f48916q, "#sis1");
        f50228j.put(bv.f48917r, "#sis");
        f50228j.put("app_version", "#av");
        f50228j.put("version_code", "#vc");
        f50228j.put(bv.f48921v, "#imd");
        f50228j.put(bv.f48875B, "#mnc");
        f50228j.put(bv.f48878E, "#boa");
        f50228j.put(bv.f48880G, "#mant");
        f50228j.put("timezone", "#tz");
        f50228j.put(bv.f48888O, "#ct");
        f50228j.put(bv.f48889P, "#car");
        f50228j.put(bv.f48918s, "#disn");
        f50228j.put("network_type", "#nt");
        f50228j.put(bv.f48901b, "#cv");
        f50228j.put(bv.f48903d, "#mv");
        f50228j.put(bv.f48902c, "#cot");
        f50228j.put(bv.f48904e, "#mod");
        f50228j.put(bv.ad, "#al");
        f50228j.put("session_id", "#sid");
        f50228j.put(bv.f48892S, "#ip");
        f50228j.put(bv.f48894U, "#sre");
        f50228j.put(bv.f48895V, "#fre");
        f50228j.put(bv.f48896W, "#ret");
        f50228j.put("channel", "#chn");
        f50228j.put("wrapper_type", "#wt");
        f50228j.put("wrapper_version", "#wv");
        f50228j.put(bv.aV, "#tsv");
        f50228j.put("rps_pr", "#rps");
        f50228j.put(bv.aY, "#mov");
        f50228j.put(g.f49348i, "#vt");
        f50228j.put("secret", "#sec");
        f50228j.put(g.an, "#prv");
        f50228j.put(g.f49351l, "#$prv");
        f50228j.put(g.f49352m, "#uda");
        f50228j.put(bv.f48900a, "#tok");
        f50228j.put(bv.aN, "#iv");
        f50228j.put(bv.f48891R, "#ast");
        f50228j.put("backstate", "#bst");
        f50228j.put("zdata_ver", "#zv");
        f50228j.put("zdata_req_ts", "#zrt");
        f50228j.put("app_b_v", "#bv");
        f50228j.put("zdata", "#zta");
        f50228j.put(bv.aj, "#mt");
        f50228j.put(bv.ag, "#zsv");
        f50228j.put(bv.ai, "#oos");
    }

    public static String a(String str) {
        return f50228j.containsKey(str) ? f50228j.get(str) : str;
    }

    private static boolean b() {
        f50225g = UMUtils.getSystemProperty(f50222d, "");
        f50226h = UMUtils.getSystemProperty(f50223e, "");
        return (!TextUtils.isEmpty(f50225g) && !f50224f.equals(f50225g)) && (!TextUtils.isEmpty(f50226h) && !f50224f.equals(f50226h));
    }

    public static void a() {
        if (f50227i != null) {
            f50227i = null;
            f.a();
        }
    }

    public JSONObject b(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        Context context2;
        Throwable th;
        Envelope envelopeA;
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(a("header"), new JSONObject());
            try {
                if (b()) {
                    jSONObject.put("umTaskId", f50225g);
                    jSONObject.put("umCaseId", f50226h);
                }
            } catch (Throwable unused) {
            }
            if (jSONObject != null) {
                try {
                    jSONObject3 = a(jSONObject3, jSONObject);
                } catch (Throwable th2) {
                    th = th2;
                    context2 = context;
                    UMCrashManager.reportCrash(context2, th);
                    return a(110, new JSONObject());
                }
            }
            if (jSONObject3 != null && jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next != null && (next instanceof String)) {
                        String str2 = next;
                        if (jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception unused2) {
                            }
                        }
                    }
                }
            }
            if (jSONObject3 != null && DataHelper.largeThanMaxSize(jSONObject3.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return a(113, jSONObject3);
            }
            if (jSONObject3 != null) {
                envelopeA = a(context, jSONObject3.toString().getBytes());
                if (envelopeA == null) {
                    return a(111, jSONObject3);
                }
            } else {
                envelopeA = null;
            }
            Envelope envelope = envelopeA;
            if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObject3);
            }
            context2 = context;
            try {
                int iA = a(context2, envelope, "z==1.2.0", DeviceConfig.getAppVersionName(context), str);
                if (iA != 0) {
                    return a(iA, jSONObject3);
                }
                if (ULog.DEBUG) {
                    int length = jSONObject3.toString().getBytes().length;
                }
                return jSONObject3;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                UMCrashManager.reportCrash(context2, th);
                return a(110, new JSONObject());
            }
        } catch (Throwable th4) {
            th = th4;
            context2 = context;
        }
    }

    public static long a(Context context) {
        long j2 = DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - DataHelper.ENVELOPE_EXTRA_LENGTH;
        boolean z2 = ULog.DEBUG;
        return j2;
    }

    private JSONObject a(int i2, JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            try {
                jSONObject.put("exception", i2);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("exception", i2);
        } catch (Exception unused2) {
        }
        return jSONObject2;
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str, String str2, String str3) throws JSONException {
        JSONObject jSONObject3;
        JSONObject jSONObject4;
        String strSubstring;
        Envelope envelope;
        JSONObject jSONObjectOptJSONObject;
        if (ULog.DEBUG && jSONObject != null && jSONObject2 != null) {
            int length = jSONObject.toString().getBytes().length;
            int length2 = jSONObject2.toString().getBytes().length;
        }
        if (context != null && jSONObject2 != null) {
            try {
                boolean z2 = jSONObject2.has("analytics") && (jSONObjectOptJSONObject = jSONObject2.optJSONObject("analytics")) != null && jSONObjectOptJSONObject.has(g.f49353n);
                String str4 = str2;
                JSONObject jSONObjectA = a(context, str4, z2);
                if (jSONObjectA != null && jSONObject != null) {
                    jSONObjectA = a(jSONObjectA, jSONObject);
                }
                JSONObject jSONObject5 = jSONObjectA;
                if (jSONObject5 != null) {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (next != null && (next instanceof String)) {
                            String str5 = next;
                            if (jSONObject2.opt(str5) != null) {
                                try {
                                    jSONObject5.put(a(str5), jSONObject2.opt(str5));
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                if (TextUtils.isEmpty(str4)) {
                    str4 = "u";
                }
                String str6 = TextUtils.isEmpty(str3) ? "1.0.0" : str3;
                if (jSONObject5 != null) {
                    strSubstring = str4 + "==" + str6 + "&=";
                    if (TextUtils.isEmpty(strSubstring)) {
                        return a(101, jSONObject5);
                    }
                    if (strSubstring.endsWith("&=")) {
                        strSubstring = strSubstring.substring(0, strSubstring.length() - 2);
                    }
                } else {
                    strSubstring = null;
                }
                if (jSONObject5 != null) {
                    try {
                        f fVarA = f.a(context);
                        if (fVarA != null) {
                            fVarA.b();
                            String strEncodeToString = Base64.encodeToString(new dn().a(fVarA.c()), 0);
                            if (!TextUtils.isEmpty(strEncodeToString)) {
                                JSONObject jSONObject6 = jSONObject5.getJSONObject(a("header"));
                                jSONObject6.put(a(bv.f48898Y), strEncodeToString);
                                jSONObject5.put(a("header"), jSONObject6);
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (jSONObject5 != null && DataHelper.largeThanMaxSize(jSONObject5.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                    SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                    }
                    return a(113, jSONObject5);
                }
                if (jSONObject5 != null) {
                    Envelope envelopeA = a(context, jSONObject5.toString().getBytes());
                    if (envelopeA == null) {
                        return a(111, jSONObject5);
                    }
                    envelope = envelopeA;
                } else {
                    envelope = null;
                }
                if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                    return a(114, jSONObject5);
                }
                int iA = a(context, envelope, strSubstring, jSONObject5 != null ? jSONObject5.optJSONObject(a("header")).optString(a("app_version")) : null, str);
                if (iA != 0) {
                    return a(iA, jSONObject5);
                }
                if (ULog.DEBUG) {
                    int length3 = jSONObject5.toString().getBytes().length;
                }
                if (!strSubstring.startsWith(bv.aD) && !strSubstring.startsWith("i") && !strSubstring.startsWith(bv.aI) && !strSubstring.startsWith("a") && !com.umeng.commonsdk.stateless.b.a()) {
                    new com.umeng.commonsdk.stateless.b(context);
                    com.umeng.commonsdk.stateless.b.b();
                }
                return jSONObject5;
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
                if (jSONObject != null) {
                    try {
                        jSONObject4 = new JSONObject();
                    } catch (Exception e2) {
                        e = e2;
                        jSONObject3 = null;
                    }
                    try {
                        jSONObject4.put("header", jSONObject);
                    } catch (JSONException unused3) {
                    } catch (Exception e3) {
                        e = e3;
                        jSONObject3 = jSONObject4;
                        UMCrashManager.reportCrash(context, e);
                        return a(110, jSONObject3);
                    }
                    jSONObject3 = jSONObject4;
                } else {
                    jSONObject3 = null;
                }
                if (jSONObject3 == null) {
                    try {
                        jSONObject3 = new JSONObject();
                    } catch (Exception e4) {
                        e = e4;
                        UMCrashManager.reportCrash(context, e);
                        return a(110, jSONObject3);
                    }
                }
                Iterator<String> itKeys2 = jSONObject2.keys();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    if (next2 != null && (next2 instanceof String)) {
                        String str7 = next2;
                        if (jSONObject2.opt(str7) != null) {
                            try {
                                jSONObject3.put(str7, jSONObject2.opt(str7));
                            } catch (Exception unused4) {
                            }
                        }
                    }
                }
                return a(110, jSONObject3);
            }
        }
        return a(110, (JSONObject) null);
    }

    private static int[] b(Context context) {
        int[] iArr = new int[3];
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(com.umeng.commonsdk.internal.c.f50126a, 0);
            if (sharedPreferences != null) {
                iArr[0] = sharedPreferences.getInt(com.umeng.commonsdk.internal.c.f50127b, 0);
                iArr[1] = sharedPreferences.getInt(com.umeng.commonsdk.internal.c.f50128c, 0);
                iArr[2] = sharedPreferences.getInt("policyGrantResult", 0);
            }
        } catch (Throwable unused) {
        }
        return iArr;
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        Context context2;
        Throwable th;
        Envelope envelopeA;
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(a("header"), new JSONObject());
            if (jSONObject != null) {
                try {
                    jSONObject3 = a(jSONObject3, jSONObject);
                } catch (Throwable th2) {
                    th = th2;
                    context2 = context;
                    UMCrashManager.reportCrash(context2, th);
                    return a(110, new JSONObject());
                }
            }
            if (jSONObject3 != null && jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next != null && (next instanceof String)) {
                        String str2 = next;
                        if (jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            if (jSONObject3 != null && DataHelper.largeThanMaxSize(jSONObject3.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return a(113, jSONObject3);
            }
            if (jSONObject3 != null) {
                envelopeA = a(context, jSONObject3.toString().getBytes());
                if (envelopeA == null) {
                    return a(111, jSONObject3);
                }
            } else {
                envelopeA = null;
            }
            Envelope envelope = envelopeA;
            if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObject3);
            }
            context2 = context;
            try {
                int iA = a(context2, envelope, "h==1.2.0", "", str);
                if (iA != 0) {
                    return a(iA, jSONObject3);
                }
                if (ULog.DEBUG) {
                    int length = jSONObject3.toString().getBytes().length;
                }
                return jSONObject3;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                UMCrashManager.reportCrash(context2, th);
                return a(110, new JSONObject());
            }
        } catch (Throwable th4) {
            th = th4;
            context2 = context;
        }
    }

    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.String, org.json.JSONObject] */
    private static JSONObject a(Context context, String str, boolean z2) {
        SharedPreferences sharedPreferences;
        JSONObject jSONObject;
        ?? r14;
        char c2;
        try {
            SharedPreferences sharedPreferences2 = PreferenceWrapper.getDefault(context);
            if (!TextUtils.isEmpty(f50227i)) {
                try {
                    jSONObject = new JSONObject(f50227i);
                    sharedPreferences = sharedPreferences2;
                } catch (Exception unused) {
                    sharedPreferences = sharedPreferences2;
                    jSONObject = null;
                }
                r14 = 0;
                c2 = 1;
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(a(bv.f48915p), DeviceConfig.getAppMD5Signature(context));
                jSONObject2.put(a(bv.f48916q), DeviceConfig.getAppSHA1Key(context));
                jSONObject2.put(a(bv.f48917r), DeviceConfig.getAppHashKey(context));
                jSONObject2.put(a("app_version"), DeviceConfig.getAppVersionName(context));
                jSONObject2.put(a("version_code"), Integer.parseInt(DeviceConfig.getAppVersionCode(context)));
                jSONObject2.put(a(bv.f48921v), DeviceConfig.getDeviceIdUmengMD5(context));
                jSONObject2.put(a("cpu"), DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(context);
                if (!TextUtils.isEmpty(mccmnc)) {
                    jSONObject2.put(a(bv.f48875B), mccmnc);
                    f50220b = mccmnc;
                } else {
                    jSONObject2.put(a(bv.f48875B), "");
                }
                if (FieldManager.allow(d.f50473I)) {
                    String subOSName = DeviceConfig.getSubOSName(context);
                    if (!TextUtils.isEmpty(subOSName)) {
                        jSONObject2.put(a(bv.f48884K), subOSName);
                    }
                    String subOSVersion = DeviceConfig.getSubOSVersion(context);
                    if (!TextUtils.isEmpty(subOSVersion)) {
                        jSONObject2.put(a(bv.f48885L), subOSVersion);
                    }
                }
                String deviceType = DeviceConfig.getDeviceType(context);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject2.put(a(bv.ac), deviceType);
                }
                jSONObject2.put(a("package_name"), DeviceConfig.getPackageName(context));
                jSONObject2.put(a(bv.f48920u), AnalyticsConstants.SDK_TYPE);
                jSONObject2.put(a("device_id"), DeviceConfig.getDeviceId(context));
                jSONObject2.put(a("device_model"), Build.MODEL);
                jSONObject2.put(a(bv.f48878E), Build.BOARD);
                jSONObject2.put(a(bv.f48879F), Build.BRAND);
                sharedPreferences = sharedPreferences2;
                r14 = 0;
                jSONObject2.put(a(bv.f48880G), Build.TIME);
                jSONObject2.put(a(bv.f48881H), Build.MANUFACTURER);
                jSONObject2.put(a(bv.f48882I), Build.ID);
                jSONObject2.put(a(bv.f48883J), Build.DEVICE);
                jSONObject2.put(a(bv.f48924y), Build.VERSION.RELEASE);
                jSONObject2.put(a(bv.f48923x), AnalyticsConstants.SDK_TYPE);
                int[] resolutionArray = DeviceConfig.getResolutionArray(context);
                if (resolutionArray != null) {
                    String strA = a(bv.f48925z);
                    StringBuilder sb = new StringBuilder();
                    c2 = 1;
                    sb.append(resolutionArray[1]);
                    sb.append("*");
                    sb.append(resolutionArray[0]);
                    jSONObject2.put(strA, sb.toString());
                } else {
                    c2 = 1;
                }
                jSONObject2.put(a(bv.f48874A), DeviceConfig.getMac(context));
                jSONObject2.put(a("timezone"), DeviceConfig.getTimeZone(context));
                String[] localeInfo = DeviceConfig.getLocaleInfo(context);
                jSONObject2.put(a(bv.f48888O), localeInfo[0]);
                jSONObject2.put(a("language"), localeInfo[c2]);
                jSONObject2.put(a(bv.f48889P), DeviceConfig.getNetworkOperatorName(context));
                jSONObject2.put(a(bv.f48918s), DeviceConfig.getAppName(context));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    jSONObject2.put(a(bv.f48890Q), "wifi");
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    jSONObject2.put(a(bv.f48890Q), "2G/3G");
                } else {
                    jSONObject2.put(a(bv.f48890Q), "unknow");
                }
                if (!"".equals(networkAccessMode[c2])) {
                    jSONObject2.put(a(bv.f48891R), networkAccessMode[c2]);
                }
                if (DeviceConfig.isHarmony(context)) {
                    jSONObject2.put(a(bv.ai), "harmony");
                } else {
                    jSONObject2.put(a(bv.ai), AnalyticsConstants.SDK_TYPE);
                }
                jSONObject2.put(a("network_type"), DeviceConfig.getNetworkType(context));
                jSONObject2.put(a(bv.f48901b), AnalyticsSdkVersion.SDK_VERSION);
                jSONObject2.put(a(bv.f48902c), SdkVersion.SDK_TYPE);
                jSONObject2.put(a(bv.f48903d), "1");
                if (!TextUtils.isEmpty(f50219a)) {
                    jSONObject2.put(a(bv.f48904e), f50219a);
                }
                jSONObject2.put(a(bv.ad), Build.VERSION.SDK_INT);
                if (!TextUtils.isEmpty(UMUtils.VALUE_REC_VERSION_NAME)) {
                    jSONObject2.put(a(bv.f48899Z), UMUtils.VALUE_REC_VERSION_NAME);
                }
                try {
                    String uUIDForZid = UMUtils.getUUIDForZid(context);
                    if (TextUtils.isEmpty(uUIDForZid)) {
                        UMUtils.setUUIDForZid(context);
                        uUIDForZid = UMUtils.getUUIDForZid(context);
                    }
                    jSONObject2.put(a("session_id"), uUIDForZid);
                } catch (Throwable unused2) {
                }
                try {
                    if (DeviceConfig.isSystemApp(context)) {
                        jSONObject2.put(bv.ak, "1");
                    }
                } catch (Throwable unused3) {
                }
                if (DeviceConfig.isHonorDevice()) {
                    try {
                        if (bt.c()) {
                            jSONObject2.put(bv.al, 2);
                        }
                        if (bt.b()) {
                            jSONObject2.put(bv.al, 3);
                        }
                    } catch (Throwable unused4) {
                    }
                }
                try {
                    jSONObject2.put(bv.am, DeviceConfig.getNotificationStatus(context));
                } catch (Throwable unused5) {
                }
                try {
                    jSONObject2.put(bv.an, DeviceConfig.getRingerMode(context));
                } catch (Throwable unused6) {
                }
                try {
                    jSONObject2.put(bv.ao, com.umeng.commonsdk.statistics.common.d.a(context));
                } catch (Throwable unused7) {
                }
                try {
                    jSONObject2.put(bv.ap, com.umeng.commonsdk.statistics.common.d.a());
                } catch (Throwable unused8) {
                }
                f50227i = jSONObject2.toString();
                jSONObject = jSONObject2;
            }
            if (jSONObject == null) {
                return r14;
            }
            try {
                jSONObject.put(a(bv.ae), UMUtils.getOaidRequiredTime(context));
            } catch (Exception unused9) {
            }
            try {
                SharedPreferences sharedPreferences3 = sharedPreferences;
                jSONObject.put(a(bv.f48894U), sharedPreferences3.getInt("successful_request", 0));
                jSONObject.put(a(bv.f48895V), sharedPreferences3.getInt(bv.f48895V, 0));
                jSONObject.put(a(bv.f48896W), sharedPreferences3.getInt("last_request_spent_ms", 0));
                String zid = UMUtils.getZid(context);
                if (!TextUtils.isEmpty(zid)) {
                    jSONObject.put(a(bv.af), zid);
                }
                if (!TextUtils.isEmpty(UMUtils.VALUE_ASMS_VERSION)) {
                    jSONObject.put(a(bv.ag), UMUtils.VALUE_ASMS_VERSION);
                }
            } catch (Exception unused10) {
            }
            jSONObject.put(a("channel"), UMUtils.getChannel(context));
            jSONObject.put(a("appkey"), UMUtils.getAppkey(context));
            try {
                String deviceToken = UMUtils.getDeviceToken(context);
                if (!TextUtils.isEmpty(deviceToken)) {
                    jSONObject.put(a(bv.f48900a), deviceToken);
                }
            } catch (Exception e2) {
                UMCrashManager.reportCrash(context, e2);
            }
            try {
                String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, bv.f48906g, r14);
                if (!TextUtils.isEmpty(strImprintProperty)) {
                    jSONObject.put(a(bv.f48906g), strImprintProperty);
                }
            } catch (Exception e3) {
                UMCrashManager.reportCrash(context, e3);
            }
            try {
                jSONObject.put(a("wrapper_type"), a.f50216a);
                jSONObject.put(a("wrapper_version"), a.f50217b);
            } catch (Exception unused11) {
            }
            try {
                jSONObject.put(a(bv.aV), UMUtils.getTargetSdkVersion(context));
            } catch (Throwable unused12) {
            }
            try {
                if (b()) {
                    jSONObject.put("umTaskId", f50225g);
                    jSONObject.put("umCaseId", f50226h);
                }
            } catch (Throwable unused13) {
            }
            if ((bv.aI.equals(str) || "a".equals(str)) && z2) {
                try {
                    int[] iArrB = b(context);
                    jSONObject.put(a(bv.bq), String.valueOf(iArrB[0]) + String.valueOf(iArrB[c2]) + String.valueOf(iArrB[2]));
                } catch (Throwable unused14) {
                }
            }
            try {
                Map<String, String> moduleTags = TagHelper.getModuleTags();
                if (moduleTags != null && moduleTags.size() > 0) {
                    JSONObject jSONObject3 = new JSONObject();
                    for (Map.Entry<String, String> entry : moduleTags.entrySet()) {
                        jSONObject3.put(entry.getKey(), entry.getValue());
                    }
                    jSONObject.put(a(bv.aj), jSONObject3);
                }
            } catch (Throwable unused15) {
            }
            try {
                String realTimeDebugKey = AnalyticsConfig.getRealTimeDebugKey();
                if (!TextUtils.isEmpty(realTimeDebugKey)) {
                    jSONObject.put(a(bv.bp), realTimeDebugKey);
                }
            } catch (Throwable unused16) {
            }
            try {
                JSONObject moduleVer = UMUtils.getModuleVer();
                if (moduleVer.length() > 0) {
                    jSONObject.put(a(bv.aY), moduleVer);
                }
            } catch (Throwable unused17) {
            }
            try {
                String apmFlag = UMUtils.getApmFlag();
                if (!TextUtils.isEmpty(apmFlag)) {
                    jSONObject.put(a(bv.bo), apmFlag);
                }
            } catch (Throwable unused18) {
            }
            try {
                String str2 = Build.BRAND;
                String strA2 = au.a(str2);
                String strB = au.b(str2);
                jSONObject.put(bv.aW, strA2);
                jSONObject.put(bv.aX, strB);
            } catch (Throwable unused19) {
            }
            byte[] bArrA = ImprintHandler.getImprintService(context).a();
            if (bArrA != null && bArrA.length > 0) {
                try {
                    jSONObject.put(a(bv.f48897X), Base64.encodeToString(bArrA, 0));
                } catch (JSONException e4) {
                    UMCrashManager.reportCrash(context, e4);
                }
            }
            if (jSONObject.length() > 0) {
                return new JSONObject().put(a("header"), jSONObject);
            }
            return null;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    private JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt(a("header")) != null && (jSONObject.opt(a("header")) instanceof JSONObject)) {
            JSONObject jSONObject3 = (JSONObject) jSONObject.opt(a("header"));
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && (next instanceof String)) {
                    String str = next;
                    if (jSONObject2.opt(str) != null) {
                        try {
                            jSONObject3.put(str, jSONObject2.opt(str));
                            if (str.equals(a(g.f49348i)) && (jSONObject2.opt(str) instanceof Integer)) {
                                this.f50230k = ((Integer) jSONObject2.opt(str)).intValue();
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    private Envelope a(Context context, byte[] bArr) {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, "codex", null);
        int iIntValue = -1;
        try {
            if (!TextUtils.isEmpty(strImprintProperty)) {
                iIntValue = Integer.valueOf(strImprintProperty).intValue();
            }
        } catch (NumberFormatException e2) {
            UMCrashManager.reportCrash(context, e2);
        }
        if (iIntValue == 0) {
            return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (iIntValue == 1) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (f50229l) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
    }

    private int a(Context context, Envelope envelope, String str, String str2, String str3) {
        if (context == null || envelope == null || TextUtils.isEmpty(str)) {
            return 101;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = DeviceConfig.getAppVersionName(context);
        }
        String strB = com.umeng.commonsdk.stateless.d.b(str3);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("&&");
        sb.append(str2);
        sb.append("_");
        sb.append(System.currentTimeMillis());
        sb.append("_");
        sb.append(strB);
        sb.append(".log");
        byte[] binary = envelope.toBinary();
        if (com.umeng.commonsdk.utils.c.a()) {
            return str.startsWith("h") ? UMFrUtils.saveEnvelopeFile(context, sb.toString(), binary) : UMErrorCode.E_UM_BE_ERROR_WORK_MODE;
        }
        if (str.startsWith("h")) {
            return UMErrorCode.E_UM_BE_ERROR_WORK_MODE;
        }
        if (!str.startsWith(bv.aD) && !str.startsWith("i") && !str.startsWith("a") && !str.startsWith(bv.aI)) {
            return com.umeng.commonsdk.stateless.d.a(context, com.umeng.commonsdk.stateless.a.f50194f, sb.toString(), binary);
        }
        return UMFrUtils.saveEnvelopeFile(context, sb.toString(), binary);
    }

    public static void a(boolean z2) {
        f50229l = z2;
    }
}
