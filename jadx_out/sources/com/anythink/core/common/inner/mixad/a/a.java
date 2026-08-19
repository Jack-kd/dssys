package com.anythink.core.common.inner.mixad.a;

import android.content.Context;
import android.view.View;
import com.anythink.core.api.bridge.IATBaseAdAdapter;
import com.anythink.core.common.inner.ui.thirdparty.ThirdPartySplashBannerATView;
import com.anythink.core.common.inner.ui.thirdparty.a;
import com.anythink.core.common.l.b.a.b;
import com.anythink.core.common.l.b.a.c;

/* loaded from: classes2.dex */
public final class a implements com.anythink.core.common.l.b.a.a {

    /* renamed from: a, reason: collision with root package name */
    private Context f4686a;

    /* renamed from: b, reason: collision with root package name */
    private b f4687b;

    /* renamed from: c, reason: collision with root package name */
    private IATBaseAdAdapter f4688c;

    /* renamed from: d, reason: collision with root package name */
    private int f4689d;

    /* renamed from: com.anythink.core.common.inner.mixad.a.a$1, reason: invalid class name */
    public class AnonymousClass1 implements a.InterfaceC0059a {
        public AnonymousClass1() {
        }

        @Override // com.anythink.core.common.inner.ui.thirdparty.a.InterfaceC0059a
        public final void a(int i2) {
            if (a.this.f4687b != null) {
                a.this.f4687b.a(i2);
                a.this.f4687b = null;
            }
            if (a.this.f4688c != null) {
                a.this.f4688c.destory();
            }
        }
    }

    public a(com.anythink.core.common.l.d.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f4686a = aVar.a();
        this.f4687b = aVar.i();
        this.f4688c = aVar.f();
        this.f4689d = aVar.a("countdown");
    }

    @Override // com.anythink.core.common.l.b.a.a
    public final c a() {
        if (this.f4686a == null) {
            return null;
        }
        IATBaseAdAdapter iATBaseAdAdapter = this.f4688c;
        View mixView = iATBaseAdAdapter != null ? iATBaseAdAdapter.getMixView() : null;
        if (mixView == null) {
            return null;
        }
        ThirdPartySplashBannerATView thirdPartySplashBannerATView = new ThirdPartySplashBannerATView(this.f4686a);
        thirdPartySplashBannerATView.addBannerView(mixView);
        thirdPartySplashBannerATView.addCountDownView(this.f4689d, new AnonymousClass1());
        return thirdPartySplashBannerATView;
    }

    private c a(View view) {
        ThirdPartySplashBannerATView thirdPartySplashBannerATView = new ThirdPartySplashBannerATView(this.f4686a);
        thirdPartySplashBannerATView.addBannerView(view);
        thirdPartySplashBannerATView.addCountDownView(this.f4689d, new AnonymousClass1());
        return thirdPartySplashBannerATView;
    }
}
