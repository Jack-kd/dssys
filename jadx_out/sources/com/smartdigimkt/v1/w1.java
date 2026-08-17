package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;

/* loaded from: classes5.dex */
public final class w1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSplashATView f44636a;

    public w1(BaseSplashATView baseSplashATView) {
        this.f44636a = baseSplashATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseSplashATView baseSplashATView = this.f44636a;
        View view2 = baseSplashATView.f43228n;
        if (view2 == null || view2 != view) {
            baseSplashATView.a(1, 2);
        } else {
            baseSplashATView.a(1, 1);
        }
    }
}
