package com.anythink.core.common.n.b.a.b;

import com.anythink.core.common.n.b.C1115a;
import com.anythink.core.common.n.b.a.b.i;
import com.anythink.core.common.n.b.ah;
import com.anythink.core.common.n.b.r;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.b.z;
import java.io.IOException;
import java.net.Socket;
import java.util.List;

/* loaded from: classes2.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f6143a = true;

    /* renamed from: b, reason: collision with root package name */
    private final j f6144b;

    /* renamed from: c, reason: collision with root package name */
    private final C1115a f6145c;

    /* renamed from: d, reason: collision with root package name */
    private final f f6146d;

    /* renamed from: e, reason: collision with root package name */
    private final com.anythink.core.common.n.b.e f6147e;

    /* renamed from: f, reason: collision with root package name */
    private final r f6148f;

    /* renamed from: g, reason: collision with root package name */
    private i.a f6149g;

    /* renamed from: h, reason: collision with root package name */
    private final i f6150h;

    /* renamed from: i, reason: collision with root package name */
    private e f6151i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f6152j;

    /* renamed from: k, reason: collision with root package name */
    private ah f6153k;

    public d(j jVar, f fVar, C1115a c1115a, com.anythink.core.common.n.b.e eVar, r rVar) {
        this.f6144b = jVar;
        this.f6146d = fVar;
        this.f6145c = c1115a;
        this.f6147e = eVar;
        this.f6148f = rVar;
        this.f6150h = new i(c1115a, fVar.f6177a, eVar, rVar);
    }

    private boolean e() {
        e eVar = this.f6144b.f6198a;
        return eVar != null && eVar.f6159c == 0 && com.anythink.core.common.n.b.a.c.a(eVar.a().a().a(), this.f6145c.a());
    }

    public final com.anythink.core.common.n.b.a.c.c a(z zVar, w.a aVar, boolean z2) {
        try {
            return a(aVar.d(), aVar.e(), aVar.f(), zVar.b(), zVar.p(), z2).a(zVar, aVar);
        } catch (h e2) {
            b();
            throw e2;
        } catch (IOException e3) {
            b();
            throw new h(e3);
        }
    }

    public final void b() {
        if (!f6143a && Thread.holdsLock(this.f6146d)) {
            throw new AssertionError();
        }
        synchronized (this.f6146d) {
            this.f6152j = true;
        }
    }

    public final boolean c() {
        boolean z2;
        synchronized (this.f6146d) {
            z2 = this.f6152j;
        }
        return z2;
    }

    public final boolean d() {
        synchronized (this.f6146d) {
            try {
                boolean z2 = true;
                if (this.f6153k != null) {
                    return true;
                }
                if (e()) {
                    this.f6153k = this.f6144b.f6198a.a();
                    return true;
                }
                i.a aVar = this.f6149g;
                if ((aVar == null || !aVar.a()) && !this.f6150h.a()) {
                    z2 = false;
                }
                return z2;
            } finally {
            }
        }
    }

    private e a(int i2, int i3, int i4, int i5, boolean z2, boolean z3) throws Throwable {
        while (true) {
            e eVarA = a(i2, i3, i4, i5, z2);
            boolean z4 = z2;
            int i6 = i5;
            int i7 = i4;
            int i8 = i3;
            int i9 = i2;
            synchronized (this.f6146d) {
                if (eVarA.f6160d == 0 && !eVarA.g()) {
                    return eVarA;
                }
                if (eVarA.a(z3)) {
                    return eVarA;
                }
                eVarA.e();
                i2 = i9;
                i3 = i8;
                i4 = i7;
                i5 = i6;
                z2 = z4;
            }
        }
    }

    private e a(int i2, int i3, int i4, int i5, boolean z2) throws Throwable {
        Socket socketB;
        Socket socketE;
        e eVar;
        boolean z3;
        ah ahVarB;
        boolean z4;
        List<ah> listC;
        e eVar2;
        i.a aVar;
        synchronized (this.f6146d) {
            try {
                if (!this.f6144b.j()) {
                    this.f6152j = false;
                    j jVar = this.f6144b;
                    e eVar3 = jVar.f6198a;
                    socketB = null;
                    socketE = (eVar3 == null || !eVar3.f6158b) ? null : jVar.e();
                    j jVar2 = this.f6144b;
                    eVar = jVar2.f6198a;
                    if (eVar == null) {
                        eVar = null;
                    }
                    if (eVar != null) {
                        z3 = false;
                        ahVarB = null;
                    } else if (this.f6146d.a(this.f6145c, jVar2, null, false)) {
                        eVar = this.f6144b.f6198a;
                        ahVarB = null;
                        z3 = true;
                    } else {
                        ahVarB = this.f6153k;
                        if (ahVarB != null) {
                            this.f6153k = null;
                        } else {
                            if (e()) {
                                ahVarB = this.f6144b.f6198a.a();
                            }
                            z3 = false;
                            ahVarB = null;
                        }
                        z3 = false;
                    }
                } else {
                    throw new IOException("Canceled");
                }
            } finally {
            }
        }
        com.anythink.core.common.n.b.a.c.a(socketE);
        if (eVar != null) {
            return eVar;
        }
        if (ahVarB != null || ((aVar = this.f6149g) != null && aVar.a())) {
            z4 = false;
        } else {
            this.f6149g = this.f6150h.b();
            z4 = true;
        }
        synchronized (this.f6146d) {
            try {
                if (this.f6144b.j()) {
                    throw new IOException("Canceled");
                }
                if (z4) {
                    listC = this.f6149g.c();
                    if (this.f6146d.a(this.f6145c, this.f6144b, listC, false)) {
                        eVar = this.f6144b.f6198a;
                        z3 = true;
                    }
                } else {
                    listC = null;
                }
                if (!z3) {
                    if (ahVarB == null) {
                        ahVarB = this.f6149g.b();
                    }
                    eVar = new e(this.f6146d, ahVarB);
                    this.f6151i = eVar;
                }
                eVar2 = eVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z3) {
            return eVar2;
        }
        eVar2.a(i2, i3, i4, i5, z2);
        this.f6146d.f6177a.b(eVar2.a());
        synchronized (this.f6146d) {
            try {
                this.f6151i = null;
                if (this.f6146d.a(this.f6145c, this.f6144b, listC, true)) {
                    eVar2.f6158b = true;
                    socketB = eVar2.b();
                    eVar2 = this.f6144b.f6198a;
                    this.f6153k = ahVarB;
                } else {
                    this.f6146d.a(eVar2);
                    this.f6144b.a(eVar2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.anythink.core.common.n.b.a.c.a(socketB);
        return eVar2;
    }

    public final e a() {
        if (f6143a || Thread.holdsLock(this.f6146d)) {
            return this.f6151i;
        }
        throw new AssertionError();
    }
}
