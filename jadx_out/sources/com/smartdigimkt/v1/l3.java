package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public final class l3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f44532a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n3 f44533b;

    public l3(n3 n3Var, Bitmap bitmap) {
        this.f44533b = n3Var;
        this.f44532a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int width = this.f44533b.f44556a.getWidth();
        int height = this.f44533b.f44556a.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int[] iArrA = com.smartdigimkt.z3.d.a(width, height, this.f44532a.getWidth() / this.f44532a.getHeight());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f44533b.f44556a.f43468n.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = iArrA[0];
            layoutParams.height = iArrA[1];
            layoutParams.addRule(13);
            this.f44533b.f44556a.f43468n.setLayoutParams(layoutParams);
        }
    }
}
