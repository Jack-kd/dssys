package com.fl.saas;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: com.fl.saas.v0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1225v0 {

    /* renamed from: a, reason: collision with root package name */
    private ExecutorService f30671a;

    /* renamed from: b, reason: collision with root package name */
    private Map f30672b;

    /* renamed from: com.fl.saas.v0$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1225v0 f30673a = new C1225v0();
    }

    /* renamed from: com.fl.saas.v0$c */
    public class c implements Callable {

        /* renamed from: a, reason: collision with root package name */
        String f30674a;

        /* renamed from: b, reason: collision with root package name */
        int f30675b;

        /* renamed from: c, reason: collision with root package name */
        boolean f30676c = false;

        /* renamed from: d, reason: collision with root package name */
        private final Object f30677d = new Object();

        /* renamed from: e, reason: collision with root package name */
        X f30678e;

        public c(String str, int i2) {
            this.f30675b = Integer.MAX_VALUE;
            this.f30674a = str;
            if (i2 > 0) {
                this.f30675b = i2;
            }
        }

        private boolean b() {
            return this.f30676c;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            return Boolean.valueOf(a(this.f30674a));
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0044, code lost:
        
            r6.f30678e.close();
            r0 = r6.f30679f.a(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x004f, code lost:
        
            r7 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0050, code lost:
        
            com.fl.saas.adx.util.LogcatUtil.debug(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0053, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:?, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean a(java.lang.String r7) {
            /*
                r6 = this;
                java.lang.Object r0 = r6.f30677d
                monitor-enter(r0)
                boolean r1 = r6.b()     // Catch: java.lang.Throwable -> Lc
                r2 = 0
                if (r1 == 0) goto Lf
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc
                return r2
            Lc:
                r7 = move-exception
                goto L82
            Lf:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc
                com.fl.saas.X r0 = new com.fl.saas.X
                r0.<init>(r7)
                r6.f30678e = r0
                r3 = 0
                r0.a(r3)     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
                r0 = 8192(0x2000, float:1.148E-41)
                byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
                r1 = r2
            L21:
                com.fl.saas.X r3 = r6.f30678e     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
                int r3 = r3.a(r0)     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
                r4 = -1
                if (r3 == r4) goto L44
                java.lang.Object r4 = r6.f30677d     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
                monitor-enter(r4)     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
                boolean r5 = r6.b()     // Catch: java.lang.Throwable -> L35
                if (r5 == 0) goto L37
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L35
                goto L44
            L35:
                r0 = move-exception
                goto L42
            L37:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L35
                int r1 = r1 + r3
                int r3 = r6.f30675b     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
                if (r1 < r3) goto L21
                goto L44
            L3e:
                r0 = move-exception
                goto L72
            L40:
                r0 = move-exception
                goto L55
            L42:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L35
                throw r0     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L40
            L44:
                com.fl.saas.X r0 = r6.f30678e     // Catch: com.fl.saas.C1237z0 -> L4f
                r0.close()     // Catch: com.fl.saas.C1237z0 -> L4f
                com.fl.saas.v0 r0 = com.fl.saas.C1225v0.this     // Catch: com.fl.saas.C1237z0 -> L4f
                com.fl.saas.C1225v0.a(r0, r7)     // Catch: com.fl.saas.C1237z0 -> L4f
                goto L53
            L4f:
                r7 = move-exception
                com.fl.saas.adx.util.LogcatUtil.debug(r7)
            L53:
                r7 = 1
                return r7
            L55:
                com.fl.saas.adx.util.LogcatUtil.debug(r0)     // Catch: java.lang.Throwable -> L3e
                com.fl.saas.X r0 = r6.f30678e     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L5e
                r0.close()     // Catch: java.lang.Throwable -> L3e com.fl.saas.C1237z0 -> L5e
                goto L62
            L5e:
                r0 = move-exception
                com.fl.saas.adx.util.LogcatUtil.debug(r0)     // Catch: java.lang.Throwable -> L3e
            L62:
                com.fl.saas.X r0 = r6.f30678e     // Catch: com.fl.saas.C1237z0 -> L6d
                r0.close()     // Catch: com.fl.saas.C1237z0 -> L6d
                com.fl.saas.v0 r0 = com.fl.saas.C1225v0.this     // Catch: com.fl.saas.C1237z0 -> L6d
                com.fl.saas.C1225v0.a(r0, r7)     // Catch: com.fl.saas.C1237z0 -> L6d
                goto L71
            L6d:
                r7 = move-exception
                com.fl.saas.adx.util.LogcatUtil.debug(r7)
            L71:
                return r2
            L72:
                com.fl.saas.X r1 = r6.f30678e     // Catch: com.fl.saas.C1237z0 -> L7d
                r1.close()     // Catch: com.fl.saas.C1237z0 -> L7d
                com.fl.saas.v0 r1 = com.fl.saas.C1225v0.this     // Catch: com.fl.saas.C1237z0 -> L7d
                com.fl.saas.C1225v0.a(r1, r7)     // Catch: com.fl.saas.C1237z0 -> L7d
                goto L81
            L7d:
                r7 = move-exception
                com.fl.saas.adx.util.LogcatUtil.debug(r7)
            L81:
                throw r0
            L82:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.C1225v0.c.a(java.lang.String):boolean");
        }
    }

    private C1225v0() {
        this.f30671a = Executors.newFixedThreadPool(5);
        this.f30672b = new HashMap();
    }

    public static C1225v0 a() {
        return b.f30673a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        if (((c) this.f30672b.get(str)) == null) {
            return false;
        }
        this.f30672b.remove(str);
        return true;
    }

    public synchronized boolean a(String str, int i2) {
        if (this.f30672b.containsKey(str)) {
            return false;
        }
        c cVar = new c(str, i2);
        this.f30672b.put(str, cVar);
        this.f30671a.submit(cVar);
        return true;
    }
}
