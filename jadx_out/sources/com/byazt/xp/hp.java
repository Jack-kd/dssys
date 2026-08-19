package com.byazt.xp;

import com.anythink.core.common.d.i;
import com.kuaishou.weapon.p0.bg;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1733, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp(byte[] bArr, int i2) {
        StringBuilder sb = new StringBuilder(i.f2495E);
        for (int i3 = 0; i3 < bArr.length; i3++) {
            sb.append(String.format("%02X", Byte.valueOf(bArr[i3])));
            if (i3 > 0 && i3 % i2 == 0 && i3 != bArr.length - 1) {
                sb.append(bg.f30864j);
            }
        }
        return sb.toString();
    }

    public static byte[] hp(String str) {
        String strReplaceAll = str.replaceAll(ServiceReference.DELIMITER, "").replaceAll("\\.", "");
        int length = strReplaceAll.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) ((Character.digit(strReplaceAll.charAt(i2), 16) << 4) + Character.digit(strReplaceAll.charAt(i2 + 1), 16));
        }
        return bArr;
    }
}
