package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class x5 implements com.smartdigimkt.d5.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f44650a;

    public x5(RoundImageView roundImageView) {
        this.f44650a = roundImageView;
    }

    @Override // com.smartdigimkt.d5.c
    public final void a() {
    }

    @Override // com.smartdigimkt.d5.c
    public final void a(Bitmap bitmap) {
        this.f44650a.setVisibility(0);
        this.f44650a.setImageBitmap(bitmap);
    }
}
