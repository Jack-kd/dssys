package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;

/* loaded from: classes5.dex */
public final class o5 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimplePlayerMediaView f44568a;

    public o5(SimplePlayerMediaView simplePlayerMediaView) {
        this.f44568a = simplePlayerMediaView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SimplePlayerMediaView simplePlayerMediaView = this.f44568a;
        com.smartdigimkt.c2.d dVar = simplePlayerMediaView.f43612b;
        if (dVar == null || simplePlayerMediaView.f43614d == null) {
            return;
        }
        BasePlayerView basePlayerView = dVar.f39641h;
        if (basePlayerView != null ? basePlayerView.isMute() : false) {
            this.f44568a.f43614d.setMute(false);
            this.f44568a.f43612b.b(false);
        } else {
            this.f44568a.f43614d.setMute(true);
            this.f44568a.f43612b.b(true);
        }
    }
}
