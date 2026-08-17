package com.smartdigimkt.h2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.LuckyBagG2CV2View;

/* loaded from: classes5.dex */
public final class j0 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LuckyBagG2CV2View f40502a;

    public j0(LuckyBagG2CV2View luckyBagG2CV2View) {
        this.f40502a = luckyBagG2CV2View;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40502a.f43906j;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
