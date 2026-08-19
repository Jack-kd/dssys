package com.octopus.ad.internal.d;

import java.io.File;

/* loaded from: classes4.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    public final File f34655a;

    /* renamed from: b, reason: collision with root package name */
    public final com.octopus.ad.internal.d.a.c f34656b;

    /* renamed from: c, reason: collision with root package name */
    public final com.octopus.ad.internal.d.a.a f34657c;

    /* renamed from: d, reason: collision with root package name */
    public final com.octopus.ad.internal.d.b.c f34658d;

    /* renamed from: e, reason: collision with root package name */
    public final f f34659e;

    public c(File file, com.octopus.ad.internal.d.a.c cVar, com.octopus.ad.internal.d.a.a aVar, com.octopus.ad.internal.d.b.c cVar2, f fVar) {
        this.f34655a = file;
        this.f34656b = cVar;
        this.f34657c = aVar;
        this.f34658d = cVar2;
        this.f34659e = fVar;
    }

    public File a(String str) {
        return new File(this.f34655a, this.f34656b.a(str));
    }
}
