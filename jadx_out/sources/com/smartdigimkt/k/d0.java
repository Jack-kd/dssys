package com.smartdigimkt.k;

import android.text.TextUtils;
import android.util.Pair;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class d0 extends b {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f41134g = 0;

    /* renamed from: c, reason: collision with root package name */
    public final z f41135c;

    /* renamed from: d, reason: collision with root package name */
    public a f41136d;

    /* renamed from: e, reason: collision with root package name */
    public long f41137e;

    /* renamed from: f, reason: collision with root package name */
    public final o f41138f;

    public d0(o oVar, r rVar) {
        ConcurrentHashMap concurrentHashMap;
        super(rVar);
        this.f41138f = oVar;
        if (oVar != null) {
            String str = this.f41124b;
            Pair pair = (TextUtils.isEmpty(str) || (concurrentHashMap = oVar.f41164d) == null) ? null : (Pair) concurrentHashMap.get(str);
            if (pair != null) {
                rVar.f41185h = ((Integer) pair.first).intValue();
                rVar.f41203z = ((Boolean) pair.second).booleanValue();
            }
        }
        z zVar = new z();
        zVar.f41229a = rVar.f41179b;
        zVar.f41230b = rVar.f41193p ? com.smartdigimkt.c5.h.p() : "";
        zVar.f41234f = rVar.f41185h;
        zVar.f41232d = rVar.b();
        zVar.f41233e = rVar.f41201x;
        zVar.f41236h = 20971520;
        zVar.f41231c = rVar.a();
        zVar.f41238j = new c0(this);
        if (com.smartdigimkt.l.c.f41394a == null) {
            com.smartdigimkt.l.c.f41394a = new ThreadPoolExecutor(0, 6, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new com.smartdigimkt.l.a(), new com.smartdigimkt.l.b());
        }
        zVar.f41239k = com.smartdigimkt.l.c.f41394a;
        zVar.f41235g = 60000L;
        this.f41135c = zVar;
    }

    public final void a(com.smartdigimkt.o.a aVar) {
        this.f41136d = aVar;
        z zVar = this.f41135c;
        if (TextUtils.isEmpty(zVar.f41229a) || TextUtils.isEmpty(zVar.f41231c) || zVar.f41239k == null) {
            zVar.a(3, "url, filePath or executorService can not be empty. url: " + zVar.f41229a + " filePath: " + zVar.f41231c + " executorService: " + zVar.f41239k);
            return;
        }
        int i2 = zVar.f41237i;
        if (i2 == 2 || i2 == 3) {
            return;
        }
        zVar.f41237i = 2;
        c0 c0Var = zVar.f41238j;
        if (c0Var != null) {
            c0Var.a(2);
        }
        zVar.f41240l = new y(zVar);
        zVar.f41239k.execute(new s(zVar));
    }
}
