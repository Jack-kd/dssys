package com.umeng.analytics.pro;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.vshelper.PageNameMonitor;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

@TargetApi(14)
/* loaded from: classes5.dex */
public class o {

    /* renamed from: J, reason: collision with root package name */
    private static final long f49515J = 1500;

    /* renamed from: N, reason: collision with root package name */
    private static byte[] f49517N;

    /* renamed from: O, reason: collision with root package name */
    private static byte[] f49518O;

    /* renamed from: P, reason: collision with root package name */
    private static byte[] f49519P;

    /* renamed from: Q, reason: collision with root package name */
    private static byte[] f49520Q;

    /* renamed from: R, reason: collision with root package name */
    private static final ComponentCallbacks2 f49521R;

    /* renamed from: a, reason: collision with root package name */
    public static String f49522a;

    /* renamed from: B, reason: collision with root package name */
    private ArrayList<b> f49540B;

    /* renamed from: D, reason: collision with root package name */
    private ArrayList<c> f49541D;

    /* renamed from: E, reason: collision with root package name */
    private volatile boolean f49542E;

    /* renamed from: F, reason: collision with root package name */
    private volatile String f49543F;

    /* renamed from: G, reason: collision with root package name */
    private volatile long f49544G;

    /* renamed from: H, reason: collision with root package name */
    private volatile boolean f49545H;

    /* renamed from: I, reason: collision with root package name */
    private volatile boolean f49546I;

    /* renamed from: L, reason: collision with root package name */
    private ArrayList<d> f49547L;

    /* renamed from: M, reason: collision with root package name */
    private ArrayList<d> f49548M;

    /* renamed from: b, reason: collision with root package name */
    boolean f49549b;

    /* renamed from: c, reason: collision with root package name */
    boolean f49550c;

    /* renamed from: f, reason: collision with root package name */
    com.umeng.analytics.vshelper.a f49551f;

    /* renamed from: g, reason: collision with root package name */
    Application.ActivityLifecycleCallbacks f49552g;

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, Long> f49553h;

    /* renamed from: u, reason: collision with root package name */
    private boolean f49554u;

    /* renamed from: v, reason: collision with root package name */
    private int f49555v;

    /* renamed from: w, reason: collision with root package name */
    private int f49556w;

    /* renamed from: i, reason: collision with root package name */
    private static JSONArray f49525i = new JSONArray();

    /* renamed from: j, reason: collision with root package name */
    private static Object f49526j = new Object();

    /* renamed from: k, reason: collision with root package name */
    private static Application f49527k = null;

    /* renamed from: l, reason: collision with root package name */
    private static volatile boolean f49528l = true;

    /* renamed from: m, reason: collision with root package name */
    private static volatile boolean f49529m = false;

    /* renamed from: n, reason: collision with root package name */
    private static volatile String f49530n = "";

    /* renamed from: o, reason: collision with root package name */
    private static volatile long f49531o = 0;

    /* renamed from: p, reason: collision with root package name */
    private static volatile boolean f49532p = true;

    /* renamed from: q, reason: collision with root package name */
    private static volatile String f49533q = "";

    /* renamed from: r, reason: collision with root package name */
    private static volatile long f49534r = 0;

    /* renamed from: s, reason: collision with root package name */
    private static Object f49535s = new Object();

    /* renamed from: t, reason: collision with root package name */
    private static boolean f49536t = false;

    /* renamed from: d, reason: collision with root package name */
    static String f49523d = null;

    /* renamed from: e, reason: collision with root package name */
    static int f49524e = -1;

    /* renamed from: x, reason: collision with root package name */
    private static boolean f49537x = true;

    /* renamed from: y, reason: collision with root package name */
    private static Object f49538y = new Object();

    /* renamed from: z, reason: collision with root package name */
    private static cf f49539z = new com.umeng.analytics.vshelper.b();

    /* renamed from: A, reason: collision with root package name */
    private static Object f49513A = new Object();

    /* renamed from: C, reason: collision with root package name */
    private static Object f49514C = new Object();

    /* renamed from: K, reason: collision with root package name */
    private static Object f49516K = new Object();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final o f49560a = new o();

        private a() {
        }
    }

    public class b {

        /* renamed from: b, reason: collision with root package name */
        private String f49562b;

        /* renamed from: c, reason: collision with root package name */
        private long f49563c;

        /* renamed from: d, reason: collision with root package name */
        private String f49564d;

        @Deprecated
        public b(String str, long j2) {
            this.f49562b = str;
            this.f49563c = j2;
            this.f49564d = null;
        }

        public String a() {
            return this.f49562b;
        }

        public long b() {
            return this.f49563c;
        }

        public String c() {
            return this.f49564d;
        }

        public void a(String str) {
            this.f49562b = str;
        }

        public void b(String str) {
            this.f49564d = str;
        }

        public void a(long j2) {
            this.f49563c = j2;
        }

        public b(String str, long j2, String str2) {
            this.f49562b = str;
            this.f49563c = j2;
            this.f49564d = str2;
        }
    }

    public class c {

        /* renamed from: b, reason: collision with root package name */
        private String f49566b;

        /* renamed from: c, reason: collision with root package name */
        private String f49567c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f49568d;

        /* renamed from: e, reason: collision with root package name */
        private long f49569e;

        /* renamed from: f, reason: collision with root package name */
        private String f49570f;

        /* renamed from: g, reason: collision with root package name */
        private String f49571g;

        /* renamed from: h, reason: collision with root package name */
        private String f49572h;

        @Deprecated
        public c(String str, String str2, boolean z2, long j2, String str3) {
            this.f49566b = str;
            this.f49567c = str2;
            this.f49568d = z2;
            this.f49569e = j2;
            this.f49570f = str3;
            this.f49571g = null;
        }

        public String a() {
            return this.f49566b;
        }

        public String b() {
            return this.f49567c;
        }

        public boolean c() {
            return this.f49568d;
        }

        public long d() {
            return this.f49569e;
        }

        public String e() {
            return this.f49570f;
        }

        public String f() {
            return this.f49571g;
        }

        public String g() {
            return this.f49572h;
        }

        public void a(String str) {
            this.f49566b = str;
        }

        public void b(String str) {
            this.f49567c = str;
        }

        public void c(String str) {
            this.f49570f = str;
        }

        public void d(String str) {
            this.f49571g = str;
        }

        public void e(String str) {
            this.f49572h = str;
        }

        public void a(boolean z2) {
            this.f49568d = z2;
        }

        public void a(long j2) {
            this.f49569e = j2;
        }

        public c(String str, String str2, boolean z2, long j2, String str3, String str4) {
            this.f49566b = str;
            this.f49567c = str2;
            this.f49568d = z2;
            this.f49569e = j2;
            this.f49570f = str3;
            this.f49571g = str4;
        }

        public c(String str, String str2, boolean z2, long j2, String str3, String str4, String str5) {
            this.f49566b = str;
            this.f49567c = str2;
            this.f49568d = z2;
            this.f49569e = j2;
            this.f49570f = str3;
            this.f49571g = str4;
            this.f49572h = str5;
        }
    }

    public class d {

        /* renamed from: b, reason: collision with root package name */
        private String f49574b;

        /* renamed from: c, reason: collision with root package name */
        private String f49575c;

        /* renamed from: d, reason: collision with root package name */
        private long f49576d;

        /* renamed from: e, reason: collision with root package name */
        private long f49577e;

        /* renamed from: f, reason: collision with root package name */
        private int f49578f;

        public d(String str, String str2, long j2, long j3, int i2) {
            this.f49574b = str;
            this.f49575c = str2;
            this.f49576d = j2;
            this.f49577e = j3;
            this.f49578f = i2;
        }

        public String a() {
            return this.f49574b;
        }

        public String b() {
            return this.f49575c;
        }

        public long c() {
            return this.f49576d;
        }

        public long d() {
            return this.f49577e;
        }

        public int e() {
            return this.f49578f;
        }
    }

    static {
        byte[] bArr = {95, 101, 90, 111, 109, 100, 90, 40, 90, 100, 110, 90, 60, 90, 112, 100, 110, 105, 110, 110};
        f49517N = bArr;
        byte[] bArr2 = {100, 75, 90, 70, 82, 110, 105, 90, 82};
        f49518O = bArr2;
        byte[] bArr3 = {90, 110, 75, 99, 97, 110, 110, 99, 99, 110, 100, 109, 99, 109, 99};
        f49519P = bArr3;
        byte[] bArr4 = {100, com.anythink.core.common.s.a.c.f7561b, 100, 110, 112, 99, 112, 100, 98, 110, 110, 97, 112, 100, 99, 99};
        f49520Q = bArr4;
        byte b3 = (byte) (bArr[0] + 2);
        bArr[0] = b3;
        bArr[1] = (byte) (b3 + ek.f49293k);
        byte b4 = (byte) (bArr[2] + 10);
        bArr[2] = b4;
        bArr[3] = (byte) (bArr[3] + 3);
        byte b5 = (byte) (bArr[4] + 2);
        bArr[4] = b5;
        bArr[5] = (byte) (b4 + 5);
        byte b6 = (byte) (bArr[6] + 10);
        bArr[6] = b6;
        byte b7 = (byte) (bArr[7] + 6);
        bArr[7] = b7;
        bArr[8] = b3;
        bArr[9] = (byte) (b5 + 1);
        byte b8 = (byte) (bArr[10] + 2);
        bArr[10] = b8;
        bArr[11] = b7;
        byte b9 = (byte) (bArr[12] + 5);
        bArr[12] = b9;
        bArr[13] = (byte) (b3 + 2);
        byte b10 = (byte) (b8 + 4);
        bArr[14] = b10;
        byte b11 = (byte) (bArr[15] + 5);
        bArr[15] = b11;
        byte b12 = (byte) (bArr[16] + 8);
        bArr[16] = b12;
        bArr[17] = b11;
        bArr[18] = b10;
        byte b13 = (byte) (b12 + 3);
        bArr[19] = b13;
        byte b14 = (byte) (bArr2[0] + 9);
        bArr2[0] = b14;
        bArr2[1] = (byte) (bArr2[1] + 7);
        byte b15 = (byte) (b6 + 1);
        bArr2[2] = b15;
        bArr2[3] = (byte) (b15 + 1);
        bArr2[4] = b15;
        byte b16 = (byte) (bArr2[5] + 4);
        bArr2[5] = b16;
        byte b17 = (byte) (b14 + 5);
        bArr2[6] = b17;
        bArr2[7] = (byte) (bArr2[7] + 11);
        bArr2[8] = b17;
        bArr3[0] = (byte) (bArr3[0] + 9);
        bArr3[1] = (byte) (bArr[1] + 7);
        bArr3[2] = bArr[3];
        bArr3[3] = (byte) (bArr[1] + 4);
        bArr3[4] = bArr2[2];
        bArr3[6] = (byte) (bArr3[6] + 6);
        bArr3[7] = b9;
        bArr3[9] = (byte) (bArr3[9] + 6);
        bArr3[10] = (byte) (bArr3[10] + 5);
        bArr3[11] = b12;
        bArr3[12] = b11;
        bArr3[13] = b10;
        bArr3[14] = b13;
        bArr4[0] = (byte) (bArr4[0] + 9);
        bArr4[1] = (byte) (bArr4[1] + 9);
        byte b18 = bArr[1];
        bArr4[2] = b18;
        bArr4[3] = (byte) (bArr[3] + 1);
        bArr4[4] = b10;
        bArr4[5] = b16;
        byte b19 = bArr2[0];
        bArr4[6] = (byte) (b19 + 8);
        bArr4[7] = b19;
        bArr4[8] = (byte) (bArr4[8] + 3);
        bArr4[10] = (byte) (bArr4[10] + 6);
        bArr4[12] = b10;
        bArr4[13] = bArr3[12];
        bArr4[14] = (byte) (bArr3[5] + 1);
        bArr4[15] = b18;
        f49521R = new ComponentCallbacks2() { // from class: com.umeng.analytics.pro.o.2
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int i2) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "onTrimMemory: " + i2);
                if (i2 == 20) {
                    o.C();
                } else if (i2 == 40) {
                    o.C();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void B() {
        synchronized (f49535s) {
            try {
                if (!f49536t) {
                    f49536t = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void C() {
        synchronized (f49535s) {
            try {
                if (f49536t) {
                    f49536t = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void D() {
        if (this.f49554u) {
            return;
        }
        this.f49554u = true;
        if (f49527k != null) {
            f49527k.registerActivityLifecycleCallbacks(this.f49552g);
        }
    }

    public static /* synthetic */ int g(o oVar) {
        int i2 = oVar.f49556w;
        oVar.f49556w = i2 - 1;
        return i2;
    }

    public static /* synthetic */ int h(o oVar) {
        int i2 = oVar.f49555v;
        oVar.f49555v = i2 - 1;
        return i2;
    }

    public static /* synthetic */ int k(o oVar) {
        int i2 = oVar.f49556w;
        oVar.f49556w = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int l(o oVar) {
        int i2 = oVar.f49555v;
        oVar.f49555v = i2 + 1;
        return i2;
    }

    private o() {
        this.f49553h = new HashMap();
        this.f49554u = false;
        this.f49549b = false;
        this.f49550c = false;
        this.f49555v = 0;
        this.f49556w = 0;
        this.f49540B = new ArrayList<>();
        this.f49541D = new ArrayList<>();
        this.f49542E = false;
        this.f49543F = null;
        this.f49544G = 0L;
        this.f49545H = false;
        this.f49546I = false;
        this.f49547L = new ArrayList<>();
        this.f49548M = new ArrayList<>();
        this.f49551f = PageNameMonitor.getInstance();
        this.f49552g = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.o.3
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                o.f49539z.a(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50470F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger enabled.");
                    synchronized (o.f49538y) {
                        try {
                            if (o.f49537x) {
                                return;
                            }
                        } finally {
                        }
                    }
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger disabled.");
                }
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.AUTO) {
                    if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.MANUAL) {
                        com.umeng.analytics.b.a().i();
                    }
                } else {
                    o.this.d(activity);
                    com.umeng.analytics.b.a().i();
                    o.this.f49549b = false;
                    o.f49539z.d(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "***>>> 触发 " + activity.getClass().getName() + " onResumed 事件");
                if (o.this.f49542E && o.this.f49545H && !o.this.f49546I) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j2 = jCurrentTimeMillis - o.this.f49544G;
                    int i2 = j2 >= o.f49515J ? 1 : 0;
                    o.this.f49546I = true;
                    o oVar = o.this;
                    d dVar = oVar.new d(oVar.f49543F, activity.getClass().getName(), jCurrentTimeMillis, j2, i2);
                    synchronized (o.f49516K) {
                        o.this.f49548M.add(dVar);
                    }
                    if (UMConfigure.getInitStatus()) {
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 316, com.umeng.ccg.d.a(), null, 0L);
                    }
                    o.this.f49542E = false;
                    o.this.f49543F = null;
                }
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50470F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger enabled.");
                    synchronized (o.f49538y) {
                        try {
                            if (o.f49537x) {
                                boolean unused = o.f49537x = false;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    o.this.b(activity);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger disabled.");
                    o.this.b(activity);
                }
                o.f49539z.c(activity);
                o.B();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (activity != null) {
                    if (o.this.f49555v <= 0) {
                        if (o.f49523d == null) {
                            o.f49523d = UUID.randomUUID().toString();
                        }
                        if (o.f49524e == -1) {
                            o.f49524e = activity.isTaskRoot() ? 1 : 0;
                        }
                        if (o.f49524e == 0 && UMUtils.isMainProgress(activity)) {
                            HashMap map = new HashMap();
                            map.put("activityName", activity.toString());
                            map.put("pid", Integer.valueOf(Process.myPid()));
                            map.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            com.umeng.analytics.b bVarA = com.umeng.analytics.b.a();
                            if (bVarA != null) {
                                bVarA.a((Context) activity, "$$_onUMengEnterForegroundInitError", (Map<String, Object>) map);
                            }
                            o.f49524e = -2;
                            if (UMConfigure.isDebugLog()) {
                                UMLog.mutlInfo(2, m.ar);
                            }
                        } else if (o.f49524e == 1 || !UMUtils.isMainProgress(activity)) {
                            HashMap map2 = new HashMap();
                            map2.put("pairUUID", o.f49523d);
                            map2.put("pid", Integer.valueOf(Process.myPid()));
                            map2.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            map2.put("activityName", activity.toString());
                            if (com.umeng.analytics.b.a() != null) {
                                com.umeng.analytics.b.a().a((Context) activity, "$$_onUMengEnterForeground", (Map<String, Object>) map2);
                            }
                        }
                    }
                    if (o.this.f49556w < 0) {
                        o.k(o.this);
                    } else {
                        o.l(o.this);
                    }
                }
                if (!o.f49528l) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "PI: local switch is off!");
                    return;
                }
                if (!o.f49529m) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "PI: cloud switch is off!");
                    return;
                }
                String strA = o.this.a(activity);
                if (strA == null || strA.isEmpty()) {
                    return;
                }
                String packageName = DeviceConfig.getPackageName(UMGlobalContext.getAppContext());
                if (packageName.isEmpty() || packageName.equalsIgnoreCase(strA)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PI: internal path switch, or pkg is null. ignore it.");
                    return;
                }
                long unused = o.f49531o = System.currentTimeMillis();
                String unused2 = o.f49530n = strA;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>PI: p: " + strA + "; ts: " + o.f49531o);
                String strA2 = o.this.a(activity, strA);
                synchronized (o.f49513A) {
                    o.this.f49540B.add(o.this.new b(o.f49530n, o.f49531o, strA2));
                    String unused3 = o.f49530n = "";
                    long unused4 = o.f49531o = 0L;
                }
                if (UMConfigure.getInitStatus()) {
                    com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 310, com.umeng.ccg.d.a(), null, 0L);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "***>>> 触发 " + activity.getClass().getName() + " onStopped 事件");
                if (o.this.f49542E && !o.this.f49545H) {
                    o.this.f49544G = System.currentTimeMillis();
                    o.this.f49545H = true;
                    o oVar = o.this;
                    d dVar = oVar.new d(oVar.f49543F, activity.getClass().getName(), o.this.f49544G, 0L, -1);
                    synchronized (o.f49516K) {
                        o.this.f49547L.add(dVar);
                    }
                    if (UMConfigure.getInitStatus()) {
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 316, com.umeng.ccg.d.a(), null, 0L);
                    }
                }
                UMLog uMLog = UMConfigure.umDebugLog;
                MobclickAgent.PageMode pageMode = MobclickAgent.PageMode.AUTO;
                if (activity.isChangingConfigurations()) {
                    o.g(o.this);
                    return;
                }
                o.h(o.this);
                if (o.this.f49555v <= 0) {
                    if (o.f49524e == 0 && UMUtils.isMainProgress(activity)) {
                        return;
                    }
                    int i2 = o.f49524e;
                    if (i2 == 1 || (i2 == 0 && !UMUtils.isMainProgress(activity))) {
                        HashMap map = new HashMap();
                        map.put("pairUUID", o.f49523d);
                        map.put(MediationConstant.KEY_REASON, "Normal");
                        map.put("pid", Integer.valueOf(Process.myPid()));
                        map.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                        map.put("activityName", activity.toString());
                        com.umeng.analytics.b bVarA = com.umeng.analytics.b.a();
                        if (bVarA != null) {
                            bVarA.a((Context) activity, "$$_onUMengEnterBackground", (Map<String, Object>) map);
                        }
                        if (o.f49523d != null) {
                            o.f49523d = null;
                        }
                    }
                }
            }
        };
        synchronized (this) {
            try {
                if (f49527k != null) {
                    D();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d() {
        this.f49554u = false;
        if (f49527k != null) {
            f49527k.unregisterActivityLifecycleCallbacks(this.f49552g);
            f49527k = null;
        }
    }

    public void e() {
        d((Activity) null);
        d();
    }

    public ArrayList<b> f() throws Throwable {
        ArrayList<b> arrayList = new ArrayList<>();
        synchronized (f49513A) {
            for (int i2 = 0; i2 < this.f49540B.size(); i2++) {
                try {
                    try {
                        arrayList.add(new b(this.f49540B.get(i2).a(), this.f49540B.get(i2).b(), this.f49540B.get(i2).c()));
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            this.f49540B.clear();
            return arrayList;
        }
    }

    public ArrayList<c> g() throws Throwable {
        ArrayList<c> arrayList = new ArrayList<>();
        synchronized (f49514C) {
            for (int i2 = 0; i2 < this.f49541D.size(); i2++) {
                try {
                    try {
                        arrayList.add(new c(this.f49541D.get(i2).a(), this.f49541D.get(i2).b(), this.f49541D.get(i2).c(), this.f49541D.get(i2).d(), this.f49541D.get(i2).e(), this.f49541D.get(i2).f(), this.f49541D.get(i2).g()));
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            this.f49541D.clear();
            return arrayList;
        }
    }

    public boolean h() {
        boolean z2;
        synchronized (f49514C) {
            z2 = !this.f49541D.isEmpty();
        }
        return z2;
    }

    public ArrayList<d> i() {
        ArrayList<d> arrayList = new ArrayList<>();
        synchronized (f49516K) {
            arrayList.addAll(this.f49547L);
            this.f49547L.clear();
        }
        return arrayList;
    }

    public ArrayList<d> j() {
        ArrayList<d> arrayList = new ArrayList<>();
        synchronized (f49516K) {
            arrayList.addAll(this.f49548M);
            this.f49548M.clear();
        }
        return arrayList;
    }

    public boolean k() {
        boolean z2;
        synchronized (f49516K) {
            try {
                z2 = (this.f49547L.isEmpty() && this.f49548M.isEmpty()) ? false : true;
            } finally {
            }
        }
        return z2;
    }

    public static boolean c() {
        boolean z2;
        synchronized (f49535s) {
            z2 = f49536t;
        }
        return z2;
    }

    public static void b(boolean z2) {
        f49532p = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Activity activity) {
        long jLongValue;
        long jCurrentTimeMillis;
        try {
            synchronized (this.f49553h) {
                try {
                    if (f49522a == null && activity != null) {
                        f49522a = activity.getPackageName() + com.anythink.core.common.d.i.f2495E + activity.getLocalClassName();
                    }
                    if (TextUtils.isEmpty(f49522a) || !this.f49553h.containsKey(f49522a)) {
                        jLongValue = 0;
                        jCurrentTimeMillis = 0;
                    } else {
                        jLongValue = this.f49553h.get(f49522a).longValue();
                        jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
                        this.f49553h.remove(f49522a);
                    }
                } finally {
                }
            }
            synchronized (f49526j) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(g.f49361v, f49522a);
                    jSONObject.put("duration", jCurrentTimeMillis);
                    jSONObject.put(g.f49363x, jLongValue);
                    jSONObject.put("type", 0);
                    f49525i.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public void b() {
        if (Build.VERSION.SDK_INT >= 26 && f49532p) {
            try {
                final String packageName = DeviceConfig.getPackageName(UMGlobalContext.getAppContext());
                Class<?> cls = Class.forName(new String(f49517N) + "Thread");
                Object objInvoke = cls.getMethod(new String(f49519P) + "Thread", null).invoke(null, null);
                Field declaredField = cls.getDeclaredField(new String(f49520Q));
                declaredField.setAccessible(true);
                Instrumentation instrumentation = (Instrumentation) declaredField.get(objInvoke);
                if (instrumentation != null) {
                    instrumentation.addMonitor(new Instrumentation.ActivityMonitor() { // from class: com.umeng.analytics.pro.o.1
                        @Override // android.app.Instrumentation.ActivityMonitor
                        public Instrumentation.ActivityResult onStartActivity(Intent intent) {
                            if (intent == null) {
                                return super.onStartActivity(null);
                            }
                            if (TextUtils.equals(intent.getPackage(), packageName)) {
                                return super.onStartActivity(intent);
                            }
                            ComponentName component = intent.getComponent();
                            if (component != null && TextUtils.equals(component.getPackageName(), packageName)) {
                                return super.onStartActivity(intent);
                            }
                            if (o.f49527k == null) {
                                return super.onStartActivity(intent);
                            }
                            try {
                                ComponentName componentNameResolveActivity = intent.resolveActivity(o.f49527k.getPackageManager());
                                if (componentNameResolveActivity != null && !TextUtils.equals(componentNameResolveActivity.getPackageName(), packageName)) {
                                    long unused = o.f49534r = System.currentTimeMillis();
                                    String unused2 = o.f49533q = componentNameResolveActivity.getPackageName();
                                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>PO: p: " + o.f49533q + "; ts: " + o.f49534r);
                                    String strA = o.this.a(intent);
                                    o.this.f49543F = UUID.randomUUID().toString();
                                    o.this.f49542E = true;
                                    o.this.f49545H = false;
                                    o.this.f49546I = false;
                                    o.this.f49544G = 0L;
                                    synchronized (o.f49514C) {
                                        o.this.f49541D.add(o.this.new c(componentNameResolveActivity.getPackageName(), componentNameResolveActivity.getClassName(), o.f49536t, o.f49534r, Base64.encodeToString(ay.a(Log.getStackTraceString(new Throwable()).getBytes(), UMConfigure.sAppkey.getBytes()), 0), strA, o.this.f49543F));
                                        String unused3 = o.f49533q = "";
                                        long unused4 = o.f49534r = 0L;
                                    }
                                    if (UMConfigure.getInitStatus()) {
                                        UMRTLog.i(UMRTLog.RTLOG_TAG, "***>>> 触发PO 出端事件。");
                                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 311, com.umeng.ccg.d.a(), null, 0L);
                                    }
                                }
                            } catch (Throwable unused5) {
                            }
                            return super.onStartActivity(intent);
                        }
                    });
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "PO: attach success.");
                } else {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "PO: attach failed.");
                }
            } catch (Throwable unused) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "PO: attach failed.");
            }
        }
    }

    public static void c(Context context) {
        String string;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f49526j) {
                    string = f49525i.toString();
                    f49525i = new JSONArray();
                }
                if (string.length() > 0) {
                    jSONObject.put(h.d.a.f49411c, new JSONArray(string));
                    l.a(context).a(x.a().c(), jSONObject, l.a.AUTOPAGE);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public boolean a() {
        return this.f49554u;
    }

    public static void a(boolean z2) {
        f49528l = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"DiscouragedPrivateApi"})
    public String a(Activity activity) {
        try {
            Field declaredField = Class.forName(new String(f49517N)).getDeclaredField(new String(f49518O));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(activity);
            if (obj != null) {
                return obj.toString();
            }
            return null;
        } catch (Throwable unused) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "getPi error.");
            return null;
        }
    }

    public static synchronized o a(Context context) {
        try {
            if (f49527k == null && context != null) {
                if (context instanceof Activity) {
                    f49527k = ((Activity) context).getApplication();
                } else if (context instanceof Application) {
                    f49527k = (Application) context;
                }
                f49527k.registerComponentCallbacks(f49521R);
            }
            try {
                if (new File(context.getFilesDir().getAbsolutePath() + File.separator + bz.f48995n).exists()) {
                    f49529m = true;
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable th) {
            throw th;
        }
        return a.f49560a;
    }

    private void c(Activity activity) {
        f49522a = activity.getPackageName() + com.anythink.core.common.d.i.f2495E + activity.getLocalClassName();
        synchronized (this.f49553h) {
            this.f49553h.put(f49522a, Long.valueOf(System.currentTimeMillis()));
        }
    }

    public void b(Context context) {
        synchronized (f49538y) {
            if (f49537x) {
                f49537x = false;
                Activity globleActivity = DeviceConfig.getGlobleActivity(context);
                if (globleActivity == null) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 无前台Activity，直接退出。");
                    return;
                }
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 补救成功，前台Activity名：" + globleActivity.getLocalClassName());
                b(globleActivity);
                return;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: firstResumeCall = false，直接返回。");
        }
    }

    public static void a(Context context, String str) {
        if (f49524e == 1 && UMUtils.isMainProgress(context)) {
            HashMap map = new HashMap();
            map.put("pairUUID", f49523d);
            map.put(MediationConstant.KEY_REASON, str);
            if (f49523d != null) {
                f49523d = null;
            }
            if (context != null) {
                map.put("pid", Integer.valueOf(Process.myPid()));
                map.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(context) ? 1 : 0));
                map.put("Context", context.toString());
                com.umeng.analytics.b.a().a(context, "$$_onUMengEnterBackground", (Map<String, Object>) map);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Activity activity) {
        if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.AUTO) {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.MANUAL) {
                synchronized (f49538y) {
                    com.umeng.analytics.b.a().h();
                }
                return;
            }
            return;
        }
        if (activity != null) {
            String str = activity.getPackageName() + com.anythink.core.common.d.i.f2495E + activity.getLocalClassName();
            this.f49551f.activityResume(str);
            if (this.f49549b) {
                this.f49549b = false;
                if (!TextUtils.isEmpty(f49522a)) {
                    if (f49522a.equals(str)) {
                        return;
                    }
                    c(activity);
                    synchronized (f49538y) {
                        com.umeng.analytics.b.a().h();
                    }
                    return;
                }
                f49522a = str;
                return;
            }
            c(activity);
            synchronized (f49538y) {
                com.umeng.analytics.b.a().h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Activity activity, String str) {
        Object obj;
        try {
            Intent intent = activity.getIntent();
            if (intent == null) {
                return null;
            }
            Bundle extras = intent.getExtras();
            Uri data = intent.getData();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("source_package", str);
            jSONObject.put("target_activity", activity.getClass().getName());
            if (data != null) {
                jSONObject.put("dp_uri", data.toString());
            } else {
                jSONObject.put("dp_uri", JSONObject.NULL);
            }
            JSONObject jSONObject2 = new JSONObject();
            if (extras != null) {
                for (String str2 : extras.keySet()) {
                    try {
                        obj = extras.get(str2);
                    } catch (Throwable unused) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "Extract extras error for key: " + str2);
                    }
                    if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Double)) {
                        jSONObject2.put(str2, obj);
                    }
                }
            }
            jSONObject.put("extras", jSONObject2);
            String string = jSONObject.toString();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "Intent Extras: " + string);
            return Base64.encodeToString(ay.a(string.getBytes(), UMConfigure.sAppkey.getBytes()), 0);
        } catch (Throwable th) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "Extract external intent extras error: " + th.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Intent intent) {
        Object obj;
        if (intent == null) {
            return null;
        }
        try {
            ComponentName component = intent.getComponent();
            if (component == null) {
                component = intent.resolveActivity(UMGlobalContext.getAppContext().getPackageManager());
            }
            String className = "";
            String packageName = component != null ? component.getPackageName() : "";
            if (component != null) {
                className = component.getClassName();
            }
            Bundle extras = intent.getExtras();
            Uri data = intent.getData();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("source_package", packageName);
            jSONObject.put("target_activity", className);
            if (data != null) {
                jSONObject.put("dp_uri", data.toString());
            } else {
                jSONObject.put("dp_uri", JSONObject.NULL);
            }
            JSONObject jSONObject2 = new JSONObject();
            if (extras != null) {
                for (String str : extras.keySet()) {
                    try {
                        obj = extras.get(str);
                    } catch (Throwable unused) {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "[PO] Extract extras error for key: " + str);
                    }
                    if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Double)) {
                        jSONObject2.put(str, obj);
                    }
                }
            }
            jSONObject.put("extras", jSONObject2);
            String string = jSONObject.toString();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "[PO] Intent Extras: " + string);
            return Base64.encodeToString(ay.a(string.getBytes(), UMConfigure.sAppkey.getBytes()), 0);
        } catch (Throwable th) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[PO] Extract intent extras error: " + th.getMessage());
            return null;
        }
    }
}
