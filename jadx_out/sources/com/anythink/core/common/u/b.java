package com.anythink.core.common.u;

import android.text.TextUtils;
import com.anythink.core.common.d.l;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.n;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7810a = "b";

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, com.anythink.core.common.u.b.e> f7811b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, com.anythink.core.common.u.b.a> f7812c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    private final com.anythink.core.common.u.b.f f7813d;

    /* renamed from: e, reason: collision with root package name */
    private final com.anythink.core.common.u.b.d f7814e;

    /* renamed from: f, reason: collision with root package name */
    private final l f7815f;

    public b() {
        l lVar = new l() { // from class: com.anythink.core.common.u.b.1
            @Override // com.anythink.core.common.d.l
            public final void a(boolean z2) {
                if (z2 || b.this.f7811b.isEmpty()) {
                    return;
                }
                try {
                    for (Map.Entry entry : b.this.f7811b.entrySet()) {
                        com.anythink.core.common.u.b.e eVar = (com.anythink.core.common.u.b.e) entry.getValue();
                        com.anythink.core.common.u.b.a aVar = (com.anythink.core.common.u.b.a) b.this.f7812c.get(entry.getKey());
                        if (eVar != null && aVar != null) {
                            aVar.d(eVar);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        };
        this.f7815f = lVar;
        com.anythink.core.common.u.b.f fVar = new com.anythink.core.common.u.b.f();
        this.f7813d = fVar;
        this.f7814e = new com.anythink.core.common.u.b.d(fVar);
        s.b().a(lVar);
    }

    private void f(bx bxVar) {
        if (bxVar instanceof n) {
            try {
                n nVar = (n) bxVar;
                String strA = a(nVar);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                com.anythink.core.common.u.b.e eVar = new com.anythink.core.common.u.b.e();
                eVar.f7827a = strA;
                eVar.f7828b = nVar;
                eVar.f7829c = bxVar.aS();
                com.anythink.core.common.u.b.a aVarA = this.f7814e.a();
                this.f7811b.put(strA, eVar);
                this.f7812c.put(strA, aVarA);
                aVarA.a(eVar);
            } catch (Throwable unused) {
            }
        }
    }

    private void g(bx bxVar) {
        if (bxVar instanceof n) {
            try {
                n nVar = (n) bxVar;
                String strA = a(nVar);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                com.anythink.core.common.u.b.e eVar = new com.anythink.core.common.u.b.e();
                eVar.f7827a = strA;
                eVar.f7828b = nVar;
                eVar.f7829c = bxVar.aS();
                com.anythink.core.common.u.b.a aVarB = this.f7814e.b();
                this.f7811b.put(strA, eVar);
                this.f7812c.put(strA, aVarB);
                aVarB.a(eVar);
            } catch (Throwable unused) {
            }
        }
    }

    public final void c(bx bxVar) {
        if (bxVar instanceof n) {
            try {
                String strA = a((n) bxVar);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                com.anythink.core.common.u.b.e eVarRemove = this.f7811b.remove(strA);
                com.anythink.core.common.u.b.a aVarRemove = this.f7812c.remove(strA);
                if (aVarRemove != null) {
                    aVarRemove.e(eVarRemove);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void d(bx bxVar) {
        if (bxVar instanceof n) {
            String strA = a((n) bxVar);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            try {
                a(strA);
            } catch (Throwable unused) {
            }
        }
    }

    public final void e(bx bxVar) {
        if (bxVar instanceof n) {
            try {
                String strA = a((n) bxVar);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                com.anythink.core.common.u.b.e eVar = this.f7811b.get(strA);
                com.anythink.core.common.u.b.a aVar = this.f7812c.get(strA);
                if (eVar == null || aVar == null) {
                    return;
                }
                aVar.c(eVar);
                a(strA);
            } catch (Throwable unused) {
            }
        }
    }

    private void a() {
        try {
            s.b().b(this.f7815f);
        } catch (Throwable unused) {
        }
    }

    public final void b(bx bxVar) {
        if (bxVar instanceof n) {
            String strA = a((n) bxVar);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            com.anythink.core.common.u.b.e eVar = this.f7811b.get(strA);
            com.anythink.core.common.u.b.a aVar = this.f7812c.get(strA);
            if (eVar == null || aVar == null) {
                return;
            }
            aVar.b(eVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.anythink.core.common.h.bx r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.anythink.core.common.h.n     // Catch: java.lang.Throwable -> Lc7
            if (r0 != 0) goto L10
            java.lang.String r0 = r7.aS()     // Catch: java.lang.Throwable -> Lc7
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto L10
            goto Lc7
        L10:
            java.lang.String r0 = r7.aS()     // Catch: java.lang.Throwable -> Lc7
            int r1 = r0.hashCode()     // Catch: java.lang.Throwable -> Lc7
            r2 = 1
            r3 = 4
            r4 = 2
            r5 = 3
            switch(r1) {
                case 48: goto L48;
                case 49: goto L3e;
                case 50: goto L34;
                case 51: goto L2a;
                case 52: goto L20;
                default: goto L1f;
            }     // Catch: java.lang.Throwable -> Lc7
        L1f:
            goto L52
        L20:
            java.lang.String r1 = "4"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto L52
            r0 = r5
            goto L53
        L2a:
            java.lang.String r1 = "3"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto L52
            r0 = r4
            goto L53
        L34:
            java.lang.String r1 = "2"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto L52
            r0 = 0
            goto L53
        L3e:
            java.lang.String r1 = "1"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto L52
            r0 = r3
            goto L53
        L48:
            java.lang.String r1 = "0"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto L52
            r0 = r2
            goto L53
        L52:
            r0 = -1
        L53:
            if (r0 == 0) goto L93
            if (r0 == r2) goto L93
            if (r0 == r4) goto L5e
            if (r0 == r5) goto L5e
            if (r0 == r3) goto L5e
            goto Lc7
        L5e:
            boolean r0 = r7 instanceof com.anythink.core.common.h.n     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto Lc7
            r0 = r7
            com.anythink.core.common.h.n r0 = (com.anythink.core.common.h.n) r0     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r1 = a(r0)     // Catch: java.lang.Throwable -> Lc7
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r2 == 0) goto L70
            goto Lc7
        L70:
            com.anythink.core.common.u.b.e r2 = new com.anythink.core.common.u.b.e     // Catch: java.lang.Throwable -> Lc7
            r2.<init>()     // Catch: java.lang.Throwable -> Lc7
            r2.f7827a = r1     // Catch: java.lang.Throwable -> Lc7
            r2.f7828b = r0     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r7 = r7.aS()     // Catch: java.lang.Throwable -> Lc7
            r2.f7829c = r7     // Catch: java.lang.Throwable -> Lc7
            com.anythink.core.common.u.b.d r7 = r6.f7814e     // Catch: java.lang.Throwable -> Lc7
            com.anythink.core.common.u.b.a r7 = r7.a()     // Catch: java.lang.Throwable -> Lc7
            java.util.Map<java.lang.String, com.anythink.core.common.u.b.e> r0 = r6.f7811b     // Catch: java.lang.Throwable -> Lc7
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lc7
            java.util.Map<java.lang.String, com.anythink.core.common.u.b.a> r0 = r6.f7812c     // Catch: java.lang.Throwable -> Lc7
            r0.put(r1, r7)     // Catch: java.lang.Throwable -> Lc7
            r7.a(r2)     // Catch: java.lang.Throwable -> Lc7
            return
        L93:
            boolean r0 = r7 instanceof com.anythink.core.common.h.n     // Catch: java.lang.Throwable -> Lc7
            if (r0 == 0) goto Lc7
            r0 = r7
            com.anythink.core.common.h.n r0 = (com.anythink.core.common.h.n) r0     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r1 = a(r0)     // Catch: java.lang.Throwable -> Lc7
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r2 == 0) goto La5
            goto Lc7
        La5:
            com.anythink.core.common.u.b.e r2 = new com.anythink.core.common.u.b.e     // Catch: java.lang.Throwable -> Lc7
            r2.<init>()     // Catch: java.lang.Throwable -> Lc7
            r2.f7827a = r1     // Catch: java.lang.Throwable -> Lc7
            r2.f7828b = r0     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r7 = r7.aS()     // Catch: java.lang.Throwable -> Lc7
            r2.f7829c = r7     // Catch: java.lang.Throwable -> Lc7
            com.anythink.core.common.u.b.d r7 = r6.f7814e     // Catch: java.lang.Throwable -> Lc7
            com.anythink.core.common.u.b.a r7 = r7.b()     // Catch: java.lang.Throwable -> Lc7
            java.util.Map<java.lang.String, com.anythink.core.common.u.b.e> r0 = r6.f7811b     // Catch: java.lang.Throwable -> Lc7
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lc7
            java.util.Map<java.lang.String, com.anythink.core.common.u.b.a> r0 = r6.f7812c     // Catch: java.lang.Throwable -> Lc7
            r0.put(r1, r7)     // Catch: java.lang.Throwable -> Lc7
            r7.a(r2)     // Catch: java.lang.Throwable -> Lc7
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.u.b.a(com.anythink.core.common.h.bx):void");
    }

    private static String a(n nVar) {
        if (nVar == null) {
            return null;
        }
        return nVar.aQ() + "_" + (!TextUtils.isEmpty(nVar.A()) ? r3.hashCode() & Integer.MAX_VALUE : 0L);
    }

    private void a(String str) {
        n nVar;
        com.anythink.core.common.u.b.e eVarRemove = this.f7811b.remove(str);
        com.anythink.core.common.u.b.a aVarRemove = this.f7812c.remove(str);
        if (eVarRemove != null && (nVar = eVarRemove.f7828b) != null) {
            a.a(nVar.A());
        }
        if (aVarRemove != null) {
            aVarRemove.a(str);
        }
    }
}
