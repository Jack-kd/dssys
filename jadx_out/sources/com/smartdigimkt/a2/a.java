package com.smartdigimkt.a2;

import com.smartdigimkt.sdk.basead.ui.animplayerview.scale.AlbumScaleAnimatorView;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlbumScaleAnimatorView f39308a;

    public a(AlbumScaleAnimatorView albumScaleAnimatorView) {
        this.f39308a = albumScaleAnimatorView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlbumScaleAnimatorView albumScaleAnimatorView = this.f39308a;
        albumScaleAnimatorView.f43761f = true;
        albumScaleAnimatorView.f43758c.start();
        this.f39308a.f43759d.setStartDelay(200L);
        this.f39308a.f43759d.start();
        this.f39308a.f43757b.setStartDelay(300L);
        this.f39308a.f43757b.start();
        AlbumScaleAnimatorView albumScaleAnimatorView2 = this.f39308a;
        albumScaleAnimatorView2.f43760e.setMainViewScale(albumScaleAnimatorView2.f43757b.getMainViewScale());
        this.f39308a.f43760e.setStartDelay(300L);
        this.f39308a.f43760e.start();
    }
}
