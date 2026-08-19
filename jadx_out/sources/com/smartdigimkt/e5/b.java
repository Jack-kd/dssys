package com.smartdigimkt.e5;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.x3.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f40078a;

    public b(c cVar) {
        this.f40078a = cVar;
    }

    @Override // com.smartdigimkt.x3.b
    public final boolean a() {
        return false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f40078a.mHasReturn) {
            return;
        }
        this.f40078a.isAdTimeout = true;
        c cVar = this.f40078a;
        cVar.onTimeout(cVar.mRequestId);
    }
}
