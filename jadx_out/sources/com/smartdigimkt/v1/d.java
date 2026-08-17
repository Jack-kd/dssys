package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.AsseblemCardSplashATView;

/* loaded from: classes5.dex */
public final class d implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AsseblemCardSplashATView f44450a;

    public d(AsseblemCardSplashATView asseblemCardSplashATView) {
        this.f44450a = asseblemCardSplashATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f44450a.f43175s0;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
