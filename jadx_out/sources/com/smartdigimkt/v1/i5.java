package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.basead.ui.SimpleMediaATView;

/* loaded from: classes5.dex */
public final class i5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f44501a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j5 f44502b;

    public i5(j5 j5Var, Bitmap bitmap) {
        this.f44502b = j5Var;
        this.f44501a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SimpleMediaATView simpleMediaATView = this.f44502b.f44514b;
        Bitmap bitmap = this.f44501a;
        simpleMediaATView.f43610f = bitmap;
        simpleMediaATView.a(bitmap);
        this.f44502b.f44514b.f43608d.setImageBitmap(this.f44501a);
        this.f44502b.f44514b.f43608d.setVisibility(0);
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44502b.f44514b.getContext(), this.f44501a, new h5(this)));
    }
}
