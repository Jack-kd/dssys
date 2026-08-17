package com.smartdigimkt.e2;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView;

/* loaded from: classes5.dex */
public final class t implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40070a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SecondEndCardView f40071b;

    public t(SecondEndCardView secondEndCardView, String str) {
        this.f40071b = secondEndCardView;
        this.f40070a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView;
        if (!TextUtils.equals(str, this.f40070a) || (imageView = this.f40071b.f43830c) == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }
}
