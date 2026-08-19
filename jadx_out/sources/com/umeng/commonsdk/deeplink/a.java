package com.umeng.commonsdk.deeplink;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.deeplink.b;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static volatile a f50023a;

    /* renamed from: b, reason: collision with root package name */
    private volatile OnAttributionListener f50024b;

    /* renamed from: c, reason: collision with root package name */
    private volatile Context f50025c;

    /* renamed from: d, reason: collision with root package name */
    private final Handler f50026d = new Handler(Looper.getMainLooper());

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context) {
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] scheduleRetry: delay 1000ms");
        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f50091K, com.umeng.commonsdk.internal.b.a(context).a(), null, 1000L);
    }

    private long d(Context context) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
        if (sharedPreferences == null) {
            return System.currentTimeMillis();
        }
        long j2 = sharedPreferences.getLong("um_attribution_first_launch_time", 0L);
        if (j2 > 0) {
            return j2;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        sharedPreferences.edit().putLong("um_attribution_first_launch_time", jCurrentTimeMillis).commit();
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] firstLaunchTime created: " + jCurrentTimeMillis);
        return jCurrentTimeMillis;
    }

    private String e(Context context) {
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return null;
            }
            return sharedPreferences.getString("um_attribution_result_cache", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        try {
            long jD = d(applicationContext);
            String appkey = UMUtils.getAppkey(applicationContext);
            String uMId = UMUtils.getUMId(applicationContext);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] executeQuery: appkey=" + appkey + ", umid=" + uMId + ", firstLaunchTime=" + jD);
            if (!TextUtils.isEmpty(uMId)) {
                b.a(appkey, uMId, jD, new b.a() { // from class: com.umeng.commonsdk.deeplink.a.1
                    @Override // com.umeng.commonsdk.deeplink.b.a
                    public void a(int i2, JSONObject jSONObject) {
                        a.this.a(applicationContext, i2, jSONObject);
                    }

                    @Override // com.umeng.commonsdk.deeplink.b.a
                    public void a(Throwable th) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("--->>> [attribution] network error: ");
                        sb.append(th != null ? th.getMessage() : "unknown");
                        UMRTLog.e(UMRTLog.RTLOG_TAG, sb.toString());
                        a.this.c(applicationContext);
                    }
                });
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] umid is empty, retry in 1s");
                c(applicationContext);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(applicationContext, th);
        }
    }

    public static a a() {
        if (f50023a == null) {
            synchronized (a.class) {
                try {
                    if (f50023a == null) {
                        f50023a = new a();
                    }
                } finally {
                }
            }
        }
        return f50023a;
    }

    public void a(Context context, OnAttributionListener onAttributionListener) {
        Context applicationContext;
        this.f50024b = onAttributionListener;
        StringBuilder sb = new StringBuilder();
        sb.append("--->>> [attribution] setListener: ");
        sb.append(onAttributionListener != null ? "registered" : "null");
        UMRTLog.i(UMRTLog.RTLOG_TAG, sb.toString());
        if (onAttributionListener == null) {
            return;
        }
        if (context != null) {
            applicationContext = context.getApplicationContext();
        } else {
            applicationContext = this.f50025c != null ? this.f50025c : null;
        }
        if (applicationContext == null) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] setListener: context is null, will handle in triggerQuery");
            return;
        }
        String strE = e(applicationContext);
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] setListener: cache hit, dispatch immediately");
        a(strE);
    }

    public void a(Context context) {
        if (this.f50024b == null) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] triggerQuery: no listener, skip");
            return;
        }
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (!UMUtils.isMainProgress(applicationContext)) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] triggerQuery: not main process, skip");
            return;
        }
        this.f50025c = applicationContext;
        String strE = e(applicationContext);
        if (!TextUtils.isEmpty(strE)) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] triggerQuery: cache hit, dispatch cached result");
            a(strE);
        } else {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] triggerQuery: dispatch query message");
            UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.f50091K, com.umeng.commonsdk.internal.b.a(applicationContext).a(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, int i2, JSONObject jSONObject) {
        if (i2 == 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("--->>> [attribution] success: ");
            sb.append(jSONObject != null ? jSONObject.toString() : "null");
            UMRTLog.i(UMRTLog.RTLOG_TAG, sb.toString());
            a(context, jSONObject, 1);
            a(jSONObject);
            return;
        }
        if (i2 == -1) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] failed: status=-1");
            a(context, (JSONObject) null, -1);
            a(-1);
        } else {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] pending: status=0, retry in 1s");
            c(context);
        }
    }

    private void a(Context context, JSONObject jSONObject, int i2) {
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("status", i2);
            if (jSONObject != null) {
                jSONObject2.put("data", jSONObject);
            }
            sharedPreferences.edit().putString("um_attribution_result_cache", jSONObject2.toString()).commit();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [attribution] cache saved: status=" + i2);
        } catch (Throwable unused) {
        }
    }

    private void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("status", 0);
            if (iOptInt == 1) {
                a(jSONObject.optJSONObject("data"));
            } else if (iOptInt == -1) {
                a(-1);
            }
        } catch (Throwable unused) {
        }
    }

    private void a(final JSONObject jSONObject) {
        final OnAttributionListener onAttributionListener = this.f50024b;
        if (onAttributionListener == null) {
            return;
        }
        this.f50026d.post(new Runnable() { // from class: com.umeng.commonsdk.deeplink.a.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    onAttributionListener.onAttributionSuccess(jSONObject);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void a(final int i2) {
        final OnAttributionListener onAttributionListener = this.f50024b;
        if (onAttributionListener == null) {
            return;
        }
        this.f50026d.post(new Runnable() { // from class: com.umeng.commonsdk.deeplink.a.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    onAttributionListener.onAttributionFail(i2);
                } catch (Throwable unused) {
                }
            }
        });
    }
}
