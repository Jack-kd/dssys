package com.byazt.vn;

import android.text.TextUtils;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 1312, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {
    public static int hp(eb ebVar) {
        return (int) ebVar.hp.hp().l();
    }

    public static byte[] hp(int i2) {
        return new byte[]{(byte) i2, (byte) (i2 >> 8), (byte) (i2 >> 16), (byte) (i2 >> 24)};
    }

    public static int hp(byte[] bArr, int i2, int i3, s sVar) {
        if (i2 < 2130706432) {
            return i2;
        }
        int iHp = sVar.hp(i2);
        byte[] bArrHp = hp(iHp);
        bArr[i3] = bArrHp[0];
        bArr[i3 + 1] = bArrHp[1];
        bArr[i3 + 2] = bArrHp[2];
        bArr[i3 + 3] = bArrHp[3];
        return iHp;
    }

    public static void hp(byte[] bArr, s sVar) throws IOException {
        l lVar = new l(bArr, sVar);
        lVar.l(new ByteArrayInputStream(bArr));
        while (lVar.jx() != 1) {
        }
    }

    public static void hp(String str, byte[] bArr, s sVar) throws Throwable {
        if (!TextUtils.isEmpty(str) && sVar.hp(str)) {
            if (str.equals("AndroidManifest.xml")) {
                hp(bArr, sVar);
                return;
            }
            if ((str.endsWith(".xml") && str.startsWith("res/")) || TextUtils.equals(str, "AndroidManifest.xml")) {
                hp(bArr, sVar);
            } else if (str.equals("resources.arsc")) {
                new hp(bArr, sVar).hp();
            }
        }
    }

    public static void hp(int i2, byte[] bArr, int[] iArr, int i3, HashMap<Integer, Integer> map) {
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        int i4 = -1;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = iArr[(i5 * 5) + 1];
            if (map.containsKey(Integer.valueOf(i6))) {
                if (i4 == -1) {
                    i4 = i5;
                }
                int i7 = (i5 * 20) + i2;
                map2.put(Integer.valueOf(i5), Arrays.copyOfRange(bArr, i7, i7 + 20));
                Integer num = map.get(Integer.valueOf(i6));
                num.intValue();
                map3.put(num, Integer.valueOf(i5));
            }
        }
        ArrayList arrayList = new ArrayList(map3.keySet());
        Collections.sort(arrayList);
        int size = arrayList.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            Integer num2 = (Integer) map3.get((Integer) obj);
            num2.intValue();
            byte[] bArr2 = (byte[]) map2.get(num2);
            System.arraycopy(bArr2, 0, bArr, ((i8 + i4) * 20) + i2, bArr2.length);
            i8++;
        }
    }
}
