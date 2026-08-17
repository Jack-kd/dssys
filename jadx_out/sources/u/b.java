package u;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class b {
    public final String a(byte[] bArr, String str, boolean z2) {
        StringBuilder sb = new StringBuilder();
        try {
            for (byte b3 : bArr) {
                String hexString = Integer.toHexString(b3 & 255);
                if (z2) {
                    hexString = hexString.toUpperCase();
                }
                if (hexString.length() == 1) {
                    sb.append("0");
                }
                sb.append(hexString);
                sb.append(str);
            }
        } catch (Exception unused) {
            AbstractC1777a.b("Security", "toHexString is error");
        }
        return sb.toString();
    }

    public String b(byte[] bArr, boolean z2) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr);
            return a(messageDigest.digest(), "", z2);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }
}
