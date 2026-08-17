package com.smartdigimkt.r1;

import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes5.dex */
public final class l extends com.smartdigimkt.k2.c {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ m f42962h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(m mVar, ViewGroup viewGroup, com.smartdigimkt.p3.a aVar, com.smartdigimkt.l3.a aVar2, k kVar) {
        super(viewGroup, aVar, aVar2, 5, kVar);
        this.f42962h = mVar;
    }

    @Override // com.smartdigimkt.k2.c
    public final ViewGroup.LayoutParams b() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.f42962h.f42966j != null) {
            layoutParams.gravity = 81;
            layoutParams.setMargins(0, 0, 0, 0);
        }
        return layoutParams;
    }
}
