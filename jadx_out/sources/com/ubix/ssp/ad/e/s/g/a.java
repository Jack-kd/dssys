package com.ubix.ssp.ad.e.s.g;

import java.io.File;
import java.io.Serializable;

/* loaded from: classes5.dex */
public class a implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private String f47091a;

    /* renamed from: b, reason: collision with root package name */
    private File f47092b;

    /* renamed from: c, reason: collision with root package name */
    private int f47093c;

    /* renamed from: d, reason: collision with root package name */
    private b f47094d;

    /* renamed from: e, reason: collision with root package name */
    private com.ubix.ssp.ad.e.s.j.a f47095e;

    /* renamed from: f, reason: collision with root package name */
    private int f47096f = 0;

    public a(String str, File file, String str2, int i2) {
        this.f47091a = str;
        this.f47092b = file;
        this.f47093c = i2;
        b bVar = new b();
        this.f47094d = bVar;
        bVar.b(str2);
        this.f47094d.d(f() + "");
        this.f47094d.a(g());
        this.f47094d.c(a().getAbsolutePath());
    }

    public File a() {
        return this.f47092b;
    }

    public b b() {
        return this.f47094d;
    }

    public com.ubix.ssp.ad.e.s.j.a c() {
        return this.f47095e;
    }

    public int d() {
        return this.f47093c;
    }

    public int e() {
        return this.f47096f;
    }

    public int f() {
        return this.f47091a.hashCode();
    }

    public String g() {
        return this.f47091a;
    }

    public String toString() {
        return "DownloadInfo{url='" + this.f47091a + "', file=" + this.f47092b + '}';
    }

    public void a(int i2) {
        this.f47096f = i2;
    }

    public void a(b bVar) {
        this.f47094d = bVar;
    }

    public void a(com.ubix.ssp.ad.e.s.j.a aVar) {
        this.f47095e = aVar;
    }
}
