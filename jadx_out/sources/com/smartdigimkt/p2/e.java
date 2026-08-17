package com.smartdigimkt.p2;

import com.smartdigimkt.b1.k;
import com.smartdigimkt.sdk.basead.ui.simpleview.SimplePlayer;

/* loaded from: classes5.dex */
public final class e implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimplePlayer f42588a;

    public e(SimplePlayer simplePlayer) {
        this.f42588a = simplePlayer;
    }

    @Override // com.smartdigimkt.b1.k
    public final void a(int i2, int i3) {
        SimplePlayer simplePlayer = this.f42588a;
        simplePlayer.autoFitVideoSize(i2, i3, simplePlayer.f44005c);
    }
}
