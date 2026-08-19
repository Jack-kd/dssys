package com.smartdigimkt.c0;

import android.text.TextUtils;
import com.smartdigimkt.c5.i;
import com.smartdigimkt.k3.m;
import com.smartdigimkt.q4.o;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    public static volatile d f39621d;

    /* renamed from: a, reason: collision with root package name */
    public ConcurrentHashMap f39622a;

    /* renamed from: b, reason: collision with root package name */
    public List f39623b;

    /* renamed from: c, reason: collision with root package name */
    public final List f39624c = Collections.synchronizedList(new ArrayList(8));

    public static d a() {
        if (f39621d == null) {
            synchronized (d.class) {
                try {
                    if (f39621d == null) {
                        f39621d = new d();
                    }
                } finally {
                }
            }
        }
        return f39621d;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:11:0x002a, B:13:0x002e, B:16:0x0038, B:18:0x003c, B:10:0x0027, B:3:0x0001, B:5:0x0005, B:7:0x0009), top: B:23:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:11:0x002a, B:13:0x002e, B:16:0x0038, B:18:0x003c, B:10:0x0027, B:3:0x0001, B:5:0x0005, B:7:0x0009), top: B:23:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void b() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.concurrent.ConcurrentHashMap r0 = r2.f39622a     // Catch: java.lang.Throwable -> L26
            if (r0 != 0) goto L2a
            java.util.List r0 = r2.f39623b     // Catch: java.lang.Throwable -> L26
            if (r0 != 0) goto L2a
            com.smartdigimkt.sdk.core.SDKContext r0 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> L26
            android.content.Context r0 = r0.d()     // Catch: java.lang.Throwable -> L26
            com.smartdigimkt.k3.d r0 = com.smartdigimkt.k3.d.a(r0)     // Catch: java.lang.Throwable -> L26
            com.smartdigimkt.k3.m r0 = com.smartdigimkt.k3.m.a(r0)     // Catch: java.lang.Throwable -> L26
            com.smartdigimkt.k3.l r0 = r0.c()     // Catch: java.lang.Throwable -> L26
            java.util.concurrent.ConcurrentHashMap r1 = r0.f41381b     // Catch: java.lang.Throwable -> L26
            r2.f39622a = r1     // Catch: java.lang.Throwable -> L26
            java.util.List r0 = r0.f41380a     // Catch: java.lang.Throwable -> L26
            r2.f39623b = r0     // Catch: java.lang.Throwable -> L26
            goto L2a
        L26:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L36
        L2a:
            java.util.concurrent.ConcurrentHashMap r0 = r2.f39622a     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L38
            java.util.concurrent.ConcurrentHashMap r0 = new java.util.concurrent.ConcurrentHashMap     // Catch: java.lang.Throwable -> L36
            r0.<init>()     // Catch: java.lang.Throwable -> L36
            r2.f39622a = r0     // Catch: java.lang.Throwable -> L36
            goto L38
        L36:
            r0 = move-exception
            goto L49
        L38:
            java.util.List r0 = r2.f39623b     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L47
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L36
            r0.<init>()     // Catch: java.lang.Throwable -> L36
            java.util.List r0 = java.util.Collections.synchronizedList(r0)     // Catch: java.lang.Throwable -> L36
            r2.f39623b = r0     // Catch: java.lang.Throwable -> L36
        L47:
            monitor-exit(r2)
            return
        L49:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L36
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c0.d.b():void");
    }

    public final synchronized void a(com.smartdigimkt.i0.d dVar, boolean z2) {
        if (System.currentTimeMillis() > dVar.f40647f) {
            this.f39624c.remove(dVar.f40642a);
            if (z2) {
                a(dVar);
            }
            return;
        }
        if (this.f39624c.contains(dVar.f40642a)) {
            return;
        }
        this.f39624c.add(dVar.f40642a);
        if (z2) {
            int i2 = dVar.f40648g + 1;
            dVar.f40648g = i2;
            if (i2 >= 5) {
                a(dVar);
            } else {
                b(dVar);
            }
        } else {
            int i3 = dVar.f40648g + 1;
            dVar.f40648g = i3;
            if (i3 >= 5) {
                this.f39624c.remove(dVar.f40642a);
                return;
            }
        }
        new o(dVar).a(0, (com.smartdigimkt.l4.b) new c(this, dVar, z2));
    }

    public final synchronized void b(com.smartdigimkt.i0.d dVar) {
        try {
            if (TextUtils.isEmpty(dVar.f40642a) && this.f39622a != null && this.f39623b != null) {
                dVar.f40646e = System.currentTimeMillis();
                String strB = i.b(dVar.f40645d + dVar.f40646e);
                dVar.f40642a = strB;
                this.f39622a.put(strB, dVar);
                this.f39623b.add(dVar);
            }
            m.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d())).b(dVar);
            List list = this.f39623b;
            if (list != null && list.size() > 500) {
                com.smartdigimkt.i0.d dVar2 = (com.smartdigimkt.i0.d) this.f39623b.get(0);
                this.f39624c.remove(dVar.f40642a);
                a(dVar2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(com.smartdigimkt.i0.d dVar) {
        try {
            dVar.getClass();
            ConcurrentHashMap concurrentHashMap = this.f39622a;
            if (concurrentHashMap != null) {
                concurrentHashMap.remove(dVar.f40642a);
            }
            List list = this.f39623b;
            if (list != null) {
                list.remove(dVar);
            }
            m.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d())).a(dVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
