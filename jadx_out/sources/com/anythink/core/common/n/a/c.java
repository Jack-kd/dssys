package com.anythink.core.common.n.a;

import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile c f5956a;

    /* renamed from: c, reason: collision with root package name */
    private volatile i[] f5958c;

    /* renamed from: d, reason: collision with root package name */
    private volatile k f5959d = null;

    /* renamed from: e, reason: collision with root package name */
    private i f5960e = null;

    /* renamed from: b, reason: collision with root package name */
    private final j<String, l[]> f5957b = new j<>();

    private c() {
    }

    public static c a() {
        if (f5956a == null) {
            synchronized (c.class) {
                try {
                    if (f5956a == null) {
                        f5956a = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5956a;
    }

    private synchronized void c() {
        this.f5957b.clear();
    }

    public final synchronized boolean b() {
        if (this.f5958c != null) {
            if (this.f5958c.length > 0) {
                return true;
            }
        }
        return false;
    }

    private static String[] b(l[] lVarArr) {
        if (lVarArr == null || lVarArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(lVarArr.length);
        for (l lVar : lVarArr) {
            arrayList.add(lVar.f6017g);
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.anythink.core.common.n.a.l[] c(com.anythink.core.common.n.a.h r15) throws java.net.UnknownHostException {
        /*
            r14 = this;
            com.anythink.core.common.n.a.j<java.lang.String, com.anythink.core.common.n.a.l[]> r0 = r14.f5957b
            java.lang.String r1 = r15.f5988a
            java.lang.Object r0 = r0.get(r1)
            com.anythink.core.common.n.a.l[] r0 = (com.anythink.core.common.n.a.l[]) r0
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L49
            int r3 = r0.length
            if (r3 != 0) goto L12
            goto L49
        L12:
            java.util.ArrayList r3 = new java.util.ArrayList
            int r4 = r0.length
            r3.<init>(r4)
            int r4 = r0.length
            r5 = r1
        L1a:
            if (r5 >= r4) goto L43
            r6 = r0[r5]
            if (r6 == 0) goto L40
            java.lang.String r7 = r6.f6017g
            boolean r7 = android.text.TextUtils.isEmpty(r7)
            if (r7 != 0) goto L40
            long r7 = java.lang.System.currentTimeMillis()
            r9 = 1000(0x3e8, double:4.94E-321)
            long r7 = r7 / r9
            int r9 = r6.f6019i
            r10 = -1
            if (r9 == r10) goto L3d
            long r10 = r6.f6020j
            long r12 = (long) r9
            long r10 = r10 + r12
            int r7 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r7 > 0) goto L3d
            goto L40
        L3d:
            r3.add(r6)
        L40:
            int r5 = r5 + 1
            goto L1a
        L43:
            boolean r4 = r3.isEmpty()
            if (r4 == 0) goto L4b
        L49:
            r3 = r2
            goto L57
        L4b:
            int r4 = r3.size()
            com.anythink.core.common.n.a.l[] r4 = new com.anythink.core.common.n.a.l[r4]
            java.lang.Object[] r3 = r3.toArray(r4)
            com.anythink.core.common.n.a.l[] r3 = (com.anythink.core.common.n.a.l[]) r3
        L57:
            if (r3 == 0) goto L5d
            int r4 = r3.length
            if (r4 <= 0) goto L5d
            return r3
        L5d:
            com.anythink.core.common.n.a.i[] r3 = r14.f5958c
            if (r3 == 0) goto Lbf
            com.anythink.core.common.n.a.i[] r3 = r14.f5958c
            int r3 = r3.length
            if (r3 == 0) goto Lbf
            com.anythink.core.common.n.a.i[] r3 = r14.f5958c
            int r4 = r3.length
        L69:
            if (r1 >= r4) goto L7d
            r5 = r3[r1]
            com.anythink.core.common.n.a.l[] r0 = r5.a(r15)     // Catch: java.lang.Exception -> L79
            if (r0 == 0) goto L7a
            int r6 = r0.length     // Catch: java.lang.Exception -> L79
            if (r6 <= 0) goto L7a
            r14.f5960e = r5     // Catch: java.lang.Exception -> L79
            goto L7d
        L79:
            r2 = move-exception
        L7a:
            int r1 = r1 + 1
            goto L69
        L7d:
            if (r0 == 0) goto L9a
            int r1 = r0.length
            if (r1 != 0) goto L83
            goto L9a
        L83:
            com.anythink.core.common.n.a.l[] r0 = a(r0)
            int r1 = r0.length
            if (r1 == 0) goto L92
            com.anythink.core.common.n.a.j<java.lang.String, com.anythink.core.common.n.a.l[]> r1 = r14.f5957b
            java.lang.String r15 = r15.f5988a
            r1.put(r15, r0)
            return r0
        L92:
            java.net.UnknownHostException r15 = new java.net.UnknownHostException
            java.lang.String r0 = "no A/AAAA records"
            r15.<init>(r0)
            throw r15
        L9a:
            java.net.UnknownHostException r0 = new java.net.UnknownHostException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r15 = r15.f5988a
            r1.append(r15)
            java.lang.String r15 = " "
            r1.append(r15)
            if (r2 == 0) goto Lb2
            java.lang.String r15 = r2.getMessage()
            goto Lb4
        Lb2:
            java.lang.String r15 = ""
        Lb4:
            r1.append(r15)
            java.lang.String r15 = r1.toString()
            r0.<init>(r15)
            throw r0
        Lbf:
            java.lang.IllegalArgumentException r15 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "no resolver"
            r15.<init>(r0)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.a.c.c(com.anythink.core.common.n.a.h):com.anythink.core.common.n.a.l[]");
    }

    public final synchronized void a(k kVar, i[] iVarArr) {
        if (kVar == null) {
            try {
                kVar = k.f6004j;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f5959d = kVar;
        this.f5958c = iVarArr;
    }

    private l[] b(String str) {
        return b(new h(str));
    }

    private l[] b(h hVar) throws IOException {
        if (hVar != null) {
            String str = hVar.f5988a;
            if (str != null && !str.trim().isEmpty()) {
                if (a(hVar.f5988a)) {
                    return new l[]{new l(hVar.f5988a, 1, -1, new Date().getTime(), 0, "")};
                }
                return c(hVar);
            }
            throw new IllegalArgumentException("empty domain " + hVar.f5988a);
        }
        throw new IOException("null domain");
    }

    private static l[] a(l[] lVarArr) {
        ArrayList arrayList = new ArrayList(lVarArr.length);
        for (l lVar : lVarArr) {
            if (lVar != null && (lVar.a() || lVar.b())) {
                arrayList.add(lVar);
            }
        }
        return (l[]) arrayList.toArray(new l[arrayList.size()]);
    }

    private static boolean a(String str) {
        if (str == null || str.length() < 7 || str.length() > 15 || str.contains("-")) {
            return false;
        }
        try {
            int iIndexOf = str.indexOf(46);
            if (iIndexOf != -1 && Integer.parseInt(str.substring(0, iIndexOf)) > 255) {
                return false;
            }
            int i2 = iIndexOf + 1;
            int iIndexOf2 = str.indexOf(46, i2);
            if (iIndexOf2 != -1 && Integer.parseInt(str.substring(i2, iIndexOf2)) > 255) {
                return false;
            }
            int i3 = iIndexOf2 + 1;
            int iIndexOf3 = str.indexOf(46, i3);
            if (iIndexOf3 != -1 && Integer.parseInt(str.substring(i3, iIndexOf3)) > 255 && Integer.parseInt(str.substring(iIndexOf3 + 1, str.length() - 1)) > 255) {
                if (str.charAt(str.length() - 1) != '.') {
                    return false;
                }
            }
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.anythink.core.common.n.a.m a(com.anythink.core.common.n.a.h r7) {
        /*
            r6 = this;
            monitor-enter(r6)
            com.anythink.core.common.n.a.l[] r7 = r6.b(r7)     // Catch: java.lang.Throwable -> L21
            r0 = 0
            r1 = 0
            if (r7 == 0) goto L29
            int r2 = r7.length     // Catch: java.lang.Throwable -> L21
            if (r2 != 0) goto Ld
            goto L29
        Ld:
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L21
            int r3 = r7.length     // Catch: java.lang.Throwable -> L21
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L21
            int r3 = r7.length     // Catch: java.lang.Throwable -> L21
            r4 = r0
        L15:
            if (r4 >= r3) goto L23
            r5 = r7[r4]     // Catch: java.lang.Throwable -> L21
            java.lang.String r5 = r5.f6017g     // Catch: java.lang.Throwable -> L21
            r2.add(r5)     // Catch: java.lang.Throwable -> L21
            int r4 = r4 + 1
            goto L15
        L21:
            r7 = move-exception
            goto L59
        L23:
            int r7 = r2.size()     // Catch: java.lang.Throwable -> L21
            if (r7 != 0) goto L2b
        L29:
            r7 = r1
            goto L37
        L2b:
            int r7 = r2.size()     // Catch: java.lang.Throwable -> L21
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: java.lang.Throwable -> L21
            java.lang.Object[] r7 = r2.toArray(r7)     // Catch: java.lang.Throwable -> L21
            java.lang.String[] r7 = (java.lang.String[]) r7     // Catch: java.lang.Throwable -> L21
        L37:
            if (r7 == 0) goto L57
            int r2 = r7.length     // Catch: java.lang.Throwable -> L21
            if (r2 != 0) goto L3d
            goto L57
        L3d:
            int r1 = r7.length     // Catch: java.lang.Throwable -> L21
            java.net.InetAddress[] r1 = new java.net.InetAddress[r1]     // Catch: java.lang.Throwable -> L21
        L40:
            int r2 = r7.length     // Catch: java.lang.Throwable -> L21
            if (r0 >= r2) goto L4e
            r2 = r7[r0]     // Catch: java.lang.Throwable -> L21
            java.net.InetAddress r2 = java.net.InetAddress.getByName(r2)     // Catch: java.lang.Throwable -> L21
            r1[r0] = r2     // Catch: java.lang.Throwable -> L21
            int r0 = r0 + 1
            goto L40
        L4e:
            com.anythink.core.common.n.a.m r7 = new com.anythink.core.common.n.a.m     // Catch: java.lang.Throwable -> L21
            com.anythink.core.common.n.a.i r0 = r6.f5960e     // Catch: java.lang.Throwable -> L21
            r7.<init>(r1, r0)     // Catch: java.lang.Throwable -> L21
            monitor-exit(r6)
            return r7
        L57:
            monitor-exit(r6)
            return r1
        L59:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L21
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.a.c.a(com.anythink.core.common.n.a.h):com.anythink.core.common.n.a.m");
    }

    private static l[] c(l[] lVarArr) {
        if (lVarArr == null || lVarArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(lVarArr.length);
        for (l lVar : lVarArr) {
            if (lVar != null && !TextUtils.isEmpty(lVar.f6017g)) {
                long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                int i2 = lVar.f6019i;
                if (i2 == -1 || lVar.f6020j + i2 > jCurrentTimeMillis) {
                    arrayList.add(lVar);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (l[]) arrayList.toArray(new l[arrayList.size()]);
    }
}
