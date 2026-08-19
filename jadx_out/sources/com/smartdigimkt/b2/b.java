package com.smartdigimkt.b2;

import com.smartdigimkt.sdk.basead.ui.animplayerview.viewpager.VpMainImgAnimatorView;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ VpMainImgAnimatorView f39571a;

    public b(VpMainImgAnimatorView vpMainImgAnimatorView) {
        this.f39571a = vpMainImgAnimatorView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        VpMainImgAnimatorView vpMainImgAnimatorView = this.f39571a;
        int i2 = VpMainImgAnimatorView.f43789l;
        vpMainImgAnimatorView.a();
    }
}
