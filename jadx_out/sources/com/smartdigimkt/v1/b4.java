package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.MraidSplashATView;

/* loaded from: classes5.dex */
public final class b4 implements u3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidSplashATView f44434a;

    public b4(MraidSplashATView mraidSplashATView) {
        this.f44434a = mraidSplashATView;
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a(String str) {
        MraidSplashATView mraidSplashATView = this.f44434a;
        mraidSplashATView.f43217c.f41821l = str;
        mraidSplashATView.a(1, 13);
    }

    @Override // com.smartdigimkt.v1.u3
    public final void b() {
        this.f44434a.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, com.anythink.core.common.inner.b.b.f4579V));
        this.f44434a.a(5, true);
    }

    @Override // com.smartdigimkt.v1.u3
    public final void c() {
        this.f44434a.a(106);
        MraidSplashATView mraidSplashATView = this.f44434a;
        int size = mraidSplashATView.f43225k.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) mraidSplashATView.f43225k.get(i2);
            if (view != null) {
                view.setOnClickListener(mraidSplashATView.f43342R);
            }
        }
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a() {
        try {
            MraidSplashATView mraidSplashATView = this.f44434a;
            int i2 = MraidSplashATView.f43504f0;
            if (mraidSplashATView.f43217c.j() && mraidSplashATView.f43505e0 == null) {
                return;
            }
            int i3 = mraidSplashATView.f43216b.f41644r.f41892S;
            if (i3 < 0) {
                i3 = 100;
            }
            mraidSplashATView.a(i3, new c4(mraidSplashATView));
        } catch (Throwable unused) {
        }
    }
}
