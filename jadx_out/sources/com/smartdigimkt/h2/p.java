package com.smartdigimkt.h2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.GTCV2InnerCountDownView;

/* loaded from: classes5.dex */
public final class p implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GTCV2InnerCountDownView f40522a;

    public p(GTCV2InnerCountDownView gTCV2InnerCountDownView) {
        this.f40522a = gTCV2InnerCountDownView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40522a.f43880f;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
