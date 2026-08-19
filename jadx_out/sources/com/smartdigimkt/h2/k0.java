package com.smartdigimkt.h2;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes5.dex */
public final class k0 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f40504a;

    public k0(ImageView imageView) {
        this.f40504a = imageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40504a;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
