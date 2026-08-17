package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;

/* loaded from: classes5.dex */
public final class b6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WrapRoundImageView f44436a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bitmap f44437b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d6 f44438c;

    public b6(d6 d6Var, WrapRoundImageView wrapRoundImageView, Bitmap bitmap) {
        this.f44438c = d6Var;
        this.f44436a = wrapRoundImageView;
        this.f44437b = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44436a.setBitmapAndResize(this.f44437b, this.f44438c.f44455a.getWidth(), this.f44438c.f44455a.getHeight());
    }
}
