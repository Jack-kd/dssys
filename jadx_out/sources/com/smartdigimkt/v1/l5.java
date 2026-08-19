package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;

/* loaded from: classes5.dex */
public final class l5 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimplePlayerMediaView f44535a;

    public l5(SimplePlayerMediaView simplePlayerMediaView) {
        this.f44535a = simplePlayerMediaView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.c2.d dVar = this.f44535a.f43612b;
        if (dVar != null) {
            BasePlayerView basePlayerView = dVar.f39641h;
            if (basePlayerView != null) {
                dVar.f39643j = null;
                dVar.f39640g = null;
                basePlayerView.setListener(dVar.f39645l);
                dVar.f39641h.rePlayVideo();
            }
            this.f44535a.f43620j.setVisibility(8);
        }
    }
}
