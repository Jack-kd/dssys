package com.anythink.core.common.n.b.a.c;

import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.c.n;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes2.dex */
public final class b implements w {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f6230a;

    public b(boolean z2) {
        this.f6230a = z2;
    }

    @Override // com.anythink.core.common.n.b.w
    public final af a(w.a aVar) throws IOException {
        g gVar = (g) aVar;
        com.anythink.core.common.n.b.a.b.c cVarH = gVar.h();
        ad adVarA = gVar.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        cVarH.a(adVarA);
        af.a aVarA = null;
        if (!f.c(adVarA.b()) || adVarA.d() == null) {
            cVarH.j();
        } else {
            if ("100-continue".equalsIgnoreCase(adVarA.a("Expect"))) {
                cVarH.c();
                aVarA = cVarH.a(true);
            }
            if (aVarA == null) {
                adVarA.d();
                com.anythink.core.common.n.c.d dVarA = n.a(cVarH.b(adVarA));
                adVarA.d().a(dVarA);
                dVarA.close();
            } else {
                cVarH.j();
                if (!cVarH.a().g()) {
                    cVarH.h();
                }
            }
        }
        if (adVarA.d() != null) {
            adVarA.d();
        }
        cVarH.d();
        if (aVarA == null) {
            aVarA = cVarH.a(false);
        }
        af afVarA = aVarA.a(adVarA).a(cVarH.a().c()).a(jCurrentTimeMillis).b(System.currentTimeMillis()).a();
        int iC = afVarA.c();
        if (iC == 100) {
            afVarA = cVarH.a(false).a(adVarA).a(cVarH.a().c()).a(jCurrentTimeMillis).b(System.currentTimeMillis()).a();
            iC = afVarA.c();
        }
        af afVarA2 = (this.f6230a && iC == 101) ? afVarA.h().a(com.anythink.core.common.n.b.a.c.f6218d).a() : afVarA.h().a(cVarH.a(afVarA)).a();
        if ("close".equalsIgnoreCase(afVarA2.a().a("Connection")) || "close".equalsIgnoreCase(afVarA2.a("Connection"))) {
            cVarH.h();
        }
        if ((iC != 204 && iC != 205) || afVarA2.g().b() <= 0) {
            return afVarA2;
        }
        throw new ProtocolException("HTTP " + iC + " had non-zero Content-Length: " + afVarA2.g().b());
    }
}
