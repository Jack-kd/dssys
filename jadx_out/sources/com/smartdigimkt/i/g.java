package com.smartdigimkt.i;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class g implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f40604b;

    public g(String str, RoundImageView roundImageView) {
        this.f40603a = str;
        this.f40604b = roundImageView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f40603a)) {
            this.f40604b.setImageBitmap(bitmap);
        }
    }
}
