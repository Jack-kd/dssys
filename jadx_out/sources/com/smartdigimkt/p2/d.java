package com.smartdigimkt.p2;

import android.text.TextUtils;
import com.smartdigimkt.g2.q;
import com.smartdigimkt.j0.b0;
import com.smartdigimkt.j0.g;
import com.smartdigimkt.sdk.basead.ui.simpleview.SimplePlayer;

/* loaded from: classes5.dex */
public final class d extends b0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimplePlayer f42587a;

    public d(SimplePlayer simplePlayer) {
        this.f42587a = simplePlayer;
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a(g gVar) {
        boolean z2;
        if (gVar != null) {
            z2 = gVar.f40881a == 0;
            if (gVar.getCause() != null && !TextUtils.isEmpty(gVar.getCause().getMessage())) {
                gVar.getCause().getMessage();
            }
        } else {
            z2 = false;
        }
        SimplePlayer simplePlayer = this.f42587a;
        if (!simplePlayer.f44008f || !z2) {
            String str = SimplePlayer.TAG;
            return;
        }
        String str2 = SimplePlayer.TAG;
        simplePlayer.f44008f = false;
        simplePlayer.f44003a.a(simplePlayer.f44004b);
    }

    @Override // com.smartdigimkt.j0.c0
    public final void a(int i2) {
        String str = SimplePlayer.TAG;
        if (i2 != 3) {
            return;
        }
        SimplePlayer simplePlayer = this.f42587a;
        simplePlayer.f44011i = true;
        f fVar = simplePlayer.f44012j;
        if (fVar != null) {
            ((q) fVar).f40356a.f40364s = true;
        }
    }
}
