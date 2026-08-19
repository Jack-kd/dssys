package com.anythink.core.common.n.b.a.a;

import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.n.b.a.a.c;
import com.anythink.core.common.n.b.a.c.h;
import com.anythink.core.common.n.b.ab;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.ag;
import com.anythink.core.common.n.b.u;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.c.n;
import com.anythink.core.common.n.c.v;
import com.anythink.core.common.n.c.x;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class a implements w {

    /* renamed from: a, reason: collision with root package name */
    final f f6043a;

    /* renamed from: com.anythink.core.common.n.b.a.a.a$1, reason: invalid class name */
    public class AnonymousClass1 implements com.anythink.core.common.n.c.w {

        /* renamed from: a, reason: collision with root package name */
        boolean f6044a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.n.c.e f6045b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ b f6046c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.n.c.d f6047d;

        public AnonymousClass1(com.anythink.core.common.n.c.e eVar, b bVar, com.anythink.core.common.n.c.d dVar) {
            this.f6045b = eVar;
            this.f6046c = bVar;
            this.f6047d = dVar;
        }

        @Override // com.anythink.core.common.n.c.w
        public final x a() {
            return this.f6045b.a();
        }

        @Override // com.anythink.core.common.n.c.w
        public final long a_(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            try {
                long jA_ = this.f6045b.a_(cVar, j2);
                if (jA_ != -1) {
                    cVar.a(this.f6047d.c(), cVar.b() - jA_, jA_);
                    this.f6047d.A();
                    return jA_;
                }
                if (!this.f6044a) {
                    this.f6044a = true;
                    this.f6047d.close();
                }
                return -1L;
            } catch (IOException e2) {
                if (this.f6044a) {
                    throw e2;
                }
                this.f6044a = true;
                this.f6046c.a();
                throw e2;
            }
        }

        @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f6044a && !com.anythink.core.common.n.b.a.c.a(this, TimeUnit.MILLISECONDS)) {
                this.f6044a = true;
                this.f6046c.a();
            }
            this.f6045b.close();
        }
    }

    public a(f fVar) {
        this.f6043a = fVar;
    }

    private static boolean b(String str) {
        return com.sigmob.sdk.downloader.core.c.f37366e.equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || AbstractC1114b.f5589g.equalsIgnoreCase(str);
    }

    @Override // com.anythink.core.common.n.b.w
    public final af a(w.a aVar) throws IOException {
        v vVarB;
        f fVar = this.f6043a;
        af afVarA = fVar != null ? fVar.a(aVar.a()) : null;
        c cVarA = new c.a(System.currentTimeMillis(), aVar.a(), afVarA).a();
        ad adVar = cVarA.f6049a;
        af afVar = cVarA.f6050b;
        f fVar2 = this.f6043a;
        if (fVar2 != null) {
            fVar2.a(cVarA);
        }
        if (afVarA != null && afVar == null) {
            com.anythink.core.common.n.b.a.c.a(afVarA.g());
        }
        if (adVar == null && afVar == null) {
            return new af.a().a(aVar.a()).a(ab.HTTP_1_1).a(com.sigmob.sdk.archives.tar.e.f35439E).a("Unsatisfiable Request (only-if-cached)").a(com.anythink.core.common.n.b.a.c.f6218d).a(-1L).b(System.currentTimeMillis()).a();
        }
        if (adVar == null) {
            return afVar.h().b(a(afVar)).a();
        }
        try {
            af afVarA2 = aVar.a(adVar);
            if (afVarA2 == null && afVarA != null) {
            }
            if (afVar != null) {
                if (afVarA2.c() == 304) {
                    af.a aVarH = afVar.h();
                    u uVarF = afVar.f();
                    u uVarF2 = afVarA2.f();
                    u.a aVar2 = new u.a();
                    int iA = uVarF.a();
                    for (int i2 = 0; i2 < iA; i2++) {
                        String strA = uVarF.a(i2);
                        String strB = uVarF.b(i2);
                        if ((!"Warning".equalsIgnoreCase(strA) || !strB.startsWith("1")) && (b(strA) || !a(strA) || uVarF2.a(strA) == null)) {
                            com.anythink.core.common.n.b.a.a.f6042a.a(aVar2, strA, strB);
                        }
                    }
                    int iA2 = uVarF2.a();
                    for (int i3 = 0; i3 < iA2; i3++) {
                        String strA2 = uVarF2.a(i3);
                        if (!b(strA2) && a(strA2)) {
                            com.anythink.core.common.n.b.a.a.f6042a.a(aVar2, strA2, uVarF2.b(i3));
                        }
                    }
                    af afVarA3 = aVarH.a(aVar2.a()).a(afVarA2.l()).b(afVarA2.m()).b(a(afVar)).a(a(afVarA2)).a();
                    afVarA2.g().close();
                    this.f6043a.a();
                    this.f6043a.a(afVar, afVarA3);
                    return afVarA3;
                }
                com.anythink.core.common.n.b.a.c.a(afVar.g());
            }
            af afVarA4 = afVarA2.h().b(a(afVar)).a(a(afVarA2)).a();
            if (this.f6043a != null) {
                if (com.anythink.core.common.n.b.a.c.e.d(afVarA4) && c.a(afVarA4, adVar)) {
                    b bVarA = this.f6043a.a(afVarA4);
                    if (bVarA != null && (vVarB = bVarA.b()) != null) {
                        return afVarA4.h().a(new h(afVarA4.a(AbstractC1114b.f5589g), afVarA4.g().b(), n.a(new AnonymousClass1(afVarA4.g().c(), bVarA, n.a(vVarB))))).a();
                    }
                } else if (com.anythink.core.common.n.b.a.c.f.a(adVar.b())) {
                    try {
                        this.f6043a.b(adVar);
                    } catch (IOException unused) {
                    }
                }
            }
            return afVarA4;
        } finally {
            if (afVarA != null) {
                com.anythink.core.common.n.b.a.c.a(afVarA.g());
            }
        }
    }

    private static af a(af afVar) {
        return (afVar == null || afVar.g() == null) ? afVar : afVar.h().a((ag) null).a();
    }

    private af a(b bVar, af afVar) {
        v vVarB;
        if (bVar == null || (vVarB = bVar.b()) == null) {
            return afVar;
        }
        return afVar.h().a(new h(afVar.a(AbstractC1114b.f5589g), afVar.g().b(), n.a(new AnonymousClass1(afVar.g().c(), bVar, n.a(vVarB))))).a();
    }

    private static u a(u uVar, u uVar2) {
        u.a aVar = new u.a();
        int iA = uVar.a();
        for (int i2 = 0; i2 < iA; i2++) {
            String strA = uVar.a(i2);
            String strB = uVar.b(i2);
            if ((!"Warning".equalsIgnoreCase(strA) || !strB.startsWith("1")) && (b(strA) || !a(strA) || uVar2.a(strA) == null)) {
                com.anythink.core.common.n.b.a.a.f6042a.a(aVar, strA, strB);
            }
        }
        int iA2 = uVar2.a();
        for (int i3 = 0; i3 < iA2; i3++) {
            String strA2 = uVar2.a(i3);
            if (!b(strA2) && a(strA2)) {
                com.anythink.core.common.n.b.a.a.f6042a.a(aVar, strA2, uVar2.b(i3));
            }
        }
        return aVar.a();
    }

    private static boolean a(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || com.sigmob.sdk.downloader.core.c.f37369h.equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }
}
