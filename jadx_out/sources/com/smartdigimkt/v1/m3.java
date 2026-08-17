package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes5.dex */
public final class m3 implements com.smartdigimkt.d5.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n3 f44542a;

    public m3(n3 n3Var) {
        this.f44542a = n3Var;
    }

    @Override // com.smartdigimkt.d5.c
    public final void a() {
    }

    @Override // com.smartdigimkt.d5.c
    public final void a(Bitmap bitmap) {
        this.f44542a.f44556a.f43467m.setVisibility(0);
        this.f44542a.f44556a.f43467m.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f44542a.f44556a.f43467m.setImageBitmap(bitmap);
    }
}
