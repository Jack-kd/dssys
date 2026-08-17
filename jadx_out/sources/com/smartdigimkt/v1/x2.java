package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.GuideToClickView;

/* loaded from: classes5.dex */
public final class x2 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GuideToClickView f44648a;

    public x2(GuideToClickView guideToClickView) {
        this.f44648a = guideToClickView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f44648a.f43440c;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
