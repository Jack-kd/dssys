package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView;

/* loaded from: classes5.dex */
public final class n5 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f44558a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimplePlayerMediaView f44559b;

    public n5(SimplePlayerMediaView simplePlayerMediaView, com.smartdigimkt.m3.c cVar) {
        this.f44559b = simplePlayerMediaView;
        this.f44558a = cVar;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44558a.f41815f)) {
            ImageView imageView = this.f44559b.f43622l;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            this.f44559b.f43621k.setImageBitmap(bitmap);
        }
    }
}
