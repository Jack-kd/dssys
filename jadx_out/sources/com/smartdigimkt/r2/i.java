package com.smartdigimkt.r2;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;

/* loaded from: classes5.dex */
public final class i implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f42986a;

    public i(l lVar) {
        this.f42986a = lVar;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f42986a.f42990b.f41816g)) {
            this.f42986a.f42993e.setScaleType(ImageView.ScaleType.FIT_XY);
            this.f42986a.f42993e.setImageBitmap(bitmap);
            this.f42986a.f42993e.setVisibility(0);
            this.f42986a.f42993e.post(new h(this));
        }
    }
}
