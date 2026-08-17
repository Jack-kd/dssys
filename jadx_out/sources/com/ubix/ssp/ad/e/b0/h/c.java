package com.ubix.ssp.ad.e.b0.h;

import java.io.File;

/* loaded from: classes5.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    public final File f46684a;

    /* renamed from: b, reason: collision with root package name */
    public final com.ubix.ssp.ad.e.b0.h.s.c f46685b;

    /* renamed from: c, reason: collision with root package name */
    public final com.ubix.ssp.ad.e.b0.h.s.a f46686c;

    /* renamed from: d, reason: collision with root package name */
    public final com.ubix.ssp.ad.e.b0.h.u.c f46687d;

    /* renamed from: e, reason: collision with root package name */
    public final com.ubix.ssp.ad.e.b0.h.t.b f46688e;

    public c(File file, com.ubix.ssp.ad.e.b0.h.s.c cVar, com.ubix.ssp.ad.e.b0.h.s.a aVar, com.ubix.ssp.ad.e.b0.h.u.c cVar2, com.ubix.ssp.ad.e.b0.h.t.b bVar) {
        this.f46684a = file;
        this.f46685b = cVar;
        this.f46686c = aVar;
        this.f46687d = cVar2;
        this.f46688e = bVar;
    }

    public File a(String str) {
        return new File(this.f46684a, this.f46685b.a(str));
    }
}
