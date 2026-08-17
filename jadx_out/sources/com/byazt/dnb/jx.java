package com.byazt.dnb;

import com.byakv.z.TTEncryptUtils;

@com.byazt.kj.hp(hp = {0, 1, 1239, 30})
/* loaded from: classes2.dex */
public class jx {
    public static byte[] hp(byte[] bArr, int i2) {
        if (bArr != null && i2 > 0) {
            try {
                if (bArr.length == i2) {
                    return TTEncryptUtils.hp(bArr, i2);
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
