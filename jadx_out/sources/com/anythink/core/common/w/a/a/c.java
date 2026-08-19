package com.anythink.core.common.w.a.a;

import com.anythink.core.common.h.ak;
import com.anythink.core.common.w.a.a;
import java.util.List;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8385a = "c";

    /* renamed from: b, reason: collision with root package name */
    private static final long f8386b = 3600000;

    /* renamed from: c, reason: collision with root package name */
    private static final long f8387c = 30000;

    /* renamed from: d, reason: collision with root package name */
    private volatile List<ak> f8388d;

    /* JADX WARN: Removed duplicated region for block: B:32:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.anythink.core.common.h.am r6, com.anythink.core.common.h.al r7, com.anythink.core.common.h.aj r8) {
        /*
            r5 = this;
            java.util.List<com.anythink.core.common.h.ak> r0 = r5.f8388d
            if (r0 != 0) goto L17
            monitor-enter(r5)
            java.util.List<com.anythink.core.common.h.ak> r0 = r5.f8388d     // Catch: java.lang.Throwable -> L11
            if (r0 != 0) goto L13
            java.util.concurrent.CopyOnWriteArrayList r0 = new java.util.concurrent.CopyOnWriteArrayList     // Catch: java.lang.Throwable -> L11
            r0.<init>()     // Catch: java.lang.Throwable -> L11
            r5.f8388d = r0     // Catch: java.lang.Throwable -> L11
            goto L13
        L11:
            r6 = move-exception
            goto L15
        L13:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L11
            goto L17
        L15:
            monitor-exit(r5)
            throw r6
        L17:
            java.lang.String r0 = r6.a()
            int r1 = r6.d()
            java.util.List<com.anythink.core.common.h.ak> r2 = r5.f8388d
            com.anythink.core.common.h.ak r2 = a(r0, r2)
            int r3 = com.anythink.core.common.w.a.a.b.f8372b
            if (r1 == r3) goto L6d
            int r3 = com.anythink.core.common.w.a.a.b.f8373c
            if (r1 != r3) goto L76
            java.lang.String r1 = r6.e()
            java.lang.String r7 = com.anythink.core.common.w.a.d.a.a(r1, r7)
            r6.a(r7)
            boolean r6 = android.text.TextUtils.isEmpty(r7)
            if (r6 != 0) goto L6d
            java.util.List<com.anythink.core.common.h.ak> r6 = r5.f8388d
            r3 = 30000(0x7530, double:1.4822E-319)
            if (r2 == 0) goto L5e
            long r6 = r2.b()
            r0 = 0
            int r0 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r0 <= 0) goto L52
            r0 = 2
            long r3 = r6 * r0
        L52:
            r6 = 3600000(0x36ee80, double:1.7786363E-317)
            int r0 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r0 < 0) goto L5a
            r3 = r6
        L5a:
            r2.a(r3)
            goto L76
        L5e:
            int r7 = com.anythink.core.common.w.a.a.C0086a.f8368b
            com.anythink.core.common.h.ak r7 = com.anythink.core.common.h.ak.a(r0, r7)
            r7.a(r3)
            if (r6 == 0) goto L76
            r6.add(r7)
            goto L76
        L6d:
            java.util.List<com.anythink.core.common.h.ak> r6 = r5.f8388d
            if (r2 == 0) goto L76
            if (r6 == 0) goto L76
            r6.remove(r2)
        L76:
            java.util.List<com.anythink.core.common.h.ak> r6 = r5.f8388d
            r8.b(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.w.a.a.c.a(com.anythink.core.common.h.am, com.anythink.core.common.h.al, com.anythink.core.common.h.aj):void");
    }

    public final void a() {
        if (this.f8388d != null) {
            this.f8388d.clear();
        }
    }

    private static ak a(String str, List<ak> list) {
        if (list != null && !list.isEmpty()) {
            for (ak akVar : list) {
                if (akVar.c().equals(str)) {
                    return akVar;
                }
            }
        }
        return null;
    }

    private static void a(String str, ak akVar, List<ak> list) {
        if (akVar != null) {
            long jB = akVar.b();
            long j2 = jB > 0 ? 2 * jB : 30000L;
            if (j2 >= 3600000) {
                j2 = 3600000;
            }
            akVar.a(j2);
            return;
        }
        ak akVarA = ak.a(str, a.C0086a.f8368b);
        akVarA.a(30000L);
        if (list != null) {
            list.add(akVarA);
        }
    }

    private static void a(ak akVar, List<ak> list) {
        if (akVar == null || list == null) {
            return;
        }
        list.remove(akVar);
    }
}
