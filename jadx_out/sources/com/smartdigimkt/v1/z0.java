package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;

/* loaded from: classes5.dex */
public final class z0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSdkSplashATView f44662a;

    public z0(BaseSdkSplashATView baseSdkSplashATView) {
        this.f44662a = baseSdkSplashATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseSdkSplashATView baseSdkSplashATView = this.f44662a;
        com.smartdigimkt.m3.e eVar = baseSdkSplashATView.f43216b.f41644r;
        if (eVar == null || eVar.f41927e != 0) {
            return;
        }
        baseSdkSplashATView.a(1, 3);
    }
}
