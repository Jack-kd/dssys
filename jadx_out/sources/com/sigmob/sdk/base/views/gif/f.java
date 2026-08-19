package com.sigmob.sdk.base.views.gif;

import android.graphics.Bitmap;
import com.sigmob.sdk.base.views.gif.a;

/* loaded from: classes4.dex */
public class f implements a.InterfaceC0767a {
    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC0767a
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC0767a
    public int[] b(int i2) {
        return new int[i2];
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC0767a
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC0767a
    public void a(byte[] bArr) {
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC0767a
    public void a(int[] iArr) {
    }

    @Override // com.sigmob.sdk.base.views.gif.a.InterfaceC0767a
    public byte[] a(int i2) {
        return new byte[i2];
    }
}
