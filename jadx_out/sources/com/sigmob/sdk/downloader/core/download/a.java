package com.sigmob.sdk.downloader.core.download;

import android.net.Uri;
import java.io.File;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    boolean f37475a;

    /* renamed from: b, reason: collision with root package name */
    boolean f37476b;

    /* renamed from: c, reason: collision with root package name */
    boolean f37477c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f37478d;

    /* renamed from: e, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f37479e;

    /* renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f37480f;

    /* renamed from: g, reason: collision with root package name */
    private final long f37481g;

    public a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, long j2) {
        this.f37479e = fVar;
        this.f37480f = cVar;
        this.f37481g = j2;
    }

    public boolean a() {
        return this.f37478d;
    }

    public com.sigmob.sdk.downloader.core.cause.b b() {
        if (!this.f37476b) {
            return com.sigmob.sdk.downloader.core.cause.b.INFO_DIRTY;
        }
        if (!this.f37475a) {
            return com.sigmob.sdk.downloader.core.cause.b.FILE_NOT_EXIST;
        }
        if (!this.f37477c) {
            return com.sigmob.sdk.downloader.core.cause.b.OUTPUT_STREAM_NOT_SUPPORT;
        }
        throw new IllegalStateException("No cause find with dirty: " + this.f37478d);
    }

    public boolean c() {
        int iG = this.f37480f.g();
        if (iG <= 0 || this.f37480f.b() || this.f37480f.o() == null) {
            return false;
        }
        if (!this.f37480f.o().equals(this.f37479e.m()) || this.f37480f.o().length() > this.f37480f.j()) {
            return false;
        }
        if (this.f37481g > 0 && this.f37480f.j() != this.f37481g) {
            return false;
        }
        for (int i2 = 0; i2 < iG; i2++) {
            if (this.f37480f.b(i2).d() <= 0) {
                return false;
            }
        }
        return true;
    }

    public boolean d() {
        if (com.sigmob.sdk.downloader.g.j().e().a()) {
            return true;
        }
        return this.f37480f.g() == 1 && !com.sigmob.sdk.downloader.g.j().f().b(this.f37479e);
    }

    public boolean e() {
        Uri uriH = this.f37479e.h();
        if (com.sigmob.sdk.downloader.core.c.a(uriH)) {
            return com.sigmob.sdk.downloader.core.c.c(uriH) > 0;
        }
        File fileM = this.f37479e.m();
        return fileM != null && fileM.exists();
    }

    public void f() {
        this.f37475a = e();
        this.f37476b = c();
        boolean zD = d();
        this.f37477c = zD;
        this.f37478d = (this.f37476b && this.f37475a && zD) ? false : true;
    }

    public String toString() {
        return "fileExist[" + this.f37475a + "] infoRight[" + this.f37476b + "] outputStreamSupport[" + this.f37477c + "] " + super.toString();
    }
}
