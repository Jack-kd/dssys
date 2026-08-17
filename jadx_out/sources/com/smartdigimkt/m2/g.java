package com.smartdigimkt.m2;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes5.dex */
public final class g implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f41761a;

    public g(ImageView imageView) {
        this.f41761a = imageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f41761a;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
