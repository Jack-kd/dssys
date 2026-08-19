package com.anythink.core.common.d;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.ad;
import java.util.concurrent.ScheduledFuture;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class f implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2468a = "start_time";

    /* renamed from: b, reason: collision with root package name */
    public static final String f2469b = "end_time";

    /* renamed from: c, reason: collision with root package name */
    public static final String f2470c = "psid";

    /* renamed from: d, reason: collision with root package name */
    public static final String f2471d = "launch_mode";

    /* renamed from: e, reason: collision with root package name */
    public static final int f2472e = 0;

    /* renamed from: f, reason: collision with root package name */
    public static final int f2473f = 1;

    /* renamed from: g, reason: collision with root package name */
    long f2474g;

    /* renamed from: i, reason: collision with root package name */
    JSONObject f2476i;

    /* renamed from: j, reason: collision with root package name */
    volatile ScheduledFuture<?> f2477j;

    /* renamed from: l, reason: collision with root package name */
    private final String f2479l = f.class.getSimpleName();

    /* renamed from: k, reason: collision with root package name */
    Runnable f2478k = new Runnable() { // from class: com.anythink.core.common.d.f.1
        @Override // java.lang.Runnable
        public final void run() {
            f.a(f.this);
        }
    };

    /* renamed from: h, reason: collision with root package name */
    int f2475h = 0;

    public f(long j2) {
        this.f2474g = j2;
    }

    private void a() {
        if (this.f2476i != null) {
            ad.b(s.b().g(), t.b.f3058a, s.b().p() + "playRecord", "");
            this.f2474g = 0L;
            JSONObject jSONObject = this.f2476i;
            long jOptLong = jSONObject.optLong("start_time");
            long jOptLong2 = jSONObject.optLong("end_time");
            String strOptString = jSONObject.optString(f2470c);
            int iOptInt = jSONObject.optInt(f2471d);
            this.f2476i = null;
            com.anythink.core.common.u.f.a(iOptInt == 1 ? 3 : 1, jOptLong, jOptLong2, strOptString);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            r18 = this;
            r0 = r18
            com.anythink.core.common.v.b.c.a()
            java.util.concurrent.ScheduledFuture<?> r1 = r0.f2477j
            com.anythink.core.common.v.b.c.a(r1)
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()
            android.content.Context r1 = r1.g()
            com.anythink.core.e.d r1 = com.anythink.core.e.d.a(r1)
            com.anythink.core.common.d.s r2 = com.anythink.core.common.d.s.b()
            java.lang.String r2 = r2.p()
            com.anythink.core.e.b r1 = r1.b(r2)
            org.json.JSONObject r2 = r0.f2476i
            java.lang.String r3 = ""
            java.lang.String r4 = "playRecord"
            java.lang.String r5 = "anythink_sdk"
            r8 = 1
            if (r2 == 0) goto L83
            java.lang.String r9 = "start_time"
            long r11 = r2.optLong(r9)
            java.lang.String r9 = "end_time"
            long r13 = r2.optLong(r9)
            java.lang.String r9 = "psid"
            java.lang.String r15 = r2.optString(r9)
            java.lang.String r9 = "launch_mode"
            int r2 = r2.optInt(r9)
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 - r13
            int r1 = r1.E()
            long r6 = (long) r1
            int r1 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r1 <= 0) goto L83
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()
            android.content.Context r1 = r1.g()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            com.anythink.core.common.d.s r7 = com.anythink.core.common.d.s.b()
            java.lang.String r7 = r7.p()
            r6.append(r7)
            r6.append(r4)
            java.lang.String r6 = r6.toString()
            com.anythink.core.common.v.ad.b(r1, r5, r6, r3)
            if (r2 != r8) goto L7a
            r1 = 3
            r10 = r1
            goto L7b
        L7a:
            r10 = r8
        L7b:
            com.anythink.core.common.u.f.a(r10, r11, r13, r15)
            r1 = 0
            r0.f2474g = r1
            goto L85
        L83:
            r1 = 0
        L85:
            r6 = 0
            r0.f2476i = r6
            long r6 = r0.f2474g
            int r6 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r6 != 0) goto Lab
            r0.f2475h = r8
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Exception -> Lcd
            com.anythink.core.common.d.s r2 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Exception -> Lcd
            android.content.Context r2 = r2.g()     // Catch: java.lang.Exception -> Lcd
            com.anythink.core.common.d.s r3 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Exception -> Lcd
            java.lang.String r3 = r3.p()     // Catch: java.lang.Exception -> Lcd
            long r1 = r1.a(r2, r3, r8)     // Catch: java.lang.Exception -> Lcd
            r0.f2474g = r1     // Catch: java.lang.Exception -> Lcd
            goto Lcd
        Lab:
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()
            java.lang.String r1 = r1.p()
            com.anythink.core.common.d.s r2 = com.anythink.core.common.d.s.b()
            android.content.Context r2 = r2.g()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r1)
            r6.append(r4)
            java.lang.String r1 = r6.toString()
            com.anythink.core.common.v.ad.b(r2, r5, r1, r3)
        Lcd:
            long r1 = r0.f2474g
            r16 = 0
            int r1 = (r1 > r16 ? 1 : (r1 == r16 ? 0 : -1))
            if (r1 != 0) goto Ldb
            long r1 = java.lang.System.currentTimeMillis()
            r0.f2474g = r1
        Ldb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.d.f.b():void");
    }

    private void c() throws JSONException {
        String strP = s.b().p();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f2470c, s.b().r());
            jSONObject.put("start_time", this.f2474g);
            jSONObject.put("end_time", System.currentTimeMillis());
            jSONObject.put(f2471d, this.f2475h);
            this.f2476i = jSONObject;
            ad.b(s.b().g(), t.b.f3058a, strP + "playRecord", jSONObject.toString());
        } catch (Exception unused) {
        }
        if (com.anythink.core.e.d.a(s.b().g()).b(strP).G() == 1) {
            this.f2477j = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8105N, this.f2478k), r0.E());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8106O, new Runnable() { // from class: com.anythink.core.common.d.f.3
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                f.c(f.this);
            }
        }));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8107P, new Runnable() { // from class: com.anythink.core.common.d.f.2
            @Override // java.lang.Runnable
            public final void run() {
                f.b(f.this);
            }
        }));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public static /* synthetic */ void a(f fVar) {
        if (fVar.f2476i != null) {
            ad.b(s.b().g(), t.b.f3058a, s.b().p() + "playRecord", "");
            fVar.f2474g = 0L;
            JSONObject jSONObject = fVar.f2476i;
            long jOptLong = jSONObject.optLong("start_time");
            long jOptLong2 = jSONObject.optLong("end_time");
            String strOptString = jSONObject.optString(f2470c);
            int iOptInt = jSONObject.optInt(f2471d);
            fVar.f2476i = null;
            com.anythink.core.common.u.f.a(iOptInt == 1 ? 3 : 1, jOptLong, jOptLong2, strOptString);
        }
    }

    public static /* synthetic */ void c(f fVar) throws JSONException {
        String strP = s.b().p();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f2470c, s.b().r());
            jSONObject.put("start_time", fVar.f2474g);
            jSONObject.put("end_time", System.currentTimeMillis());
            jSONObject.put(f2471d, fVar.f2475h);
            fVar.f2476i = jSONObject;
            ad.b(s.b().g(), t.b.f3058a, strP + "playRecord", jSONObject.toString());
        } catch (Exception unused) {
        }
        if (com.anythink.core.e.d.a(s.b().g()).b(strP).G() == 1) {
            fVar.f2477j = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8105N, fVar.f2478k), r0.E());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void b(com.anythink.core.common.d.f r18) {
        /*
            r0 = r18
            com.anythink.core.common.v.b.c.a()
            java.util.concurrent.ScheduledFuture<?> r1 = r0.f2477j
            com.anythink.core.common.v.b.c.a(r1)
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()
            android.content.Context r1 = r1.g()
            com.anythink.core.e.d r1 = com.anythink.core.e.d.a(r1)
            com.anythink.core.common.d.s r2 = com.anythink.core.common.d.s.b()
            java.lang.String r2 = r2.p()
            com.anythink.core.e.b r1 = r1.b(r2)
            org.json.JSONObject r2 = r0.f2476i
            java.lang.String r3 = ""
            java.lang.String r4 = "playRecord"
            java.lang.String r5 = "anythink_sdk"
            r8 = 1
            if (r2 == 0) goto L83
            java.lang.String r9 = "start_time"
            long r11 = r2.optLong(r9)
            java.lang.String r9 = "end_time"
            long r13 = r2.optLong(r9)
            java.lang.String r9 = "psid"
            java.lang.String r15 = r2.optString(r9)
            java.lang.String r9 = "launch_mode"
            int r2 = r2.optInt(r9)
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 - r13
            int r1 = r1.E()
            long r6 = (long) r1
            int r1 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r1 <= 0) goto L83
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()
            android.content.Context r1 = r1.g()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            com.anythink.core.common.d.s r7 = com.anythink.core.common.d.s.b()
            java.lang.String r7 = r7.p()
            r6.append(r7)
            r6.append(r4)
            java.lang.String r6 = r6.toString()
            com.anythink.core.common.v.ad.b(r1, r5, r6, r3)
            if (r2 != r8) goto L7a
            r1 = 3
            r10 = r1
            goto L7b
        L7a:
            r10 = r8
        L7b:
            com.anythink.core.common.u.f.a(r10, r11, r13, r15)
            r1 = 0
            r0.f2474g = r1
            goto L85
        L83:
            r1 = 0
        L85:
            r6 = 0
            r0.f2476i = r6
            long r6 = r0.f2474g
            int r6 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r6 != 0) goto Lab
            r0.f2475h = r8
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Exception -> Lcd
            com.anythink.core.common.d.s r2 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Exception -> Lcd
            android.content.Context r2 = r2.g()     // Catch: java.lang.Exception -> Lcd
            com.anythink.core.common.d.s r3 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Exception -> Lcd
            java.lang.String r3 = r3.p()     // Catch: java.lang.Exception -> Lcd
            long r1 = r1.a(r2, r3, r8)     // Catch: java.lang.Exception -> Lcd
            r0.f2474g = r1     // Catch: java.lang.Exception -> Lcd
            goto Lcd
        Lab:
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()
            java.lang.String r1 = r1.p()
            com.anythink.core.common.d.s r2 = com.anythink.core.common.d.s.b()
            android.content.Context r2 = r2.g()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r1)
            r6.append(r4)
            java.lang.String r1 = r6.toString()
            com.anythink.core.common.v.ad.b(r2, r5, r1, r3)
        Lcd:
            long r1 = r0.f2474g
            r16 = 0
            int r1 = (r1 > r16 ? 1 : (r1 == r16 ? 0 : -1))
            if (r1 != 0) goto Ldb
            long r1 = java.lang.System.currentTimeMillis()
            r0.f2474g = r1
        Ldb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.d.f.b(com.anythink.core.common.d.f):void");
    }
}
