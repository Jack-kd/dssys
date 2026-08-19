package com.smartdigimkt.e2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView;

/* loaded from: classes5.dex */
public final class o implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SecondEndCardView f40064a;

    public o(SecondEndCardView secondEndCardView) {
        this.f40064a = secondEndCardView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40064a.f43830c;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
