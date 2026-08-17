package com.sigmob.sdk.downloader.core.interceptor.connect;

import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.core.download.f;
import com.sigmob.sdk.downloader.core.interceptor.c;
import com.sigmob.sdk.downloader.g;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public class b implements c.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37604a = "HeaderInterceptor";

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.a
    public a.InterfaceC0769a a(f fVar) throws IOException {
        com.sigmob.sdk.downloader.core.breakpoint.c cVarD = fVar.d();
        com.sigmob.sdk.downloader.core.connection.a aVarI = fVar.i();
        com.sigmob.sdk.downloader.f fVarC = fVar.c();
        Map<String, List<String>> mapB = fVarC.b();
        if (mapB != null) {
            com.sigmob.sdk.downloader.core.c.a(mapB, aVarI);
        }
        if (mapB == null || !mapB.containsKey("User-Agent")) {
            com.sigmob.sdk.downloader.core.c.a(aVarI);
        }
        int iE = fVar.e();
        com.sigmob.sdk.downloader.core.breakpoint.a aVarB = cVarD.b(iE);
        if (aVarB == null) {
            throw new IOException("No block-info found on " + iE);
        }
        String str = BytesRange.PREFIX + aVarB.c() + "-";
        if (!cVarD.b()) {
            str = str + aVarB.e();
        }
        aVarI.a(com.sigmob.sdk.downloader.core.c.f37363b, str);
        com.sigmob.sdk.downloader.core.c.b(f37604a, "AssembleHeaderRange (" + fVarC.c() + ") block(" + iE + ") downloadFrom(" + aVarB.c() + ") currentOffset(" + aVarB.a() + ")");
        String strK = cVarD.k();
        if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) strK)) {
            aVarI.a(com.sigmob.sdk.downloader.core.c.f37364c, strK);
        }
        if (fVar.f().k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
        }
        g.j().b().a().b(fVarC, iE, aVarI.c());
        a.InterfaceC0769a interfaceC0769aN = fVar.n();
        if (fVar.f().k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
        }
        Map<String, List<String>> mapF = interfaceC0769aN.f();
        if (mapF == null) {
            mapF = new HashMap<>();
        }
        g.j().b().a().a(fVarC, iE, interfaceC0769aN.d(), mapF);
        g.j().g().a(interfaceC0769aN, iE, cVarD).a();
        String strC = interfaceC0769aN.c(com.sigmob.sdk.downloader.core.c.f37366e);
        fVar.a((strC == null || strC.length() == 0) ? com.sigmob.sdk.downloader.core.c.d(interfaceC0769aN.c(com.sigmob.sdk.downloader.core.c.f37367f)) : com.sigmob.sdk.downloader.core.c.b(strC));
        return interfaceC0769aN;
    }
}
