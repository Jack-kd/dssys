package com.smartdigimkt.o;

import com.smartdigimkt.dlopt.common.service.ApkDownloadService;
import com.smartdigimkt.j.u;
import com.smartdigimkt.k.r;

/* loaded from: classes5.dex */
public final class a implements com.smartdigimkt.k.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f42179a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ApkDownloadService f42180b;

    public a(ApkDownloadService apkDownloadService, u uVar) {
        this.f42180b = apkDownloadService;
        this.f42179a = uVar;
    }

    @Override // com.smartdigimkt.k.a
    public final void a(r rVar, long j2) {
        this.f42180b.f39919a.remove(rVar.f41192o);
        u uVar = this.f42179a;
        com.smartdigimkt.k.a aVar = (com.smartdigimkt.k.a) uVar.f40824e.get(rVar.f41192o);
        if (aVar != null) {
            aVar.a(rVar, j2);
        }
    }

    @Override // com.smartdigimkt.k.a
    public final void b(r rVar, long j2, long j3) {
        u uVar = this.f42179a;
        com.smartdigimkt.k.a aVar = (com.smartdigimkt.k.a) uVar.f40824e.get(rVar.f41192o);
        if (aVar != null) {
            aVar.b(rVar, j2, j3);
        }
    }

    @Override // com.smartdigimkt.k.a
    public final void a(r rVar, long j2, long j3) {
        u uVar = this.f42179a;
        com.smartdigimkt.k.a aVar = (com.smartdigimkt.k.a) uVar.f40824e.get(rVar.f41192o);
        if (aVar != null) {
            aVar.a(rVar, j2, j3);
        }
    }

    @Override // com.smartdigimkt.k.a
    public final void a(r rVar, String str) {
        this.f42180b.f39919a.remove(rVar.f41192o);
        u uVar = this.f42179a;
        com.smartdigimkt.k.a aVar = (com.smartdigimkt.k.a) uVar.f40824e.get(rVar.f41192o);
        if (aVar != null) {
            aVar.a(rVar, str);
        }
    }

    @Override // com.smartdigimkt.k.a
    public final void a(r rVar, long j2, long j3, int i2) {
        this.f42180b.f39919a.remove(rVar.f41192o);
        u uVar = this.f42179a;
        com.smartdigimkt.k.a aVar = (com.smartdigimkt.k.a) uVar.f40824e.get(rVar.f41192o);
        if (aVar != null) {
            aVar.a(rVar, j2, j3, i2);
        }
    }
}
