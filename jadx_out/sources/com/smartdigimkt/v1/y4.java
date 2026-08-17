package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.SdkBannerATView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class y4 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f44658a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SdkBannerATView f44659b;

    public y4(SdkBannerATView sdkBannerATView, RoundImageView roundImageView) {
        this.f44659b = sdkBannerATView;
        this.f44658a = roundImageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(this.f44659b.f43217c.f41814e, str)) {
            this.f44658a.setImageBitmap(bitmap);
        }
    }
}
