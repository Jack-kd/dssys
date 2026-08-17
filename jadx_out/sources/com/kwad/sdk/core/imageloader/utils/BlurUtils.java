package com.kwad.sdk.core.imageloader.utils;

import android.graphics.Bitmap;
import androidx.annotation.IntRange;
import androidx.core.view.MotionEventCompat;
import java.lang.reflect.Array;

/* loaded from: classes4.dex */
public class BlurUtils {
    public static Bitmap stackBlur(Bitmap bitmap, @IntRange(from = 1, to = 180) int i2, boolean z2) {
        Bitmap bitmapCopy;
        int i3;
        int i4 = i2;
        if (z2) {
            bitmapCopy = bitmap;
        } else {
            Bitmap.Config config = bitmap.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            bitmapCopy = bitmap.copy(config, true);
        }
        if (i4 <= 0) {
            return null;
        }
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i5 = width * height;
        int[] iArr = new int[i5];
        bitmapCopy.getPixels(iArr, 0, width, 0, 0, width, height);
        int i6 = width - 1;
        int i7 = height - 1;
        int i8 = i4 + i4;
        int i9 = i8 + 1;
        int[] iArr2 = new int[i5];
        int[] iArr3 = new int[i5];
        int[] iArr4 = new int[i5];
        int[] iArr5 = new int[Math.max(width, height)];
        int i10 = (i8 + 2) >> 1;
        int i11 = i10 * i10;
        int i12 = i11 * 256;
        int[] iArr6 = new int[i12];
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            iArr6[i14] = i14 / i11;
        }
        int[][] iArr7 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i9, 3);
        int i15 = i4 + 1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < height) {
            int[] iArr8 = iArr6;
            int i19 = -i4;
            int i20 = i13;
            int i21 = i20;
            int i22 = i21;
            int i23 = i22;
            int i24 = i23;
            int i25 = i24;
            int i26 = i25;
            int i27 = i26;
            int i28 = i27;
            while (i19 <= i4) {
                int[] iArr9 = iArr4;
                Bitmap bitmap2 = bitmapCopy;
                int i29 = i13;
                int i30 = iArr[i17 + Math.min(i6, Math.max(i19, i29))];
                int[] iArr10 = iArr7[i19 + i4];
                iArr10[i29] = (i30 & 16711680) >> 16;
                iArr10[1] = (i30 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr10[2] = i30 & 255;
                int iAbs = i15 - Math.abs(i19);
                int i31 = iArr10[i29];
                i28 += i31 * iAbs;
                int i32 = iArr10[1];
                i20 += i32 * iAbs;
                int i33 = iArr10[2];
                i21 += iAbs * i33;
                if (i19 > 0) {
                    i25 += i31;
                    i26 += i32;
                    i27 += i33;
                } else {
                    i22 += i31;
                    i23 += i32;
                    i24 += i33;
                }
                i19++;
                iArr4 = iArr9;
                bitmapCopy = bitmap2;
                i13 = 0;
            }
            int[] iArr11 = iArr4;
            Bitmap bitmap3 = bitmapCopy;
            int i34 = i4;
            int i35 = 0;
            while (i35 < width) {
                iArr2[i17] = iArr8[i28];
                iArr3[i17] = iArr8[i20];
                iArr11[i17] = iArr8[i21];
                int i36 = i28 - i22;
                int i37 = i20 - i23;
                int i38 = i21 - i24;
                int[] iArr12 = iArr7[((i34 - i4) + i9) % i9];
                int i39 = i22 - iArr12[0];
                int i40 = i23 - iArr12[1];
                int i41 = i24 - iArr12[2];
                if (i16 == 0) {
                    i3 = i35;
                    iArr5[i3] = Math.min(i35 + i4 + 1, i6);
                } else {
                    i3 = i35;
                }
                int i42 = iArr[i18 + iArr5[i3]];
                int i43 = (i42 & 16711680) >> 16;
                iArr12[0] = i43;
                int i44 = (i42 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr12[1] = i44;
                int i45 = i42 & 255;
                iArr12[2] = i45;
                int i46 = i25 + i43;
                int i47 = i26 + i44;
                int i48 = i27 + i45;
                i28 = i36 + i46;
                i20 = i37 + i47;
                i21 = i38 + i48;
                i34 = (i34 + 1) % i9;
                int[] iArr13 = iArr7[i34 % i9];
                int i49 = iArr13[0];
                i22 = i39 + i49;
                int i50 = iArr13[1];
                i23 = i40 + i50;
                int i51 = iArr13[2];
                i24 = i41 + i51;
                i25 = i46 - i49;
                i26 = i47 - i50;
                i27 = i48 - i51;
                i17++;
                i35 = i3 + 1;
            }
            i18 += width;
            i16++;
            iArr6 = iArr8;
            iArr4 = iArr11;
            bitmapCopy = bitmap3;
            i13 = 0;
        }
        int[] iArr14 = iArr6;
        int[] iArr15 = iArr4;
        Bitmap bitmap4 = bitmapCopy;
        int i52 = 0;
        while (i52 < width) {
            int i53 = -i4;
            int i54 = i52;
            int i55 = i53 * width;
            int i56 = 0;
            int i57 = 0;
            int i58 = 0;
            int i59 = 0;
            int i60 = 0;
            int i61 = 0;
            int i62 = 0;
            int i63 = 0;
            int i64 = 0;
            while (i53 <= i4) {
                int iMax = Math.max(0, i55) + i54;
                int[] iArr16 = iArr7[i53 + i2];
                iArr16[0] = iArr2[iMax];
                iArr16[1] = iArr3[iMax];
                iArr16[2] = iArr15[iMax];
                int iAbs2 = i15 - Math.abs(i53);
                i64 += iArr2[iMax] * iAbs2;
                i56 += iArr3[iMax] * iAbs2;
                i57 += iArr15[iMax] * iAbs2;
                if (i53 > 0) {
                    i61 += iArr16[0];
                    i62 += iArr16[1];
                    i63 += iArr16[2];
                } else {
                    i58 += iArr16[0];
                    i59 += iArr16[1];
                    i60 += iArr16[2];
                }
                if (i53 < i7) {
                    i55 += width;
                }
                i53++;
                i4 = i2;
            }
            int i65 = i64;
            int i66 = i54;
            int i67 = i2;
            for (int i68 = 0; i68 < height; i68++) {
                iArr[i66] = (iArr[i66] & (-16777216)) | (iArr14[i65] << 16) | (iArr14[i56] << 8) | iArr14[i57];
                int i69 = i65 - i58;
                int i70 = i56 - i59;
                int i71 = i57 - i60;
                int[] iArr17 = iArr7[((i67 - i2) + i9) % i9];
                int i72 = i58 - iArr17[0];
                int i73 = i59 - iArr17[1];
                int i74 = i60 - iArr17[2];
                int i75 = i66;
                if (i54 == 0) {
                    iArr5[i68] = Math.min(i68 + i15, i7) * width;
                }
                int i76 = i54 + iArr5[i68];
                int i77 = iArr2[i76];
                iArr17[0] = i77;
                int i78 = iArr3[i76];
                iArr17[1] = i78;
                int i79 = iArr15[i76];
                iArr17[2] = i79;
                int i80 = i61 + i77;
                int i81 = i62 + i78;
                int i82 = i63 + i79;
                i65 = i69 + i80;
                i56 = i70 + i81;
                i57 = i71 + i82;
                i67 = (i67 + 1) % i9;
                int[] iArr18 = iArr7[i67];
                int i83 = iArr18[0];
                i58 = i72 + i83;
                int i84 = iArr18[1];
                i59 = i73 + i84;
                int i85 = iArr18[2];
                i60 = i74 + i85;
                i61 = i80 - i83;
                i62 = i81 - i84;
                i63 = i82 - i85;
                i66 = i75 + width;
            }
            i52 = i54 + 1;
            i4 = i2;
        }
        bitmap4.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmap4;
    }
}
