package com.beizi.fusion;

import android.text.TextUtils;
import java.util.UUID;
import java.util.zip.CRC32;

/* loaded from: classes2.dex */
public abstract class qn {
    public static String a() {
        return e();
    }

    public static String b() {
        return f();
    }

    public static String c() {
        return e();
    }

    public static String d() {
        return e();
    }

    private static String e() {
        String string = UUID.randomUUID().toString();
        String strA = th.a(string);
        return TextUtils.isEmpty(strA) ? string : strA;
    }

    private static String f() {
        String string = UUID.randomUUID().toString();
        String strB = th.b(string);
        return TextUtils.isEmpty(strB) ? string : strB;
    }

    public static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        byte[] bytes = str.getBytes();
        CRC32 crc32 = new CRC32();
        crc32.update(bytes);
        return ((int) (crc32.getValue() % 100)) + 1;
    }
}
