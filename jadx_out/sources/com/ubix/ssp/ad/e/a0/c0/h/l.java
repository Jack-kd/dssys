package com.ubix.ssp.ad.e.a0.c0.h;

import android.app.Application;
import android.content.Context;

/* loaded from: classes5.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    private static com.ubix.ssp.ad.e.a0.c0.d f46179a;

    private l() {
    }

    public static com.ubix.ssp.ad.e.a0.c0.d a(Context context) {
        if (context != null && !(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        com.ubix.ssp.ad.e.a0.c0.d dVar = f46179a;
        if (dVar != null) {
            return dVar;
        }
        com.ubix.ssp.ad.e.a0.c0.d dVarB = b(context);
        f46179a = dVarB;
        if (dVarB == null || !dVarB.a()) {
            com.ubix.ssp.ad.e.a0.c0.d dVarC = c(context);
            f46179a = dVarC;
            return dVarC;
        }
        com.ubix.ssp.ad.e.a0.c0.f.a("Manufacturer interface has been found: " + f46179a.getClass().getName());
        return f46179a;
    }

    private static com.ubix.ssp.ad.e.a0.c0.d b(Context context) {
        if (com.ubix.ssp.ad.e.a0.c0.g.i() || com.ubix.ssp.ad.e.a0.c0.g.m()) {
            return new h(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.k()) {
            return new i(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.n()) {
            return new k(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.s() || com.ubix.ssp.ad.e.a0.c0.g.l() || com.ubix.ssp.ad.e.a0.c0.g.b()) {
            return new q(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.q()) {
            return new o(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.r()) {
            return new p(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.a()) {
            return new a(context);
        }
        if ((com.ubix.ssp.ad.e.a0.c0.g.g() && !com.ubix.ssp.ad.e.a0.c0.g.d()) || com.ubix.ssp.ad.e.a0.c0.g.j()) {
            f fVar = new f(context);
            return fVar.a() ? fVar : new g(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.h() || com.ubix.ssp.ad.e.a0.c0.g.d() || com.ubix.ssp.ad.e.a0.c0.g.f()) {
            return new g(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.p() || com.ubix.ssp.ad.e.a0.c0.g.o()) {
            return new n(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.a(context)) {
            return new b(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.c()) {
            return new c(context);
        }
        if (com.ubix.ssp.ad.e.a0.c0.g.e()) {
            return new e(context);
        }
        return null;
    }

    private static com.ubix.ssp.ad.e.a0.c0.d c(Context context) {
        j jVar = new j(context);
        if (jVar.a()) {
            com.ubix.ssp.ad.e.a0.c0.f.a("Mobile Security Alliance has been found: " + j.class.getName());
            return jVar;
        }
        d dVar = new d();
        com.ubix.ssp.ad.e.a0.c0.f.a("OAID/AAID was not supported: " + d.class.getName());
        return dVar;
    }
}
