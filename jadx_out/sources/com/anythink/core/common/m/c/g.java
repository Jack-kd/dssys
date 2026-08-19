package com.anythink.core.common.m.c;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class g implements i {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5673a = "HttpLoaderInterceptor";

    /* renamed from: b, reason: collision with root package name */
    private final Context f5674b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, i> f5675c;

    /* renamed from: d, reason: collision with root package name */
    private final a f5676d;

    public g(Context context) {
        context = context instanceof Activity ? context.getApplicationContext() : context;
        this.f5674b = context;
        this.f5675c = new ConcurrentHashMap();
        this.f5676d = new a(context);
    }

    @Override // com.anythink.core.common.m.c.i
    public final com.anythink.core.common.m.b.f a(com.anythink.core.common.m.b.d dVar) {
        i iVarA;
        if (this.f5674b != null && dVar != null) {
            try {
                a aVar = this.f5676d;
                fVarA = aVar != null ? aVar.a(dVar) : null;
                if ((fVarA == null || !fVarA.e()) && (iVarA = a(this.f5674b, dVar)) != null) {
                    return iVarA.a(dVar);
                }
            } catch (Throwable unused) {
            }
        }
        return fVarA;
    }

    @Override // com.anythink.core.common.m.c.i
    public final void a(com.anythink.core.common.m.b.f fVar, com.anythink.core.common.m.b.d dVar) {
        if (this.f5674b == null || fVar == null || dVar == null) {
            return;
        }
        try {
            a aVar = this.f5676d;
            if (aVar != null) {
                aVar.a(fVar, dVar);
            }
            i iVarA = a(this.f5674b, dVar);
            if (iVarA != null) {
                iVarA.a(fVar, dVar);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.anythink.core.common.m.c.i a(android.content.Context r7, com.anythink.core.common.m.b.d r8) {
        /*
            r6 = this;
            r0 = 0
            if (r8 == 0) goto L95
            java.util.Map<java.lang.String, com.anythink.core.common.m.c.i> r1 = r6.f5675c
            if (r1 != 0) goto L9
            goto L95
        L9:
            java.lang.String r8 = r8.b()
            java.util.Map<java.lang.String, com.anythink.core.common.m.c.i> r1 = r6.f5675c
            java.lang.Object r1 = r1.get(r8)
            com.anythink.core.common.m.c.i r1 = (com.anythink.core.common.m.c.i) r1
            if (r1 != 0) goto L94
            monitor-enter(r6)
            boolean r1 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L20
            goto L90
        L20:
            int r1 = r8.hashCode()     // Catch: java.lang.Throwable -> L36
            r2 = 3
            r3 = 4
            r4 = 1
            r5 = 2
            switch(r1) {
                case 261237151: goto L56;
                case 1051663406: goto L4c;
                case 1584672721: goto L42;
                case 1899111790: goto L38;
                case 1976115158: goto L2c;
                default: goto L2b;
            }     // Catch: java.lang.Throwable -> L36
        L2b:
            goto L60
        L2c:
            java.lang.String r1 = "get_area"
            boolean r1 = r8.equals(r1)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L60
            r1 = r5
            goto L61
        L36:
            r7 = move-exception
            goto L92
        L38:
            java.lang.String r1 = "eu_traffic"
            boolean r1 = r8.equals(r1)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L60
            r1 = r4
            goto L61
        L42:
            java.lang.String r1 = "app_strategy"
            boolean r1 = r8.equals(r1)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L60
            r1 = 0
            goto L61
        L4c:
            java.lang.String r1 = "user_dau_strategy"
            boolean r1 = r8.equals(r1)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L60
            r1 = r3
            goto L61
        L56:
            java.lang.String r1 = "get_cdn_domain"
            boolean r1 = r8.equals(r1)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L60
            r1 = r2
            goto L61
        L60:
            r1 = -1
        L61:
            if (r1 == 0) goto L84
            if (r1 == r4) goto L7e
            if (r1 == r5) goto L78
            if (r1 == r2) goto L72
            if (r1 == r3) goto L6c
            goto L89
        L6c:
            com.anythink.core.common.m.c.j r0 = new com.anythink.core.common.m.c.j     // Catch: java.lang.Throwable -> L36
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L36
            goto L89
        L72:
            com.anythink.core.common.m.c.e r0 = new com.anythink.core.common.m.c.e     // Catch: java.lang.Throwable -> L36
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L36
            goto L89
        L78:
            com.anythink.core.common.m.c.c r0 = new com.anythink.core.common.m.c.c     // Catch: java.lang.Throwable -> L36
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L36
            goto L89
        L7e:
            com.anythink.core.common.m.c.f r0 = new com.anythink.core.common.m.c.f     // Catch: java.lang.Throwable -> L36
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L36
            goto L89
        L84:
            com.anythink.core.common.m.c.b r0 = new com.anythink.core.common.m.c.b     // Catch: java.lang.Throwable -> L36
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L36
        L89:
            if (r0 == 0) goto L90
            java.util.Map<java.lang.String, com.anythink.core.common.m.c.i> r7 = r6.f5675c     // Catch: java.lang.Throwable -> L36
            r7.put(r8, r0)     // Catch: java.lang.Throwable -> L36
        L90:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L36
            return r0
        L92:
            monitor-exit(r6)
            throw r7
        L94:
            return r1
        L95:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.m.c.g.a(android.content.Context, com.anythink.core.common.m.b.d):com.anythink.core.common.m.c.i");
    }

    private i a(Context context, String str) {
        i eVar = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.getClass();
        switch (str) {
            case "get_cdn_domain":
                eVar = new e(context);
                break;
            case "user_dau_strategy":
                eVar = new j(context);
                break;
            case "app_strategy":
                eVar = new b(context);
                break;
            case "eu_traffic":
                eVar = new f(context);
                break;
            case "get_area":
                eVar = new c(context);
                break;
        }
        if (eVar != null) {
            this.f5675c.put(str, eVar);
        }
        return eVar;
    }
}
