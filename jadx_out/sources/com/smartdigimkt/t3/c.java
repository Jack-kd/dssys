package com.smartdigimkt.t3;

import java.io.FileOutputStream;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final d f44277a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f44278b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f44279c;

    public c(f fVar, d dVar) {
        this.f44279c = fVar;
        this.f44277a = dVar;
    }

    public final void a() {
        if (!this.f44278b) {
            f.a(this.f44279c, this, true);
        } else {
            f.a(this.f44279c, this, false);
            this.f44279c.d(this.f44277a.f44280a);
        }
    }

    public final b b() {
        b bVar;
        synchronized (this.f44279c) {
            try {
                if (this.f44277a.f44283d != this) {
                    throw new IllegalStateException();
                }
                bVar = new b(this, new FileOutputStream(this.f44277a.b(0)));
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }
}
