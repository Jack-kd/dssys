package com.anythink.core.common;

import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.bf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7482a = "s";

    /* renamed from: b, reason: collision with root package name */
    private static volatile s f7483b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, bf> f7484c;

    /* renamed from: d, reason: collision with root package name */
    private List<bf> f7485d;

    /* renamed from: f, reason: collision with root package name */
    private final int f7487f = 5;

    /* renamed from: g, reason: collision with root package name */
    private final int f7488g = 500;

    /* renamed from: e, reason: collision with root package name */
    private List<String> f7486e = Collections.synchronizedList(new ArrayList(8));

    private s() {
    }

    private static boolean a(int i2) {
        boolean z2;
        switch (i2) {
            case com.anythink.core.common.m.q.f5846d /* -1003 */:
            case -1002:
            case -1001:
            case -1000:
                z2 = true;
                break;
            default:
                z2 = false;
                break;
        }
        if (z2 || ((i2 < -99 || i2 >= 200) && i2 < 400)) {
            return z2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:11:0x002a, B:13:0x002e, B:16:0x0038, B:18:0x003c, B:10:0x0027, B:3:0x0001, B:5:0x0005, B:7:0x0009), top: B:23:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:11:0x002a, B:13:0x002e, B:16:0x0038, B:18:0x003c, B:10:0x0027, B:3:0x0001, B:5:0x0005, B:7:0x0009), top: B:23:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void c() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.Map<java.lang.String, com.anythink.core.common.h.bf> r0 = r2.f7484c     // Catch: java.lang.Throwable -> L26
            if (r0 != 0) goto L2a
            java.util.List<com.anythink.core.common.h.bf> r0 = r2.f7485d     // Catch: java.lang.Throwable -> L26
            if (r0 != 0) goto L2a
            com.anythink.core.common.d.s r0 = com.anythink.core.common.d.s.b()     // Catch: java.lang.Throwable -> L26
            android.content.Context r0 = r0.g()     // Catch: java.lang.Throwable -> L26
            com.anythink.core.common.f.e r0 = com.anythink.core.common.f.e.a(r0)     // Catch: java.lang.Throwable -> L26
            com.anythink.core.common.f.n r0 = com.anythink.core.common.f.n.a(r0)     // Catch: java.lang.Throwable -> L26
            com.anythink.core.common.f.n$a r0 = r0.a()     // Catch: java.lang.Throwable -> L26
            java.util.Map<java.lang.String, com.anythink.core.common.h.bf> r1 = r0.f3351b     // Catch: java.lang.Throwable -> L26
            r2.f7484c = r1     // Catch: java.lang.Throwable -> L26
            java.util.List<com.anythink.core.common.h.bf> r0 = r0.f3350a     // Catch: java.lang.Throwable -> L26
            r2.f7485d = r0     // Catch: java.lang.Throwable -> L26
            goto L2a
        L26:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L36
        L2a:
            java.util.Map<java.lang.String, com.anythink.core.common.h.bf> r0 = r2.f7484c     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L38
            java.util.concurrent.ConcurrentHashMap r0 = new java.util.concurrent.ConcurrentHashMap     // Catch: java.lang.Throwable -> L36
            r0.<init>()     // Catch: java.lang.Throwable -> L36
            r2.f7484c = r0     // Catch: java.lang.Throwable -> L36
            goto L38
        L36:
            r0 = move-exception
            goto L49
        L38:
            java.util.List<com.anythink.core.common.h.bf> r0 = r2.f7485d     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L47
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L36
            r0.<init>()     // Catch: java.lang.Throwable -> L36
            java.util.List r0 = java.util.Collections.synchronizedList(r0)     // Catch: java.lang.Throwable -> L36
            r2.f7485d = r0     // Catch: java.lang.Throwable -> L36
        L47:
            monitor-exit(r2)
            return
        L49:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L36
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.s.c():void");
    }

    public final synchronized void b() {
        try {
            c();
            List listSynchronizedList = this.f7485d != null ? Collections.synchronizedList(new ArrayList(this.f7485d)) : null;
            if (listSynchronizedList != null && listSynchronizedList.size() > 0) {
                Iterator it = listSynchronizedList.iterator();
                while (it.hasNext()) {
                    a((bf) it.next(), true);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static s a() {
        if (f7483b == null) {
            synchronized (s.class) {
                try {
                    if (f7483b == null) {
                        f7483b = new s();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7483b;
    }

    private synchronized void a(int i2, String str, String str2, long j2) {
        bf bfVar = new bf();
        bfVar.f3906b = i2;
        bfVar.f3908d = str;
        bfVar.f3907c = str2;
        bfVar.f3910f = j2;
        a(bfVar, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(bf bfVar) {
        try {
            if (TextUtils.isEmpty(bfVar.f3905a) && this.f7484c != null && this.f7485d != null) {
                bfVar.f3909e = System.currentTimeMillis();
                String strA = com.anythink.core.common.v.n.a(bfVar.f3908d + bfVar.f3909e);
                bfVar.f3905a = strA;
                this.f7484c.put(strA, bfVar);
                this.f7485d.add(bfVar);
            }
            com.anythink.core.common.f.n.a(com.anythink.core.common.f.e.a(com.anythink.core.common.d.s.b().g())).a(bfVar);
            List<bf> list = this.f7485d;
            if (list != null && list.size() > 500) {
                bf bfVar2 = this.f7485d.get(0);
                this.f7486e.remove(bfVar.f3905a);
                a(bfVar2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void a(final bf bfVar, final boolean z2) {
        if (System.currentTimeMillis() > bfVar.f3910f) {
            this.f7486e.remove(bfVar.f3905a);
            if (z2) {
                a(bfVar);
            }
            return;
        }
        if (this.f7486e.contains(bfVar.f3905a)) {
            return;
        }
        this.f7486e.add(bfVar.f3905a);
        if (z2) {
            int i2 = bfVar.f3911g + 1;
            bfVar.f3911g = i2;
            if (i2 >= 5) {
                a(bfVar);
            } else {
                b(bfVar);
            }
        } else {
            int i3 = bfVar.f3911g + 1;
            bfVar.f3911g = i3;
            if (i3 >= 5) {
                this.f7486e.remove(bfVar.f3905a);
                return;
            }
        }
        new com.anythink.core.common.m.v(bfVar).a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.core.common.s.1
            @Override // com.anythink.core.common.m.s
            public final void onLoadCanceled(int i4) {
                synchronized (s.this) {
                    s.this.f7486e.remove(bfVar.f3905a);
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i4, String str, AdError adError) {
                synchronized (s.this) {
                    try {
                        s.this.f7486e.remove(bfVar.f3905a);
                        if (!z2) {
                            s.this.b(bfVar);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i4, Object obj) {
                synchronized (s.this) {
                    try {
                        s.this.f7486e.remove(bfVar.f3905a);
                        if (z2) {
                            s.this.a(bfVar);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadStart(int i4) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(bf bfVar) {
        try {
            Map<String, bf> map = this.f7484c;
            if (map != null) {
                map.remove(bfVar.f3905a);
            }
            List<bf> list = this.f7485d;
            if (list != null) {
                list.remove(bfVar);
            }
            com.anythink.core.common.f.n.a(com.anythink.core.common.f.e.a(com.anythink.core.common.d.s.b().g())).b(bfVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
