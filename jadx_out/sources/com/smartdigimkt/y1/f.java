package com.smartdigimkt.y1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.animation.AlphaAnimation;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView;

/* loaded from: classes5.dex */
public final class f implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f45172a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f45173b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseAnimPlayerView f45174c;

    public f(BaseAnimPlayerView baseAnimPlayerView, int i2, int i3) {
        this.f45174c = baseAnimPlayerView;
        this.f45172a = i2;
        this.f45173b = i3;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f45174c.f43686w)) {
            this.f45174c.f43688y.setBitmapAndResize(bitmap, this.f45172a, this.f45173b);
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f45174c.getContext(), bitmap, new e(this)));
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.3f, 1.0f);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setDuration(100L);
            this.f45174c.f43688y.startAnimation(alphaAnimation);
            this.f45174c.f43687x.startAnimation(alphaAnimation);
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        this.f45174c.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4595l, com.anythink.core.common.inner.b.b.f4577T));
    }
}
