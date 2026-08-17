package com.anythink.core.common.res;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class c<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<K, V> f7438a;

    /* renamed from: b, reason: collision with root package name */
    private int f7439b;

    /* renamed from: c, reason: collision with root package name */
    private int f7440c;

    /* renamed from: d, reason: collision with root package name */
    private int f7441d;

    /* renamed from: e, reason: collision with root package name */
    private int f7442e;

    /* renamed from: f, reason: collision with root package name */
    private int f7443f;

    /* renamed from: g, reason: collision with root package name */
    private int f7444g;

    /* renamed from: h, reason: collision with root package name */
    private int f7445h;

    public c(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f7440c = i2;
        this.f7438a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private static V b() {
        return null;
    }

    private int c(K k2, V v2) {
        int iA = a(k2, v2);
        if (iA >= 0) {
            return iA;
        }
        throw new IllegalStateException("Negative size: " + k2 + "=" + v2);
    }

    private synchronized int d() {
        return this.f7440c;
    }

    private synchronized int e() {
        return this.f7444g;
    }

    private synchronized int f() {
        return this.f7445h;
    }

    private synchronized int g() {
        return this.f7442e;
    }

    private synchronized int h() {
        return this.f7441d;
    }

    private synchronized int i() {
        return this.f7443f;
    }

    private synchronized Map<K, V> j() {
        return new LinkedHashMap(this.f7438a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0088, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k() {
        /*
            r6 = this;
            java.util.LinkedHashMap<K, V> r0 = r6.f7438a
            monitor-enter(r0)
        L3:
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L47
            int r1 = r6.f7439b     // Catch: java.lang.Throwable -> L15
            if (r1 < 0) goto L6a
            java.util.LinkedHashMap<K, V> r1 = r6.f7438a     // Catch: java.lang.Throwable -> L15
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L15
            if (r1 == 0) goto L18
            int r1 = r6.f7439b     // Catch: java.lang.Throwable -> L15
            if (r1 != 0) goto L6a
            goto L18
        L15:
            r1 = move-exception
            goto L89
        L18:
            int r1 = r6.f7439b     // Catch: java.lang.Throwable -> L15
            if (r1 != 0) goto L1e
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L15
            goto L40
        L1e:
            java.util.LinkedHashMap<K, V> r1 = r6.f7438a     // Catch: java.lang.Throwable -> L15
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L15
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L15
            r2 = 0
            if (r1 <= 0) goto L3c
            java.util.LinkedHashMap<K, V> r1 = r6.f7438a     // Catch: java.lang.Throwable -> L15
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L15
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L15
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L15
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L15
            goto L3d
        L3c:
            r1 = r2
        L3d:
            if (r1 != 0) goto L49
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L15
        L40:
            java.util.LinkedHashMap<K, V> r1 = r6.f7438a     // Catch: java.lang.Throwable -> L47
            r1.clear()     // Catch: java.lang.Throwable -> L47
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L47
            return
        L47:
            r1 = move-exception
            goto L8b
        L49:
            java.lang.Object r3 = r1.getKey()     // Catch: java.lang.Throwable -> L15
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L15
            java.util.LinkedHashMap<K, V> r4 = r6.f7438a     // Catch: java.lang.Throwable -> L15
            r4.remove(r3)     // Catch: java.lang.Throwable -> L15
            int r4 = r6.f7439b     // Catch: java.lang.Throwable -> L15
            int r5 = r6.c(r3, r1)     // Catch: java.lang.Throwable -> L15
            int r4 = r4 - r5
            r6.f7439b = r4     // Catch: java.lang.Throwable -> L15
            int r4 = r6.f7443f     // Catch: java.lang.Throwable -> L15
            r5 = 1
            int r4 = r4 + r5
            r6.f7443f = r4     // Catch: java.lang.Throwable -> L15
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L15
            r6.a(r5, r3, r1, r2)     // Catch: java.lang.Throwable -> L47
            goto L3
        L6a:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L15
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L15
            r2.<init>()     // Catch: java.lang.Throwable -> L15
            java.lang.Class r3 = r6.getClass()     // Catch: java.lang.Throwable -> L15
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Throwable -> L15
            r2.append(r3)     // Catch: java.lang.Throwable -> L15
            java.lang.String r3 = ".sizeOf() is reporting inconsistent results!"
            r2.append(r3)     // Catch: java.lang.Throwable -> L15
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L15
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L15
            throw r1     // Catch: java.lang.Throwable -> L15
        L89:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L47
            throw r1     // Catch: java.lang.Throwable -> L47
        L8b:
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.res.c.k():void");
    }

    public int a(K k2, V v2) {
        return 1;
    }

    public final synchronized String toString() {
        int i2;
        int i3;
        try {
            i2 = this.f7444g;
            i3 = this.f7445h + i2;
        } catch (Throwable th) {
            throw th;
        }
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f7440c), Integer.valueOf(this.f7444g), Integer.valueOf(this.f7445h), Integer.valueOf(i3 != 0 ? (i2 * 100) / i3 : 0));
    }

    public void a(boolean z2, K k2, V v2, V v3) {
    }

    public final V b(K k2, V v2) {
        V vPut;
        if (k2 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.f7441d++;
                this.f7439b += c(k2, v2);
                vPut = this.f7438a.put(k2, v2);
                if (vPut != null) {
                    this.f7439b -= c(k2, vPut);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (vPut != null) {
            a(false, k2, vPut, v2);
        }
        b(this.f7440c);
        return vPut;
    }

    private void a(int i2) {
        if (i2 > 0) {
            synchronized (this) {
                this.f7440c = i2;
            }
            b(i2);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private synchronized int c() {
        return this.f7439b;
    }

    public final V a(K k2) {
        if (k2 != null) {
            synchronized (this) {
                try {
                    V v2 = this.f7438a.get(k2);
                    if (v2 != null) {
                        this.f7444g++;
                        return v2;
                    }
                    this.f7445h++;
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new NullPointerException("key == null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0063, code lost:
    
        r5.f7439b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0096, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results! --> size: " + r5.f7439b + ", map.isEmpty(): " + r5.f7438a.isEmpty());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(int r6) {
        /*
            r5 = this;
        L0:
            monitor-enter(r5)
            int r0 = r5.f7439b     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            if (r0 < 0) goto L62
            java.util.LinkedHashMap<K, V> r0 = r5.f7438a     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            if (r0 == 0) goto L18
            int r0 = r5.f7439b     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            if (r0 != 0) goto L62
            goto L18
        L12:
            r6 = move-exception
            goto L9c
        L15:
            r6 = move-exception
            goto L97
        L18:
            int r0 = r5.f7439b     // Catch: java.lang.Throwable -> L12
            if (r0 > r6) goto L1e
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            return
        L1e:
            java.util.LinkedHashMap<K, V> r0 = r5.f7438a     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L12
            r1 = 0
            if (r0 <= 0) goto L3c
            java.util.LinkedHashMap<K, V> r0 = r5.f7438a     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            goto L3d
        L3c:
            r0 = r1
        L3d:
            if (r0 != 0) goto L41
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            return
        L41:
            java.lang.Object r2 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, V> r3 = r5.f7438a     // Catch: java.lang.Throwable -> L12
            r3.remove(r2)     // Catch: java.lang.Throwable -> L12
            int r3 = r5.f7439b     // Catch: java.lang.Throwable -> L12
            int r4 = r5.c(r2, r0)     // Catch: java.lang.Throwable -> L12
            int r3 = r3 - r4
            r5.f7439b = r3     // Catch: java.lang.Throwable -> L12
            int r3 = r5.f7443f     // Catch: java.lang.Throwable -> L12
            r4 = 1
            int r3 = r3 + r4
            r5.f7443f = r3     // Catch: java.lang.Throwable -> L12
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            r5.a(r4, r2, r0, r1)
            goto L0
        L62:
            r6 = 0
            r5.f7439b = r6     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.<init>()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.Class r1 = r5.getClass()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results! --> size: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            int r1 = r5.f7439b     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.String r1 = ", map.isEmpty(): "
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.util.LinkedHashMap<K, V> r1 = r5.f7438a     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            throw r6     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
        L97:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L12
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            return
        L9c:
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.res.c.b(int):void");
    }

    public final void a() {
        b(-1);
    }

    private V b(K k2) {
        V vRemove;
        if (k2 != null) {
            synchronized (this) {
                try {
                    vRemove = this.f7438a.remove(k2);
                    if (vRemove != null) {
                        this.f7439b -= c(k2, vRemove);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (vRemove != null) {
                a(false, k2, vRemove, null);
            }
            return vRemove;
        }
        throw new NullPointerException("key == null");
    }
}
