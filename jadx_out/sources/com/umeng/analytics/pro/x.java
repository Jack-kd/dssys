package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.ab;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.pro.r;
import com.umeng.analytics.process.UMProcessDBDatasSender;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class x implements ab.a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f49674a = "session_start_time";

    /* renamed from: b, reason: collision with root package name */
    public static final String f49675b = "session_end_time";

    /* renamed from: c, reason: collision with root package name */
    public static final String f49676c = "session_id";

    /* renamed from: d, reason: collision with root package name */
    public static final String f49677d = "pre_session_id";

    /* renamed from: e, reason: collision with root package name */
    public static final String f49678e = "a_start_time";

    /* renamed from: f, reason: collision with root package name */
    public static final String f49679f = "a_end_time";

    /* renamed from: g, reason: collision with root package name */
    public static final String f49680g = "fg_count";

    /* renamed from: h, reason: collision with root package name */
    private static String f49681h = null;

    /* renamed from: i, reason: collision with root package name */
    private static Context f49682i = null;

    /* renamed from: j, reason: collision with root package name */
    private static boolean f49683j = false;

    /* renamed from: k, reason: collision with root package name */
    private static long f49684k = 0;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f49685l = true;

    /* renamed from: m, reason: collision with root package name */
    private static long f49686m;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final x f49687a = new x();

        private a() {
        }
    }

    public static x a() {
        return a.f49687a;
    }

    public static void b(Context context) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49682i);
        if (sharedPreferences != null) {
            long j2 = sharedPreferences.getLong(f49680g, 0L);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (editorEdit != null) {
                editorEdit.putLong(f49680g, j2 + 1);
                editorEdit.commit();
            }
        }
    }

    private void d(Context context) {
        try {
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(context).edit();
            editorEdit.putLong(f49680g, 0L);
            editorEdit.commit();
        } catch (Throwable unused) {
        }
    }

    private String e(Context context) {
        if (f49682i == null && context != null) {
            f49682i = context.getApplicationContext();
        }
        String strD = ab.a().d(f49682i);
        try {
            f(context);
            r.a(f49682i).d((Object) null);
        } catch (Throwable unused) {
        }
        return strD;
    }

    private void f(Context context) {
        r.a(context).b(context);
        r.a(context).d();
    }

    public void c(Context context, Object obj) {
        try {
            if (f49682i == null && context != null) {
                f49682i = context.getApplicationContext();
            }
            long jLongValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            if (sharedPreferences.getLong(f49678e, 0L) == 0) {
                MLog.e("onPause called before onResume");
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onEndSessionInternal: write activity end time = " + jLongValue);
            editorEdit.putLong(f49679f, jLongValue);
            editorEdit.putLong(f49675b, jLongValue);
            editorEdit.commit();
        } catch (Throwable unused) {
        }
    }

    private x() {
        ab.a().a(this);
    }

    public static long a(Context context) {
        try {
            return PreferenceWrapper.getDefault(context).getLong(f49680g, 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public void a(Context context, long j2) {
        SharedPreferences.Editor editorEdit;
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49682i);
        if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null) {
            return;
        }
        editorEdit.putLong(f49674a, j2);
        editorEdit.commit();
    }

    public void b(Context context, Object obj) {
        long jLongValue;
        try {
            if (f49682i == null) {
                f49682i = UMGlobalContext.getAppContext(context);
            }
            if (obj == null) {
                jLongValue = System.currentTimeMillis();
            } else {
                jLongValue = ((Long) obj).longValue();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49682i);
            if (sharedPreferences == null) {
                return;
            }
            f49684k = sharedPreferences.getLong(f49679f, 0L);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime: " + f49684k);
            String string = sharedPreferences.getString(g.aF, "");
            String appVersionName = UMUtils.getAppVersionName(f49682i);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (editorEdit == null) {
                return;
            }
            if (!TextUtils.isEmpty(string) && !string.equals(appVersionName)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> requestNewInstantSessionIf: version upgrade");
                editorEdit.putLong(f49674a, jLongValue);
                editorEdit.commit();
                r.a(f49682i).a((Object) null, true);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> force generate new session: session id = " + ab.a().c(f49682i));
                f49683j = true;
                a(f49682i, jLongValue, true);
                return;
            }
            if (ab.a().e(f49682i)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> More then 30 sec from last session.");
                f49683j = true;
                editorEdit.putLong(f49674a, jLongValue);
                editorEdit.commit();
                a(f49682i, jLongValue, false);
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> less then 30 sec from last session, do nothing.");
            f49683j = false;
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, Object obj) {
        SharedPreferences.Editor editorEdit;
        try {
            if (f49682i == null && context != null) {
                f49682i = context.getApplicationContext();
            }
            long jLongValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49682i);
            if (sharedPreferences != null && (editorEdit = sharedPreferences.edit()) != null) {
                String string = sharedPreferences.getString(g.aF, "");
                String appVersionName = UMUtils.getAppVersionName(f49682i);
                if (TextUtils.isEmpty(string)) {
                    editorEdit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                    editorEdit.putString(g.aF, appVersionName);
                    editorEdit.commit();
                } else if (!string.equals(appVersionName)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onStartSessionInternal: upgrade version: " + string + "-> " + appVersionName);
                    int i2 = sharedPreferences.getInt("versioncode", 0);
                    String string2 = sharedPreferences.getString("pre_date", "");
                    String string3 = sharedPreferences.getString("pre_version", "");
                    String string4 = sharedPreferences.getString(g.aF, "");
                    editorEdit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                    editorEdit.putString(g.aF, appVersionName);
                    editorEdit.putString("vers_date", string2);
                    editorEdit.putString("vers_pre_version", string3);
                    editorEdit.putString("cur_version", string4);
                    editorEdit.putInt("vers_code", i2);
                    editorEdit.putString("vers_name", string);
                    editorEdit.commit();
                    if (f49685l) {
                        f49685l = false;
                    }
                    if (f49683j) {
                        f49683j = false;
                        b(f49682i, jLongValue, true);
                        b(f49682i, jLongValue);
                        return;
                    }
                    return;
                }
                if (f49683j) {
                    f49683j = false;
                    if (f49685l) {
                        f49685l = false;
                    }
                    f49681h = e(context);
                    MLog.d("创建新会话: " + f49681h);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "mSessionChanged flag has been set, Start new session: " + f49681h);
                    return;
                }
                f49681h = sharedPreferences.getString("session_id", null);
                editorEdit.putLong(f49678e, jLongValue);
                editorEdit.putLong(f49679f, 0L);
                editorEdit.commit();
                MLog.d("延续上一个会话: " + f49681h);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "Extend current session: " + f49681h);
                if (f49685l) {
                    f49685l = false;
                    if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50469E)) {
                        Context context2 = f49682i;
                        UMWorkDispatch.sendEventEx(context2, r.a.f49617E, CoreProtocol.getInstance(context2), null, 0L);
                    }
                }
                f(context);
                r.a(f49682i).a(false);
            }
        } catch (Throwable unused) {
        }
    }

    @Deprecated
    public String c(Context context) {
        try {
            if (f49681h == null) {
                return PreferenceWrapper.getDefault(context).getString("session_id", null);
            }
        } catch (Throwable unused) {
        }
        return f49681h;
    }

    @Deprecated
    public String c() {
        return c(f49682i);
    }

    public boolean b(Context context, long j2, boolean z2) {
        String strA;
        long j3;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences != null && (strA = ab.a().a(f49682i)) != null) {
                long j4 = sharedPreferences.getLong(f49678e, 0L);
                long j5 = sharedPreferences.getLong(f49679f, 0L);
                if (j4 <= 0 || j5 != 0) {
                    return false;
                }
                try {
                    if (z2) {
                        j3 = f49684k;
                        if (j3 == 0) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime = 0, In-app upgrade, use currentTime: = " + j2);
                            j3 = j2;
                        } else {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime != 0, app upgrade, use lastActivityEndTime: = " + f49684k);
                        }
                        c(f49682i, Long.valueOf(j3));
                    } else {
                        c(f49682i, Long.valueOf(j2));
                        j3 = j2;
                    }
                    JSONObject jSONObject = new JSONObject();
                    if (z2) {
                        jSONObject.put(h.d.a.f49415g, j3);
                    } else {
                        jSONObject.put(h.d.a.f49415g, j2);
                    }
                    JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
                    if (jSONObjectB != null && jSONObjectB.length() > 0) {
                        jSONObject.put("__sp", jSONObjectB);
                    }
                    JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
                    if (jSONObjectC != null && jSONObjectC.length() > 0) {
                        jSONObject.put("__pp", jSONObjectC);
                    }
                    if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50469E)) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** foregroundCount = " + f49686m);
                        jSONObject.put(h.d.a.f49416h, f49686m);
                        f49686m = 0L;
                    } else {
                        jSONObject.put(h.d.a.f49416h, 0L);
                    }
                    l.a(context).a(strA, jSONObject, l.a.END);
                    r.a(f49682i).e();
                } catch (Throwable unused) {
                }
                return true;
            }
            return false;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public String a(Context context, long j2, boolean z2) {
        String strB = ab.a().b(context);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onInstantSessionInternal: current session id = " + strB);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j2);
            JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
            if (jSONObjectB != null && jSONObjectB.length() > 0) {
                jSONObject.put("__sp", jSONObjectB);
            }
            JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                jSONObject.put("__pp", jSONObjectC);
            }
            l.a(context).a(strB, jSONObject, l.a.INSTANTSESSIONBEGIN);
            r.a(context).a(jSONObject, z2);
        } catch (Throwable unused) {
        }
        return strB;
    }

    public void b(Context context, long j2) {
        if (PreferenceWrapper.getDefault(context) == null) {
            return;
        }
        try {
            r.a(f49682i).c((Object) null);
        } catch (Throwable unused) {
        }
    }

    @Deprecated
    public String b() {
        return f49681h;
    }

    @Override // com.umeng.analytics.pro.ab.a
    public void a(String str, String str2, long j2, long j3, long j4) throws JSONException {
        a(f49682i, str2, j2, j3, j4);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "saveSessionToDB: complete");
        if (AnalyticsConstants.SUB_PROCESS_EVENT) {
            Context context = f49682i;
            UMWorkDispatch.sendEvent(context, UMProcessDBDatasSender.UM_PROCESS_EVENT_KEY, UMProcessDBDatasSender.getInstance(context), Long.valueOf(System.currentTimeMillis()));
        }
    }

    @Override // com.umeng.analytics.pro.ab.a
    public void a(String str, long j2, long j3, long j4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(str, j2);
    }

    private void a(Context context, String str, long j2, long j3, long j4) throws JSONException {
        if (TextUtils.isEmpty(f49681h)) {
            f49681h = ab.a().a(f49682i);
        }
        if (TextUtils.isEmpty(str) || str.equals(f49681h)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(h.d.a.f49415g, j3);
            jSONObject.put(h.d.a.f49416h, j4);
            JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
            if (jSONObjectB != null && jSONObjectB.length() > 0) {
                jSONObject.put("__sp", jSONObjectB);
            }
            JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                jSONObject.put("__pp", jSONObjectC);
            }
            l.a(context).a(f49681h, jSONObject, l.a.END);
        } catch (Exception unused) {
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__e", j2);
            l.a(context).a(str, jSONObject2, l.a.BEGIN);
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50469E)) {
                f49686m = j4;
                d(context);
                Context context2 = f49682i;
                UMWorkDispatch.sendEventEx(context2, r.a.f49617E, CoreProtocol.getInstance(context2), null, 0L);
            }
        } catch (Exception unused2) {
        }
        f49681h = str;
    }

    private void a(String str, long j2) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f49682i);
        if (sharedPreferences == null) {
            return;
        }
        long j3 = sharedPreferences.getLong(f49675b, 0L);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__ii", str);
            jSONObject.put("__e", j2);
            jSONObject.put(h.d.a.f49415g, j3);
            double[] location = AnalyticsConfig.getLocation();
            if (location != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("lat", location[0]);
                jSONObject2.put("lng", location[1]);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject.put(h.d.a.f49413e, jSONObject2);
            }
            Class<?> cls = Class.forName("android.net.TrafficStats");
            Class cls2 = Integer.TYPE;
            Method method = cls.getMethod("getUidRxBytes", cls2);
            Method method2 = cls.getMethod("getUidTxBytes", cls2);
            int i2 = f49682i.getApplicationInfo().uid;
            if (i2 == -1) {
                return;
            }
            long jLongValue = ((Long) method.invoke(null, Integer.valueOf(i2))).longValue();
            long jLongValue2 = ((Long) method2.invoke(null, Integer.valueOf(i2))).longValue();
            if (jLongValue > 0 && jLongValue2 > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(g.f49321H, jLongValue);
                jSONObject3.put(g.f49320G, jLongValue2);
                jSONObject.put(h.d.a.f49412d, jSONObject3);
            }
            l.a(f49682i).a(str, jSONObject, l.a.NEWSESSION);
            y.a(f49682i);
            o.c(f49682i);
        } catch (Throwable unused) {
        }
    }
}
