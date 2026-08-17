package com.anythink.core.common.n.b.a.c;

import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.ae;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.m;
import com.anythink.core.common.n.b.n;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.b.x;
import com.anythink.core.common.n.c.l;
import java.util.List;

/* loaded from: classes2.dex */
public final class a implements w {

    /* renamed from: a, reason: collision with root package name */
    private final n f6229a;

    public a(n nVar) {
        this.f6229a = nVar;
    }

    @Override // com.anythink.core.common.n.b.w
    public final af a(w.a aVar) {
        ad adVarA = aVar.a();
        ad.a aVarE = adVarA.e();
        ae aeVarD = adVarA.d();
        if (aeVarD != null) {
            x xVarA = aeVarD.a();
            if (xVarA != null) {
                aVarE.a(AbstractC1114b.f5589g, xVarA.toString());
            }
            long jB = aeVarD.b();
            if (jB != -1) {
                aVarE.a(com.sigmob.sdk.downloader.core.c.f37366e, Long.toString(jB));
                aVarE.b(com.sigmob.sdk.downloader.core.c.f37369h);
            } else {
                aVarE.a(com.sigmob.sdk.downloader.core.c.f37369h, "chunked");
                aVarE.b(com.sigmob.sdk.downloader.core.c.f37366e);
            }
        }
        if (adVarA.a("Host") == null) {
            aVarE.a("Host", com.anythink.core.common.n.b.a.c.a(adVarA.a(), false));
        }
        if (adVarA.a("Connection") == null) {
            aVarE.a("Connection", "Keep-Alive");
        }
        n nVar = this.f6229a;
        adVarA.a();
        List<m> listB = nVar.b();
        if (!listB.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = listB.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0) {
                    sb.append("; ");
                }
                m mVar = listB.get(i2);
                sb.append(mVar.a());
                sb.append('=');
                sb.append(mVar.b());
            }
            aVarE.a(com.sigmob.sdk.base.e.f36239a, sb.toString());
        }
        af afVarA = aVar.a(aVarE.b());
        e.a(this.f6229a, adVarA.a(), afVarA.f());
        af.a aVarA = afVarA.h().a(adVarA);
        if ("gzip".equalsIgnoreCase(afVarA.a("Content-Encoding")) && e.d(afVarA)) {
            l lVar = new l(afVarA.g().c());
            aVarA.a(afVarA.f().b().b("Content-Encoding").b(com.sigmob.sdk.downloader.core.c.f37366e).a());
            aVarA.a(new h(afVarA.a(AbstractC1114b.f5589g), -1L, com.anythink.core.common.n.c.n.a(lVar)));
        }
        return aVarA.a();
    }

    private static String a(List<m> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                sb.append("; ");
            }
            m mVar = list.get(i2);
            sb.append(mVar.a());
            sb.append('=');
            sb.append(mVar.b());
        }
        return sb.toString();
    }
}
