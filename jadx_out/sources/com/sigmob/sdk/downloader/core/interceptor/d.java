package com.sigmob.sdk.downloader.core.interceptor;

import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.core.download.f;
import com.sigmob.sdk.downloader.core.exception.g;
import com.sigmob.sdk.downloader.core.interceptor.c;
import java.io.IOException;

/* loaded from: classes4.dex */
public class d implements c.a, c.b {
    @Override // com.sigmob.sdk.downloader.core.interceptor.c.a
    public a.InterfaceC0769a a(f fVar) throws IOException {
        com.sigmob.sdk.downloader.core.download.d dVarF = fVar.f();
        while (true) {
            try {
                if (dVarF.k()) {
                    throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
                }
                return fVar.n();
            } catch (IOException e2) {
                if (!(e2 instanceof g)) {
                    fVar.f().e(e2);
                    fVar.g().d(fVar.e());
                    throw e2;
                }
                fVar.l();
            }
        }
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.b
    public long b(f fVar) throws IOException {
        try {
            return fVar.o();
        } catch (IOException e2) {
            fVar.f().e(e2);
            throw e2;
        }
    }
}
