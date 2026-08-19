package com.anythink.core.common.g;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATOsDmEntity;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.r;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.ad;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.p;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final long f3507a = 1800000;

    /* renamed from: b, reason: collision with root package name */
    private static final String f3508b = "DomainManager";

    /* renamed from: c, reason: collision with root package name */
    private static final String f3509c = "anythink_sdk";

    /* renamed from: d, reason: collision with root package name */
    private static final String f3510d = "ru";

    /* renamed from: e, reason: collision with root package name */
    private static final String f3511e = "api.";

    /* renamed from: f, reason: collision with root package name */
    private static final String f3512f = j.b("");

    /* renamed from: s, reason: collision with root package name */
    private static volatile c f3513s;

    /* renamed from: i, reason: collision with root package name */
    private volatile boolean f3516i;

    /* renamed from: j, reason: collision with root package name */
    private volatile boolean f3517j;

    /* renamed from: k, reason: collision with root package name */
    private volatile long f3518k;

    /* renamed from: p, reason: collision with root package name */
    private ArrayDeque<a> f3523p;

    /* renamed from: q, reason: collision with root package name */
    private String f3524q;

    /* renamed from: r, reason: collision with root package name */
    private String f3525r;

    /* renamed from: g, reason: collision with root package name */
    private final Object f3514g = new Object();

    /* renamed from: h, reason: collision with root package name */
    private final Object f3515h = new Object();

    /* renamed from: l, reason: collision with root package name */
    private volatile String f3519l = "";

    /* renamed from: m, reason: collision with root package name */
    private volatile String f3520m = "";

    /* renamed from: n, reason: collision with root package name */
    private volatile String f3521n = "";

    /* renamed from: o, reason: collision with root package name */
    private volatile String f3522o = "";

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private d f3535a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f3536b;

        public a(d dVar, boolean z2) {
            this.f3535a = dVar;
            this.f3536b = z2;
        }

        public final d a() {
            return this.f3535a;
        }

        public final boolean b() {
            return this.f3536b;
        }
    }

    /* renamed from: com.anythink.core.common.g.c$c, reason: collision with other inner class name */
    public interface InterfaceC0053c {
        void a(int i2, Object obj, Object obj2, long j2);

        void a(int i2, String str, AdError adError, long j2);

        void a(String str, String str2);

        void b(String str, String str2);
    }

    private c() {
    }

    public static boolean d() {
        String language;
        try {
            language = Locale.getDefault().getLanguage();
        } catch (Exception unused) {
            language = "";
        }
        return language.equalsIgnoreCase(f3510d);
    }

    public static /* synthetic */ void g() {
    }

    private static String h() {
        s.b();
        return t.a.f3026J;
    }

    private static String i() {
        s.b();
        return t.a.f3027K;
    }

    private static void j() {
    }

    private static void k() {
    }

    private a l() {
        a aVarRemoveFirst;
        ArrayDeque<a> arrayDeque = this.f3523p;
        if (arrayDeque == null || arrayDeque.isEmpty()) {
            return null;
        }
        synchronized (this.f3515h) {
            aVarRemoveFirst = this.f3523p.removeFirst();
        }
        return aVarRemoveFirst;
    }

    private static long m() {
        return f3507a;
    }

    private void n() {
        try {
            a aVarL = l();
            if (aVarL != null) {
                d dVarA = aVarL.a();
                aVarL.b();
                Objects.toString(dVarA);
                if (dVarA != null) {
                    b(dVarA);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static String e() {
        return f3512f;
    }

    private String f(Context context) {
        String str = this.f3525r;
        return TextUtils.isEmpty(str) ? ad.c(context, "anythink_sdk", t.a.f3029M, "") : str;
    }

    public final String b() {
        return ATSDK.isCnSDK() ? a(true) : this.f3519l;
    }

    public final String c() {
        return ATSDK.isCnSDK() ? a(false) : this.f3520m;
    }

    public static class b implements InterfaceC0053c, d {

        /* renamed from: a, reason: collision with root package name */
        private boolean f3537a;

        /* renamed from: b, reason: collision with root package name */
        private final InterfaceC0053c f3538b;

        public b(InterfaceC0053c interfaceC0053c) {
            this.f3538b = interfaceC0053c;
        }

        @Override // com.anythink.core.common.g.c.InterfaceC0053c
        public final void a(String str, String str2) {
            InterfaceC0053c interfaceC0053c;
            if (this.f3537a || (interfaceC0053c = this.f3538b) == null) {
                return;
            }
            this.f3537a = true;
            interfaceC0053c.a(str, str2);
        }

        @Override // com.anythink.core.common.g.c.InterfaceC0053c
        public final void b(String str, String str2) {
            InterfaceC0053c interfaceC0053c = this.f3538b;
            if (interfaceC0053c != null) {
                interfaceC0053c.b(str, str2);
            }
            a(str, str2);
        }

        @Override // com.anythink.core.common.g.c.InterfaceC0053c
        public final void a(int i2, String str, AdError adError, long j2) {
            InterfaceC0053c interfaceC0053c = this.f3538b;
            if (interfaceC0053c != null) {
                interfaceC0053c.a(i2, str, adError, j2);
            }
            a("", "");
        }

        @Override // com.anythink.core.common.g.c.InterfaceC0053c
        public final void a(int i2, Object obj, Object obj2, long j2) {
            Object obj3;
            Object obj4;
            InterfaceC0053c interfaceC0053c = this.f3538b;
            if (interfaceC0053c != null) {
                obj3 = obj;
                obj4 = obj2;
                interfaceC0053c.a(i2, obj3, obj4, j2);
            } else {
                obj3 = obj;
                obj4 = obj2;
            }
            a(obj3 != null ? obj3.toString() : "", obj4 != null ? obj4.toString() : "");
        }
    }

    private String e(Context context) {
        String str = this.f3524q;
        return TextUtils.isEmpty(str) ? ad.c(context, "anythink_sdk", t.a.f3028L, "") : str;
    }

    private void d(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f3518k = jCurrentTimeMillis;
        ad.a(context, "anythink_sdk", t.a.f3025I, jCurrentTimeMillis);
    }

    public static String b(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        try {
            String host = new URL(str).getHost();
            return !str2.equals(host) ? str.replace(host, str2) : str;
        } catch (Throwable unused) {
            return str;
        }
    }

    private void c(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            this.f3519l = str;
            Context contextG = s.b().g();
            s.b();
            ad.b(contextG, "anythink_sdk", t.a.f3026J, str);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f3520m = str2;
        Context contextG2 = s.b().g();
        s.b();
        ad.b(contextG2, "anythink_sdk", t.a.f3027K, str2);
    }

    public static c a() {
        if (f3513s == null) {
            synchronized (c.class) {
                f3513s = new c();
            }
        }
        return f3513s;
    }

    public static /* synthetic */ void d(c cVar) {
        try {
            a aVarL = cVar.l();
            if (aVarL != null) {
                d dVarA = aVarL.a();
                aVarL.b();
                Objects.toString(dVarA);
                if (dVarA != null) {
                    cVar.b(dVarA);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static void b(String str) {
        com.anythink.core.e.d.a(s.b().g()).c(str);
    }

    public final void a(Context context) {
        if (ATSDK.isCnSDK()) {
            return;
        }
        if (context instanceof Activity) {
            context = context.getApplicationContext();
        }
        if (this.f3516i) {
            return;
        }
        this.f3516i = true;
        boolean zD = d();
        this.f3521n = zD ? f3512f : i.g.a.f2649a;
        this.f3522o = i.g.a.f2650b;
        r rVarC = s.b().c();
        if (rVarC != null && rVarC.getOsDmEntity() != null) {
            ATOsDmEntity osDmEntity = rVarC.getOsDmEntity();
            String mainDm = osDmEntity.getMainDm();
            if (!TextUtils.isEmpty(mainDm)) {
                this.f3521n = mainDm;
                String ruBpDm = osDmEntity.getRuBpDm();
                if (zD && !TextUtils.isEmpty(ruBpDm)) {
                    this.f3521n = ruBpDm;
                }
            }
            String backupDm = osDmEntity.getBackupDm();
            if (!TextUtils.isEmpty(backupDm)) {
                this.f3522o = backupDm;
            }
        }
        s.b();
        String strC = ad.c(context, "anythink_sdk", t.a.f3026J, "");
        if (!TextUtils.isEmpty(strC)) {
            this.f3521n = strC;
        }
        s.b();
        String strC2 = ad.c(context, "anythink_sdk", t.a.f3027K, "");
        if (!TextUtils.isEmpty(strC2)) {
            this.f3522o = strC2;
        }
        c(this.f3521n, this.f3522o);
    }

    public final void b(Context context) {
        if (context == null) {
            return;
        }
        this.f3518k = 0L;
        ad.a(context, "anythink_sdk", t.a.f3025I);
    }

    public static /* synthetic */ void d(c cVar, Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        cVar.f3518k = jCurrentTimeMillis;
        ad.a(context, "anythink_sdk", t.a.f3025I, jCurrentTimeMillis);
    }

    private void b(final d dVar) {
        a(new InterfaceC0053c() { // from class: com.anythink.core.common.g.c.1
            @Override // com.anythink.core.common.g.c.InterfaceC0053c
            public final void a(int i2, Object obj, Object obj2, long j2) {
            }

            @Override // com.anythink.core.common.g.c.InterfaceC0053c
            public final void b(String str, String str2) {
            }

            @Override // com.anythink.core.common.g.c.InterfaceC0053c
            public final void a(int i2, String str, AdError adError, long j2) {
            }

            @Override // com.anythink.core.common.g.c.InterfaceC0053c
            public final void a(String str, String str2) {
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.a(str, str2);
                }
            }
        });
    }

    public static /* synthetic */ String b(c cVar, Context context) {
        String str = cVar.f3524q;
        return TextUtils.isEmpty(str) ? ad.c(context, "anythink_sdk", t.a.f3028L, "") : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Long c(Context context) {
        long jB = this.f3518k;
        if (jB == 0) {
            jB = ad.b(context, "anythink_sdk", t.a.f3025I, 0L);
        }
        return Long.valueOf(jB);
    }

    public static /* synthetic */ String c(c cVar, Context context) {
        String str = cVar.f3525r;
        return TextUtils.isEmpty(str) ? ad.c(context, "anythink_sdk", t.a.f3029M, "") : str;
    }

    private static String a(boolean z2) {
        String strAD;
        com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
        if (bVarA != null) {
            strAD = z2 ? bVarA.aD() : bVarA.aE();
        } else {
            strAD = "";
        }
        return !TextUtils.isEmpty(strAD) ? strAD : z2 ? i.g.a.f2649a : i.g.a.f2650b;
    }

    public final String a(String str) {
        return a(str, "", true);
    }

    public final String a(String str, String str2) {
        return a(str, str2, true);
    }

    public final String a(String str, String str2, boolean z2) {
        return ATSDK.isCnSDK() ? str : b(str, a(str2, z2));
    }

    private String a(String str, boolean z2) {
        ATOsDmEntity osDmEntity;
        if (TextUtils.isEmpty(str)) {
            return z2 ? this.f3519l : this.f3520m;
        }
        r rVarC = s.b().c();
        if (rVarC != null && rVarC.getOsDmEntity() != null) {
            osDmEntity = rVarC.getOsDmEntity();
            str.getClass();
            switch (str) {
                case "smart_wf":
                    return osDmEntity.getSmartWFDm();
                case "bid":
                    return osDmEntity.getBidDm();
                case "agent":
                    return osDmEntity.getDaDm();
                case "tracking":
                    return osDmEntity.getTkDm();
                default:
                    return "";
            }
        }
        return "";
    }

    public final void a(String str, String str2, String str3, boolean z2, String str4) {
        String str5 = this.f3519l;
        String str6 = this.f3520m;
        c(str, str2);
        if (z2) {
            com.anythink.core.e.d.a(s.b().g()).c(str4);
        }
        f.a(this.f3521n, str, str3, String.valueOf(c(s.b().g())), "", "", str5, "", "", "", "", 0, str2, str6);
    }

    private void a(String str, String str2, String str3, String str4, String str5) {
        f.a(this.f3521n, str, str5, String.valueOf(c(s.b().g())), "", "", str3, "", "", "", "", 0, str2, str4);
    }

    private void a(boolean z2, String str, String str2, long j2, int i2) {
        f.a(this.f3521n, this.f3519l, "", String.valueOf(this.f3518k), "", "", "", "1", z2 ? "1" : "0", str, String.valueOf(j2), i2, str2, this.f3520m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(d dVar, boolean z2) {
        if (dVar == null) {
            return;
        }
        synchronized (this.f3515h) {
            try {
                if (this.f3523p == null) {
                    this.f3523p = new ArrayDeque<>();
                }
                this.f3523p.addLast(new a(dVar, z2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            this.f3524q = str;
            ad.b(context, "anythink_sdk", t.a.f3028L, str);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f3525r = str2;
        ad.b(context, "anythink_sdk", t.a.f3029M, str2);
    }

    public final void a(d dVar) {
        b(dVar);
    }

    private void a(InterfaceC0053c interfaceC0053c) {
        String str = this.f3519l;
        String str2 = this.f3520m;
        final Context contextG = s.b().g();
        if (contextG != null && !ATSDK.isCnSDK() && p.a(contextG)) {
            final b bVar = new b(interfaceC0053c);
            if (this.f3517j) {
                a((d) bVar, true);
                return;
            } else {
                com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(e.aM, new Runnable() { // from class: com.anythink.core.common.g.c.2

                    /* renamed from: b, reason: collision with root package name */
                    final /* synthetic */ boolean f3529b = true;

                    @Override // java.lang.Runnable
                    public final void run() {
                        synchronized (c.this.f3514g) {
                            try {
                                if (c.this.f3517j) {
                                    c.this.a(bVar, this.f3529b);
                                    return;
                                }
                                c.this.f3517j = true;
                                c cVar = c.this;
                                cVar.f3518k = cVar.c(contextG).longValue();
                                final long jCurrentTimeMillis = System.currentTimeMillis();
                                long j2 = jCurrentTimeMillis - c.this.f3518k;
                                long unused = c.f3507a;
                                if (c.this.f3518k <= 0 || j2 >= c.f3507a) {
                                    String unused2 = c.this.f3519l;
                                    c.g();
                                    com.anythink.core.e.a aVar = new com.anythink.core.e.a(com.anythink.core.e.d.a());
                                    final int iA = aVar.a();
                                    aVar.a(new com.anythink.core.common.m.c() { // from class: com.anythink.core.common.g.c.2.1
                                        @Override // com.anythink.core.common.m.s
                                        public final void onLoadError(int i2, String str3, AdError adError) {
                                            c.this.f3517j = false;
                                            c.a(c.this, false, str3, "", System.currentTimeMillis() - jCurrentTimeMillis, iA);
                                            bVar.a(-1, str3, (AdError) null, jCurrentTimeMillis);
                                            c.d(c.this);
                                        }

                                        /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
                                        /* JADX WARN: Removed duplicated region for block: B:27:0x009d  */
                                        @Override // com.anythink.core.common.m.s
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                            To view partially-correct add '--show-bad-code' argument
                                        */
                                        public final void onLoadFinish(int r14, java.lang.Object r15) {
                                            /*
                                                r13 = this;
                                                com.anythink.core.common.g.c$2 r14 = com.anythink.core.common.g.c.AnonymousClass2.this
                                                com.anythink.core.common.g.c r14 = com.anythink.core.common.g.c.this
                                                r0 = 0
                                                com.anythink.core.common.g.c.a(r14, r0)
                                                java.lang.String r14 = ""
                                                boolean r1 = r15 instanceof java.lang.String     // Catch: java.lang.Throwable -> L48
                                                if (r1 == 0) goto L59
                                                java.lang.String r1 = r15.toString()     // Catch: java.lang.Throwable -> L48
                                                boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L48
                                                if (r1 != 0) goto L59
                                                org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L48
                                                java.lang.String r15 = r15.toString()     // Catch: java.lang.Throwable -> L48
                                                r1.<init>(r15)     // Catch: java.lang.Throwable -> L48
                                                java.lang.String r15 = "code"
                                                int r15 = r1.optInt(r15, r0)     // Catch: java.lang.Throwable -> L48
                                                if (r15 != 0) goto L4e
                                                java.lang.String r15 = "data"
                                                java.lang.String r15 = r1.optString(r15)     // Catch: java.lang.Throwable -> L48
                                                java.lang.String r0 = "data_bck"
                                                java.lang.String r1 = r1.optString(r0)     // Catch: java.lang.Throwable -> L45
                                                com.anythink.core.common.g.c$2 r0 = com.anythink.core.common.g.c.AnonymousClass2.this     // Catch: java.lang.Throwable -> L42
                                                com.anythink.core.common.g.c r2 = com.anythink.core.common.g.c.this     // Catch: java.lang.Throwable -> L42
                                                android.content.Context r0 = r3     // Catch: java.lang.Throwable -> L42
                                                com.anythink.core.common.g.c.d(r2, r0)     // Catch: java.lang.Throwable -> L42
                                            L3e:
                                                r8 = r14
                                                r4 = r15
                                                r5 = r1
                                                goto L71
                                            L42:
                                                r0 = move-exception
                                            L43:
                                                r14 = r0
                                                goto L5e
                                            L45:
                                                r0 = move-exception
                                                r1 = r14
                                                goto L43
                                            L48:
                                                r0 = move-exception
                                                r15 = r0
                                                r1 = r14
                                                r14 = r15
                                                r15 = r1
                                                goto L5e
                                            L4e:
                                                java.lang.String r0 = "request failed. error code: "
                                                java.lang.String r15 = java.lang.String.valueOf(r15)     // Catch: java.lang.Throwable -> L48
                                                java.lang.String r15 = r0.concat(r15)     // Catch: java.lang.Throwable -> L48
                                                goto L5a
                                            L59:
                                                r15 = r14
                                            L5a:
                                                r4 = r14
                                                r5 = r4
                                                r8 = r15
                                                goto L71
                                            L5e:
                                                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                                                java.lang.String r2 = "parse cdn domain error: "
                                                r0.<init>(r2)
                                                java.lang.String r14 = r14.getMessage()
                                                r0.append(r14)
                                                java.lang.String r14 = r0.toString()
                                                goto L3e
                                            L71:
                                                com.anythink.core.common.g.c$2 r14 = com.anythink.core.common.g.c.AnonymousClass2.this
                                                com.anythink.core.common.g.c r15 = com.anythink.core.common.g.c.this
                                                android.content.Context r14 = r3
                                                com.anythink.core.common.g.c.a(r15, r14, r4, r5)
                                                long r14 = java.lang.System.currentTimeMillis()
                                                long r0 = r2
                                                long r6 = r14 - r0
                                                boolean r14 = android.text.TextUtils.isEmpty(r8)
                                                if (r14 == 0) goto L9d
                                                com.anythink.core.common.g.c$2 r14 = com.anythink.core.common.g.c.AnonymousClass2.this
                                                com.anythink.core.common.g.c r2 = com.anythink.core.common.g.c.this
                                                r3 = 1
                                                int r8 = r4
                                                com.anythink.core.common.g.c.a(r2, r3, r4, r5, r6, r8)
                                                com.anythink.core.common.g.c$2 r14 = com.anythink.core.common.g.c.AnonymousClass2.this
                                                com.anythink.core.common.g.c$b r2 = r2
                                                r3 = 0
                                                long r6 = r2
                                                r2.a(r3, r4, r5, r6)
                                                goto Lb5
                                            L9d:
                                                com.anythink.core.common.g.c$2 r14 = com.anythink.core.common.g.c.AnonymousClass2.this
                                                com.anythink.core.common.g.c r14 = com.anythink.core.common.g.c.this
                                                java.lang.String r9 = ""
                                                int r12 = r4
                                                r10 = r6
                                                r7 = 0
                                                r6 = r14
                                                com.anythink.core.common.g.c.a(r6, r7, r8, r9, r10, r12)
                                                com.anythink.core.common.g.c$2 r14 = com.anythink.core.common.g.c.AnonymousClass2.this
                                                com.anythink.core.common.g.c$b r6 = r2
                                                r9 = 0
                                                long r10 = r2
                                                r6.a(r7, r8, r9, r10)
                                            Lb5:
                                                com.anythink.core.common.g.c$2 r14 = com.anythink.core.common.g.c.AnonymousClass2.this
                                                com.anythink.core.common.g.c r14 = com.anythink.core.common.g.c.this
                                                com.anythink.core.common.g.c.d(r14)
                                                return
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.c.AnonymousClass2.AnonymousClass1.onLoadFinish(int, java.lang.Object):void");
                                        }
                                    });
                                    return;
                                }
                                String strB = c.b(c.this, contextG);
                                String strC = c.c(c.this, contextG);
                                c.g();
                                c.this.f3517j = false;
                                bVar.b(strB, strC);
                                c.d(c.this);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }));
                return;
            }
        }
        interfaceC0053c.a(str, str2);
    }

    public static /* synthetic */ void a(c cVar, Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            cVar.f3524q = str;
            ad.b(context, "anythink_sdk", t.a.f3028L, str);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        cVar.f3525r = str2;
        ad.b(context, "anythink_sdk", t.a.f3029M, str2);
    }

    public static /* synthetic */ void a(c cVar, boolean z2, String str, String str2, long j2, int i2) {
        f.a(cVar.f3521n, cVar.f3519l, "", String.valueOf(cVar.f3518k), "", "", "", "1", z2 ? "1" : "0", str, String.valueOf(j2), i2, str2, cVar.f3520m);
    }
}
