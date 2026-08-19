package com.ubix.ssp.ad.e.a0;

import android.graphics.Bitmap;
import androidx.core.view.MotionEventCompat;
import java.lang.reflect.Array;

/* loaded from: classes5.dex */
public class j {
    public static Bitmap a(Bitmap bitmap, int i2, boolean z2) {
        int[] iArr;
        int[] iArr2;
        Bitmap bitmap2;
        int i3;
        int i4 = i2;
        Bitmap bitmapCopy = z2 ? bitmap : bitmap.copy(bitmap.getConfig(), true);
        if (i4 < 1) {
            return null;
        }
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i5 = width * height;
        int[] iArr3 = new int[i5];
        bitmapCopy.getPixels(iArr3, 0, width, 0, 0, width, height);
        int i6 = width - 1;
        int i7 = height - 1;
        int i8 = i4 + i4;
        int i9 = i8 + 1;
        int[] iArr4 = new int[i5];
        int[] iArr5 = new int[i5];
        int[] iArr6 = new int[i5];
        int[] iArr7 = new int[Math.max(width, height)];
        int i10 = (i8 + 2) >> 1;
        int i11 = i10 * i10;
        int i12 = i11 * 256;
        int[] iArr8 = new int[i12];
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            iArr8[i14] = i14 / i11;
        }
        int[][] iArr9 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i9, 3);
        int i15 = i4 + 1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            iArr = iArr8;
            if (i16 >= height) {
                break;
            }
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
            while (true) {
                iArr2 = iArr6;
                bitmap2 = bitmapCopy;
                if (i19 > i4) {
                    break;
                }
                int i29 = i13;
                int i30 = iArr3[i17 + Math.min(i6, Math.max(i19, i29))];
                int[] iArr10 = iArr9[i19 + i4];
                iArr10[i29] = (i30 & 16711680) >> 16;
                iArr10[1] = (i30 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr10[2] = i30 & 255;
                int iAbs = i15 - Math.abs(i19);
                int i31 = iArr10[i29];
                i21 += i31 * iAbs;
                int i32 = iArr10[1];
                i20 += i32 * iAbs;
                int i33 = iArr10[2];
                i28 += iAbs * i33;
                if (i19 > 0) {
                    i27 += i31;
                    i26 += i32;
                    i25 += i33;
                } else {
                    i24 += i31;
                    i23 += i32;
                    i22 += i33;
                }
                i19++;
                iArr6 = iArr2;
                bitmapCopy = bitmap2;
                i13 = 0;
            }
            int i34 = i4;
            int i35 = 0;
            while (i35 < width) {
                iArr4[i17] = iArr[i21];
                iArr5[i17] = iArr[i20];
                iArr2[i17] = iArr[i28];
                int i36 = i21 - i24;
                int i37 = i20 - i23;
                int i38 = i28 - i22;
                int[] iArr11 = iArr9[((i34 - i4) + i9) % i9];
                int i39 = i24 - iArr11[0];
                int i40 = i23 - iArr11[1];
                int i41 = i22 - iArr11[2];
                if (i16 == 0) {
                    i3 = i35;
                    iArr7[i3] = Math.min(i35 + i4 + 1, i6);
                } else {
                    i3 = i35;
                }
                int i42 = iArr3[i18 + iArr7[i3]];
                int i43 = (i42 & 16711680) >> 16;
                iArr11[0] = i43;
                int i44 = (i42 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr11[1] = i44;
                int i45 = i42 & 255;
                iArr11[2] = i45;
                int i46 = i27 + i43;
                int i47 = i26 + i44;
                int i48 = i25 + i45;
                i21 = i36 + i46;
                i20 = i37 + i47;
                i28 = i38 + i48;
                i34 = (i34 + 1) % i9;
                int[] iArr12 = iArr9[i34 % i9];
                int i49 = iArr12[0];
                i24 = i39 + i49;
                int i50 = iArr12[1];
                i23 = i40 + i50;
                int i51 = iArr12[2];
                i22 = i41 + i51;
                i27 = i46 - i49;
                i26 = i47 - i50;
                i25 = i48 - i51;
                i17++;
                i35 = i3 + 1;
            }
            i18 += width;
            i16++;
            iArr8 = iArr;
            iArr6 = iArr2;
            bitmapCopy = bitmap2;
            i13 = 0;
        }
        int[] iArr13 = iArr6;
        Bitmap bitmap3 = bitmapCopy;
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
                int[] iArr14 = iArr9[i53 + i2];
                iArr14[0] = iArr4[iMax];
                iArr14[1] = iArr5[iMax];
                iArr14[2] = iArr13[iMax];
                int iAbs2 = i15 - Math.abs(i53);
                i57 += iArr4[iMax] * iAbs2;
                i56 += iArr5[iMax] * iAbs2;
                i64 += iArr13[iMax] * iAbs2;
                if (i53 > 0) {
                    i63 += iArr14[0];
                    i62 += iArr14[1];
                    i61 += iArr14[2];
                } else {
                    i60 += iArr14[0];
                    i59 += iArr14[1];
                    i58 += iArr14[2];
                }
                if (i53 < i7) {
                    i55 += width;
                }
                i53++;
                i4 = i2;
            }
            int i65 = i2;
            int i66 = i64;
            int i67 = i54;
            for (int i68 = 0; i68 < height; i68++) {
                iArr3[i67] = (iArr3[i67] & (-16777216)) | (iArr[i57] << 16) | (iArr[i56] << 8) | iArr[i66];
                int i69 = i57 - i60;
                int i70 = i56 - i59;
                int i71 = i66 - i58;
                int[] iArr15 = iArr9[((i65 - i2) + i9) % i9];
                int i72 = i60 - iArr15[0];
                int i73 = i59 - iArr15[1];
                int i74 = i58 - iArr15[2];
                int i75 = i65;
                if (i54 == 0) {
                    iArr7[i68] = Math.min(i68 + i15, i7) * width;
                }
                int i76 = i54 + iArr7[i68];
                int i77 = iArr4[i76];
                iArr15[0] = i77;
                int i78 = iArr5[i76];
                iArr15[1] = i78;
                int i79 = iArr13[i76];
                iArr15[2] = i79;
                int i80 = i63 + i77;
                int i81 = i62 + i78;
                int i82 = i61 + i79;
                i57 = i69 + i80;
                i56 = i70 + i81;
                i66 = i71 + i82;
                i65 = (i75 + 1) % i9;
                int[] iArr16 = iArr9[i65];
                int i83 = iArr16[0];
                i60 = i72 + i83;
                int i84 = iArr16[1];
                i59 = i73 + i84;
                int i85 = iArr16[2];
                i58 = i74 + i85;
                i63 = i80 - i83;
                i62 = i81 - i84;
                i61 = i82 - i85;
                i67 += width;
            }
            i52 = i54 + 1;
            i4 = i2;
        }
        bitmap3.setPixels(iArr3, 0, width, 0, 0, width, height);
        return bitmap3;
    }
}
