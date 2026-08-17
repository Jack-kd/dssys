package com.smartdigimkt.v1;

import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;

/* loaded from: classes5.dex */
public final class e1 implements com.smartdigimkt.y1.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSdkSplashATView f44459a;

    public e1(BaseSdkSplashATView baseSdkSplashATView) {
        this.f44459a = baseSdkSplashATView;
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.y1.k
    public final void b() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void c() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void d() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void e() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void f() {
        ImageView imageView = this.f44459a.f43311g0;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = this.f44459a.f43310f0;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void g() {
        BaseSdkSplashATView baseSdkSplashATView = this.f44459a;
        if (baseSdkSplashATView.f43216b.f41644r.f41927e != 1) {
            baseSdkSplashATView.a(1, 3);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(long j2) {
    }

    @Override // com.smartdigimkt.y1.k
    public final void b(long j2) {
    }

    @Override // com.smartdigimkt.y1.k
    public final void a() {
        BaseSdkSplashATView baseSdkSplashATView = this.f44459a;
        baseSdkSplashATView.f43315k0 = true;
        com.smartdigimkt.c2.d dVar = baseSdkSplashATView.f43229o;
        if (dVar != null) {
            dVar.b(2);
        }
        if (baseSdkSplashATView.f43349b0) {
            baseSdkSplashATView.a(7, true);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(com.smartdigimkt.i0.f fVar) {
        BaseSdkSplashATView baseSdkSplashATView = this.f44459a;
        baseSdkSplashATView.f43315k0 = true;
        com.smartdigimkt.c2.d dVar = baseSdkSplashATView.f43229o;
        if (dVar != null) {
            dVar.b(2);
        }
        if (baseSdkSplashATView.f43349b0) {
            baseSdkSplashATView.a(7, true);
        }
        BaseSdkSplashATView baseSdkSplashATView2 = this.f44459a;
        com.smartdigimkt.y3.h.a(baseSdkSplashATView2.f43216b, baseSdkSplashATView2.f43217c, 2, fVar.a());
    }
}
