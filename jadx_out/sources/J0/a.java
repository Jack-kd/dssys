package J0;

import android.text.TextUtils;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public abstract class a {
    public static byte[] a(byte[] bArr, String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, NumberFormatException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrC;
        if (TextUtils.isEmpty(str)) {
            return bArr;
        }
        if (TextUtils.isEmpty(str2)) {
            bArrC = new byte[16];
        } else {
            bArrC = str2.startsWith("0x") ? c(str2.substring(2)) : str2.getBytes();
            if (bArrC.length != 16) {
                bArrC = new byte[16];
            }
        }
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
        byte[] bArrC2 = c(str);
        Objects.requireNonNull(bArrC2);
        cipher.init(2, new SecretKeySpec(bArrC2, "AES"), new IvParameterSpec(bArrC));
        return cipher.doFinal(bArr);
    }

    public static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b3 : bArr) {
            String hexString = Integer.toHexString(b3 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    public static byte[] c(String str) throws NumberFormatException {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < str.length() / 2; i2++) {
            int i3 = i2 * 2;
            int i4 = i3 + 1;
            bArr[i2] = (byte) ((Integer.parseInt(str.substring(i3, i4), 16) * 16) + Integer.parseInt(str.substring(i4, i3 + 2), 16));
        }
        return bArr;
    }
}
