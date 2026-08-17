package com.smartdigimkt.g1;

import com.smartdigimkt.k.u;
import java.util.HashMap;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f40315a = {"wv_hybrid:", "mraid:", "ssp:", "mvb_hybrid:"};

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f40316b;

    static {
        Pattern.compile("hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?");
        Pattern.compile("mraid://(.+?):(.+?)/(.+?)(\\?(.*?))?");
        Pattern.compile("ssp://(.+?):(.+?)/(.+?)(\\?(.*?))?");
        Pattern.compile("mv://(.+?):(.+?)/(.+?)(\\?(.*?))?");
        f40316b = new HashMap();
        for (int i2 : u.b(9)) {
            f40316b.put(b.b(i2), b.a(i2));
        }
    }

    public static String a(String str) {
        char[] cArr = {'\'', '\\'};
        StringBuffer stringBuffer = new StringBuffer(1000);
        stringBuffer.setLength(0);
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 255) {
                int i3 = 0;
                while (true) {
                    if (i3 >= 2) {
                        stringBuffer.append(cCharAt);
                        break;
                    }
                    if (cArr[i3] == cCharAt) {
                        stringBuffer.append("\\" + cCharAt);
                        break;
                    }
                    i3++;
                }
            } else {
                stringBuffer.append("\\u");
                String upperCase = Integer.toHexString(cCharAt >>> '\b').toUpperCase();
                if (upperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase);
                String upperCase2 = Integer.toHexString(cCharAt & 255).toUpperCase();
                if (upperCase2.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase2);
            }
        }
        return new String(stringBuffer);
    }
}
