package com.smartdigimkt.m1;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.ui.OwnNativeATView;

/* loaded from: classes5.dex */
public final class j extends com.smartdigimkt.k2.c {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ l f41716h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(l lVar, OwnNativeATView ownNativeATView, com.smartdigimkt.m3.k kVar, com.smartdigimkt.l3.a aVar, int i2, i iVar) {
        super(ownNativeATView, kVar, aVar, i2, iVar);
        this.f41716h = lVar;
    }

    @Override // com.smartdigimkt.k2.c
    public final ViewGroup.LayoutParams b() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.f41716h.f41724p != null) {
            layoutParams.gravity = 81;
            layoutParams.setMargins(0, 0, 0, 0);
        }
        return layoutParams;
    }
}
