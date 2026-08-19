package com.smartdigimkt.h2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.ChopOnceG2CV2View;

/* loaded from: classes5.dex */
public final class d implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChopOnceG2CV2View f40467a;

    public d(ChopOnceG2CV2View chopOnceG2CV2View) {
        this.f40467a = chopOnceG2CV2View;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40467a.f43844i;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
