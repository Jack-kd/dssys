package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.SplashEndCardView;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;

/* loaded from: classes5.dex */
public final class f6 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashEndCardView f44473a;

    public f6(SplashEndCardView splashEndCardView) {
        this.f44473a = splashEndCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        d0 d0Var;
        SplashEndCardView splashEndCardView = this.f44473a;
        com.smartdigimkt.m3.e eVar = splashEndCardView.f43248c;
        if (eVar != null) {
            if (eVar.f41927e == 0) {
                d0 d0Var2 = splashEndCardView.mListener;
                if (d0Var2 != null) {
                    d0Var2.a(22);
                    return;
                }
                return;
            }
            CTAButtonLayout cTAButtonLayout = splashEndCardView.f43647i;
            if (cTAButtonLayout == null || view != cTAButtonLayout || (d0Var = splashEndCardView.mListener) == null) {
                return;
            }
            d0Var.a(22);
        }
    }
}
