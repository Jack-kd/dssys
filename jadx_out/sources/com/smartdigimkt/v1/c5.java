package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.SdkBannerATView;
import com.smartdigimkt.sdk.core.common.res.image.RecycleImageView;

/* loaded from: classes5.dex */
public final class c5 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44445a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecycleImageView f44446b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecycleImageView f44447c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SdkBannerATView f44448d;

    public c5(SdkBannerATView sdkBannerATView, String str, RecycleImageView recycleImageView, RecycleImageView recycleImageView2) {
        this.f44448d = sdkBannerATView;
        this.f44445a = str;
        this.f44446b = recycleImageView;
        this.f44447c = recycleImageView2;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(this.f44445a, str)) {
            this.f44446b.setImageBitmap(bitmap);
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44448d.getContext(), bitmap, new b5(this)));
        }
    }
}
