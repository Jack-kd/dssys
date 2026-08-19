package com.byazt.xq;

import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 150})
/* loaded from: classes3.dex */
public class q {
    public static StringBuilder hp(StringBuilder sb, String str) {
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return sb;
    }

    public static StringBuilder l(StringBuilder sb, String[] strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            hp(sb, strArr[i2]).append("=?");
            if (i2 < strArr.length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static StringBuilder hp(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(".\"");
        sb.append(str2);
        sb.append('\"');
        return sb;
    }

    public static StringBuilder hp(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append('\"');
            sb.append(strArr[i2]);
            sb.append('\"');
            if (i2 < length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static String l(String str, String[] strArr, String[] strArr2) {
        StringBuilder sb = new StringBuilder("INSERT OR REPLACE INTO ");
        sb.append("\"" + str + '\"');
        sb.append(" (");
        hp(sb, strArr);
        sb.append(") VALUES (");
        hp(sb, strArr.length);
        sb.append(')');
        return sb.toString();
    }

    public static StringBuilder hp(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 < i2 - 1) {
                sb.append("?,");
            } else {
                sb.append('?');
            }
        }
        return sb;
    }

    public static StringBuilder hp(StringBuilder sb, String str, String[] strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            hp(sb, str, strArr[i2]).append("=?");
            if (i2 < strArr.length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static String hp(String str, String str2, String[] strArr) {
        StringBuilder sb = new StringBuilder(str);
        sb.append('\"');
        sb.append(str2);
        sb.append('\"');
        sb.append(" (");
        hp(sb, strArr);
        sb.append(") VALUES (");
        hp(sb, strArr.length);
        sb.append(')');
        return sb.toString();
    }

    public static String hp(String str, String[] strArr) {
        String str2 = "\"" + str + '\"';
        StringBuilder sb = new StringBuilder("DELETE FROM ");
        sb.append(str2);
        if (strArr != null && strArr.length > 0) {
            sb.append(" WHERE ");
            hp(sb, str2, strArr);
        }
        return sb.toString();
    }

    public static String hp(String str, String[] strArr, String[] strArr2) {
        String str2 = "\"" + str + '\"';
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(str2);
        sb.append(" SET ");
        l(sb, strArr);
        if (strArr2 != null && strArr2.length > 0) {
            sb.append(" WHERE ");
            hp(sb, str2, strArr2);
        }
        return sb.toString();
    }
}
