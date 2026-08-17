package com.anythink.core.common.s.a;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class i implements Executor {

    /* renamed from: a, reason: collision with root package name */
    private Runnable f7601a;

    /* renamed from: b, reason: collision with root package name */
    private Runnable f7602b;

    @Override // java.util.concurrent.Executor
    public final synchronized void execute(Runnable runnable) {
        if (this.f7601a == null) {
            this.f7601a = a(runnable);
            h.a().execute(this.f7601a);
        } else {
            if (this.f7602b == null) {
                this.f7602b = a(runnable);
            }
        }
    }

    private Runnable a(final Runnable runnable) {
        return new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dy, new Runnable() { // from class: com.anythink.core.common.s.a.i.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    runnable.run();
                } finally {
                    i.this.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        Runnable runnable = this.f7602b;
        this.f7601a = runnable;
        this.f7602b = null;
        if (runnable != null) {
            h.a().execute(this.f7601a);
        }
    }
}
