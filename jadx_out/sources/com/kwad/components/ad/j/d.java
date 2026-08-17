package com.kwad.components.ad.j;

import com.kwad.sdk.core.network.e;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.network.h;
import com.kwad.sdk.internal.api.SceneImpl;

/* loaded from: classes4.dex */
public class d implements h.a {
    private static volatile d Nw;

    private d() {
    }

    public static d om() {
        if (Nw == null) {
            synchronized (d.class) {
                try {
                    if (Nw == null) {
                        Nw = new d();
                    }
                } finally {
                }
            }
        }
        return Nw;
    }

    @Override // com.kwad.sdk.core.network.h.a
    public final void a(f fVar, int i2) {
        SceneImpl scene;
        if (!(fVar instanceof com.kwad.components.core.request.a) || i2 == e.aTe.errorCode || (scene = fVar.getScene()) == null) {
            return;
        }
        com.kwad.components.core.p.a.vL().c(scene.getPosId(), i2 == e.aSZ.errorCode ? 21001 : i2 == e.aTd.errorCode ? 21003 : (i2 <= 0 || i2 >= 1000) ? 21004 : 21002);
    }

    public final void init() {
        h.Mg().a(this);
    }
}
