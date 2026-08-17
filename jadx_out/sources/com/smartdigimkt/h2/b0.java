package com.smartdigimkt.h2;

import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FullOrientationG2CV2View;

/* loaded from: classes5.dex */
public final class b0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullOrientationG2CV2View f40460a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e0 f40461b;

    public b0(e0 e0Var, FullOrientationG2CV2View fullOrientationG2CV2View) {
        this.f40461b = e0Var;
        this.f40460a = fullOrientationG2CV2View;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e0 e0Var = this.f40461b;
        if (e0Var.f40479d != null) {
            int iA = com.smartdigimkt.c5.k.a(e0Var.f40476a, 120.0f);
            int iMin = Math.min(this.f40461b.f40479d.getMeasuredWidth(), this.f40461b.f40479d.getMeasuredHeight());
            if (iMin < iA) {
                this.f40460a.updateSize(iMin);
                this.f40461b.f40480e.setVisibility(0);
            }
        }
    }
}
