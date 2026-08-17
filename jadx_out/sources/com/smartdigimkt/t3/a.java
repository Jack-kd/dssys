package com.smartdigimkt.t3;

import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f44275a;

    public a(f fVar) {
        this.f44275a = fVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f44275a) {
            try {
                f fVar = this.f44275a;
                if (fVar.f44293h == null) {
                    return null;
                }
                while (fVar.f44292g > fVar.f44290e) {
                    fVar.d((String) ((Map.Entry) fVar.f44294i.entrySet().iterator().next()).getKey());
                }
                if (this.f44275a.a()) {
                    this.f44275a.d();
                    this.f44275a.f44295j = 0;
                }
                return null;
            } finally {
            }
        }
    }
}
