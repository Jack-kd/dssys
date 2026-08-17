package com.smartdigimkt.v1;

import android.graphics.Rect;
import com.smartdigimkt.sdk.basead.ui.CloseImageView;

/* loaded from: classes5.dex */
public final class h2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CloseImageView f44489a;

    public h2(CloseImageView closeImageView) {
        this.f44489a = closeImageView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44489a.f43365b = new Rect();
        CloseImageView closeImageView = this.f44489a;
        closeImageView.getHitRect(closeImageView.f43365b);
        float fWidth = this.f44489a.f43365b.width();
        CloseImageView closeImageView2 = this.f44489a;
        int i2 = ((int) ((closeImageView2.f43364a - 1.0f) * fWidth)) / 2;
        float fHeight = closeImageView2.f43365b.height();
        CloseImageView closeImageView3 = this.f44489a;
        int i3 = ((int) ((closeImageView3.f43364a - 1.0f) * fHeight)) / 2;
        Rect rect = closeImageView3.f43365b;
        rect.top -= i3;
        rect.bottom += i3;
        rect.left -= i2;
        rect.right += i2;
    }
}
