package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class l1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44528a;

    public l1(BaseShakeView baseShakeView) {
        this.f44528a = baseShakeView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseShakeView baseShakeView = this.f44528a;
        ImageView imageView = baseShakeView.f43316a;
        if (imageView != null) {
            Bitmap bitmap = baseShakeView.f43325j;
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
            } else {
                imageView.setImageResource(com.smartdigimkt.c5.k.a(baseShakeView.getContext(), "myoffer_shake_icon", "drawable"));
            }
        }
        BaseShakeView baseShakeView2 = this.f44528a;
        ImageView imageView2 = baseShakeView2.f43317b;
        if (imageView2 != null) {
            Bitmap bitmap2 = baseShakeView2.f43325j;
            if (bitmap2 != null) {
                imageView2.setImageBitmap(bitmap2);
            } else {
                imageView2.setImageResource(com.smartdigimkt.c5.k.a(baseShakeView2.getContext(), "myoffer_shake_icon", "drawable"));
            }
        }
    }
}
