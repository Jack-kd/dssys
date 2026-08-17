package com.sigmob.sdk.downloader.core.breakpoint;

import android.database.sqlite.SQLiteDatabase;
import com.sigmob.sdk.downloader.core.breakpoint.m;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class l implements j, m.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37347a = "RemitStoreOnSQLite";

    /* renamed from: b, reason: collision with root package name */
    private final n f37348b;

    /* renamed from: c, reason: collision with root package name */
    private final i f37349c;

    /* renamed from: d, reason: collision with root package name */
    private final e f37350d;

    /* renamed from: e, reason: collision with root package name */
    private final j f37351e;

    public l(i iVar) {
        this.f37348b = new n(this);
        this.f37349c = iVar;
        this.f37351e = iVar.f37344b;
        this.f37350d = iVar.f37343a;
    }

    public static void j(int i2) {
        g gVarC = com.sigmob.sdk.downloader.g.j().c();
        if (gVarC instanceof l) {
            ((l) gVarC).f37348b.f37360a = Math.max(0, i2);
        } else {
            throw new IllegalStateException("The current store is " + gVarC + " not RemitStoreOnSQLite!");
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(int i2) {
        return this.f37349c.a(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public int b(com.sigmob.sdk.downloader.f fVar) {
        return this.f37349c.b(fVar);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean c(int i2) {
        return this.f37349c.c(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void d(int i2) {
        this.f37349c.d(i2);
        this.f37348b.b(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public c e(int i2) {
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean f(int i2) {
        return this.f37349c.f(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean g(int i2) {
        return this.f37349c.g(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.m.a
    public void h(int i2) throws IOException {
        this.f37350d.c(i2);
        c cVarA = this.f37351e.a(i2);
        if (cVarA == null || cVarA.m() == null || cVarA.i() <= 0) {
            return;
        }
        this.f37350d.a(cVarA);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.m.a
    public void i(int i2) {
        this.f37350d.c(i2);
    }

    public l(n nVar, i iVar, j jVar, e eVar) {
        this.f37348b = nVar;
        this.f37349c = iVar;
        this.f37351e = jVar;
        this.f37350d = eVar;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f fVar) throws IOException {
        return this.f37348b.a(fVar.c()) ? this.f37351e.a(fVar) : this.f37349c.a(fVar);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public void b(int i2) {
        this.f37351e.b(i2);
        this.f37348b.d(i2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f fVar, c cVar) {
        return this.f37349c.a(fVar, cVar);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public String a(String str) {
        return this.f37349c.a(str);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(int i2, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        this.f37351e.a(i2, aVar, exc);
        if (aVar == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
            this.f37348b.d(i2);
        } else {
            this.f37348b.c(i2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(c cVar, int i2, long j2) throws IOException {
        if (this.f37348b.a(cVar.a())) {
            this.f37351e.a(cVar, i2, j2);
        } else {
            this.f37349c.a(cVar, i2, j2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.m.a
    public void a(List<Integer> list) throws IOException {
        SQLiteDatabase writableDatabase = this.f37350d.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                h(it.next().intValue());
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
            throw th;
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a() {
        return false;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a(c cVar) throws IOException {
        return this.f37348b.a(cVar.a()) ? this.f37351e.a(cVar) : this.f37349c.a(cVar);
    }
}
