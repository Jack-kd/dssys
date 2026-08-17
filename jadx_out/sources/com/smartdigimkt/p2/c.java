package com.smartdigimkt.p2;

import com.smartdigimkt.sdk.basead.ui.simpleview.SimplePlayer;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimplePlayer f42586a;

    public c(SimplePlayer simplePlayer) {
        this.f42586a = simplePlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SimplePlayer simplePlayer = this.f42586a;
        if (simplePlayer.f44011i) {
            return;
        }
        simplePlayer.a();
    }
}
