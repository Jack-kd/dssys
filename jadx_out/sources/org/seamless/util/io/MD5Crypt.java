package org.seamless.util.io;

import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

/* loaded from: classes5.dex */
public class MD5Crypt {
    private static final String SALTCHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    private static final String itoa64 = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    private static final int bytes2u(byte b3) {
        return b3 & 255;
    }

    private static final void clearbits(byte[] bArr) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = 0;
        }
    }

    public static final String crypt(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        Random random = new Random();
        while (stringBuffer.length() < 8) {
            int iNextFloat = (int) (random.nextFloat() * 62);
            stringBuffer.append(SALTCHARS.substring(iNextFloat, iNextFloat + 1));
        }
        return crypt(str, stringBuffer.toString(), "$1$");
    }

    public static boolean isEqual(String str, String str2) {
        return isEqual(str.toCharArray(), str2);
    }

    private static final String to64(long j2, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            i2--;
            if (i2 < 0) {
                return stringBuffer.toString();
            }
            stringBuffer.append(itoa64.charAt((int) (63 & j2)));
            j2 >>>= 6;
        }
    }

    public static boolean isEqual(char[] cArr, String str) {
        String[] strArrSplit = str.split("\\$");
        if (strArrSplit.length != 4) {
            return false;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = crypt(new String(cArr), strArrSplit[2], "$" + strArrSplit[1] + "$").toCharArray();
        if (charArray == null || charArray2 == null) {
            return charArray == charArray2;
        }
        if (charArray.length != charArray2.length) {
            return false;
        }
        boolean z2 = true;
        for (int i2 = 0; i2 < charArray.length && z2; i2++) {
            z2 = charArray[i2] == charArray2[i2];
        }
        return z2;
    }

    public static final String crypt(String str, String str2) {
        return crypt(str, str2, "$1$");
    }

    public static final String crypt(String str, String str2, String str3) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
            MessageDigest messageDigest2 = MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
            if (str2.startsWith(str3)) {
                str2 = str2.substring(str3.length());
            }
            if (str2.indexOf(36) != -1) {
                str2 = str2.substring(0, str2.indexOf(36));
            }
            if (str2.length() > 8) {
                str2 = str2.substring(0, 8);
            }
            messageDigest.update(str.getBytes());
            messageDigest.update(str3.getBytes());
            messageDigest.update(str2.getBytes());
            messageDigest2.update(str.getBytes());
            messageDigest2.update(str2.getBytes());
            messageDigest2.update(str.getBytes());
            byte[] bArrDigest = messageDigest2.digest();
            int length = str.length();
            while (true) {
                int i2 = 16;
                if (length <= 0) {
                    break;
                }
                if (length <= 16) {
                    i2 = length;
                }
                messageDigest.update(bArrDigest, 0, i2);
                length -= 16;
            }
            clearbits(bArrDigest);
            for (int length2 = str.length(); length2 != 0; length2 >>>= 1) {
                if ((length2 & 1) != 0) {
                    messageDigest.update(bArrDigest, 0, 1);
                } else {
                    messageDigest.update(str.getBytes(), 0, 1);
                }
            }
            byte[] bArrDigest2 = messageDigest.digest();
            for (int i3 = 0; i3 < 1000; i3++) {
                try {
                    MessageDigest messageDigest3 = MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
                    int i4 = i3 & 1;
                    if (i4 != 0) {
                        messageDigest3.update(str.getBytes());
                    } else {
                        messageDigest3.update(bArrDigest2, 0, 16);
                    }
                    if (i3 % 3 != 0) {
                        messageDigest3.update(str2.getBytes());
                    }
                    if (i3 % 7 != 0) {
                        messageDigest3.update(str.getBytes());
                    }
                    if (i4 != 0) {
                        messageDigest3.update(bArrDigest2, 0, 16);
                    } else {
                        messageDigest3.update(str.getBytes());
                    }
                    bArrDigest2 = messageDigest3.digest();
                } catch (NoSuchAlgorithmException unused) {
                    return null;
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str3);
            stringBuffer.append(str2);
            stringBuffer.append("$");
            stringBuffer.append(to64((bytes2u(bArrDigest2[0]) << 16) | (bytes2u(bArrDigest2[6]) << 8) | bytes2u(bArrDigest2[12]), 4));
            stringBuffer.append(to64((bytes2u(bArrDigest2[1]) << 16) | (bytes2u(bArrDigest2[7]) << 8) | bytes2u(bArrDigest2[13]), 4));
            stringBuffer.append(to64((bytes2u(bArrDigest2[2]) << 16) | (bytes2u(bArrDigest2[8]) << 8) | bytes2u(bArrDigest2[14]), 4));
            stringBuffer.append(to64((bytes2u(bArrDigest2[3]) << 16) | (bytes2u(bArrDigest2[9]) << 8) | bytes2u(bArrDigest2[15]), 4));
            stringBuffer.append(to64((bytes2u(bArrDigest2[4]) << 16) | (bytes2u(bArrDigest2[10]) << 8) | bytes2u(bArrDigest2[5]), 4));
            stringBuffer.append(to64(bytes2u(bArrDigest2[11]), 2));
            clearbits(bArrDigest2);
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e2) {
            System.err.println(e2);
            return null;
        }
    }
}
