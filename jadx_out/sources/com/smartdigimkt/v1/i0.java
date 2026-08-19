package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;

/* loaded from: classes5.dex */
public final class i0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44496a;

    public i0(BaseScreenATView baseScreenATView) {
        this.f44496a = baseScreenATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseScreenATView baseScreenATView = this.f44496a;
        com.smartdigimkt.c2.d dVar = baseScreenATView.f43229o;
        if (dVar == null || baseScreenATView.f43297o0 == null) {
            return;
        }
        BasePlayerView basePlayerView = dVar.f39641h;
        if (basePlayerView != null ? basePlayerView.isMute() : false) {
            BaseScreenATView baseScreenATView2 = this.f44496a;
            baseScreenATView2.f43284b0 = false;
            baseScreenATView2.f43297o0.setMute(false);
            this.f44496a.f43229o.b(false);
            return;
        }
        BaseScreenATView baseScreenATView3 = this.f44496a;
        baseScreenATView3.f43284b0 = true;
        baseScreenATView3.f43297o0.setMute(true);
        this.f44496a.f43229o.b(true);
    }
}
