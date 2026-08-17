package com.sigmob.sdk.downloader.core.breakpoint;

import android.content.Context;
import java.io.IOException;

/* loaded from: classes4.dex */
public class i implements j {

    /* renamed from: c, reason: collision with root package name */
    private static final String f37342c = "BreakpointStoreOnSQLite";

    /* renamed from: a, reason: collision with root package name */
    protected final e f37343a;

    /* renamed from: b, reason: collision with root package name */
    protected final h f37344b;

    public i(Context context) {
        e eVar = new e(context.getApplicationContext());
        this.f37343a = eVar;
        this.f37344b = new h(eVar.b(), eVar.a(), eVar.c());
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(int i2) {
        return this.f37344b.a(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public int b(com.sigmob.sdk.downloader.f fVar) {
        return this.f37344b.b(fVar);
    }

    public j c() {
        return new l(this);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void d(int i2) {
        this.f37344b.d(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public c e(int i2) {
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean f(int i2) {
        if (!this.f37344b.f(i2)) {
            return false;
        }
        this.f37343a.a(i2);
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean g(int i2) {
        if (!this.f37344b.g(i2)) {
            return false;
        }
        this.f37343a.b(i2);
        return true;
    }

    public i(e eVar, h hVar) {
        this.f37343a = eVar;
        this.f37344b = hVar;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f fVar) throws IOException {
        c cVarA = this.f37344b.a(fVar);
        this.f37343a.a(cVarA);
        return cVarA;
    }

    public void b() {
        this.f37343a.close();
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean c(int i2) {
        return this.f37344b.c(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f fVar, c cVar) {
        return this.f37344b.a(fVar, cVar);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public void b(int i2) {
        this.f37344b.b(i2);
        this.f37343a.c(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public String a(String str) {
        return this.f37344b.a(str);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(int i2, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        this.f37344b.a(i2, aVar, exc);
        if (aVar == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
            this.f37343a.c(i2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(c cVar, int i2, long j2) throws IOException {
        this.f37344b.a(cVar, i2, j2);
        this.f37343a.a(cVar, i2, cVar.b(i2).a());
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a() {
        return false;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a(c cVar) throws IOException {
        boolean zA = this.f37344b.a(cVar);
        this.f37343a.b(cVar);
        String strM = cVar.m();
        com.sigmob.sdk.downloader.core.c.b(f37342c, "update " + cVar);
        if (cVar.d() && strM != null) {
            this.f37343a.a(cVar.l(), strM);
        }
        return zA;
    }
}
