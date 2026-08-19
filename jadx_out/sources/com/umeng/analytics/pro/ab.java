package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class ab {

    /* renamed from: c, reason: collision with root package name */
    private static volatile ab f48639c;

    /* renamed from: a, reason: collision with root package name */
    private z f48640a = new aa();

    /* renamed from: b, reason: collision with root package name */
    private String f48641b;

    /* renamed from: d, reason: collision with root package name */
    private List<a> f48642d;

    /* renamed from: e, reason: collision with root package name */
    private String f48643e;

    public interface a {
        void a(String str, long j2, long j3, long j4);

        void a(String str, String str2, long j2, long j3, long j4);
    }

    private ab() {
    }

    public static ab a() {
        if (f48639c == null) {
            synchronized (ab.class) {
                try {
                    if (f48639c == null) {
                        f48639c = new ab();
                    }
                } finally {
                }
            }
        }
        return f48639c;
    }

    private String f(Context context) {
        try {
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(context).edit();
            editorEdit.putString(x.f49677d, d(context));
            editorEdit.commit();
        } catch (Exception unused) {
        }
        long jH = h(context);
        long jI = i(context);
        String str = this.f48641b;
        long jA = x.a(context);
        long j2 = jA * 5000;
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count 值完成，count次数：" + jA);
        if (!FieldManager.allow(com.umeng.commonsdk.utils.d.f50469E)) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** foreground count druation云控参数关闭。");
        } else if (UMWorkDispatch.eventHasExist()) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，终止checker timer.");
            UMWorkDispatch.removeEvent();
        } else {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，无未处理check timer事件。");
        }
        a(jI, jH, j2, str, false);
        this.f48641b = this.f48640a.a(context);
        a(jI, jH, j2, str, true);
        this.f48640a.a(context, this.f48641b);
        return this.f48641b;
    }

    private boolean g(Context context) {
        return !TextUtils.isEmpty(this.f48641b) && l.a(context).a(this.f48641b) > 0;
    }

    private long h(Context context) {
        return a(context, x.f49679f);
    }

    private long i(Context context) {
        return a(context, x.f49674a);
    }

    private boolean j(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(appContext);
            long j2 = sharedPreferences.getLong(x.f49678e, 0L);
            long j3 = sharedPreferences.getLong(x.f49679f, 0L);
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50469E) && j2 > 0 && j3 == 0) {
                long jA = x.a(appContext);
                if (jA > 0) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> last session end time stamp = 0, reconstruct it by foreground count value.");
                    j3 = j2 + (jA * 5000);
                }
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> interval of last session is: " + (j3 - j2));
            return this.f48640a.a(j2, j3);
        } catch (Exception unused) {
            return false;
        }
    }

    public long b() {
        return this.f48640a.a();
    }

    public String c(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        try {
            this.f48641b = f(appContext);
        } catch (Exception unused) {
        }
        return this.f48641b;
    }

    public String d(Context context) {
        if (TextUtils.isEmpty(this.f48641b)) {
            try {
                this.f48641b = PreferenceWrapper.getDefault(context).getString("session_id", null);
            } catch (Exception unused) {
            }
        }
        return this.f48641b;
    }

    public boolean e(Context context) {
        if (TextUtils.isEmpty(this.f48641b)) {
            this.f48641b = d(context);
        }
        return TextUtils.isEmpty(this.f48641b) || j(context) || g(context);
    }

    public synchronized String b(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        this.f48641b = d(appContext);
        if (e(appContext)) {
            try {
                this.f48641b = f(appContext);
            } catch (Exception unused) {
            }
        }
        return this.f48641b;
    }

    public void a(long j2) {
        this.f48640a.a(j2);
    }

    public String a(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        String string = "";
        try {
            synchronized (ab.class) {
                string = PreferenceWrapper.getDefault(appContext).getString(x.f49677d, "");
            }
            return string;
        } catch (Exception unused) {
            return string;
        }
    }

    public void b(a aVar) {
        List<a> list;
        if (aVar == null || (list = this.f48642d) == null || list.size() == 0) {
            return;
        }
        this.f48642d.remove(aVar);
    }

    public String a(Context context, long j2) {
        if (TextUtils.isEmpty(this.f48643e)) {
            String str = "SUB" + j2;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(String.format("%0" + (32 - str.length()) + "d", 0));
            this.f48643e = sb.toString();
        }
        return this.f48643e;
    }

    private long a(Context context, String str) {
        long j2;
        try {
            j2 = PreferenceWrapper.getDefault(context).getLong(str, 0L);
        } catch (Exception unused) {
            j2 = 0;
        }
        return j2 <= 0 ? System.currentTimeMillis() : j2;
    }

    private void a(long j2, long j3, long j4, String str, boolean z2) {
        List<a> list = this.f48642d;
        if (list != null) {
            for (a aVar : list) {
                if (z2) {
                    try {
                        aVar.a(str, this.f48641b, j2, j3, j4);
                    } catch (Exception unused) {
                    }
                } else {
                    aVar.a(this.f48641b, j2, j3, j4);
                }
            }
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f48642d == null) {
            this.f48642d = new ArrayList();
        }
        if (this.f48642d.contains(aVar)) {
            return;
        }
        this.f48642d.add(aVar);
    }
}
