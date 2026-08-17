package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class c6 implements com.smartdigimkt.d5.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f44449a;

    public c6(RoundImageView roundImageView) {
        this.f44449a = roundImageView;
    }

    @Override // com.smartdigimkt.d5.c
    public final void a() {
    }

    @Override // com.smartdigimkt.d5.c
    public final void a(Bitmap bitmap) {
        this.f44449a.setVisibility(0);
        this.f44449a.setImageBitmap(bitmap);
    }
}
