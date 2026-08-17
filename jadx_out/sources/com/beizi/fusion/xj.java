package com.beizi.fusion;

import android.app.Application;
import android.content.Context;

/* loaded from: classes2.dex */
public abstract class xj {

    /* renamed from: a, reason: collision with root package name */
    private static zd f17466a;

    public static zd a(Context context) {
        if (context != null && !(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        zd zdVar = f17466a;
        if (zdVar != null) {
            return zdVar;
        }
        zd zdVarB = b(context);
        f17466a = zdVarB;
        if (zdVarB == null || !zdVarB.a()) {
            zd zdVarC = c(context);
            f17466a = zdVarC;
            return zdVarC;
        }
        ak.a("Manufacturer interface has been found: " + f17466a.getClass().getName());
        return f17466a;
    }

    private static zd b(Context context) {
        if (ck.g() || ck.j()) {
            return new dh(context);
        }
        if (ck.h()) {
            return new zh(context);
        }
        if (ck.k()) {
            return new rj(context);
        }
        if (ck.p() || ck.i() || ck.b()) {
            return new qq(context);
        }
        if (ck.n()) {
            return new xm(context);
        }
        if (ck.o()) {
            return new hq(context);
        }
        if (ck.a()) {
            return new a3(context);
        }
        if (ck.f() || ck.d()) {
            return new p9(context);
        }
        if (ck.m() || ck.l()) {
            return new vk(context);
        }
        if (ck.a(context)) {
            return new e6(context);
        }
        if (ck.c()) {
            return new g6(context);
        }
        if (ck.e()) {
            return new j8(context);
        }
        return null;
    }

    private static zd c(Context context) {
        gi giVar = new gi(context);
        if (giVar.a()) {
            ak.a("Mobile Security Alliance has been found: " + gi.class.getName());
            return giVar;
        }
        q8 q8Var = new q8(context);
        if (q8Var.a()) {
            ak.a("Google Play Service has been found: " + q8.class.getName());
            return q8Var;
        }
        o6 o6Var = new o6();
        ak.a("OAID was not supported: " + o6.class.getName());
        return o6Var;
    }
}
