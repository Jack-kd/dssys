package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;

/* loaded from: classes5.dex */
public final class g1 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSdkSplashATView f44479a;

    public g1(BaseSdkSplashATView baseSdkSplashATView) {
        this.f44479a = baseSdkSplashATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44479a.f43217c.f41815f)) {
            ImageView imageView = this.f44479a.f43311g0;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            this.f44479a.f43310f0.setImageBitmap(bitmap);
        }
    }
}
