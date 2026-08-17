package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;

/* loaded from: classes5.dex */
public final class c2 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSplashATView f44442a;

    public c2(BaseSplashATView baseSplashATView) {
        this.f44442a = baseSplashATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseSplashATView baseSplashATView = this.f44442a;
        baseSplashATView.a(111);
        if (baseSplashATView.f43341Q == null) {
            baseSplashATView.f43341Q = new com.smartdigimkt.x.n();
        }
        baseSplashATView.f43341Q.a(baseSplashATView.getContext(), baseSplashATView.f43217c, baseSplashATView.f43216b, new d2(baseSplashATView));
    }
}
