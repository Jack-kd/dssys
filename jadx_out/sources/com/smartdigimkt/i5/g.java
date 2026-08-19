package com.smartdigimkt.i5;

/* loaded from: classes5.dex */
public final class g implements com.smartdigimkt.x3.b {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f40756a;

    public g(c cVar) {
        this.f40756a = cVar;
    }

    @Override // com.smartdigimkt.x3.b
    public final boolean a() {
        return false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f40756a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
