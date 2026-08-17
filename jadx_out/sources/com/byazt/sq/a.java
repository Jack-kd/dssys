package com.byazt.sq;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.wnd.GifView;
import com.byazt.ymw.jl;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import x.AbstractC1796a;
import x.AbstractC1797b;

@com.byazt.kj.hp(hp = {0, 1, 1453, 54})
/* loaded from: classes3.dex */
public class a {
    public static final byte[] hp = hp("VP8X");

    private static byte[] hp(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new byte[1];
        }
    }

    private static void j(final ImageView imageView, byte[] bArr, int i2, int i3) {
        final Bitmap bitmapHp = new com.byazt.uxh.hp(i2, i3, imageView.getScaleType(), Bitmap.Config.RGB_565, i2, i3).hp(bArr);
        if (bitmapHp != null) {
            com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.sq.a.2
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(bitmapHp);
                }
            });
        }
    }

    private static void jx(final ImageView imageView, byte[] bArr, int i2, int i3) {
        if (!hp(bArr)) {
            j(imageView, bArr, i2, i3);
        } else {
            final com.byazt.ck.hp hpVarHp = com.byazt.ck.hp.hp(ByteBuffer.wrap(bArr));
            com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.sq.a.1
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageDrawable(hpVarHp);
                }
            });
        }
    }

    public static void l(ImageView imageView, byte[] bArr, int i2, int i3) {
        try {
            if (imageView instanceof GifView) {
                ((GifView) imageView).hp(bArr, false);
                return;
            }
            if (TextUtils.equals("png", jl.hp(Arrays.copyOfRange(bArr, 0, jl.hp())))) {
                jx(imageView, bArr, i2, i3);
            } else if (hp(bArr, 0)) {
                hp(imageView, bArr, i2, i3);
            } else {
                j(imageView, bArr, i2, i3);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static boolean hp(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return false;
        }
        return hp.hp(bArr);
    }

    public static void hp(final ImageView imageView, byte[] bArr, int i2, int i3) throws IOException {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                final Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(byteBufferWrap));
                com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.sq.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AbstractC1796a.a(drawableDecodeDrawable)) {
                            AbstractC1797b.a(drawableDecodeDrawable).start();
                        }
                        imageView.setImageDrawable(drawableDecodeDrawable);
                    }
                });
                return;
            } catch (IOException unused) {
                return;
            }
        }
        j(imageView, bArr, i2, i3);
    }

    public static boolean hp(byte[] bArr, int i2) {
        boolean zHp;
        int i3;
        try {
            zHp = hp(bArr, i2 + 12, hp);
            i3 = i2 + 20;
        } catch (Throwable unused) {
        }
        if (bArr.length <= i3) {
            return false;
        }
        return zHp && ((bArr[i3] & 2) == 2);
    }

    private static boolean hp(byte[] bArr, int i2, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i2 > bArr.length) {
            return false;
        }
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            if (bArr[i3 + i2] != bArr2[i3]) {
                return false;
            }
        }
        return true;
    }
}
