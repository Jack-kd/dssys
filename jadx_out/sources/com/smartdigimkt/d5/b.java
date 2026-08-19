package com.smartdigimkt.d5;

import android.content.Context;
import android.graphics.Bitmap;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f39911a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bitmap f39912b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f39913c;

    public b(Context context, Bitmap bitmap, c cVar) {
        this.f39911a = context;
        this.f39912b = bitmap;
        this.f39913c = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.b4.e.a().a(new a(this, d.a(this.f39911a, this.f39912b)));
    }
}
