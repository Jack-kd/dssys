package com.anythink.core.common.m.d;

import com.anythink.core.common.m.d.f;

/* loaded from: classes2.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    private static g f5734b;

    /* renamed from: c, reason: collision with root package name */
    private static final Object f5735c = new Object();

    /* renamed from: a, reason: collision with root package name */
    private final String f5736a = getClass().getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    private volatile com.anythink.core.common.m.d.a.d f5737d;

    /* renamed from: e, reason: collision with root package name */
    private volatile com.anythink.core.common.m.d.a.d f5738e;

    /* renamed from: f, reason: collision with root package name */
    private volatile com.anythink.core.common.m.d.a.d f5739f;

    private g() {
    }

    public static g a() {
        if (f5734b == null) {
            synchronized (g.class) {
                try {
                    if (f5734b == null) {
                        f5734b = new g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5734b;
    }

    public final void a(f fVar, f.a aVar) {
        com.anythink.core.common.m.d.a.d dVar;
        int iA = fVar.a();
        synchronized (f5735c) {
            try {
                if (iA == 9) {
                    if (this.f5739f == null) {
                        this.f5739f = new com.anythink.core.common.m.d.a.c();
                    }
                    dVar = this.f5739f;
                } else if (iA == 6) {
                    if (this.f5738e == null) {
                        this.f5738e = new com.anythink.core.common.m.d.a.b();
                    }
                    dVar = this.f5738e;
                } else {
                    if (this.f5737d == null) {
                        this.f5737d = new com.anythink.core.common.m.d.a.a();
                    }
                    dVar = this.f5737d;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (dVar != null) {
            dVar.b(fVar, aVar);
        } else if (aVar != null) {
            aVar.a((Throwable) new Exception("socketUploadData is null."));
        }
    }
}
