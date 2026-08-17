package com.smartdigimkt.v3;

import android.graphics.Bitmap;
import java.lang.ref.SoftReference;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final SoftReference f44707a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f44708b;

    public a(Bitmap bitmap, int i2, int i3) {
        this.f44707a = new SoftReference(bitmap);
        this.f44708b = i2 <= 0 || i3 <= 0 || bitmap.getWidth() * 2 < i2 || bitmap.getHeight() * 2 < i3;
    }
}
