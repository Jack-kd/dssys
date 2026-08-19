package com.smartdigimkt.z;

import android.app.Application;

/* loaded from: classes5.dex */
public final class f0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.x.a f45283a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f45284b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f45285c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f45286d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f45287e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j.g f45288f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ g0 f45289g;

    public f0(g0 g0Var, e0 e0Var, com.smartdigimkt.m3.c cVar, String str, String str2, long j2, com.smartdigimkt.j.g gVar) {
        this.f45289g = g0Var;
        this.f45283a = e0Var;
        this.f45284b = cVar;
        this.f45285c = str;
        this.f45286d = str2;
        this.f45287e = j2;
        this.f45288f = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((Application) this.f45289g.f45296b).unregisterActivityLifecycleCallbacks(this.f45283a);
        if (p.b(this.f45289g.f45296b, this.f45284b)) {
            String str = this.f45285c;
            com.smartdigimkt.m3.c cVar = this.f45284b;
            com.smartdigimkt.y3.h.a(str, cVar.f41806a, this.f45286d, 6, (String) null, 0L, 0L, cVar, 0, this.f45287e);
        } else {
            String str2 = this.f45285c;
            com.smartdigimkt.m3.c cVar2 = this.f45284b;
            com.smartdigimkt.y3.h.a(str2, cVar2.f41806a, this.f45286d, 13, (String) null, 0L, 0L, cVar2, 0, 0L);
        }
    }
}
