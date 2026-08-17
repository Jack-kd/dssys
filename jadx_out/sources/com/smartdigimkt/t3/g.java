package com.smartdigimkt.t3;

import android.graphics.Bitmap;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f44299a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f44300b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f44301c;

    public g(Bitmap bitmap, l lVar, String str) {
        this.f44299a = bitmap;
        this.f44300b = lVar;
        this.f44301c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap = this.f44299a;
        if (bitmap != null) {
            this.f44300b.a(this.f44301c, bitmap);
        } else {
            this.f44300b.a("Bitmap load fail");
        }
    }
}
