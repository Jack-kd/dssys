package com.anythink.core.common.v;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.core.view.MotionEventCompat;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.InputStream;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class g {

    public interface a {
        void a();

        void a(Bitmap bitmap);
    }

    public static int[] a(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            return new int[]{options.outWidth, options.outHeight};
        } catch (OutOfMemoryError unused) {
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static InputStream b(Bitmap bitmap) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                try {
                    byteArrayOutputStream.close();
                } catch (Exception unused) {
                }
                return byteArrayInputStream;
            } catch (Exception unused2) {
                if (byteArrayOutputStream == null) {
                    return null;
                }
                try {
                    byteArrayOutputStream.close();
                    return null;
                } catch (Exception unused3) {
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream2 = byteArrayOutputStream;
                if (byteArrayOutputStream2 != null) {
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Exception unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static Bitmap a(String str, int i2, int i3) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = a(options.outWidth, options.outHeight, i2, i3);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError unused) {
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static Bitmap a(FileDescriptor fileDescriptor, int i2, int i3) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            options.inSampleSize = a(options.outWidth, options.outHeight, i2, i3);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static Bitmap a(Context context, int i2, int i3, int i4) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(context.getResources(), i2, options);
            options.inSampleSize = a(options.outWidth, options.outHeight, i3, i4);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeResource(context.getResources(), i2, options);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static int a(int i2, int i3, int i4, int i5) {
        int i6 = 1;
        if (i4 <= 0 && i5 <= 0) {
            return 1;
        }
        while (i2 / i6 > i4 && i3 / i6 > i5) {
            i6 *= 2;
        }
        return i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d2 A[Catch: all -> 0x00d5, TRY_LEAVE, TryCatch #13 {all -> 0x00d5, blocks: (B:54:0x00cc, B:56:0x00d2), top: B:115:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap a(android.content.Context r8, android.graphics.Bitmap r9) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.g.a(android.content.Context, android.graphics.Bitmap):android.graphics.Bitmap");
    }

    public static void a(final Context context, final Bitmap bitmap, final a aVar) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.av, new Runnable() { // from class: com.anythink.core.common.v.g.1
            @Override // java.lang.Runnable
            public final void run() {
                final Bitmap bitmapA = g.a(context, bitmap);
                com.anythink.core.common.d.s.b();
                com.anythink.core.common.d.s.b(new Runnable() { // from class: com.anythink.core.common.v.g.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Bitmap bitmap2;
                        a aVar2 = aVar;
                        if (aVar2 == null || (bitmap2 = bitmapA) == null) {
                            return;
                        }
                        aVar2.a(bitmap2);
                    }
                });
            }
        }));
    }

    private static Bitmap a(Bitmap bitmap) {
        char c2;
        int i2;
        int i3;
        int i4;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i5 = width * height;
        int[] iArr = new int[i5];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i6 = width - 1;
        int i7 = height - 1;
        int[] iArr2 = new int[i5];
        int[] iArr3 = new int[i5];
        int[] iArr4 = new int[i5];
        int[] iArr5 = new int[Math.max(width, height)];
        int[] iArr6 = new int[173056];
        int i8 = 0;
        for (int i9 = 0; i9 < 173056; i9++) {
            iArr6[i9] = i9 / 676;
        }
        char c3 = 2;
        boolean z2 = true;
        char c4 = '3';
        int[][] iArr7 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 51, 3);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            c2 = c3;
            i2 = 25;
            if (i10 >= height) {
                break;
            }
            int i13 = i8;
            int i14 = i13;
            int i15 = i14;
            int i16 = i15;
            int i17 = i16;
            int i18 = i17;
            int i19 = i18;
            int i20 = i19;
            boolean z3 = z2;
            int i21 = -25;
            int i22 = i20;
            while (i21 <= 25) {
                char c5 = c4;
                int i23 = iArr[i11 + Math.min(i6, Math.max(i21, i8))];
                int[] iArr8 = iArr7[i21 + 25];
                iArr8[i8] = (i23 & 16711680) >> 16;
                iArr8[z3 ? 1 : 0] = (i23 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr8[c2] = i23 & 255;
                int iAbs = 26 - Math.abs(i21);
                int i24 = iArr8[i8];
                i22 += i24 * iAbs;
                int i25 = iArr8[z3 ? 1 : 0];
                i13 += i25 * iAbs;
                int i26 = iArr8[c2];
                i14 += iAbs * i26;
                if (i21 > 0) {
                    i18 += i24;
                    i19 += i25;
                    i20 += i26;
                } else {
                    i15 += i24;
                    i16 += i25;
                    i17 += i26;
                }
                i21++;
                c4 = c5;
            }
            char c6 = c4;
            int i27 = i8;
            while (i27 < width) {
                iArr2[i11] = iArr6[i22];
                iArr3[i11] = iArr6[i13];
                iArr4[i11] = iArr6[i14];
                int i28 = i22 - i15;
                int i29 = i13 - i16;
                int i30 = i14 - i17;
                int[] iArr9 = iArr7[(i2 + 26) % 51];
                int i31 = i15 - iArr9[i8];
                int i32 = i16 - iArr9[z3 ? 1 : 0];
                int i33 = i17 - iArr9[c2];
                if (i10 == 0) {
                    i4 = i8;
                    iArr5[i27] = Math.min(i27 + 26, i6);
                } else {
                    i4 = i8;
                }
                int i34 = iArr[i12 + iArr5[i27]];
                int i35 = (i34 & 16711680) >> 16;
                iArr9[i4] = i35;
                int i36 = (i34 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[z3 ? 1 : 0] = i36;
                int i37 = i34 & 255;
                iArr9[c2] = i37;
                int i38 = i18 + i35;
                int i39 = i19 + i36;
                int i40 = i20 + i37;
                i22 = i28 + i38;
                i13 = i29 + i39;
                i14 = i30 + i40;
                i2 = (i2 + 1) % 51;
                int[] iArr10 = iArr7[i2 % 51];
                int i41 = iArr10[i4];
                i15 = i31 + i41;
                int i42 = iArr10[z3 ? 1 : 0];
                i16 = i32 + i42;
                int i43 = iArr10[c2];
                i17 = i33 + i43;
                i18 = i38 - i41;
                i19 = i39 - i42;
                i20 = i40 - i43;
                i11++;
                i27++;
                i8 = i4;
            }
            i12 += width;
            i10++;
            c3 = c2;
            z2 = z3 ? 1 : 0;
            c4 = c6;
        }
        int i44 = i8;
        boolean z4 = z2;
        int i45 = i44;
        while (i45 < width) {
            int i46 = width * (-25);
            int i47 = i45;
            int i48 = -25;
            int i49 = i44;
            int i50 = i49;
            int i51 = i50;
            int i52 = i51;
            int i53 = i52;
            int i54 = i53;
            int i55 = i54;
            int i56 = i55;
            int i57 = i56;
            while (i48 <= i2) {
                int i58 = i44;
                int iMax = Math.max(i58, i46) + i47;
                int[] iArr11 = iArr7[i48 + 25];
                iArr11[i58] = iArr2[iMax];
                iArr11[z4 ? 1 : 0] = iArr3[iMax];
                iArr11[c2] = iArr4[iMax];
                int iAbs2 = 26 - Math.abs(i48);
                i49 += iArr2[iMax] * iAbs2;
                i50 += iArr3[iMax] * iAbs2;
                i51 += iArr4[iMax] * iAbs2;
                if (i48 > 0) {
                    i55 += iArr11[0];
                    i56 += iArr11[z4 ? 1 : 0];
                    i57 += iArr11[c2];
                } else {
                    i52 += iArr11[0];
                    i53 += iArr11[z4 ? 1 : 0];
                    i54 += iArr11[c2];
                }
                if (i48 < i7) {
                    i46 += width;
                }
                i48++;
                i2 = 25;
                i44 = 0;
            }
            int i59 = i47;
            int i60 = 25;
            for (int i61 = 0; i61 < height; i61++) {
                iArr[i59] = (iArr[i59] & (-16777216)) | (iArr6[i49] << 16) | (iArr6[i50] << 8) | iArr6[i51];
                int i62 = i49 - i52;
                int i63 = i50 - i53;
                int i64 = i51 - i54;
                int[] iArr12 = iArr7[(i60 + 26) % 51];
                int i65 = i52 - iArr12[0];
                int i66 = i53 - iArr12[z4 ? 1 : 0];
                int i67 = i54 - iArr12[c2];
                if (i47 == 0) {
                    i3 = i59;
                    iArr5[i61] = Math.min(i61 + 26, i7) * width;
                } else {
                    i3 = i59;
                }
                int i68 = i47 + iArr5[i61];
                int i69 = iArr2[i68];
                iArr12[0] = i69;
                int i70 = iArr3[i68];
                iArr12[z4 ? 1 : 0] = i70;
                int i71 = iArr4[i68];
                iArr12[c2] = i71;
                int i72 = i55 + i69;
                int i73 = i56 + i70;
                int i74 = i57 + i71;
                i49 = i62 + i72;
                i50 = i63 + i73;
                i51 = i64 + i74;
                i60 = (i60 + 1) % 51;
                int[] iArr13 = iArr7[i60];
                int i75 = iArr13[0];
                i52 = i65 + i75;
                int i76 = iArr13[z4 ? 1 : 0];
                i53 = i66 + i76;
                int i77 = iArr13[c2];
                i54 = i67 + i77;
                i55 = i72 - i75;
                i56 = i73 - i76;
                i57 = i74 - i77;
                i59 = i3 + width;
            }
            i44 = 0;
            i45 = i47 + 1;
            i2 = 25;
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmap;
    }
}
