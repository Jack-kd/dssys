package com.smartdigimkt.sdk.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.anythink.core.common.d.t;
import com.smartdigimkt.c3.d;
import com.smartdigimkt.c3.f;
import com.smartdigimkt.c5.e;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.f.i;
import com.smartdigimkt.h3.j;
import com.smartdigimkt.h3.m;
import com.smartdigimkt.h4.a;
import com.smartdigimkt.i4.b;
import com.smartdigimkt.q3.c;
import com.smartdigimkt.sdk.api.IDlHandler;
import com.smartdigimkt.sdk.api.IExHandler;
import com.smartdigimkt.sdk.api.IOdHandler;
import com.smartdigimkt.sdk.api.SDMDebuggerConfig;
import com.smartdigimkt.sdk.api.SDMInitConfig;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.core.bridge.entity.AppInfoEntity;
import com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class SDKContext {

    /* renamed from: K, reason: collision with root package name */
    public static volatile SDKContext f44099K;

    /* renamed from: L, reason: collision with root package name */
    public static final Object f44100L = new Object();

    /* renamed from: M, reason: collision with root package name */
    public static final Object f44101M = new Object();

    /* renamed from: A, reason: collision with root package name */
    public SDMDebuggerConfig f44102A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f44103B;

    /* renamed from: G, reason: collision with root package name */
    public f f44108G;

    /* renamed from: a, reason: collision with root package name */
    public String f44112a;

    /* renamed from: b, reason: collision with root package name */
    public String f44113b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Context f44114c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f44115d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f44116e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f44117f;

    /* renamed from: g, reason: collision with root package name */
    public volatile SDMInitConfig f44118g;

    /* renamed from: h, reason: collision with root package name */
    public String f44119h;
    private volatile IHttpLoaderInterceptor httpLoaderInterceptor;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f44123l;

    /* renamed from: n, reason: collision with root package name */
    public long f44125n;

    /* renamed from: u, reason: collision with root package name */
    public volatile String f44132u;

    /* renamed from: v, reason: collision with root package name */
    public volatile String f44133v;

    /* renamed from: w, reason: collision with root package name */
    public volatile String f44134w;

    /* renamed from: x, reason: collision with root package name */
    public volatile String f44135x;

    /* renamed from: z, reason: collision with root package name */
    public String f44137z;

    /* renamed from: i, reason: collision with root package name */
    public String f44120i = "";

    /* renamed from: j, reason: collision with root package name */
    public String f44121j = "";

    /* renamed from: k, reason: collision with root package name */
    public final ConcurrentHashMap f44122k = new ConcurrentHashMap();

    /* renamed from: m, reason: collision with root package name */
    public long f44124m = 0;

    /* renamed from: o, reason: collision with root package name */
    public long f44126o = 0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f44131t = false;

    /* renamed from: C, reason: collision with root package name */
    public boolean f44104C = false;

    /* renamed from: D, reason: collision with root package name */
    public boolean f44105D = false;

    /* renamed from: F, reason: collision with root package name */
    public final Object f44107F = new Object();

    /* renamed from: H, reason: collision with root package name */
    public final AtomicBoolean f44109H = new AtomicBoolean(false);

    /* renamed from: I, reason: collision with root package name */
    public volatile String f44110I = "";

    /* renamed from: J, reason: collision with root package name */
    public volatile long f44111J = 0;

    /* renamed from: p, reason: collision with root package name */
    public final a f44127p = new a();

    /* renamed from: q, reason: collision with root package name */
    public final com.smartdigimkt.e4.a f44128q = new com.smartdigimkt.e4.a();

    /* renamed from: r, reason: collision with root package name */
    public final com.smartdigimkt.f4.a f44129r = new com.smartdigimkt.f4.a();

    /* renamed from: s, reason: collision with root package name */
    public final b f44130s = new b();

    /* renamed from: E, reason: collision with root package name */
    public final ConcurrentHashMap f44106E = new ConcurrentHashMap();

    /* renamed from: y, reason: collision with root package name */
    public final String f44136y = i.a(new StringBuilder(), File.separator, "sdm.test");

    public static void a(SDKContext sDKContext, Context context) {
        sDKContext.getClass();
        long jA = y.a(context, "sdm_adx_rp_sdk", t.a.f3057z);
        sDKContext.f44124m = jA;
        if (jA == 0) {
            long j2 = sDKContext.f44125n;
            sDKContext.f44124m = j2;
            y.a(context, "sdm_adx_rp_sdk", t.a.f3057z, j2);
        }
        Date date = new Date(sDKContext.f44125n);
        long time = new Date(date.getYear(), date.getMonth(), date.getDate()).getTime();
        Date date2 = new Date(sDKContext.f44124m);
        sDKContext.f44126o = ((time - new Date(date2.getYear(), date2.getMonth(), date2.getDate()).getTime()) / 86400000) + 1;
    }

    public static void c(SDKContext sDKContext) {
        Context context = sDKContext.f44114c;
        try {
            h.a(sDKContext.f44122k);
            h.w(context);
            com.smartdigimkt.i3.b bVarE = getInstance().e();
            if (bVarE != null) {
                bVarE.initDeviceInfo(context);
            }
            h.g(context);
            h.p();
            h.u();
            h.p(context);
            h.v(context);
            h.u(context);
            h.y(context);
            h.t();
            h.v();
            h.a(context);
            h.m(context);
            h.n(context);
            h.y();
            getInstance().getClass();
            m mVarB = m.b();
            e eVar = new e();
            mVarB.getClass();
            com.smartdigimkt.b4.e.a().a(new j(mVarB, context, eVar), 0L, 17);
            h.x(context);
            h.t(context);
            h.e(context);
            h.h(context);
            try {
                String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
                char[] cArr = k.f39779a;
                if (simOperator != null && simOperator.length() > 0 && simOperator.length() > 3) {
                    h.f39771u = simOperator.substring(0, 3);
                    h.f39773v = simOperator.substring(3, simOperator.length());
                }
            } catch (Throwable unused) {
            }
            h.B();
            h.o();
            h.w();
            h.k(context);
            h.l(context);
            if (!h.b(com.anythink.core.common.m.f.aR) && h.f39717M == null) {
                h.f39717M = k.b() ? "1" : "0";
            }
            h.m();
            h.l();
            h.n();
            h.j();
            h.d();
            h.g();
            h.h();
            h.e();
            h.i();
            h.k();
            h.f();
            if (!h.E() && h.f39729Y == null) {
                try {
                    h.f39729Y = String.valueOf(1);
                } catch (Throwable unused2) {
                    h.f39729Y = "";
                }
            }
            h.c();
        } catch (Exception unused3) {
        }
    }

    public static SDKContext getInstance() {
        if (f44099K == null) {
            synchronized (SDKContext.class) {
                try {
                    if (f44099K == null) {
                        f44099K = new SDKContext();
                    }
                } finally {
                }
            }
        }
        return f44099K;
    }

    public final String b() {
        if (TextUtils.isEmpty(this.f44113b)) {
            this.f44113b = y.b(this.f44114c, "sdm_adx_rp_sdk", "sdm_adx_rp_appkey");
        }
        if (!TextUtils.isEmpty(this.f44113b)) {
            return this.f44113b;
        }
        AppInfoEntity appInfoEntity = h.f39740e0;
        if (appInfoEntity != null) {
            String mediationAppKey = appInfoEntity.getMediationAppKey();
            if (!TextUtils.isEmpty(mediationAppKey)) {
                return mediationAppKey;
            }
        }
        return this.f44113b;
    }

    public final Context d() {
        if (this.f44114c != null) {
            return this.f44114c;
        }
        try {
            Object objInvoke = Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (objInvoke instanceof Application) {
                this.f44114c = ((Application) objInvoke).getApplicationContext();
            }
        } catch (Throwable unused) {
        }
        return this.f44114c;
    }

    public final com.smartdigimkt.i3.b e() {
        IExHandler iExHandler;
        IDlHandler iDlHandler;
        com.smartdigimkt.e4.a aVar = this.f44128q;
        if (aVar.f40073a) {
            return aVar.f40075c;
        }
        synchronized (aVar.f40074b) {
            if (aVar.f40073a) {
                return aVar.f40075c;
            }
            IOdHandler iOdHandler = null;
            try {
                iExHandler = (IExHandler) k.a(IExHandler.class, "com.smartdigimkt.pd.ExHandler");
            } catch (Throwable unused) {
                iExHandler = null;
            }
            try {
                iDlHandler = (IDlHandler) k.a(IDlHandler.class, "com.smartdigimkt.dlpd.DlHandler");
            } catch (Throwable unused2) {
                iDlHandler = null;
            }
            try {
                iOdHandler = (IOdHandler) k.a(IOdHandler.class, "com.smartdigimkt.odpd.OdHandler");
            } catch (Throwable unused3) {
            }
            if (iExHandler != null || iDlHandler != null || iOdHandler != null) {
                Objects.toString(iExHandler);
                Objects.toString(iDlHandler);
                Objects.toString(iOdHandler);
                aVar.f40075c = new com.smartdigimkt.i3.b(iExHandler, iDlHandler, iOdHandler);
            }
            aVar.f40073a = true;
            return aVar.f40075c;
        }
    }

    public final String f() {
        try {
            if (TextUtils.isEmpty(this.f44132u)) {
                a(d(), a());
            }
        } catch (Exception unused) {
        }
        return this.f44132u;
    }

    public final String g() {
        if (TextUtils.isEmpty(this.f44134w)) {
            this.f44134w = y.b(this.f44114c, t.b.f3063f, t.a.f3018B);
        }
        return this.f44134w;
    }

    public IHttpLoaderInterceptor getHttpLoaderInterceptor() {
        if (this.httpLoaderInterceptor == null) {
            synchronized (f44101M) {
                try {
                    if (this.httpLoaderInterceptor == null) {
                        this.httpLoaderInterceptor = new com.smartdigimkt.n4.f(this.f44114c);
                    }
                } finally {
                }
            }
        }
        return this.httpLoaderInterceptor;
    }

    public final String h() {
        if (TextUtils.isEmpty(this.f44133v)) {
            this.f44133v = y.b(this.f44114c, "sdm_adx_rp_sdk", t.a.f3054w);
        }
        return this.f44133v;
    }

    public final boolean i() {
        return this.f44103B && this.f44102A != null;
    }

    public final boolean j() {
        return this.f44104C || this.f44105D;
    }

    public final void k() {
        synchronized (f44100L) {
            try {
                if (this.f44117f) {
                    return;
                }
                this.f44117f = true;
                this.f44131t = k.b();
                com.smartdigimkt.b4.e.a().a(new d(this), 0L, 7);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = (String) this.f44106E.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String str3 = (String) this.f44106E.get(str);
        if (!TextUtils.isEmpty(str3)) {
            return str3;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strB = com.smartdigimkt.c5.i.b(str + f());
        try {
            this.f44106E.put(str, strB);
        } catch (Exception unused) {
        }
        String str4 = jCurrentTimeMillis + "";
        c cVar = new c(null, null);
        cVar.f42817a = "3000004";
        cVar.f42819c = str;
        cVar.f42828l = "2";
        cVar.f42829m = null;
        cVar.f42830n = str4;
        com.smartdigimkt.y3.h.a(cVar);
        return strB;
    }

    public final void a(Context context, SDMInitConfig sDMInitConfig) {
        Objects.toString(context);
        Objects.toString(sDMInitConfig);
        synchronized (f44100L) {
            if (context != null) {
                try {
                    if (context instanceof Activity) {
                        this.f44114c = context.getApplicationContext();
                    } else {
                        this.f44114c = context;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (context == null) {
                return;
            }
            if (sDMInitConfig == null) {
                return;
            }
            if (this.f44115d) {
                return;
            }
            this.f44115d = true;
            this.f44118g = sDMInitConfig;
            if (context instanceof Application) {
                com.smartdigimkt.c4.c.a().a((Application) context);
            }
            this.f44125n = System.currentTimeMillis();
            String appId = sDMInitConfig.getAppId();
            String appKey = sDMInitConfig.getAppKey();
            this.f44119h = sDMInitConfig.getBundleName();
            this.f44121j = sDMInitConfig.getSystemDevFrameworkType();
            this.f44102A = sDMInitConfig.getDebuggerConfig();
            try {
                Map<String, Object> extraMap = sDMInitConfig.getExtraMap();
                if (extraMap != null) {
                    this.f44122k.clear();
                    for (Map.Entry<String, Object> entry : extraMap.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (key != null && value != null) {
                            this.f44122k.put(key, value);
                        }
                    }
                }
            } catch (Throwable th2) {
                Log.e("sdm_context", "init() >>> extraMap putAll error.", th2);
            }
            this.f44112a = appId;
            this.f44113b = appKey;
            com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.c3.b(this, appId, appKey, context), 0L, 7);
        }
    }

    public static void b(SDKContext sDKContext) {
        Context contextD = sDKContext.d();
        if (contextD != null) {
            try {
                f fVar = sDKContext.f44108G;
                if (fVar != null) {
                    contextD.unregisterReceiver(fVar);
                    com.smartdigimkt.i3.a aVarA = com.smartdigimkt.i3.a.a(contextD);
                    f fVar2 = sDKContext.f44108G;
                    aVarA.getClass();
                    try {
                        try {
                            LocalBroadcastManager.getInstance(aVarA.f40727a).unregisterReceiver(fVar2);
                        } catch (Throwable unused) {
                            LocalBroadcastManager.getInstance(aVarA.f40727a).unregisterReceiver(fVar2);
                        }
                    } catch (Throwable unused2) {
                    }
                }
                sDKContext.f44108G = null;
            } catch (Throwable unused3) {
            }
            try {
                sDKContext.f44108G = new f(sDKContext);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                contextD.registerReceiver(sDKContext.f44108G, intentFilter);
                com.smartdigimkt.i3.a.a(contextD).a(sDKContext.f44108G, intentFilter);
            } catch (Throwable unused4) {
            }
        }
    }

    public final void a(SDMSDK.InitCallBack initCallBack, String str) {
        if (initCallBack == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            initCallBack.fail(str);
            return;
        }
        String str2 = this.f44130s.f40740c;
        if (!TextUtils.isEmpty(str2)) {
            initCallBack.fail(str2);
        } else {
            initCallBack.success();
        }
    }

    public final void a(SDMSDK.InitCallBack initCallBack) {
        synchronized (f44100L) {
            try {
                if (!this.f44115d) {
                    a(initCallBack, "Please call init method first.");
                    return;
                }
                if (this.f44114c == null) {
                    a(initCallBack, "The context can not be null or empty.");
                    return;
                }
                if (this.f44118g == null) {
                    a(initCallBack, "The sdmInitConfig can not be null or empty.");
                    return;
                }
                if (TextUtils.isEmpty(this.f44112a)) {
                    a(initCallBack, "The appId can not be null or empty.");
                    return;
                }
                if (TextUtils.isEmpty(this.f44113b)) {
                    a(initCallBack, "The appKey can not be null or empty.");
                    return;
                }
                if (this.f44116e) {
                    a(initCallBack, "");
                    return;
                }
                Context context = this.f44114c;
                Map<String, Object> extraMap = this.f44118g.getExtraMap();
                com.smartdigimkt.c3.c cVar = new com.smartdigimkt.c3.c(this, initCallBack);
                b bVar = this.f44130s;
                if (bVar.f40740c != null) {
                    if (TextUtils.isEmpty(bVar.f40740c)) {
                        cVar.onValidationSucceed();
                    } else {
                        cVar.onValidationFail(bVar.f40740c);
                    }
                } else {
                    com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.i4.a(bVar, cVar, extraMap, context));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String c() {
        if (TextUtils.isEmpty(this.f44135x)) {
            this.f44135x = y.b(this.f44114c, t.b.f3063f, t.a.f3019C);
        }
        return this.f44135x;
    }

    public final String a() {
        if (TextUtils.isEmpty(this.f44112a)) {
            this.f44112a = y.b(this.f44114c, "sdm_adx_rp_sdk", "sdm_adx_rp_appid");
        }
        if (!TextUtils.isEmpty(this.f44112a)) {
            return this.f44112a;
        }
        AppInfoEntity appInfoEntity = h.f39740e0;
        if (appInfoEntity != null) {
            String mediationAppId = appInfoEntity.getMediationAppId();
            if (!TextUtils.isEmpty(mediationAppId)) {
                return mediationAppId;
            }
        }
        return this.f44112a;
    }

    public final boolean a(String str) {
        a aVar = this.f44127p;
        return aVar != null && aVar.f40589a.contains(str);
    }

    public final void a(Context context) {
        if (context != null && this.f44114c == null) {
            this.f44114c = context;
        }
    }

    public static void a(SDKContext sDKContext) {
        boolean zExists = false;
        if (sDKContext.f44114c != null) {
            try {
                zExists = new File(sDKContext.f44114c.getExternalFilesDir(null), sDKContext.f44136y).exists();
                if (!zExists) {
                    zExists = new File(sDKContext.f44114c.getFilesDir(), sDKContext.f44136y).exists();
                }
            } catch (Throwable unused) {
            }
        }
        sDKContext.f44104C = zExists;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r5, com.smartdigimkt.sdk.api.SDMDebuggerConfig r6) {
        /*
            r4 = this;
            java.lang.String r0 = "sdm_context"
            if (r5 != 0) goto L10
            boolean r5 = r4.j()
            if (r5 == 0) goto Lab
            java.lang.String r5 = "setDebuggerConfig fail, because context is null."
            android.util.Log.e(r0, r5)
            return
        L10:
            if (r6 != 0) goto L16
            r4.j()
            return
        L16:
            android.content.Context r1 = r4.f44114c
            if (r1 != 0) goto L35
            com.smartdigimkt.sdk.core.SDKContext r1 = getInstance()
            android.content.Context r2 = r5.getApplicationContext()
            r1.getClass()
            if (r2 != 0) goto L28
            goto L35
        L28:
            boolean r3 = r2 instanceof android.app.Activity
            if (r3 == 0) goto L33
            android.content.Context r2 = r2.getApplicationContext()
            r1.f44114c = r2
            goto L35
        L33:
            r1.f44114c = r2
        L35:
            java.lang.String r1 = r6.getDeviceId()
            r4.f44137z = r1
            r4.f44102A = r6
            java.lang.String r6 = com.smartdigimkt.c5.h.a(r5)
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            r2 = 0
            if (r1 != 0) goto L51
            java.lang.String r1 = r4.f44137z
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L51
            goto L76
        L51:
            java.lang.String r6 = com.smartdigimkt.c5.h.q()
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            if (r1 != 0) goto L64
            java.lang.String r1 = r4.f44137z
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L64
            goto L76
        L64:
            com.smartdigimkt.sdk.core.SDKContext r6 = getInstance()
            com.smartdigimkt.i3.b r6 = r6.e()
            if (r6 == 0) goto L78
            java.lang.String r1 = r4.f44137z
            boolean r5 = r6.checkDebuggerDevice(r5, r1)
            if (r5 == 0) goto L78
        L76:
            r5 = 1
            goto L79
        L78:
            r5 = r2
        L79:
            r4.f44103B = r5
            java.lang.String r5 = r4.f44137z
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 == 0) goto L91
            boolean r5 = r4.j()
            if (r5 == 0) goto L8e
            java.lang.String r5 = "Setting Debugger's device fail, because deviceId is empty."
            android.util.Log.e(r0, r5)
        L8e:
            r4.f44103B = r2
            return
        L91:
            boolean r5 = r4.f44103B
            if (r5 == 0) goto La0
            r4.j()
            com.smartdigimkt.sdk.api.SDMDebuggerConfig r5 = r4.f44102A
            if (r5 == 0) goto Lab
            r4.j()
            return
        La0:
            boolean r5 = r4.j()
            if (r5 == 0) goto Lab
            java.lang.String r5 = "The incoming device id does not match the current device id, and the debugger mode cannot take effect."
            android.util.Log.e(r0, r5)
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.core.SDKContext.a(android.content.Context, com.smartdigimkt.sdk.api.SDMDebuggerConfig):void");
    }

    public final void a(Context context, String str) {
        boolean z2;
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = aVarA.f39387r;
        synchronized (this.f44107F) {
            try {
                if (this.f44111J == 0) {
                    this.f44111J = y.a(this.f44114c, "sdm_adx_rp_sdk", t.a.f3053v);
                }
                if (Math.max(0L, jCurrentTimeMillis - this.f44111J) > j2) {
                    this.f44132u = com.smartdigimkt.c5.i.b(str + jCurrentTimeMillis);
                    this.f44111J = jCurrentTimeMillis;
                    z2 = true;
                } else {
                    z2 = false;
                }
            } finally {
            }
        }
        if (z2) {
            this.f44106E.clear();
            HashMap map = new HashMap();
            map.put(t.a.f3051t, this.f44132u);
            map.put(t.a.f3053v, Long.valueOf(jCurrentTimeMillis));
            if (context != null) {
                try {
                    com.smartdigimkt.v4.c.a().a(context, "sdm_adx_rp_sdk").a(map);
                } catch (Throwable unused) {
                }
            }
            c cVar = new c(null, null);
            cVar.f42817a = "3000004";
            cVar.f42819c = null;
            cVar.f42828l = "1";
            cVar.f42829m = null;
            cVar.f42830n = jCurrentTimeMillis + "";
            com.smartdigimkt.y3.h.a(cVar);
            return;
        }
        if (TextUtils.isEmpty(this.f44132u)) {
            synchronized (this.f44107F) {
                try {
                    if (TextUtils.isEmpty(this.f44132u)) {
                        this.f44132u = y.b(context, "sdm_adx_rp_sdk", t.a.f3051t);
                    }
                } finally {
                }
            }
        }
    }
}
