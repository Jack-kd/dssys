package com.kwad.sdk.core.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes4.dex */
public final class g {
    private static byte[] a(byte[] bArr, Cipher cipher, int i2) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                int length = bArr.length;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    int i5 = length - i3;
                    if (i5 <= 0) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        return byteArray;
                    }
                    byte[] bArrDoFinal = cipher.doFinal(bArr, i3, Math.min(i5, i2));
                    byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
                    i4++;
                    i3 = i4 * i2;
                }
            } finally {
            }
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            return new byte[0];
        }
    }

    public static byte[] e(byte[] bArr, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (str == null || str.isEmpty()) {
            return null;
        }
        RSAPublicKey rSAPublicKeyEH = eH(str);
        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
        cipher.init(1, rSAPublicKeyEH);
        return a(bArr, cipher, (rSAPublicKeyEH.getModulus().bitLength() / 8) - 66);
    }

    private static RSAPublicKey eH(String str) {
        return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(c.LP().decode(str)));
    }
}
