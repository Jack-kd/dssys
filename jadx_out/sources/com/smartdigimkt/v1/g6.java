package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.SplashEndCardView;

/* loaded from: classes5.dex */
public final class g6 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashEndCardView f44485a;

    public g6(SplashEndCardView splashEndCardView) {
        this.f44485a = splashEndCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        d0 d0Var = this.f44485a.mListener;
        if (d0Var instanceof a1) {
            ((a1) d0Var).f44424a.a(1, true);
        }
    }
}
