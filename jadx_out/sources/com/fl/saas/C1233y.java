package com.fl.saas;

import java.io.File;

/* renamed from: com.fl.saas.y, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
class C1233y {

    /* renamed from: a, reason: collision with root package name */
    public final File f30705a;

    /* renamed from: b, reason: collision with root package name */
    public final N f30706b;

    /* renamed from: c, reason: collision with root package name */
    public final D f30707c;

    /* renamed from: d, reason: collision with root package name */
    public final X0 f30708d;

    /* renamed from: e, reason: collision with root package name */
    public final Q f30709e;

    public C1233y(File file, N n2, D d2, X0 x02, Q q2) {
        this.f30705a = file;
        this.f30706b = n2;
        this.f30707c = d2;
        this.f30708d = x02;
        this.f30709e = q2;
    }

    public File a(String str) {
        return new File(this.f30705a, this.f30706b.a(str));
    }
}
