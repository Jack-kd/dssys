package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;

/* loaded from: classes5.dex */
public final class x1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSplashATView f44647a;

    public x1(BaseSplashATView baseSplashATView) {
        this.f44647a = baseSplashATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.m3.d dVar;
        BaseSplashATView baseSplashATView = this.f44647a;
        com.smartdigimkt.m3.e eVar = baseSplashATView.f43216b.f41644r;
        if (eVar.f41945k == 0 || baseSplashATView.f43349b0) {
            int i2 = BaseSplashATView.f43328d0;
            if (baseSplashATView.f43217c != null && (dVar = eVar.f41897T1) != null) {
                long j2 = dVar.f41836a;
                if (com.smartdigimkt.m3.h.a(1, j2) || com.smartdigimkt.m3.h.a(2, j2)) {
                    com.smartdigimkt.y3.h.b(1, 59, baseSplashATView.f43216b, baseSplashATView.f43217c, (String) null, false);
                }
            }
            this.f44647a.a(1, true);
        }
    }
}
