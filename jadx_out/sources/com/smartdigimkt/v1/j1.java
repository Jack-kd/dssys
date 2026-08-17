package com.smartdigimkt.v1;

import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class j1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44507a;

    public j1(BaseShakeView baseShakeView) {
        this.f44507a = baseShakeView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ImageView imageView = this.f44507a.f43316a;
        if (imageView == null || imageView.getWidth() <= 0 || this.f44507a.f43316a.getHeight() <= 0) {
            return;
        }
        this.f44507a.f43316a.setPivotX((int) (this.f44507a.f43316a.getWidth() * 0.8d));
        this.f44507a.f43316a.setPivotY((int) (this.f44507a.f43316a.getHeight() * 0.8d));
    }
}
