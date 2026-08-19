package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.PlayerView;

/* loaded from: classes5.dex */
public final class q4 implements com.smartdigimkt.b1.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PlayerView f44584a;

    public q4(PlayerView playerView) {
        this.f44584a = playerView;
    }

    @Override // com.smartdigimkt.b1.k
    public final void a(int i2, int i3) {
        PlayerView playerView = this.f44584a;
        playerView.autoFitVideoSize(i2, i3, playerView.f43557v);
    }
}
