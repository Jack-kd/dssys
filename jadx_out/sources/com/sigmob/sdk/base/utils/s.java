package com.sigmob.sdk.base.utils;

/* loaded from: classes4.dex */
public class s {
    public static String a(String str) {
        int i2;
        if (a((CharSequence) str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (i3 < str.length()) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '\\' && (i2 = i3 + 1) < str.length() && str.charAt(i2) == 'u') {
                int i4 = i3 + 2;
                int i5 = i3 + 6;
                try {
                    sb.append((char) Integer.parseInt(str.substring(i4, i5), 16));
                    i2 = i5;
                } catch (NumberFormatException unused) {
                    sb.append(cCharAt);
                }
                i3 = i2;
            } else {
                sb.append(cCharAt);
                i3++;
            }
        }
        return sb.toString();
    }

    public static boolean b(CharSequence charSequence) {
        return !a(charSequence);
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean b(CharSequence charSequence, CharSequence charSequence2) {
        return !a(charSequence, charSequence2);
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence != null && charSequence.equals(charSequence2);
    }

    public static boolean a(String str, String str2) {
        return str != null && str.equalsIgnoreCase(str2);
    }
}
