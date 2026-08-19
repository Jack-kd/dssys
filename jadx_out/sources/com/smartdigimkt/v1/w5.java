package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;

/* loaded from: classes5.dex */
public final class w5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WrapRoundImageView f44641a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bitmap f44642b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y5 f44643c;

    public w5(y5 y5Var, WrapRoundImageView wrapRoundImageView, Bitmap bitmap) {
        this.f44643c = y5Var;
        this.f44641a = wrapRoundImageView;
        this.f44642b = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44641a.setBitmapAndResize(this.f44642b, this.f44643c.f44660a.getWidth(), this.f44643c.f44660a.getHeight());
    }
}
