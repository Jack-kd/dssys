package com.byakv.z;

import com.byazt.dnb.eb;
import com.byazt.gt.e;

/* loaded from: classes2.dex */
public class TTEncryptUtils {
    static {
        try {
            eb.hp("tobEmbedEncrypt");
        } catch (UnsatisfiedLinkError e2) {
            e.l(e2);
        }
    }

    public static native String clientPackedBase64(byte[] bArr, int i2);

    public static native byte[] clientUnpackedBase64(String str);

    public static native String getDA0Result(String str);

    public static native int[] getDI0Result(String[] strArr);

    public static byte[] hp(byte[] bArr, int i2) {
        try {
            return ttEncrypt(bArr, i2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] l(byte[] bArr, int i2) {
        try {
            return ttDecrypt(bArr, i2);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static native byte[] ttDecrypt(byte[] bArr, int i2);

    private static native byte[] ttEncrypt(byte[] bArr, int i2);
}
