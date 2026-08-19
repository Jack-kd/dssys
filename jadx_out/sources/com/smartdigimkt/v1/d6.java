package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class d6 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SinglePictureSplashATView f44455a;

    public d6(SinglePictureSplashATView singlePictureSplashATView) {
        this.f44455a = singlePictureSplashATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44455a.f43217c.f41815f)) {
            SinglePictureSplashATView singlePictureSplashATView = this.f44455a;
            WrapRoundImageView wrapRoundImageView = (WrapRoundImageView) singlePictureSplashATView.findViewById(com.smartdigimkt.c5.k.a(singlePictureSplashATView.getContext(), "myoffer_splash_ad_content_image_area", "id"));
            SinglePictureSplashATView singlePictureSplashATView2 = this.f44455a;
            RoundImageView roundImageView = (RoundImageView) singlePictureSplashATView2.findViewById(com.smartdigimkt.c5.k.a(singlePictureSplashATView2.getContext(), "myoffer_splash_bg", "id"));
            wrapRoundImageView.setVisibility(0);
            if (this.f44455a.f43216b.f41644r.f41838A == 2) {
                wrapRoundImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                wrapRoundImageView.setImageBitmap(bitmap);
            } else {
                wrapRoundImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                wrapRoundImageView.post(new b6(this, wrapRoundImageView, bitmap));
            }
            if (roundImageView != null) {
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44455a.getContext(), bitmap, new c6(roundImageView)));
            }
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        String str2 = this.f44455a.f43215a;
    }
}
