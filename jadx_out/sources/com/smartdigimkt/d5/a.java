package com.smartdigimkt.d5;

import android.graphics.Bitmap;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f39909a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f39910b;

    public a(b bVar, Bitmap bitmap) {
        this.f39910b = bVar;
        this.f39909a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f39910b.f39913c;
        if (cVar != null) {
            Bitmap bitmap = this.f39909a;
            if (bitmap != null) {
                cVar.a(bitmap);
            } else {
                cVar.a();
            }
        }
    }
}
