package com.octopus.ad.d.a.b;

import android.app.Application;
import android.content.Context;

/* loaded from: classes4.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    private static com.octopus.ad.d.a.d f33984a;

    public static com.octopus.ad.d.a.d a(Context context) {
        if (context != null && !(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        com.octopus.ad.d.a.d dVar = f33984a;
        if (dVar != null) {
            return dVar;
        }
        com.octopus.ad.d.a.d dVarB = b(context);
        f33984a = dVarB;
        if (dVarB == null || !dVarB.a()) {
            com.octopus.ad.d.a.d dVarC = c(context);
            f33984a = dVarC;
            return dVarC;
        }
        com.octopus.ad.d.a.f.a("Manufacturer interface has been found: " + f33984a.getClass().getName());
        return f33984a;
    }

    private static com.octopus.ad.d.a.d b(Context context) {
        if (com.octopus.ad.d.a.g.k() || com.octopus.ad.d.a.g.n()) {
            return new g(context);
        }
        if (com.octopus.ad.d.a.g.j()) {
            return new h(context);
        }
        if (com.octopus.ad.d.a.g.l()) {
            return new j(context);
        }
        if (com.octopus.ad.d.a.g.e() || com.octopus.ad.d.a.g.f() || com.octopus.ad.d.a.g.g()) {
            return new p(context);
        }
        if (com.octopus.ad.d.a.g.i()) {
            return new n(context);
        }
        if (com.octopus.ad.d.a.g.d()) {
            return new o(context);
        }
        if (com.octopus.ad.d.a.g.m()) {
            return new a(context);
        }
        if (com.octopus.ad.d.a.g.a() || com.octopus.ad.d.a.g.b()) {
            return new f(context);
        }
        if (com.octopus.ad.d.a.g.c() || com.octopus.ad.d.a.g.h()) {
            return new m(context);
        }
        if (com.octopus.ad.d.a.g.a(context)) {
            return new b(context);
        }
        if (com.octopus.ad.d.a.g.p()) {
            return new c(context);
        }
        if (com.octopus.ad.d.a.g.o()) {
            return new e(context);
        }
        return null;
    }

    private static com.octopus.ad.d.a.d c(Context context) {
        i iVar = new i(context);
        if (iVar.a()) {
            com.octopus.ad.d.a.f.a("Mobile Security Alliance has been found: " + i.class.getName());
            return iVar;
        }
        d dVar = new d();
        com.octopus.ad.d.a.f.a("OAID/GAID was not supported: " + d.class.getName());
        return dVar;
    }
}
