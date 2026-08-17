package com.byazt.uxh;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

@com.byazt.kj.hp(hp = {0, 1, 1477, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final ImageView.ScaleType hp = ImageView.ScaleType.CENTER_INSIDE;

    /* renamed from: l, reason: collision with root package name */
    public static final Bitmap.Config f26472l = Bitmap.Config.ARGB_4444;

    /* renamed from: a, reason: collision with root package name */
    public final int f26473a;
    public final int eb;

    /* renamed from: j, reason: collision with root package name */
    public int f26475j;
    public final Bitmap.Config jx;

    /* renamed from: s, reason: collision with root package name */
    public final ImageView.ScaleType f26477s;

    /* renamed from: w, reason: collision with root package name */
    public int f26478w;

    /* renamed from: q, reason: collision with root package name */
    public final int f26476q = 3840;

    /* renamed from: e, reason: collision with root package name */
    public final int f26474e = 104857600;

    public hp(int i2, int i3, ImageView.ScaleType scaleType, Bitmap.Config config, int i4, int i5) {
        this.jx = config;
        this.f26475j = i2;
        this.f26478w = i3;
        this.f26477s = scaleType;
        this.f26473a = i4;
        this.eb = i5;
        hp(i2, i3);
    }

    public static int hp(int i2, int i3, int i4, int i5, int i6, int i7) {
        double dMin = Math.min(i2 / i4, i3 / i5);
        if (i6 > 0 && i7 > 0) {
            dMin = Math.max(dMin, Math.min(Math.max(i2, i3) / Math.max(i6, i7), Math.min(i2, i3) / Math.min(i6, i7)));
        }
        float f2 = 1.0f;
        while (true) {
            float f3 = 2.0f * f2;
            if (f3 > dMin) {
                return (int) f2;
            }
            f2 = f3;
        }
    }

    private static int hp(int i2, int i3, int i4, int i5, ImageView.ScaleType scaleType) {
        if (i2 != 0 || i3 != 0) {
            if (scaleType != ImageView.ScaleType.FIT_XY) {
                if (i2 == 0) {
                    return (int) (i4 * (i3 / i5));
                }
                if (i3 == 0) {
                    return i2;
                }
                double d2 = i5 / i4;
                if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                    double d3 = i3;
                    return ((double) i2) * d2 < d3 ? (int) (d3 / d2) : i2;
                }
                double d4 = i3;
                return ((double) i2) * d2 > d4 ? (int) (d4 / d2) : i2;
            }
            if (i2 != 0) {
                return i2;
            }
        }
        return i4;
    }

    public Bitmap hp(byte[] bArr) {
        Bitmap bitmapDecodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.f26475j == 0 && this.f26478w == 0) {
            options.inPreferredConfig = this.jx;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i2 = options.outWidth;
            int i3 = options.outHeight;
            int iHp = hp(this.f26475j, this.f26478w, i2, i3, this.f26477s);
            int iHp2 = hp(this.f26478w, this.f26475j, i3, i2, this.f26477s);
            options.inJustDecodeBounds = false;
            options.inSampleSize = hp(i2, i3, iHp, iHp2, this.f26473a, this.eb);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iHp || bitmapDecodeByteArray.getHeight() > iHp2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iHp, iHp2, true);
                if (bitmapCreateScaledBitmap != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        if (bitmapDecodeByteArray != null && bitmapDecodeByteArray.getByteCount() > 104857600) {
            int width = bitmapDecodeByteArray.getWidth() / 2;
            int height = bitmapDecodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapDecodeByteArray, width, height, true);
                if (bitmapCreateScaledBitmap2 != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                return bitmapCreateScaledBitmap2;
            }
        }
        return bitmapDecodeByteArray;
    }

    private void hp(int i2, int i3) {
        if (i2 > 3840 && i3 > 3840) {
            if (i2 > i3) {
                this.f26475j = 3840;
                this.f26478w = (i3 * 3840) / i2;
                return;
            } else {
                this.f26475j = (i2 * 3840) / i3;
                this.f26478w = 3840;
                return;
            }
        }
        if (i2 > 3840) {
            this.f26475j = 3840;
            this.f26478w = (i3 * 3840) / i2;
        } else if (i3 > 3840) {
            this.f26475j = (i2 * 3840) / i3;
            this.f26478w = 3840;
        }
    }
}
