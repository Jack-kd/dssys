package com.beizi.fusion;

import android.app.Application;
import android.content.Context;

/* loaded from: classes2.dex */
public abstract class yj {

    /* renamed from: a, reason: collision with root package name */
    private static ae f17693a;

    public static ae a(Context context) {
        if (context != null && !(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        ae aeVar = f17693a;
        if (aeVar != null) {
            return aeVar;
        }
        ae aeVarB = b(context);
        f17693a = aeVarB;
        if (aeVarB == null || !aeVarB.a()) {
            ae aeVarC = c(context);
            f17693a = aeVarC;
            return aeVarC;
        }
        bk.a("Manufacturer interface has been found: " + f17693a.getClass().getName());
        return f17693a;
    }

    private static ae b(Context context) {
        if (dk.g() || dk.j()) {
            return new eh(context);
        }
        if (dk.h()) {
            return new ai(context);
        }
        if (dk.k()) {
            return new sj(context);
        }
        if (dk.p() || dk.i() || dk.b()) {
            return new rq(context);
        }
        if (dk.n()) {
            return new ym(context);
        }
        if (dk.o()) {
            return new iq(context);
        }
        if (dk.a()) {
            return new b3(context);
        }
        if (dk.f() || dk.d()) {
            return new q9(context);
        }
        if (dk.m() || dk.l()) {
            return new wk(context);
        }
        if (dk.a(context)) {
            return new f6(context);
        }
        if (dk.c()) {
            return new h6(context);
        }
        if (dk.e()) {
            return new k8(context);
        }
        return null;
    }

    private static ae c(Context context) {
        hi hiVar = new hi(context);
        if (hiVar.a()) {
            bk.a("Mobile Security Alliance has been found: " + hi.class.getName());
            return hiVar;
        }
        p6 p6Var = new p6();
        bk.a("OAID was not supported: " + p6.class.getName());
        return p6Var;
    }
}
