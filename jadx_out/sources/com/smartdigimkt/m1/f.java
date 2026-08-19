package com.smartdigimkt.m1;

import com.smartdigimkt.sdk.basead.ui.OwnNativeATView;

/* loaded from: classes5.dex */
public final class f implements com.smartdigimkt.c2.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f41712a;

    public f(l lVar) {
        this.f41712a = lVar;
    }

    @Override // com.smartdigimkt.c2.c
    public final com.smartdigimkt.i0.l a() {
        return this.f41712a.a();
    }

    @Override // com.smartdigimkt.c2.c
    public final com.smartdigimkt.i0.a b() {
        OwnNativeATView ownNativeATView = this.f41712a.f41724p;
        if (ownNativeATView != null) {
            return ownNativeATView.getAdClickRecord(13);
        }
        return null;
    }
}
