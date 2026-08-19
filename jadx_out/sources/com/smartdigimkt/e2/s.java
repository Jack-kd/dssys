package com.smartdigimkt.e2;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView;

/* loaded from: classes5.dex */
public final class s implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40068a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SecondEndCardView f40069b;

    public s(SecondEndCardView secondEndCardView, String str) {
        this.f40069b = secondEndCardView;
        this.f40068a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        RoundImageView roundImageView;
        if (!TextUtils.equals(str, this.f40068a) || (roundImageView = this.f40069b.f43829b) == null) {
            return;
        }
        roundImageView.setImageBitmap(bitmap);
    }
}
