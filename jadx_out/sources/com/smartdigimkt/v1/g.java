package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.ui.AsseblemCardSplashATView;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class g implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f44474a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WrapRoundImageView f44475b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f44476c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AsseblemCardSplashATView f44477d;

    public g(AsseblemCardSplashATView asseblemCardSplashATView, FrameLayout frameLayout, WrapRoundImageView wrapRoundImageView, RoundImageView roundImageView) {
        this.f44477d = asseblemCardSplashATView;
        this.f44474a = frameLayout;
        this.f44475b = wrapRoundImageView;
        this.f44476c = roundImageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44477d.f43217c.f41815f)) {
            this.f44474a.post(new e(this, bitmap));
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44477d.getContext(), bitmap, new f(this)));
        }
    }
}
