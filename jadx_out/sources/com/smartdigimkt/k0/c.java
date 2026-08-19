package com.smartdigimkt.k0;

import android.os.SystemClock;
import android.view.Surface;
import com.smartdigimkt.a1.o;
import com.smartdigimkt.b1.t;
import com.smartdigimkt.j0.c0;
import com.smartdigimkt.j0.h;
import com.smartdigimkt.j0.h0;
import com.smartdigimkt.j0.k;
import com.smartdigimkt.j0.m0;
import com.smartdigimkt.j0.n0;
import com.smartdigimkt.j0.s;
import com.smartdigimkt.l0.m;
import com.smartdigimkt.r0.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes5.dex */
public final class c implements c0, g, m, t {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArraySet f41249a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.a1.b f41250b;

    /* renamed from: c, reason: collision with root package name */
    public final m0 f41251c;

    /* renamed from: d, reason: collision with root package name */
    public final a f41252d;

    /* renamed from: e, reason: collision with root package name */
    public final h f41253e;

    public c(k kVar) {
        o oVar = com.smartdigimkt.a1.b.f39264a;
        this.f41253e = kVar;
        this.f41250b = oVar;
        this.f41249a = new CopyOnWriteArraySet();
        this.f41252d = new a();
        this.f41251c = new m0();
    }

    @Override // com.smartdigimkt.r0.g
    public final void a(com.smartdigimkt.r0.c cVar) {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void b(com.smartdigimkt.m0.c cVar) {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void c(com.smartdigimkt.m0.c cVar) {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void d() {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void e() {
        a aVar = this.f41252d;
        if (!aVar.f41241a.isEmpty()) {
            aVar.f41243c = (b) aVar.f41241a.get(0);
        }
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    public final void f() {
        a aVar = this.f41252d;
        a((aVar.f41241a.isEmpty() || aVar.f41245e.c() || aVar.f41246f) ? null : (b) aVar.f41241a.get(0));
    }

    public final void g() {
        a(this.f41252d.f41244d);
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(String str, long j2, long j3) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void b(int i2) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void c() {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void d(com.smartdigimkt.m0.c cVar) {
        a(this.f41252d.f41243c);
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(s sVar) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void b(String str, long j2, long j3) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(int i2, long j2, long j3) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void b(s sVar) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void a(int i2, int i3, int i4, float f2) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    public final void b(int i2, com.smartdigimkt.w0.m mVar) {
        a aVar = this.f41252d;
        aVar.getClass();
        b bVar = new b(i2, mVar);
        aVar.f41241a.remove(bVar);
        if (bVar.equals(aVar.f41244d)) {
            aVar.f41244d = aVar.f41241a.isEmpty() ? null : (b) aVar.f41241a.get(0);
        }
        a(i2, mVar);
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            com.smartdigimkt.a.a.a(it.next());
            throw null;
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void a(Surface surface) {
        g();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a(n0 n0Var) {
        a aVar = this.f41252d;
        for (int i2 = 0; i2 < aVar.f41241a.size(); i2++) {
            ArrayList arrayList = aVar.f41241a;
            arrayList.set(i2, aVar.a((b) arrayList.get(i2), n0Var));
        }
        b bVar = aVar.f41244d;
        if (bVar != null) {
            aVar.f41244d = aVar.a(bVar, n0Var);
        }
        aVar.f41245e = n0Var;
        if (!aVar.f41241a.isEmpty()) {
            aVar.f41243c = (b) aVar.f41241a.get(0);
        }
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void b() {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a(int i2) {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a(com.smartdigimkt.j0.g gVar) {
        f();
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a() {
        a aVar = this.f41252d;
        if (aVar.f41246f) {
            aVar.f41246f = false;
            if (!aVar.f41241a.isEmpty()) {
                aVar.f41243c = (b) aVar.f41241a.get(0);
            }
            f();
            Iterator it = this.f41249a.iterator();
            if (it.hasNext()) {
                throw h0.a(it);
            }
        }
    }

    public final d a(int i2, com.smartdigimkt.w0.m mVar) {
        this.f41253e.getClass();
        ((o) this.f41250b).getClass();
        SystemClock.elapsedRealtime();
        n0 n0VarE = this.f41253e.e();
        if (i2 == this.f41253e.c()) {
            if (mVar != null && mVar.a()) {
                if (this.f41253e.g() == mVar.f44848b && this.f41253e.a() == mVar.f44849c) {
                    this.f41253e.f();
                }
            } else {
                this.f41253e.b();
            }
        } else if (i2 < n0VarE.b() && (mVar == null || !mVar.a())) {
            long j2 = n0VarE.a(i2, this.f41251c, 0L).f40944e;
            int i3 = com.smartdigimkt.j0.b.f40855a;
        }
        this.f41253e.d();
        this.f41253e.b();
        this.f41253e.f();
        return new d();
    }

    public final d a(b bVar) {
        if (bVar == null) {
            h hVar = this.f41253e;
            hVar.getClass();
            int iC = hVar.c();
            a aVar = this.f41252d;
            n0 n0Var = aVar.f41245e;
            com.smartdigimkt.w0.m mVar = null;
            if (n0Var != null) {
                int iA = n0Var.a();
                com.smartdigimkt.w0.m mVar2 = null;
                int i2 = 0;
                while (true) {
                    if (i2 >= aVar.f41241a.size()) {
                        mVar = mVar2;
                        break;
                    }
                    b bVar2 = (b) aVar.f41241a.get(i2);
                    int i3 = bVar2.f41248b.f44847a;
                    if (i3 < iA && aVar.f41245e.a(i3, aVar.f41242b, false).f40933b == iC) {
                        if (mVar2 != null) {
                            break;
                        }
                        mVar2 = bVar2.f41248b;
                    }
                    i2++;
                }
            }
            return a(iC, mVar);
        }
        return a(bVar.f41247a, bVar.f41248b);
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(com.smartdigimkt.m0.c cVar) {
        a(this.f41252d.f41243c);
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void a(int i2, long j2) {
        a(this.f41252d.f41243c);
        Iterator it = this.f41249a.iterator();
        if (it.hasNext()) {
            throw h0.a(it);
        }
    }
}
