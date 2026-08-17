package com.smartdigimkt.t3;

import android.graphics.Bitmap;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f44304a;

    /* renamed from: b, reason: collision with root package name */
    public int f44305b;

    /* renamed from: c, reason: collision with root package name */
    public final int f44306c;

    /* renamed from: d, reason: collision with root package name */
    public int f44307d;

    /* renamed from: e, reason: collision with root package name */
    public int f44308e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m f44309f;

    public i(m mVar, int i2) {
        this.f44309f = mVar;
        if (i2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f44306c = i2;
        this.f44304a = new LinkedHashMap(0, 0.75f, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
    
        r5.f44305b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
    
        throw new java.lang.IllegalStateException(com.smartdigimkt.t3.i.class.getName() + ".sizeOf() is reporting inconsistent results! --> size: " + r5.f44305b + ", map.isEmpty(): " + r5.f44304a.isEmpty());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r6) {
        /*
            r5 = this;
        L0:
            monitor-enter(r5)
            int r0 = r5.f44305b     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            if (r0 < 0) goto L5c
            java.util.LinkedHashMap r0 = r5.f44304a     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            if (r0 == 0) goto L18
            int r0 = r5.f44305b     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            if (r0 != 0) goto L5c
            goto L18
        L12:
            r6 = move-exception
            goto L94
        L15:
            r6 = move-exception
            goto L8f
        L18:
            int r0 = r5.f44305b     // Catch: java.lang.Throwable -> L12
            if (r0 > r6) goto L1e
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            return
        L1e:
            java.util.LinkedHashMap r0 = r5.f44304a     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L12
            r1 = 0
            if (r0 <= 0) goto L3c
            java.util.LinkedHashMap r0 = r5.f44304a     // Catch: java.lang.Throwable -> L12
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
            java.util.LinkedHashMap r3 = r5.f44304a     // Catch: java.lang.Throwable -> L12
            r3.remove(r2)     // Catch: java.lang.Throwable -> L12
            int r3 = r5.f44305b     // Catch: java.lang.Throwable -> L12
            int r4 = r5.a(r2, r0)     // Catch: java.lang.Throwable -> L12
            int r3 = r3 - r4
            r5.f44305b = r3     // Catch: java.lang.Throwable -> L12
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            r5.a(r2, r0, r1)
            goto L0
        L5c:
            r6 = 0
            r5.f44305b = r6     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.<init>()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.Class<com.smartdigimkt.t3.i> r1 = com.smartdigimkt.t3.i.class
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results! --> size: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            int r1 = r5.f44305b     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.String r1 = ", map.isEmpty(): "
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.util.LinkedHashMap r1 = r5.f44304a     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r0.append(r1)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
            throw r6     // Catch: java.lang.Throwable -> L12 java.lang.Exception -> L15
        L8f:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L12
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            return
        L94:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.t3.i.a(int):void");
    }

    public final synchronized String toString() {
        int i2;
        int i3;
        try {
            i2 = this.f44307d;
            i3 = this.f44308e + i2;
        } catch (Throwable th) {
            throw th;
        }
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f44306c), Integer.valueOf(this.f44307d), Integer.valueOf(this.f44308e), Integer.valueOf(i3 != 0 ? (i2 * 100) / i3 : 0));
    }

    public final void a(Object obj, Object obj2, com.smartdigimkt.v3.a aVar) {
        String str = (String) obj;
        com.smartdigimkt.v3.a aVar2 = (com.smartdigimkt.v3.a) obj2;
        if (aVar2 != null) {
            try {
            } catch (Exception unused) {
                return;
            }
        }
        Map map = this.f44309f.f44320a;
        if (map != null) {
            map.remove(str);
        }
    }

    public final int a(Object obj, Object obj2) {
        int iIntValue;
        String str = (String) obj;
        com.smartdigimkt.v3.a aVar = (com.smartdigimkt.v3.a) obj2;
        Bitmap bitmap = aVar != null ? (Bitmap) aVar.f44707a.get() : null;
        m mVar = this.f44309f;
        if (mVar.f44320a == null) {
            mVar.f44320a = new HashMap(8);
        }
        if (bitmap != null) {
            iIntValue = bitmap.getHeight() * bitmap.getRowBytes();
            this.f44309f.f44320a.put(str, Integer.valueOf(iIntValue));
        } else {
            Integer num = (Integer) this.f44309f.f44320a.get(str);
            iIntValue = num != null ? num.intValue() : 0;
        }
        if (iIntValue >= 0) {
            return iIntValue;
        }
        throw new IllegalStateException("Negative size: " + obj + "=" + obj2);
    }
}
