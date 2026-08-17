package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f44548a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WrapRoundImageView f44549b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f44550c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AsseblemSplashATView f44551d;

    public n(AsseblemSplashATView asseblemSplashATView, FrameLayout frameLayout, WrapRoundImageView wrapRoundImageView, RoundImageView roundImageView) {
        this.f44551d = asseblemSplashATView;
        this.f44548a = frameLayout;
        this.f44549b = wrapRoundImageView;
        this.f44550c = roundImageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44551d.f43217c.f41815f)) {
            this.f44548a.post(new l(this, bitmap));
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44551d.getContext(), bitmap, new m(this)));
        }
    }
}
