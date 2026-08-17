package com.sigmob.sdk.downloader.core.interceptor;

import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.core.download.f;
import com.sigmob.sdk.downloader.core.exception.g;
import com.sigmob.sdk.downloader.core.interceptor.c;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class a implements c.a, c.b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37596a = "BreakpointInterceptor";

    /* renamed from: b, reason: collision with root package name */
    private static final Pattern f37597b = Pattern.compile(".*\\d+ *- *(\\d+) */ *\\d+");

    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long a(com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a r7) {
        /*
            r6 = this;
            java.lang.String r0 = "Content-Range"
            java.lang.String r0 = r7.c(r0)
            boolean r1 = com.sigmob.sdk.downloader.core.c.a(r0)
            r2 = 0
            if (r1 != 0) goto L1a
            long r0 = a(r0)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L1a
            r4 = 1
            long r0 = r0 + r4
            goto L1c
        L1a:
            r0 = -1
        L1c:
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 >= 0) goto L30
            java.lang.String r2 = "Content-Length"
            java.lang.String r7 = r7.c(r2)
            boolean r2 = com.sigmob.sdk.downloader.core.c.a(r7)
            if (r2 != 0) goto L30
            long r0 = java.lang.Long.parseLong(r7)
        L30:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.downloader.core.interceptor.a.a(com.sigmob.sdk.downloader.core.connection.a$a):long");
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.b
    public long b(f fVar) throws IOException {
        long jA = fVar.a();
        int iE = fVar.e();
        boolean z2 = jA != -1;
        com.sigmob.sdk.downloader.core.file.d dVarG = fVar.g();
        long j2 = 0;
        while (true) {
            try {
                long jP = fVar.p();
                if (jP == -1) {
                    break;
                }
                j2 += jP;
            } finally {
                fVar.j();
                if (!fVar.f().d()) {
                    dVarG.a(iE);
                }
            }
        }
        if (z2) {
            dVarG.b(iE);
            if (j2 != jA) {
                throw new IOException("Fetch-length isn't equal to the response content-length, " + j2 + "!= " + jA);
            }
        }
        return j2;
    }

    public static long a(String str) {
        Matcher matcher = f37597b.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.a
    public a.InterfaceC0769a a(f fVar) throws IOException {
        a.InterfaceC0769a interfaceC0769aN = fVar.n();
        com.sigmob.sdk.downloader.core.breakpoint.c cVarD = fVar.d();
        if (fVar.f().k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
        }
        if (cVarD.g() == 1 && !cVarD.b()) {
            long jA = a(interfaceC0769aN);
            long j2 = cVarD.j();
            if (jA > 0 && jA != j2) {
                com.sigmob.sdk.downloader.core.c.b(f37596a, "SingleBlock special check: the response instance-length[" + jA + "] isn't equal to the instance length from trial-connection[" + j2 + "]");
                boolean z2 = cVarD.b(0).c() != 0;
                com.sigmob.sdk.downloader.core.breakpoint.a aVar = new com.sigmob.sdk.downloader.core.breakpoint.a(0L, jA);
                cVarD.f();
                cVarD.a(aVar);
                if (z2) {
                    com.sigmob.sdk.downloader.core.c.a(f37596a, "Discard breakpoint because of on this special case, we have to download from beginning");
                    throw new g("Discard breakpoint because of on this special case, we have to download from beginning");
                }
                com.sigmob.sdk.downloader.g.j().b().a().a(fVar.c(), cVarD, com.sigmob.sdk.downloader.core.cause.b.CONTENT_LENGTH_CHANGED);
            }
        }
        try {
            if (fVar.r().a(cVarD)) {
                return interfaceC0769aN;
            }
            throw new IOException("Update store failed!");
        } catch (Exception e2) {
            throw new IOException("Update store failed!", e2);
        }
    }
}
