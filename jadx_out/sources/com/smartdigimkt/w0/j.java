package com.smartdigimkt.w0;

import android.net.Uri;
import com.smartdigimkt.j0.n0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public final class j {

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.j0.h f44831c;

    /* renamed from: d, reason: collision with root package name */
    public n0 f44832d;

    /* renamed from: e, reason: collision with root package name */
    public Object f44833e;

    /* renamed from: f, reason: collision with root package name */
    public final Uri f44834f;

    /* renamed from: g, reason: collision with root package name */
    public final com.smartdigimkt.z0.h f44835g;

    /* renamed from: h, reason: collision with root package name */
    public final com.smartdigimkt.o0.f f44836h;

    /* renamed from: n, reason: collision with root package name */
    public boolean f44842n;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f44829a = new ArrayList(1);

    /* renamed from: b, reason: collision with root package name */
    public final x f44830b = new x(new CopyOnWriteArrayList(), null);

    /* renamed from: i, reason: collision with root package name */
    public final int f44837i = -1;

    /* renamed from: j, reason: collision with root package name */
    public final String f44838j = null;

    /* renamed from: k, reason: collision with root package name */
    public final int f44839k = 1048576;

    /* renamed from: m, reason: collision with root package name */
    public long f44841m = -9223372036854775807L;

    /* renamed from: l, reason: collision with root package name */
    public final Object f44840l = null;

    public j(Uri uri, com.smartdigimkt.z0.h hVar, com.smartdigimkt.o0.f fVar) {
        this.f44834f = uri;
        this.f44835g = hVar;
        this.f44836h = fVar;
    }

    public final void a(com.smartdigimkt.k0.c cVar) {
        x xVar = this.f44830b;
        Iterator it = xVar.f44871c.iterator();
        while (it.hasNext()) {
            w wVar = (w) it.next();
            if (wVar.f44868b == cVar) {
                xVar.f44871c.remove(wVar);
            }
        }
    }

    public final void a(l lVar) {
        long jA;
        i iVar = (i) lVar;
        if (iVar.f44819t) {
            for (e0 e0Var : iVar.f44816q) {
                b0 b0Var = e0Var.f44759c;
                synchronized (b0Var) {
                    int i2 = b0Var.f44741i;
                    if (i2 == 0) {
                        jA = -1;
                    } else {
                        jA = b0Var.a(i2);
                    }
                }
                e0Var.a(jA);
            }
        }
        com.smartdigimkt.z0.a0 a0Var = iVar.f44808i;
        com.smartdigimkt.z0.w wVar = a0Var.f45352b;
        if (wVar != null) {
            wVar.a(true);
        }
        a0Var.f45351a.execute(new com.smartdigimkt.z0.y(iVar));
        a0Var.f45351a.shutdown();
        iVar.f44813n.removeCallbacksAndMessages(null);
        iVar.f44814o = null;
        iVar.f44799L = true;
        x xVar = iVar.f44803d;
        if (xVar.f44870b != null) {
            Iterator it = xVar.f44871c.iterator();
            while (it.hasNext()) {
                w wVar2 = (w) it.next();
                x.a(wVar2.f44867a, new p(xVar, wVar2.f44868b));
            }
            return;
        }
        throw new IllegalStateException();
    }
}
