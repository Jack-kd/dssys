package com.byazt.qkc;

import android.graphics.BitmapFactory;

@com.byazt.kj.hp(hp = {0, 1, 1695, 28})
/* loaded from: classes3.dex */
public class hp {
    public static boolean hp(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        return options.outWidth > 0;
    }

    public static boolean l(byte[] bArr) {
        return bArr != null && bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70;
    }
}
