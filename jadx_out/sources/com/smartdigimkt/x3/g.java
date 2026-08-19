package com.smartdigimkt.x3;

/* loaded from: classes5.dex */
public final class g implements a {

    /* renamed from: b, reason: collision with root package name */
    public static volatile g f45119b;

    /* renamed from: a, reason: collision with root package name */
    public final f f45120a = new f();

    public static g a() {
        if (f45119b == null) {
            synchronized (g.class) {
                try {
                    if (f45119b == null) {
                        f45119b = new g();
                    }
                } finally {
                }
            }
        }
        return f45119b;
    }

    @Override // com.smartdigimkt.x3.a
    public final void a(b bVar, long j2) {
        this.f45120a.a(bVar, j2);
    }

    @Override // com.smartdigimkt.x3.a
    public final void a(b bVar) {
        if (bVar != null) {
            this.f45120a.a(bVar);
        }
    }
}
