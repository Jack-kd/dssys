package com.meishu.sdk.core.view.gif;

import android.graphics.Bitmap;
import com.meishu.sdk.core.view.gif.GifDecoder;

/* loaded from: classes4.dex */
final class SimpleBitmapProvider implements GifDecoder.BitmapProvider {
    @Override // com.meishu.sdk.core.view.gif.GifDecoder.BitmapProvider
    public Bitmap obtain(int i2, int i3, Bitmap.Config config) {
        try {
            return Bitmap.createBitmap(i2, i3, config);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.meishu.sdk.core.view.gif.GifDecoder.BitmapProvider
    public byte[] obtainByteArray(int i2) {
        return new byte[i2];
    }

    @Override // com.meishu.sdk.core.view.gif.GifDecoder.BitmapProvider
    public int[] obtainIntArray(int i2) {
        return new int[i2];
    }

    @Override // com.meishu.sdk.core.view.gif.GifDecoder.BitmapProvider
    public void release(byte[] bArr) {
    }

    @Override // com.meishu.sdk.core.view.gif.GifDecoder.BitmapProvider
    public void release(int[] iArr) {
    }

    @Override // com.meishu.sdk.core.view.gif.GifDecoder.BitmapProvider
    public void release(Bitmap bitmap) {
        bitmap.recycle();
    }
}
