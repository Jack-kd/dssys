package com.smartdigimkt.z;

import java.util.List;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f45266a = "1";

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.v1.p f45267b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f45268c;

    public b(d dVar, com.smartdigimkt.v1.p pVar) {
        this.f45268c = dVar;
        this.f45267b = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f45268c) {
            try {
                List list = (List) this.f45268c.f45274a.get(this.f45266a);
                if (list != null) {
                    list.remove(this.f45267b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
