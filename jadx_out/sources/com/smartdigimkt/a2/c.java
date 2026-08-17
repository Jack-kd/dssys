package com.smartdigimkt.a2;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.basead.ui.animplayerview.scale.AlbumScaleMainView;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f39310a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlbumScaleMainView f39311b;

    public c(AlbumScaleMainView albumScaleMainView, Bitmap bitmap) {
        this.f39311b = albumScaleMainView;
        this.f39310a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlbumScaleMainView albumScaleMainView = this.f39311b;
        albumScaleMainView.f43777b.setBitmapAndResize(this.f39310a, albumScaleMainView.getWidth(), this.f39311b.getHeight());
    }
}
