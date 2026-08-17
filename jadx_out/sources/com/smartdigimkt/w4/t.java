package com.smartdigimkt.w4;

import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class t implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public Runnable f44993a;

    /* renamed from: b, reason: collision with root package name */
    public Runnable f44994b;

    public final void a(Runnable runnable) {
        try {
            runnable.run();
            synchronized (this) {
                Runnable runnable2 = this.f44994b;
                this.f44993a = runnable2;
                this.f44994b = null;
                if (runnable2 != null) {
                    s.a().execute(this.f44993a);
                }
            }
        } catch (Throwable th) {
            a();
            throw th;
        }
    }

    public final Runnable b(final Runnable runnable) {
        return new Runnable() { // from class: f1.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f50703b.a(runnable);
            }
        };
    }

    @Override // java.util.concurrent.Executor
    public final synchronized void execute(Runnable runnable) {
        try {
            if (this.f44993a == null) {
                this.f44993a = b(runnable);
                s.a().execute(this.f44993a);
            } else if (this.f44994b == null) {
                this.f44994b = b(runnable);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() {
        Runnable runnable = this.f44994b;
        this.f44993a = runnable;
        this.f44994b = null;
        if (runnable != null) {
            s.a().execute(this.f44993a);
        }
    }
}
