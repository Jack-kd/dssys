package com.byazt.jn;

import androidx.core.view.PointerIconCompat;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_VERTICAL_TEXT, 30})
/* loaded from: classes.dex */
public class jx<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public int f21615a;
    public int eb;
    public final LinkedHashMap<K, SoftReference<V>> hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21616j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f21617l;

    /* renamed from: s, reason: collision with root package name */
    public int f21618s;

    /* renamed from: w, reason: collision with root package name */
    public int f21619w;

    public jx(int i2) {
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

    public final V hp(K k2) {
        V v2;
        if (k2 == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                SoftReference<V> softReference = this.hp.get(k2);
                if (softReference != null) {
                    v2 = softReference.get();
                    if (v2 != null) {
                        this.eb++;
                        return v2;
                    }
                    this.hp.remove(k2);
                } else {
                    v2 = null;
                }
                this.f21618s++;
                V vL = l(k2);
                if (vL == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.f21619w++;
                        SoftReference<V> softReferencePut = this.hp.put(k2, new SoftReference<>(vL));
                        if (softReferencePut != null) {
                            v2 = softReferencePut.get();
                        }
                        if (v2 != null) {
                            this.hp.put(k2, softReferencePut);
                        } else {
                            this.f21617l += jx(k2, vL);
                        }
                    } finally {
                    }
                }
                if (v2 != null) {
                    return v2;
                }
                hp(this.jx);
                return vL;
            } finally {
            }
        }
    }

    public int l(K k2, V v2) {
        return 1;
    }

    public final synchronized String toString() {
        int i2;
        int i3;
        try {
            i2 = this.eb;
            i3 = this.f21618s + i2;
        } catch (Throwable th) {
            throw th;
        }
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.jx), Integer.valueOf(this.eb), Integer.valueOf(this.f21618s), Integer.valueOf(i3 != 0 ? (i2 * 100) / i3 : 0));
    }

    public V l(K k2) {
        return null;
    }

    public final V hp(K k2, V v2) {
        V v3;
        if (k2 != null && v2 != null) {
            synchronized (this) {
                try {
                    this.f21616j++;
                    this.f21617l += jx(k2, v2);
                    SoftReference<V> softReferencePut = this.hp.put(k2, new SoftReference<>(v2));
                    if (softReferencePut != null) {
                        v3 = softReferencePut.get();
                        if (v3 != null) {
                            this.f21617l -= jx(k2, v3);
                        }
                    } else {
                        v3 = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            hp(this.jx);
            return v3;
        }
        throw new NullPointerException("key == null || value == null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
    
        com.byazt.ymw.u.l("LruCache", "oom maybe occured, clear cache. size= " + r3.f21617l + ", maxSize: " + r4);
        r3.f21617l = 0;
        r3.hp.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007a, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.f21617l     // Catch: java.lang.Throwable -> L12
            if (r0 < 0) goto L54
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r3.hp     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            int r0 = r3.f21617l     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            goto L54
        L12:
            r4 = move-exception
            goto L7b
        L14:
            int r0 = r3.f21617l     // Catch: java.lang.Throwable -> L12
            if (r0 > r4) goto L1a
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L1a:
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r3.hp     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L2e
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L2e:
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            java.lang.ref.SoftReference r0 = (java.lang.ref.SoftReference) r0     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r2 = r3.hp     // Catch: java.lang.Throwable -> L12
            r2.remove(r1)     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L4c
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L12
            int r2 = r3.f21617l     // Catch: java.lang.Throwable -> L12
            int r0 = r3.jx(r1, r0)     // Catch: java.lang.Throwable -> L12
            int r2 = r2 - r0
            r3.f21617l = r2     // Catch: java.lang.Throwable -> L12
        L4c:
            int r0 = r3.f21615a     // Catch: java.lang.Throwable -> L12
            int r0 = r0 + 1
            r3.f21615a = r0     // Catch: java.lang.Throwable -> L12
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            goto L0
        L54:
            java.lang.String r0 = "LruCache"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            java.lang.String r2 = "oom maybe occured, clear cache. size= "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L12
            int r2 = r3.f21617l     // Catch: java.lang.Throwable -> L12
            r1.append(r2)     // Catch: java.lang.Throwable -> L12
            java.lang.String r2 = ", maxSize: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L12
            r1.append(r4)     // Catch: java.lang.Throwable -> L12
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L12
            com.byazt.ymw.u.l(r0, r4)     // Catch: java.lang.Throwable -> L12
            r4 = 0
            r3.f21617l = r4     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r4 = r3.hp     // Catch: java.lang.Throwable -> L12
            r4.clear()     // Catch: java.lang.Throwable -> L12
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L7b:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jn.jx.hp(int):void");
    }

    public final void hp() {
        hp(-1);
    }
}
