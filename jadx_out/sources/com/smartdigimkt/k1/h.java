package com.smartdigimkt.k1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.t2.k;
import com.smartdigimkt.z.b0;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class h {

    /* renamed from: c, reason: collision with root package name */
    public static volatile h f41276c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f41277a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f41278b = new ConcurrentHashMap(3);

    public h(Context context) {
        this.f41277a = context.getApplicationContext();
        new ConcurrentHashMap(2);
    }

    public static h a(Context context) {
        if (f41276c == null) {
            synchronized (h.class) {
                try {
                    if (f41276c == null) {
                        f41276c = new h(context);
                    }
                } finally {
                }
            }
        }
        return f41276c;
    }

    public final void a(com.smartdigimkt.l3.a aVar, com.smartdigimkt.o3.b bVar, com.smartdigimkt.j1.g gVar, com.smartdigimkt.j1.e eVar) {
        if (this.f41278b.contains(aVar.f41627a + aVar.f41635i)) {
            if (((Boolean) this.f41278b.get(aVar.f41627a + aVar.f41635i)).booleanValue()) {
                eVar.a(null, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4590g, com.anythink.core.common.inner.b.b.f4606w));
                return;
            }
        }
        this.f41278b.put(aVar.f41627a + aVar.f41635i, Boolean.TRUE);
        com.smartdigimkt.b4.e eVarA = com.smartdigimkt.b4.e.a();
        a aVar2 = new a(this, aVar, bVar, gVar, eVar);
        eVarA.getClass();
        String name = Thread.currentThread().getName();
        eVarA.f39591a.getClass();
        if (TextUtils.equals(name, com.smartdigimkt.b4.b.a(6))) {
            aVar2.run();
            return;
        }
        com.smartdigimkt.b4.d dVar = new com.smartdigimkt.b4.d(aVar2);
        Long.valueOf(System.currentTimeMillis() / 1000).intValue();
        eVarA.a(dVar, 6);
    }

    public final void a(com.smartdigimkt.m3.b bVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.j1.g gVar, g gVar2) {
        com.smartdigimkt.o1.a.a(aVar, bVar, gVar);
        if (TextUtils.isEmpty(bVar.f41777v0) && bVar.f41835z == 2) {
            k kVar = new k(this.f41277a, bVar, aVar);
            e eVar = new e(this, aVar, gVar2, bVar);
            String str = bVar.f41796Q;
            kVar.f44269e = eVar;
            kVar.f44271g = System.currentTimeMillis();
            kVar.f44273i = true;
            com.smartdigimkt.t2.f fVar = new com.smartdigimkt.t2.f(aVar, false, new com.smartdigimkt.t2.h(kVar));
            kVar.f44270f = fVar;
            fVar.a(str);
            return;
        }
        if (!TextUtils.isEmpty(bVar.f41777v0)) {
            if (gVar2 != null) {
                gVar2.a(bVar, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4601r, com.anythink.core.common.inner.b.b.f4580W));
            }
        } else {
            b0 b0VarA = b0.a();
            String str2 = aVar.f41627a;
            f fVar2 = new f(this, aVar, gVar2, bVar);
            b0VarA.getClass();
            b0.a(str2, false, bVar, aVar, fVar2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064 A[Catch: all -> 0x005b, PHI: r2
      0x0064: PHI (r2v3 android.database.Cursor) = (r2v2 android.database.Cursor), (r2v5 android.database.Cursor) binds: [B:21:0x0062, B:18:0x005e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:13:0x0056, B:22:0x0064), top: B:42:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.m3.b a(com.smartdigimkt.l3.a r13) {
        /*
            r12 = this;
            com.smartdigimkt.f3.f r0 = com.smartdigimkt.f3.f.a()
            android.content.Context r1 = r12.f41277a
            java.lang.String r2 = r13.f41635i
            com.smartdigimkt.k3.q r3 = r0.f40221a
            if (r3 != 0) goto L1a
            android.content.Context r1 = r1.getApplicationContext()
            com.smartdigimkt.k3.d r1 = com.smartdigimkt.k3.d.a(r1)
            com.smartdigimkt.k3.q r1 = com.smartdigimkt.k3.q.a(r1)
            r0.f40221a = r1
        L1a:
            com.smartdigimkt.k3.q r1 = r0.f40221a
            monitor-enter(r1)
            r0 = 0
            r3 = 0
            android.database.sqlite.SQLiteDatabase r4 = r1.a()     // Catch: java.lang.Throwable -> L61
            java.lang.String r5 = "offer_data_cache"
            java.lang.String r6 = "offer_data"
            java.lang.String r7 = "out_date_timestamp"
            java.lang.String[] r6 = new java.lang.String[]{r6, r7}     // Catch: java.lang.Throwable -> L61
            java.lang.String r7 = "bid_id=?"
            java.lang.String[] r8 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L61
            r10 = 0
            r11 = 0
            r9 = 0
            android.database.Cursor r2 = r4.query(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L5e
            int r4 = r2.getCount()     // Catch: java.lang.Throwable -> L62
            if (r4 <= 0) goto L5e
            r2.moveToNext()     // Catch: java.lang.Throwable -> L62
            java.lang.String r4 = r2.getString(r0)     // Catch: java.lang.Throwable -> L62
            r5 = 1
            long r5 = r2.getLong(r5)     // Catch: java.lang.Throwable -> L62
            com.smartdigimkt.f3.v r7 = new com.smartdigimkt.f3.v     // Catch: java.lang.Throwable -> L62
            r7.<init>(r4, r5)     // Catch: java.lang.Throwable -> L62
            r2.close()     // Catch: java.lang.Throwable -> L62
            r2.close()     // Catch: java.lang.Throwable -> L5b
            monitor-exit(r1)
            goto L6c
        L5b:
            r0 = move-exception
            r13 = r0
            goto L68
        L5e:
            if (r2 == 0) goto L6a
            goto L64
        L61:
            r2 = r3
        L62:
            if (r2 == 0) goto L6a
        L64:
            r2.close()     // Catch: java.lang.Throwable -> L5b
            goto L6a
        L68:
            monitor-exit(r1)
            throw r13
        L6a:
            monitor-exit(r1)
            r7 = r3
        L6c:
            if (r7 == 0) goto L91
            java.lang.String r1 = r7.f40256a
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L77
            goto L91
        L77:
            java.lang.String r1 = r13.f41635i     // Catch: java.lang.Throwable -> L8c
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L8c
            java.lang.String r4 = r7.f40256a     // Catch: java.lang.Throwable -> L8c
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r4 = r7.f40256a     // Catch: java.lang.Throwable -> L8c
            int r5 = r13.f41636j     // Catch: java.lang.Throwable -> L8c
            com.smartdigimkt.m3.b r3 = com.smartdigimkt.f3.l.a(r1, r2, r4, r5, r0)     // Catch: java.lang.Throwable -> L8c
            long r0 = r7.f40257b     // Catch: java.lang.Throwable -> L8c
            r3.f42058s0 = r0     // Catch: java.lang.Throwable -> L8c
        L8c:
            if (r3 == 0) goto L91
            r12.a(r3, r13)
        L91:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k1.h.a(com.smartdigimkt.l3.a):com.smartdigimkt.m3.b");
    }

    public final void a(com.smartdigimkt.m3.b bVar, com.smartdigimkt.l3.a aVar) {
        if (aVar != null) {
            bVar.f41833x = aVar.f41632f;
            bVar.f41802W = aVar.f41634h;
            bVar.f41803X = aVar.f41633g;
            com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
            if (bVarE != null && bVarE.a()) {
                bVarE.fillDataFetchStatus(this.f41277a, bVar, aVar);
            } else {
                bVar.f41787H = 0;
            }
            String str = bVar.f41783D;
            if (!TextUtils.isEmpty(str)) {
                bVar.f41783D = com.smartdigimkt.c1.b.a(str);
            }
            if (aVar.f41636j == 67) {
                com.smartdigimkt.g3.c.a(this.f41277a).a(bVar.f41806a, bVar.f42058s0);
                com.smartdigimkt.g3.b.a(this.f41277a).a(bVar.f41808b, bVar.f42058s0);
            }
            com.smartdigimkt.t1.h.a().getClass();
            String str2 = com.smartdigimkt.g0.e.f40304g;
            com.smartdigimkt.g0.d.f40303a.getClass();
        }
    }
}
