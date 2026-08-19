package com.smartdigimkt.l2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.t3.l;

/* loaded from: classes5.dex */
public final class a implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f41621a;

    public a(ImageView imageView) {
        this.f41621a = imageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f41621a;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
