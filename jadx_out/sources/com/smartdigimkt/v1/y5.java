package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.SinglePictureBottomSlideSplashATView;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class y5 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SinglePictureBottomSlideSplashATView f44660a;

    public y5(SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView) {
        this.f44660a = singlePictureBottomSlideSplashATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44660a.f43217c.f41815f)) {
            SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView = this.f44660a;
            WrapRoundImageView wrapRoundImageView = (WrapRoundImageView) singlePictureBottomSlideSplashATView.findViewById(com.smartdigimkt.c5.k.a(singlePictureBottomSlideSplashATView.getContext(), "myoffer_splash_ad_content_image_area", "id"));
            SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView2 = this.f44660a;
            RoundImageView roundImageView = (RoundImageView) singlePictureBottomSlideSplashATView2.findViewById(com.smartdigimkt.c5.k.a(singlePictureBottomSlideSplashATView2.getContext(), "myoffer_splash_bg", "id"));
            wrapRoundImageView.setVisibility(0);
            if (this.f44660a.f43216b.f41644r.f41838A == 2) {
                wrapRoundImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                wrapRoundImageView.setImageBitmap(bitmap);
            } else {
                wrapRoundImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                wrapRoundImageView.post(new w5(this, wrapRoundImageView, bitmap));
            }
            if (roundImageView != null) {
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44660a.getContext(), bitmap, new x5(roundImageView)));
            }
        }
    }
}
