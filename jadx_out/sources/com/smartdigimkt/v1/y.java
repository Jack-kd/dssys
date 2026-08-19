package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseATView;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;

/* loaded from: classes5.dex */
public final class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f44651a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseATView f44652b;

    public y(BaseATView baseATView, com.smartdigimkt.m3.c cVar) {
        this.f44652b = baseATView;
        this.f44651a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.e eVar;
        View view = this.f44652b.f43228n;
        if (!(view instanceof ScanningAnimButton) || (eVar = this.f44651a.f41832w) == null) {
            return;
        }
        ((ScanningAnimButton) view).startAnimation(eVar.f41845C0);
    }
}
