package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView;

/* loaded from: classes5.dex */
public final class p5 extends com.smartdigimkt.a4.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimplePlayerMediaView f44576a;

    public p5(SimplePlayerMediaView simplePlayerMediaView) {
        this.f44576a = simplePlayerMediaView;
    }

    @Override // com.smartdigimkt.a4.a
    public final int getImpressionMinPercentageViewed() {
        return 50;
    }

    @Override // com.smartdigimkt.a4.a
    public final void recordImpression(View view) {
        com.smartdigimkt.c2.d dVar;
        this.f44576a.f43626p.set(false);
        SimplePlayerMediaView simplePlayerMediaView = this.f44576a;
        if (simplePlayerMediaView.f43625o || (dVar = simplePlayerMediaView.f43612b) == null) {
            return;
        }
        dVar.c();
    }
}
