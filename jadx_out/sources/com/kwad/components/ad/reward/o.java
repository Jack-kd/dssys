package com.kwad.components.ad.reward;

/* loaded from: classes4.dex */
public final class o {
    public static void a(int i2, int i3, g gVar, com.kwad.components.ad.reward.model.c cVar) {
        if (i2 == 0) {
            com.kwad.sdk.core.adlog.c.p(cVar.getAdTemplate(), 1);
            return;
        }
        if (i2 == 1) {
            if (i3 == 0) {
                if (gVar.tj.lh()) {
                    com.kwad.sdk.core.adlog.c.p(cVar.getAdTemplate(), 1);
                    return;
                }
                return;
            } else if (gVar.tj.lh()) {
                com.kwad.sdk.core.adlog.c.p(cVar.getAdTemplate(), 5);
                return;
            } else {
                com.kwad.sdk.core.adlog.c.p(cVar.getAdTemplate(), 4);
                return;
            }
        }
        if (i2 != 2) {
            return;
        }
        if (i3 == 0) {
            if (gVar.ti.lh()) {
                com.kwad.sdk.core.adlog.c.p(cVar.getAdTemplate(), 1);
            }
        } else if (gVar.ti.lh()) {
            com.kwad.sdk.core.adlog.c.p(cVar.getAdTemplate(), 3);
        } else {
            com.kwad.sdk.core.adlog.c.p(cVar.getAdTemplate(), 2);
        }
    }
}
