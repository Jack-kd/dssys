package com.beizi.fusion;

/* loaded from: classes2.dex */
public abstract class kk extends fp {

    /* renamed from: a, reason: collision with root package name */
    private static final gp f14754a = b(cp.f13256a);

    public class a implements gp {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ dp f14755a;

        public a(dp dpVar) {
            this.f14755a = dpVar;
        }
    }

    public static gp a(dp dpVar) {
        return dpVar == cp.f13256a ? f14754a : b(dpVar);
    }

    private static gp b(dp dpVar) {
        return new a(dpVar);
    }
}
