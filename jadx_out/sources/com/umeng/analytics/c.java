package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.g;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.MLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final int f48613a = 20;

    /* renamed from: b, reason: collision with root package name */
    private static final String f48614b = "umeng_pcp";

    /* renamed from: c, reason: collision with root package name */
    private static final String f48615c = "mob";

    /* renamed from: d, reason: collision with root package name */
    private static final String f48616d = "em";

    /* renamed from: e, reason: collision with root package name */
    private static final String f48617e = "cp";

    /* renamed from: f, reason: collision with root package name */
    private static final String f48618f = "pk";

    /* renamed from: g, reason: collision with root package name */
    private static final String f48619g = "pv";

    /* renamed from: h, reason: collision with root package name */
    private static String[] f48620h = new String[2];

    /* renamed from: i, reason: collision with root package name */
    private static Object f48621i = new Object();

    /* renamed from: j, reason: collision with root package name */
    private static Map<String, Object> f48622j = new HashMap();

    public static void a(Context context, String str, String str2) {
        String[] strArr = f48620h;
        strArr[0] = str;
        strArr[1] = str2;
        if (context != null) {
            com.umeng.common.b.a(context).a(str, str2);
        }
    }

    public static void b(Context context) {
        String[] strArr = f48620h;
        strArr[0] = null;
        strArr[1] = null;
        if (context != null) {
            com.umeng.common.b.a(context).b();
        }
    }

    public static Map<String, Object> c(Context context) throws JSONException {
        SharedPreferences sharedPreferences = context.getSharedPreferences(f48614b, 0);
        String string = sharedPreferences.getString(f48617e, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            String str = new String(ay.a(Base64.decode(string, 0), UMConfigure.sAppkey.getBytes()));
            if (str.length() <= 0) {
                return null;
            }
            HashMap map = new HashMap();
            try {
                JSONArray jSONArray = (JSONArray) new JSONTokener(str).nextValue();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    map.put(jSONObject.getString("pk"), jSONObject.get("pv"));
                }
                sharedPreferences.edit().putString(f48617e, "").apply();
                return map;
            } catch (Throwable unused) {
                return map;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static String[] a(Context context) {
        String[] strArrA;
        if (!TextUtils.isEmpty(f48620h[0]) && !TextUtils.isEmpty(f48620h[1])) {
            return f48620h;
        }
        if (context == null || (strArrA = com.umeng.common.b.a(context).a()) == null) {
            return null;
        }
        String[] strArr = f48620h;
        strArr[0] = strArrA[0];
        strArr[1] = strArrA[1];
        return strArr;
    }

    public static void b(String str) {
        String strEncodeToString;
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            try {
                SharedPreferences sharedPreferences = appContext.getSharedPreferences(f48614b, 0);
                byte[] bArrA = ay.a(str.getBytes(), UMConfigure.sAppkey.getBytes());
                if (bArrA.length == 0) {
                    strEncodeToString = g.f49330Q;
                } else {
                    strEncodeToString = Base64.encodeToString(bArrA, 0);
                }
                sharedPreferences.edit().putString(f48616d, strEncodeToString).apply();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str) {
        String strEncodeToString;
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            try {
                SharedPreferences sharedPreferences = appContext.getSharedPreferences(f48614b, 0);
                byte[] bArrA = ay.a(str.getBytes(), UMConfigure.sAppkey.getBytes());
                if (bArrA.length == 0) {
                    strEncodeToString = g.f49330Q;
                } else {
                    strEncodeToString = Base64.encodeToString(bArrA, 0);
                }
                sharedPreferences.edit().putString(f48615c, strEncodeToString).apply();
            } catch (Throwable unused) {
            }
        }
    }

    public static String b() {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            try {
                SharedPreferences sharedPreferences = appContext.getSharedPreferences(f48614b, 0);
                String string = sharedPreferences.getString(f48616d, "");
                if (g.f49330Q.equals(string)) {
                    sharedPreferences.edit().putString(f48616d, "").apply();
                    return "";
                }
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                sharedPreferences.edit().putString(f48616d, "").apply();
                return new String(ay.a(Base64.decode(string, 0), UMConfigure.sAppkey.getBytes()));
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String a() {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            try {
                SharedPreferences sharedPreferences = appContext.getSharedPreferences(f48614b, 0);
                String string = sharedPreferences.getString(f48615c, "");
                if (g.f49330Q.equals(string)) {
                    sharedPreferences.edit().putString(f48615c, "").apply();
                    return "";
                }
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                sharedPreferences.edit().putString(f48615c, "").apply();
                return new String(ay.a(Base64.decode(string, 0), UMConfigure.sAppkey.getBytes()));
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static void a(Context context, Map<String, Object> map) {
        if (map != null) {
            JSONStringer jSONStringer = new JSONStringer();
            try {
                synchronized (f48621i) {
                    try {
                        jSONStringer.array();
                        for (String str : map.keySet()) {
                            jSONStringer.object();
                            jSONStringer.key("pk");
                            jSONStringer.value(str);
                            jSONStringer.key("pv");
                            jSONStringer.value(map.get(str));
                            jSONStringer.endObject();
                        }
                        jSONStringer.endArray();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences(f48614b, 0);
                sharedPreferences.edit().putString(f48617e, Base64.encodeToString(ay.a(jSONStringer.toString().getBytes(), UMConfigure.sAppkey.getBytes()), 0)).apply();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str, Object obj) {
        synchronized (f48621i) {
            try {
                if (f48622j.containsKey(str)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "更新账号自定义KV: key=" + str + "; val=" + obj);
                    f48622j.put(str, obj);
                    a(UMGlobalContext.getAppContext(), f48622j);
                } else {
                    if (f48622j.size() >= 20) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "设置账号自定义KV: 已经设置20个KV键值对，忽略设置请求。");
                        MLog.e("userProfile: Only 20 user-defined key-value pairs can be configured, please check!");
                        return;
                    }
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "设置账号自定义KV: key=" + str + "; val=" + obj);
                    f48622j.put(str, obj);
                    a(UMGlobalContext.getAppContext(), f48622j);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
