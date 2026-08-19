package com.anythink.core.common;

import android.content.Context;
import android.content.Intent;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.f.b;
import com.anythink.core.common.v.z;

/* loaded from: classes2.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7202a = "MsgManager";

    /* renamed from: b, reason: collision with root package name */
    private static volatile q f7203b;

    /* renamed from: c, reason: collision with root package name */
    private Context f7204c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f7205d;

    private q(Context context) {
        if (context != null) {
            this.f7204c = context.getApplicationContext();
        }
        this.f7205d = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(com.anythink.core.e.b bVar) {
        try {
            Context context = this.f7204c;
            if (context == null) {
                return;
            }
            String packageName = context.getPackageName();
            String str = "";
            for (int i2 = 0; i2 < 2; i2++) {
                str = str + packageName;
            }
            String strC = com.anythink.core.common.v.n.c(str);
            Intent intent = new Intent(strC);
            intent.putExtra(strC, bVar.K());
            intent.putExtra("data", z.a().toString());
            intent.putExtra("denied", com.anythink.core.common.d.s.b().f());
            intent.putExtra("tksw", bVar.k());
            intent.setPackage(packageName);
            com.anythink.core.common.d.m.a(this.f7204c).a(intent);
            com.anythink.core.common.u.f.a(bVar.k());
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final com.anythink.core.e.b bVar) {
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bH, new Runnable() { // from class: com.anythink.core.common.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f8533b.c(bVar);
            }
        }));
    }

    public static q a(Context context) {
        if (f7203b == null) {
            synchronized (q.class) {
                try {
                    if (f7203b == null) {
                        f7203b = new q(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7203b;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[FALL_THROUGH, PHI: r3
      0x0039: PHI (r3v6 boolean) = (r3v1 boolean), (r3v7 boolean), (r3v0 boolean), (r3v9 boolean) binds: [B:30:0x007e, B:24:0x0064, B:12:0x0036, B:18:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r6, com.anythink.core.common.h.o r7, com.anythink.core.e.b r8) {
        /*
            r5 = this;
            java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.d.s r0 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Throwable -> Lff
            android.content.Context r0 = r0.g()     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.e.o r0 = com.anythink.core.e.o.a(r0)     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.h.bx r1 = r7.f4350b     // Catch: java.lang.Throwable -> Lff
            java.lang.String r1 = r1.aQ()     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.e.m r0 = r0.a(r1)     // Catch: java.lang.Throwable -> Lff
            if (r0 != 0) goto L1d
            goto Lff
        L1d:
            com.anythink.core.common.h.bx r0 = r7.f4350b     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.h.n r0 = (com.anythink.core.common.h.n) r0     // Catch: java.lang.Throwable -> Lff
            java.lang.String r0 = r0.N()     // Catch: java.lang.Throwable -> Lff
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Lff
            if (r1 == 0) goto L2d
            goto Lff
        L2d:
            r1 = 4
            r2 = 0
            r3 = 0
            r4 = 1
            if (r6 == r1) goto L6f
            r1 = 6
            if (r6 == r1) goto L55
            switch(r6) {
                case 18: goto L3b;
                case 19: goto L3b;
                case 20: goto L3b;
                default: goto L39;
            }     // Catch: java.lang.Throwable -> Lff
        L39:
            r8 = r2
            goto L88
        L3b:
            com.anythink.core.common.h.bx r1 = r7.f4350b     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.h.n r1 = (com.anythink.core.common.h.n) r1     // Catch: java.lang.Throwable -> Lff
            int r1 = r1.m()     // Catch: java.lang.Throwable -> Lff
            if (r1 != r4) goto L46
            r3 = r4
        L46:
            java.util.Map r8 = r8.O()     // Catch: java.lang.Throwable -> Lff
            if (r8 == 0) goto L39
            java.lang.String r1 = "dl"
            java.lang.Object r8 = r8.get(r1)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> Lff
            goto L88
        L55:
            com.anythink.core.common.h.bx r1 = r7.f4350b     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.h.n r1 = (com.anythink.core.common.h.n) r1     // Catch: java.lang.Throwable -> Lff
            int r1 = r1.J()     // Catch: java.lang.Throwable -> Lff
            if (r1 != r4) goto L60
            r3 = r4
        L60:
            java.util.Map r8 = r8.O()     // Catch: java.lang.Throwable -> Lff
            if (r8 == 0) goto L39
            java.lang.String r1 = "click"
            java.lang.Object r8 = r8.get(r1)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> Lff
            goto L88
        L6f:
            com.anythink.core.common.h.bx r1 = r7.f4350b     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.h.n r1 = (com.anythink.core.common.h.n) r1     // Catch: java.lang.Throwable -> Lff
            int r1 = r1.I()     // Catch: java.lang.Throwable -> Lff
            if (r1 != r4) goto L7a
            r3 = r4
        L7a:
            java.util.Map r8 = r8.O()     // Catch: java.lang.Throwable -> Lff
            if (r8 == 0) goto L39
            java.lang.String r1 = "show"
            java.lang.Object r8 = r8.get(r1)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> Lff
        L88:
            if (r3 == 0) goto Lff
            boolean r1 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> Lff
            if (r1 != 0) goto Lff
            org.json.JSONObject r1 = com.anythink.core.common.v.z.a()     // Catch: java.lang.Throwable -> Lff
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lff
            org.json.JSONObject r3 = r7.a()     // Catch: java.lang.Throwable -> Lff
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.h.bx r7 = r7.f4350b     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.h.n r7 = (com.anythink.core.common.h.n) r7     // Catch: java.lang.Throwable -> Lff
            android.content.Context r4 = r5.f7204c     // Catch: java.lang.Throwable -> Lff
            if (r4 == 0) goto Lff
            android.content.Intent r4 = new android.content.Intent     // Catch: java.lang.Throwable -> Lff
            r4.<init>(r8)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = "common"
            r4.putExtra(r8, r1)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = "data"
            r4.putExtra(r8, r3)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = "adsourceId"
            r4.putExtra(r8, r0)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = "networkType"
            int r0 = r7.Z()     // Catch: java.lang.Throwable -> Lff
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> Lff
            r4.putExtra(r8, r0)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = "format"
            java.lang.String r0 = r7.aS()     // Catch: java.lang.Throwable -> Lff
            r4.putExtra(r8, r0)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = "showid"
            java.lang.String r0 = r7.A()     // Catch: java.lang.Throwable -> Lff
            r4.putExtra(r8, r0)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r8 = "tktype"
            r4.putExtra(r8, r6)     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.d.k r6 = com.anythink.core.common.d.k.a(r7, r2)     // Catch: java.lang.Throwable -> Lff
            java.lang.String r7 = "extra_info"
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Lff
            r4.putExtra(r7, r6)     // Catch: java.lang.Throwable -> Lff
            android.content.Context r6 = r5.f7204c     // Catch: java.lang.Throwable -> Lff
            java.lang.String r6 = r6.getPackageName()     // Catch: java.lang.Throwable -> Lff
            r4.setPackage(r6)     // Catch: java.lang.Throwable -> Lff
            android.content.Context r6 = r5.f7204c     // Catch: java.lang.Throwable -> Lff
            com.anythink.core.common.d.m r6 = com.anythink.core.common.d.m.a(r6)     // Catch: java.lang.Throwable -> Lff
            r6.a(r4)     // Catch: java.lang.Throwable -> Lff
        Lff:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.q.a(int, com.anythink.core.common.h.o, com.anythink.core.e.b):void");
    }

    public final void a(final com.anythink.core.e.b bVar) {
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bG, new Runnable() { // from class: com.anythink.core.common.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f8535b.b(bVar);
            }
        }), 1000L);
    }

    private void a(int i2, String str, String str2, String str3, String str4, com.anythink.core.common.h.n nVar) {
        if (this.f7204c == null) {
            return;
        }
        try {
            Intent intent = new Intent(str);
            intent.putExtra(com.anythink.core.common.m.f.f5776Z, str2);
            intent.putExtra("data", str3);
            intent.putExtra("adsourceId", str4);
            intent.putExtra("networkType", String.valueOf(nVar.Z()));
            intent.putExtra("format", nVar.aS());
            intent.putExtra("showid", nVar.A());
            intent.putExtra("tktype", i2);
            intent.putExtra(b.a.f3232f, com.anythink.core.common.d.k.a(nVar, (ATBaseAdAdapter) null).toString());
            intent.setPackage(this.f7204c.getPackageName());
            com.anythink.core.common.d.m.a(this.f7204c).a(intent);
        } catch (Throwable unused) {
        }
    }

    public final void a(boolean z2) {
        this.f7205d = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0056 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final java.util.Map<java.lang.String, java.lang.Object> r10, final com.anythink.core.common.h.n r11, final int r12) {
        /*
            r9 = this;
            boolean r0 = r9.f7205d
            if (r0 != 0) goto L6
            goto L72
        L6:
            com.anythink.core.common.d.s r0 = com.anythink.core.common.d.s.b()
            android.content.Context r0 = r0.g()
            com.anythink.core.e.d r0 = com.anythink.core.e.d.a(r0)
            com.anythink.core.common.d.s r1 = com.anythink.core.common.d.s.b()
            java.lang.String r1 = r1.p()
            com.anythink.core.e.b r0 = r0.b(r1)
            r1 = 4
            if (r12 == r1) goto L47
            r1 = 6
            if (r12 == r1) goto L38
            switch(r12) {
                case 18: goto L28;
                case 19: goto L28;
                case 20: goto L28;
                default: goto L27;
            }
        L27:
            goto L56
        L28:
            java.util.Map r0 = r0.O()
            if (r0 == 0) goto L56
            java.lang.String r1 = "dl"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
        L36:
            r3 = r0
            goto L58
        L38:
            java.util.Map r0 = r0.O()
            if (r0 == 0) goto L56
            java.lang.String r1 = "click"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            goto L36
        L47:
            java.util.Map r0 = r0.O()
            if (r0 == 0) goto L56
            java.lang.String r1 = "show"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            goto L36
        L56:
            r0 = 0
            goto L36
        L58:
            android.content.Context r0 = r9.f7204c
            if (r0 != 0) goto L5d
            goto L72
        L5d:
            if (r3 != 0) goto L73
            com.anythink.core.common.d.s r10 = com.anythink.core.common.d.s.b()
            boolean r10 = r10.G()
            if (r10 == 0) goto L72
            java.lang.String r10 = "sendAdxTraminiInfo: fail with empty action,businessType is "
            java.lang.String r11 = java.lang.String.valueOf(r12)
            r10.concat(r11)
        L72:
            return
        L73:
            com.anythink.core.common.v.b.c r0 = com.anythink.core.common.v.b.c.a()
            com.anythink.core.common.v.b.d r7 = new com.anythink.core.common.v.b.d
            java.lang.String r8 = com.anythink.core.common.v.b.e.bI
            com.anythink.core.common.q$1 r1 = new com.anythink.core.common.q$1
            r2 = r9
            r6 = r10
            r5 = r11
            r4 = r12
            r1.<init>()
            r7.<init>(r8, r1)
            r0.a(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.q.a(java.util.Map, com.anythink.core.common.h.n, int):void");
    }
}
