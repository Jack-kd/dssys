package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.PlayerView;

/* loaded from: classes5.dex */
public final class n4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o4 f44557a;

    public n4(o4 o4Var) {
        this.f44557a = o4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PlayerView playerView = this.f44557a.f44567a;
        com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, "Video player error!Buffer timeout");
        String str = PlayerView.TAG;
        com.smartdigimkt.y1.k kVar = playerView.f43704o;
        if (kVar != null) {
            kVar.a(fVar);
        }
        if (playerView.f43707r) {
            return;
        }
        playerView.f43704o = null;
    }
}
