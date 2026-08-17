package com.sigmob.sdk.downloader.core.download;

import com.sigmob.sdk.downloader.core.exception.i;
import java.io.IOException;
import java.net.SocketException;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private String f37498a;

    /* renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.file.d f37499b;

    /* renamed from: c, reason: collision with root package name */
    private volatile boolean f37500c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f37501d;

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f37502e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f37503f;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f37504g;

    /* renamed from: h, reason: collision with root package name */
    private volatile boolean f37505h;

    /* renamed from: i, reason: collision with root package name */
    private volatile IOException f37506i;

    public static class a extends d {
        public a(IOException iOException) {
            super(null);
            c(iOException);
        }
    }

    private d() {
        this.f37499b = null;
    }

    public com.sigmob.sdk.downloader.core.file.d a() {
        com.sigmob.sdk.downloader.core.file.d dVar = this.f37499b;
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException();
    }

    public String b() {
        return this.f37498a;
    }

    public void c(IOException iOException) {
        this.f37503f = true;
        this.f37506i = iOException;
    }

    public void d(IOException iOException) {
        this.f37505h = true;
        this.f37506i = iOException;
    }

    public void e(IOException iOException) {
        if (d()) {
            return;
        }
        if (iOException instanceof com.sigmob.sdk.downloader.core.exception.f) {
            a(iOException);
            return;
        }
        if (iOException instanceof i) {
            b(iOException);
            return;
        }
        if (iOException == com.sigmob.sdk.downloader.core.exception.b.f37550a) {
            m();
            return;
        }
        if (iOException instanceof com.sigmob.sdk.downloader.core.exception.e) {
            d(iOException);
            return;
        }
        if (iOException != com.sigmob.sdk.downloader.core.exception.c.f37551a) {
            c(iOException);
            if (iOException instanceof SocketException) {
                return;
            }
            com.sigmob.sdk.downloader.core.c.b("DownloadCache", "catch unknown error " + iOException);
        }
    }

    public boolean f() {
        return this.f37503f;
    }

    public boolean g() {
        return this.f37504g;
    }

    public boolean h() {
        return this.f37505h;
    }

    public IOException i() {
        return this.f37506i;
    }

    public com.sigmob.sdk.downloader.core.cause.b j() {
        return ((com.sigmob.sdk.downloader.core.exception.f) this.f37506i).a();
    }

    public boolean k() {
        return this.f37500c || this.f37501d || this.f37502e || this.f37503f || this.f37504g || this.f37505h;
    }

    public void l() {
        this.f37501d = true;
    }

    public void m() {
        this.f37504g = true;
    }

    public d(com.sigmob.sdk.downloader.core.file.d dVar) {
        this.f37499b = dVar;
    }

    public void a(IOException iOException) {
        this.f37500c = true;
        this.f37506i = iOException;
    }

    public void b(IOException iOException) {
        this.f37502e = true;
        this.f37506i = iOException;
    }

    public boolean c() {
        return this.f37500c;
    }

    public boolean d() {
        return this.f37501d;
    }

    public boolean e() {
        return this.f37502e;
    }

    public void a(String str) {
        this.f37498a = str;
    }
}
