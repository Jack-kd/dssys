package com.anythink.china.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.l;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.s;
import com.anythink.core.common.h.t;
import com.anythink.core.common.i;
import com.anythink.core.common.m.f;
import com.anythink.core.common.v.b.e;
import com.anythink.core.e.b;
import com.baidu.mobads.sdk.internal.bn;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1361a = "a";

    /* renamed from: b, reason: collision with root package name */
    private static final long f1362b = 1800000;

    /* renamed from: c, reason: collision with root package name */
    private static volatile a f1363c;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f1366f;

    /* renamed from: g, reason: collision with root package name */
    private volatile ScheduledFuture<?> f1367g;

    /* renamed from: i, reason: collision with root package name */
    private C0041a f1369i;

    /* renamed from: e, reason: collision with root package name */
    private final Object f1365e = new Object();

    /* renamed from: h, reason: collision with root package name */
    private final AtomicLong f1368h = new AtomicLong(0);

    /* renamed from: d, reason: collision with root package name */
    private final d f1364d = new b();

    /* renamed from: com.anythink.china.a.a$2, reason: invalid class name */
    public class AnonymousClass2 extends com.anythink.core.common.m.c {
        public AnonymousClass2() {
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadError(int i2, String str, AdError adError) {
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadFinish(int i2, Object obj) {
            if (obj instanceof JSONObject) {
                a.a((JSONObject) obj);
            }
        }
    }

    /* renamed from: com.anythink.china.a.a$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = a.this;
            s.b();
            a.a(aVar, s.y());
        }
    }

    /* renamed from: com.anythink.china.a.a$a, reason: collision with other inner class name */
    public class C0041a implements l {
        private C0041a() {
        }

        @Override // com.anythink.core.common.d.l
        public final void a(boolean z2) {
            if (z2) {
                a.a(a.this, true);
            }
        }

        public /* synthetic */ C0041a(a aVar, byte b3) {
            this();
        }
    }

    private a() {
    }

    public static /* synthetic */ void a(JSONObject jSONObject) {
        try {
            com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
            if (bVarA != null && !bVarA.J() && jSONObject != null) {
                String strE = bVarA.e();
                if (TextUtils.isEmpty(strE)) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(strE);
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(bn.f11199l);
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                if (jSONArrayOptJSONArray != null) {
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        arrayList.add(jSONArrayOptJSONArray.optJSONObject(i3).optString("name"));
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                List<s.a> listA = com.anythink.core.common.h.s.a(jSONObject).a();
                if (listA != null && !listA.isEmpty()) {
                    for (s.a aVar : listA) {
                        if (!arrayList.contains(aVar.a())) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("name", aVar.a());
                            arrayList2.add(jSONObject3);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    return;
                }
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                int size = arrayList2.size();
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    jSONArrayOptJSONArray.put((JSONObject) obj);
                }
                jSONObject2.put(bn.f11199l, jSONArrayOptJSONArray);
                bVarA.a(jSONObject2.toString());
                com.anythink.core.common.d.s.b().a(bVarA);
            }
        } catch (Throwable unused) {
        }
    }

    private static void b(JSONObject jSONObject) {
        try {
            com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
            if (bVarA != null && !bVarA.J() && jSONObject != null) {
                String strE = bVarA.e();
                if (TextUtils.isEmpty(strE)) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(strE);
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(bn.f11199l);
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                if (jSONArrayOptJSONArray != null) {
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        arrayList.add(jSONArrayOptJSONArray.optJSONObject(i3).optString("name"));
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                List<s.a> listA = com.anythink.core.common.h.s.a(jSONObject).a();
                if (listA != null && !listA.isEmpty()) {
                    for (s.a aVar : listA) {
                        if (!arrayList.contains(aVar.a())) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("name", aVar.a());
                            arrayList2.add(jSONObject3);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    return;
                }
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                int size = arrayList2.size();
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    jSONArrayOptJSONArray.put((JSONObject) obj);
                }
                jSONObject2.put(bn.f11199l, jSONArrayOptJSONArray);
                bVarA.a(jSONObject2.toString());
                com.anythink.core.common.d.s.b().a(bVarA);
            }
        } catch (Throwable unused) {
        }
    }

    private void c() {
        if (this.f1366f) {
            long j2 = this.f1368h.get();
            if (j2 <= 0) {
                j2 = 1800000;
            }
            b();
            this.f1367g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(e.f8094C, new AnonymousClass3()), j2);
        }
    }

    private static long d() {
        com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
        com.anythink.core.common.d.s sVarB = com.anythink.core.common.d.s.b();
        long j2 = c.f1380a;
        int iAu = bVarA.au();
        boolean zAn = bVarA.an();
        if (sVarB.c(f.bH) || iAu != 2 || bVarA.J()) {
            j2 &= -257;
        }
        if (sVarB.c("sensor_deny")) {
            j2 &= -193;
        }
        if (sVarB.c("bld_serial")) {
            j2 &= -3;
        }
        if (sVarB.c("android_id")) {
            j2 &= -5;
        }
        if (sVarB.c("imei")) {
            j2 &= -2;
        }
        if (sVarB.c("s_c")) {
            j2 &= -9;
        }
        if (sVarB.c("screen")) {
            j2 &= -17;
        }
        if (sVarB.c(f.bI)) {
            j2 &= -513;
        }
        if (sVarB.c("battery")) {
            j2 &= -1025;
        }
        if (ATSDKGlobalSetting.isDenyApi_getRunningAppProcesses()) {
            j2 &= -2049;
        }
        if (sVarB.c("cpu")) {
            j2 &= -4097;
        }
        if (sVarB.c("u_a")) {
            j2 &= -8193;
        }
        if (sVarB.c(f.bJ)) {
            j2 &= -16385;
        }
        if (sVarB.c("d_s")) {
            j2 &= -32769;
        }
        if (sVarB.c("ua")) {
            j2 &= -65537;
        }
        if (sVarB.c(f.bK)) {
            j2 &= -131073;
        }
        if (sVarB.c("oaid")) {
            j2 &= -262145;
        }
        if (sVarB.c(f.bL)) {
            j2 &= -524289;
        }
        if (sVarB.c(f.bM)) {
            j2 &= -1048577;
        }
        if (sVarB.c("package_name")) {
            j2 &= -2097153;
        }
        if (sVarB.c("app_vn")) {
            j2 &= -8388609;
        }
        if (sVarB.c("app_vc")) {
            j2 &= -4194305;
        }
        if (sVarB.c("t_mem")) {
            j2 &= -16777217;
        }
        if (sVarB.c("network_type")) {
            j2 &= -33554433;
        }
        if (sVarB.c("wifi_name")) {
            j2 &= -67108865;
        }
        if (sVarB.c("ip_v4") || sVarB.c("ip_v6") || sVarB.c("mac")) {
            j2 &= -134217729;
        }
        return !zAn ? (-268435457) & j2 : j2;
    }

    private void b() {
        com.anythink.core.common.v.b.c.a();
        com.anythink.core.common.v.b.c.a(this.f1367g);
        this.f1367g = null;
    }

    public static a a() {
        if (f1363c == null) {
            synchronized (a.class) {
                try {
                    if (f1363c == null) {
                        f1363c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1363c;
    }

    public final void a(com.anythink.core.e.b bVar) {
        if (bVar == null || bVar.J()) {
            return;
        }
        if (!bVar.ay()) {
            this.f1368h.set(0L);
            b();
            return;
        }
        boolean z2 = true;
        if (!this.f1366f) {
            synchronized (this.f1365e) {
                this.f1366f = true;
            }
        }
        int iAz = bVar.az();
        synchronized (this.f1365e) {
            long j2 = this.f1368h.get();
            this.f1368h.set(iAz);
            if (j2 != 0) {
                z2 = false;
            }
        }
        if (z2 && this.f1366f) {
            b();
            com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(e.f8093B, new Runnable() { // from class: com.anythink.china.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    a aVar = a.this;
                    com.anythink.core.common.d.s.b();
                    a.a(aVar, com.anythink.core.common.d.s.y());
                }
            }));
        }
    }

    private void a(boolean z2) {
        synchronized (this.f1365e) {
            byte b3 = 0;
            try {
                if (!z2) {
                    if (this.f1369i != null) {
                        com.anythink.core.common.d.s.b().b(this.f1369i);
                    }
                    this.f1369i = new C0041a(this, b3);
                    com.anythink.core.common.d.s.b().a(this.f1369i);
                    i.a();
                    com.anythink.core.common.u.f.a(b.a.f8698A, com.anythink.core.common.res.image.c.f7479a, "The application is in the background and cannot be obtained", i.m(), "", "", "", (ATAdRequest) null);
                    return;
                }
                if (this.f1369i != null) {
                    com.anythink.core.common.d.s.b().b(this.f1369i);
                    this.f1369i = null;
                }
                d dVar = this.f1364d;
                Context contextG = com.anythink.core.common.d.s.b().g();
                com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
                com.anythink.core.common.d.s sVarB = com.anythink.core.common.d.s.b();
                long j2 = c.f1380a;
                int iAu = bVarA.au();
                boolean zAn = bVarA.an();
                if (sVarB.c(f.bH) || iAu != 2 || bVarA.J()) {
                    j2 &= -257;
                }
                if (sVarB.c("sensor_deny")) {
                    j2 &= -193;
                }
                if (sVarB.c("bld_serial")) {
                    j2 &= -3;
                }
                if (sVarB.c("android_id")) {
                    j2 &= -5;
                }
                if (sVarB.c("imei")) {
                    j2 &= -2;
                }
                if (sVarB.c("s_c")) {
                    j2 &= -9;
                }
                if (sVarB.c("screen")) {
                    j2 &= -17;
                }
                if (sVarB.c(f.bI)) {
                    j2 &= -513;
                }
                if (sVarB.c("battery")) {
                    j2 &= -1025;
                }
                if (ATSDKGlobalSetting.isDenyApi_getRunningAppProcesses()) {
                    j2 &= -2049;
                }
                if (sVarB.c("cpu")) {
                    j2 &= -4097;
                }
                if (sVarB.c("u_a")) {
                    j2 &= -8193;
                }
                if (sVarB.c(f.bJ)) {
                    j2 &= -16385;
                }
                if (sVarB.c("d_s")) {
                    j2 &= -32769;
                }
                if (sVarB.c("ua")) {
                    j2 &= -65537;
                }
                if (sVarB.c(f.bK)) {
                    j2 &= -131073;
                }
                if (sVarB.c("oaid")) {
                    j2 &= -262145;
                }
                if (sVarB.c(f.bL)) {
                    j2 &= -524289;
                }
                if (sVarB.c(f.bM)) {
                    j2 &= -1048577;
                }
                if (sVarB.c("package_name")) {
                    j2 &= -2097153;
                }
                if (sVarB.c("app_vn")) {
                    j2 &= -8388609;
                }
                if (sVarB.c("app_vc")) {
                    j2 &= -4194305;
                }
                if (sVarB.c("t_mem")) {
                    j2 &= -16777217;
                }
                if (sVarB.c("network_type")) {
                    j2 &= -33554433;
                }
                if (sVarB.c("wifi_name")) {
                    j2 &= -67108865;
                }
                if (sVarB.c("ip_v4") || sVarB.c("ip_v6") || sVarB.c("mac")) {
                    j2 &= -134217729;
                }
                if (!zAn) {
                    j2 &= -268435457;
                }
                byte[] bArrA = dVar.a(contextG, j2);
                if (bArrA == null || bArrA.length == 0) {
                    return;
                }
                new com.anythink.core.common.m.d(new t(bArrA)).a(0, (com.anythink.core.common.m.s) new AnonymousClass2());
                if (this.f1366f) {
                    long j3 = this.f1368h.get();
                    if (j3 <= 0) {
                        j3 = 1800000;
                    }
                    b();
                    this.f1367g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(e.f8094C, new AnonymousClass3()), j3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void a(a aVar, boolean z2) {
        synchronized (aVar.f1365e) {
            byte b3 = 0;
            try {
                if (!z2) {
                    if (aVar.f1369i != null) {
                        com.anythink.core.common.d.s.b().b(aVar.f1369i);
                    }
                    aVar.f1369i = new C0041a(aVar, b3);
                    com.anythink.core.common.d.s.b().a(aVar.f1369i);
                    i.a();
                    com.anythink.core.common.u.f.a(b.a.f8698A, com.anythink.core.common.res.image.c.f7479a, "The application is in the background and cannot be obtained", i.m(), "", "", "", (ATAdRequest) null);
                    return;
                }
                if (aVar.f1369i != null) {
                    com.anythink.core.common.d.s.b().b(aVar.f1369i);
                    aVar.f1369i = null;
                }
                d dVar = aVar.f1364d;
                Context contextG = com.anythink.core.common.d.s.b().g();
                com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
                com.anythink.core.common.d.s sVarB = com.anythink.core.common.d.s.b();
                long j2 = c.f1380a;
                int iAu = bVarA.au();
                boolean zAn = bVarA.an();
                if (sVarB.c(f.bH) || iAu != 2 || bVarA.J()) {
                    j2 &= -257;
                }
                if (sVarB.c("sensor_deny")) {
                    j2 &= -193;
                }
                if (sVarB.c("bld_serial")) {
                    j2 &= -3;
                }
                if (sVarB.c("android_id")) {
                    j2 &= -5;
                }
                if (sVarB.c("imei")) {
                    j2 &= -2;
                }
                if (sVarB.c("s_c")) {
                    j2 &= -9;
                }
                if (sVarB.c("screen")) {
                    j2 &= -17;
                }
                if (sVarB.c(f.bI)) {
                    j2 &= -513;
                }
                if (sVarB.c("battery")) {
                    j2 &= -1025;
                }
                if (ATSDKGlobalSetting.isDenyApi_getRunningAppProcesses()) {
                    j2 &= -2049;
                }
                if (sVarB.c("cpu")) {
                    j2 &= -4097;
                }
                if (sVarB.c("u_a")) {
                    j2 &= -8193;
                }
                if (sVarB.c(f.bJ)) {
                    j2 &= -16385;
                }
                if (sVarB.c("d_s")) {
                    j2 &= -32769;
                }
                if (sVarB.c("ua")) {
                    j2 &= -65537;
                }
                if (sVarB.c(f.bK)) {
                    j2 &= -131073;
                }
                if (sVarB.c("oaid")) {
                    j2 &= -262145;
                }
                if (sVarB.c(f.bL)) {
                    j2 &= -524289;
                }
                if (sVarB.c(f.bM)) {
                    j2 &= -1048577;
                }
                if (sVarB.c("package_name")) {
                    j2 &= -2097153;
                }
                if (sVarB.c("app_vn")) {
                    j2 &= -8388609;
                }
                if (sVarB.c("app_vc")) {
                    j2 &= -4194305;
                }
                if (sVarB.c("t_mem")) {
                    j2 &= -16777217;
                }
                if (sVarB.c("network_type")) {
                    j2 &= -33554433;
                }
                if (sVarB.c("wifi_name")) {
                    j2 &= -67108865;
                }
                if (sVarB.c("ip_v4") || sVarB.c("ip_v6") || sVarB.c("mac")) {
                    j2 &= -134217729;
                }
                if (!zAn) {
                    j2 &= -268435457;
                }
                byte[] bArrA = dVar.a(contextG, j2);
                if (bArrA == null || bArrA.length == 0) {
                    return;
                }
                new com.anythink.core.common.m.d(new t(bArrA)).a(0, (com.anythink.core.common.m.s) aVar.new AnonymousClass2());
                if (aVar.f1366f) {
                    long j3 = aVar.f1368h.get();
                    if (j3 <= 0) {
                        j3 = 1800000;
                    }
                    aVar.b();
                    aVar.f1367g = com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(e.f8094C, aVar.new AnonymousClass3()), j3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
