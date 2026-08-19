package com.smartdigimkt.e;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.china.formatbusiness.ui.LeftSkipSinglePictureSplashATView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class g0 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39933a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f39934b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f39935c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ LeftSkipSinglePictureSplashATView f39936d;

    public g0(int i2, LeftSkipSinglePictureSplashATView leftSkipSinglePictureSplashATView, RoundImageView roundImageView, String str) {
        this.f39936d = leftSkipSinglePictureSplashATView;
        this.f39933a = str;
        this.f39934b = roundImageView;
        this.f39935c = i2;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (!TextUtils.equals(str, this.f39933a) || this.f39934b == null) {
            return;
        }
        if (bitmap == null || bitmap.isRecycled()) {
            LeftSkipSinglePictureSplashATView.a(this.f39935c, this.f39936d, this.f39934b, this.f39933a);
        } else {
            this.f39934b.setImageBitmap(bitmap);
            LeftSkipSinglePictureSplashATView.a(this.f39934b);
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        LeftSkipSinglePictureSplashATView.a(this.f39935c, this.f39936d, this.f39934b, this.f39933a);
    }
}
