package com.smartdigimkt.e0;

import java.util.concurrent.ExecutorService;

/* loaded from: classes5.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExecutorService f40042a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f40043b;

    public z(a0 a0Var, ExecutorService executorService) {
        this.f40043b = a0Var;
        this.f40042a = executorService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b0 b0VarA = c0.a(com.smartdigimkt.t3.n.a().b(4, com.smartdigimkt.c5.i.b(this.f40043b.f39979a.f41818i)));
            if (b0VarA != null) {
                com.smartdigimkt.m3.c cVar = this.f40043b.f39979a;
                cVar.f41790K = b0VarA.f39984a;
                cVar.f41791L = b0VarA.f39985b;
            }
        } catch (Throwable unused) {
        }
        try {
            synchronized (this.f40042a) {
                this.f40042a.notifyAll();
            }
        } catch (Throwable unused2) {
        }
    }
}
