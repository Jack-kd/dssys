package com.ubix.ssp.ad.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.LruCache;
import com.ubix.ssp.open.UBiXAdSetting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes5.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    protected static LruCache<String, Bitmap> f47040a;

    public static Bitmap a(Context context, String str) {
        return a(context, str, 0, false);
    }

    public static byte[] b(Context context, String str) {
        try {
            return a(context.getAssets().open(str));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Bitmap a(Context context, String str, int i2, boolean z2) {
        Bitmap bitmapDecodeByteArray;
        a();
        Bitmap bitmap = f47040a.get(str);
        if (bitmap != null && !bitmap.isRecycled()) {
            return bitmap;
        }
        byte[] bArrB = b(context, str);
        if (bArrB == null || bArrB.length <= 0) {
            bitmapDecodeByteArray = null;
        } else {
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length);
            if (i2 != 0) {
                try {
                    Matrix matrix = new Matrix();
                    matrix.setRotate(i2);
                    bitmapDecodeByteArray = Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        if (bitmapDecodeByteArray != null && !z2) {
            f47040a.put(str, bitmapDecodeByteArray);
        }
        return bitmapDecodeByteArray;
    }

    public static Drawable a(String str) {
        return a(str, false);
    }

    public static Drawable a(String str, boolean z2) {
        UBiXAdSetting uBiXAdSetting;
        if ((str.equals("ubix/ic_logo.png") || str.equals("ubix/ic_logo_dark.webp") || str.equals("ubix/ic_logo_dark_bg.webp")) && (uBiXAdSetting = com.ubix.ssp.ad.d.b.f45794a) != null && uBiXAdSetting.getCustomLogo() != null) {
            return com.ubix.ssp.ad.d.b.f45794a.getCustomLogo();
        }
        if (z2) {
            if (str.equals("ubix/ic_logo.png")) {
                str = "ubix/ic_logo_un.webp";
            } else if (str.equals("ubix/ic_logo_dark.webp")) {
                str = "ubix/ic_logo_dark_un.webp";
            } else if (str.equals("ubix/ic_logo_dark_bg.webp")) {
                str = "ubix/ic_logo_dark_bg_un.webp";
            }
        }
        return new BitmapDrawable(a(com.ubix.ssp.ad.e.a0.c.e(), str));
    }

    private static void a() {
        if (f47040a == null) {
            f47040a = com.ubix.ssp.ad.e.v.e.b().a();
        }
    }

    private static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                try {
                    try {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i2);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                        inputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                byteArrayOutputStream.close();
                inputStream.close();
            }
        }
        byteArrayOutputStream.close();
        inputStream.close();
        return byteArrayOutputStream.toByteArray();
    }
}
