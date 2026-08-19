package com.anythink.core.common.r;

/* loaded from: classes2.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final int f7294a = 16;

    /* renamed from: b, reason: collision with root package name */
    private final h f7295b;

    /* renamed from: c, reason: collision with root package name */
    private final a f7296c;

    public f(h hVar, a aVar) {
        this.f7295b = hVar;
        this.f7296c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f7296c;
        if (aVar != null) {
            aVar.a(this.f7294a, this.f7295b);
        }
    }
}
