package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.EndCardView;

/* loaded from: classes5.dex */
public final class l2 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44529a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f44530b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EndCardView f44531c;

    public l2(EndCardView endCardView, String str, int i2) {
        this.f44531c = endCardView;
        this.f44529a = str;
        this.f44530b = i2;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44529a)) {
            int i2 = this.f44530b;
            ViewGroup.LayoutParams layoutParams = this.f44531c.f43398h.getLayoutParams();
            layoutParams.width = (int) (i2 * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
            layoutParams.height = i2;
            this.f44531c.f43398h.setLayoutParams(layoutParams);
            this.f44531c.f43398h.setScaleType(ImageView.ScaleType.FIT_XY);
            this.f44531c.f43398h.setImageBitmap(bitmap);
        }
    }
}
