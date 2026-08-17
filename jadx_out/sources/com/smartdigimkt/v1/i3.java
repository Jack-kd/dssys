package com.smartdigimkt.v1;

/* loaded from: classes5.dex */
public final class i3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j3 f44499a;

    public i3(j3 j3Var) {
        this.f44499a = j3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f44499a.f44510b.clearAnimation();
            this.f44499a.f44510b.setAlpha(0.0f);
            j3 j3Var = this.f44499a;
            j3Var.f44509a.removeView(j3Var.f44510b);
        } catch (Throwable unused) {
        }
    }
}
