package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.SplashEndCardView;

/* loaded from: classes5.dex */
public final class i6 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44503a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SplashEndCardView f44504b;

    public i6(SplashEndCardView splashEndCardView, String str) {
        this.f44504b = splashEndCardView;
        this.f44503a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44503a)) {
            this.f44504b.f43644f.setImageBitmap(bitmap);
        }
    }
}
