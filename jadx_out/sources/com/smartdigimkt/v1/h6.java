package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.basead.ui.SplashEndCardView;

/* loaded from: classes5.dex */
public final class h6 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashEndCardView f44494a;

    public h6(SplashEndCardView splashEndCardView) {
        this.f44494a = splashEndCardView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (bitmap != null) {
            this.f44494a.f43650l.setImageBitmap(bitmap);
        }
    }
}
