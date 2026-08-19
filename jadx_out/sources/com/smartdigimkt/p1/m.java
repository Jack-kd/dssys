package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f42563a;

    public m(r rVar) {
        this.f42563a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42563a.f42576g;
        if (aVar instanceof g) {
            ((g) aVar).onRewardTaskFirst();
        }
    }
}
