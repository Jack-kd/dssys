package com.sigmob.sdk.downloader.core.download;

import com.sigmob.sdk.downloader.core.exception.i;
import java.io.IOException;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    com.sigmob.sdk.downloader.core.cause.b f37482a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f37483b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f37484c;

    /* renamed from: d, reason: collision with root package name */
    private long f37485d;

    /* renamed from: e, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f37486e;

    /* renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f37487f;

    public b(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        this.f37486e = fVar;
        this.f37487f = cVar;
    }

    public com.sigmob.sdk.downloader.core.cause.b a() {
        return this.f37482a;
    }

    public com.sigmob.sdk.downloader.core.cause.b b() {
        com.sigmob.sdk.downloader.core.cause.b bVar = this.f37482a;
        if (bVar != null) {
            return bVar;
        }
        throw new IllegalStateException("No cause find with resumable: " + this.f37484c);
    }

    public boolean c() {
        return this.f37484c;
    }

    public boolean d() {
        return this.f37483b;
    }

    public long e() {
        return this.f37485d;
    }

    public void f() throws IOException {
        g gVarG = com.sigmob.sdk.downloader.g.j().g();
        c cVarG = g();
        cVarG.a();
        boolean zC = cVarG.c();
        boolean zD = cVarG.d();
        long jB = cVarG.b();
        String strE = cVarG.e();
        String strF = cVarG.f();
        int iG = cVarG.g();
        gVarG.a(strF, this.f37486e, this.f37487f);
        this.f37487f.a(zD);
        this.f37487f.a(strE);
        if (com.sigmob.sdk.downloader.g.j().a().g(this.f37486e)) {
            throw com.sigmob.sdk.downloader.core.exception.b.f37550a;
        }
        com.sigmob.sdk.downloader.core.cause.b bVarA = gVarG.a(iG, this.f37487f.i() != 0, this.f37487f, strE);
        boolean z2 = bVarA == null;
        this.f37484c = z2;
        this.f37482a = bVarA;
        this.f37485d = jB;
        this.f37483b = zC;
        if (a(iG, jB, z2)) {
            return;
        }
        if (gVarG.a(iG, this.f37487f.i() != 0)) {
            throw new i(iG, this.f37487f.i());
        }
    }

    public c g() {
        return new c(this.f37486e, this.f37487f);
    }

    public String toString() {
        return "acceptRange[" + this.f37483b + "] resumable[" + this.f37484c + "] failedCause[" + this.f37482a + "] instanceLength[" + this.f37485d + "] " + super.toString();
    }

    public boolean a(int i2, long j2, boolean z2) {
        return i2 == 416 && j2 >= 0 && z2;
    }
}
