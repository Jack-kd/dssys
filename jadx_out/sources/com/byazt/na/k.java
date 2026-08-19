package com.byazt.na;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2, 42})
/* loaded from: classes3.dex */
public class k<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public int f23450a;
    public int eb;
    public final LinkedHashMap<K, V> hp;

    /* renamed from: j, reason: collision with root package name */
    public int f23451j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23452l;

    /* renamed from: s, reason: collision with root package name */
    public int f23453s;

    /* renamed from: w, reason: collision with root package name */
    public int f23454w;

    public k(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.jx = i2;
        this.hp = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int jx(K k2, V v2) {
        int iL = l(k2, v2);
        if (iL >= 0) {
            return iL;
        }
        throw new IllegalStateException("Negative size: " + k2 + "=" + v2);
    }

    public void hp(boolean z2, K k2, V v2, V v3) {
    }

    public int l(K k2, V v2) {
        return 1;
    }

    public final synchronized String toString() {
        int i2;
        int i3;
        try {
            i2 = this.eb;
            i3 = this.f23453s + i2;
        } catch (Throwable th) {
            throw th;
        }
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.jx), Integer.valueOf(this.eb), Integer.valueOf(this.f23453s), Integer.valueOf(i3 != 0 ? (i2 * 100) / i3 : 0));
    }

    public void hp(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this) {
            this.jx = i2;
        }
        l(i2);
    }

    public V l(K k2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.f23452l     // Catch: java.lang.Throwable -> L12
            if (r0 < 0) goto L55
            java.util.LinkedHashMap<K, V> r0 = r4.hp     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            int r0 = r4.f23452l     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L55
            goto L14
        L12:
            r5 = move-exception
            goto L74
        L14:
            int r0 = r4.f23452l     // Catch: java.lang.Throwable -> L12
            if (r0 <= r5) goto L53
            java.util.LinkedHashMap<K, V> r0 = r4.hp     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L21
            goto L53
        L21:
            java.util.LinkedHashMap<K, V> r0 = r4.hp     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, V> r2 = r4.hp     // Catch: java.lang.Throwable -> L12
            r2.remove(r1)     // Catch: java.lang.Throwable -> L12
            int r2 = r4.f23452l     // Catch: java.lang.Throwable -> L12
            int r3 = r4.jx(r1, r0)     // Catch: java.lang.Throwable -> L12
            int r2 = r2 - r3
            r4.f23452l = r2     // Catch: java.lang.Throwable -> L12
            int r2 = r4.f23450a     // Catch: java.lang.Throwable -> L12
            r3 = 1
            int r2 = r2 + r3
            r4.f23450a = r2     // Catch: java.lang.Throwable -> L12
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L12
            r2 = 0
            r4.hp(r3, r1, r0, r2)
            goto L0
        L53:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L12
            return
        L55:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L12
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            r0.<init>()     // Catch: java.lang.Throwable -> L12
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L12
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L12
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L12
            throw r5     // Catch: java.lang.Throwable -> L12
        L74:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L12
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.na.k.l(int):void");
    }

    public final V hp(K k2) {
        V v2;
        if (k2 != null) {
            synchronized (this) {
                try {
                    V v3 = this.hp.get(k2);
                    if (v3 != null) {
                        this.eb++;
                        return v3;
                    }
                    this.f23453s++;
                    V vL = l((k<K, V>) k2);
                    if (vL == null) {
                        return null;
                    }
                    synchronized (this) {
                        try {
                            this.f23454w++;
                            v2 = (V) this.hp.put(k2, vL);
                            if (v2 != null) {
                                this.hp.put(k2, v2);
                            } else {
                                this.f23452l += jx(k2, vL);
                            }
                        } finally {
                        }
                    }
                    if (v2 != null) {
                        hp(false, k2, vL, v2);
                        return v2;
                    }
                    l(this.jx);
                    return vL;
                } finally {
                }
            }
        }
        throw new NullPointerException("key == null");
    }

    public final V hp(K k2, V v2) {
        V vPut;
        if (k2 != null && v2 != null) {
            synchronized (this) {
                try {
                    this.f23451j++;
                    this.f23452l += jx(k2, v2);
                    vPut = this.hp.put(k2, v2);
                    if (vPut != null) {
                        this.f23452l -= jx(k2, vPut);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (vPut != null) {
                hp(false, k2, vPut, v2);
            }
            l(this.jx);
            return vPut;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public final synchronized Map<K, V> hp() {
        return new LinkedHashMap(this.hp);
    }

    public final synchronized boolean hp(K k2, int i2) {
        if (k2 == null || i2 <= 0) {
            return false;
        }
        if (!this.hp.containsKey(k2)) {
            return false;
        }
        int size = this.hp.size();
        if (size <= i2) {
            return true;
        }
        Iterator<K> it = this.hp.keySet().iterator();
        int i3 = 0;
        while (it.hasNext() && !it.next().equals(k2)) {
            i3++;
        }
        return i3 >= size - i2;
    }
}
