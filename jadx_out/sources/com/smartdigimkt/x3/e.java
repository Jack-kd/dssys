package com.smartdigimkt.x3;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f45114a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f45115b;

    public e(f fVar, b bVar) {
        this.f45115b = fVar;
        this.f45114a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f45114a.run();
        } finally {
            this.f45115b.f45118c.remove(this.f45114a);
        }
    }
}
