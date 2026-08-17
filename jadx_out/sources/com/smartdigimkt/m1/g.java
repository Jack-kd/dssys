package com.smartdigimkt.m1;

import android.view.View;

/* loaded from: classes5.dex */
public final class g extends com.smartdigimkt.a4.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f41713a;

    public g(l lVar) {
        this.f41713a = lVar;
    }

    @Override // com.smartdigimkt.a4.a
    public final int getImpressionMinPercentageViewed() {
        return 1;
    }

    @Override // com.smartdigimkt.a4.a
    public final void recordImpression(View view) {
        l lVar = this.f41713a;
        if (lVar.f41754l == 0) {
            lVar.f41754l = System.currentTimeMillis();
        }
    }
}
