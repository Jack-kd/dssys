package com.byazt.xa;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 1328, 28})
/* loaded from: classes3.dex */
public class hp {

    @com.byazt.kj.hp(hp = {0, 1, 1328, 170})
    /* renamed from: com.byazt.xa.hp$hp, reason: collision with other inner class name */
    public static class C0402hp {
        public GradientDrawable.Orientation hp;
        public float[] jx;

        /* renamed from: l, reason: collision with root package name */
        public int[] f27164l;
    }

    public static int hp(String str) {
        return hp(str, -16777216);
    }

    public static GradientDrawable.Orientation j(String str) {
        try {
            int i2 = str.contains("deg") ? Integer.parseInt(str.substring(0, str.length() - 3).trim()) : Integer.parseInt(str);
            return i2 == 90 ? GradientDrawable.Orientation.LEFT_RIGHT : i2 == 180 ? GradientDrawable.Orientation.TOP_BOTTOM : i2 == 270 ? GradientDrawable.Orientation.RIGHT_LEFT : i2 == 135 ? GradientDrawable.Orientation.TL_BR : i2 == 45 ? GradientDrawable.Orientation.BL_TR : GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    public static boolean jx(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("linear-gradient");
    }

    public static C0402hp l(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String strSubstring = str.substring(str.indexOf("(") + 1, str.lastIndexOf(")"));
            if (TextUtils.isEmpty(strSubstring)) {
                return null;
            }
            int iHp = hp(strSubstring, '%');
            int iIndexOf = strSubstring.indexOf(",");
            String strSubstring2 = strSubstring.substring(0, iIndexOf);
            C0402hp c0402hp = new C0402hp();
            c0402hp.hp = j(strSubstring2);
            String strSubstring3 = strSubstring.substring(iIndexOf + 1);
            int[] iArr = new int[iHp];
            float[] fArr = new float[iHp];
            for (int i2 = 0; i2 < iHp; i2++) {
                int iIndexOf2 = strSubstring3.indexOf("%");
                String strTrim = strSubstring3.substring(0, iIndexOf2 + 1).trim();
                int iIndexOf3 = (strTrim.contains("rgba") ? strTrim.indexOf(")") : strTrim.indexOf(" ")) + 1;
                iArr[i2] = hp(strTrim.substring(0, iIndexOf3).trim());
                fArr[i2] = jx.hp(strTrim.substring(iIndexOf3, strTrim.indexOf("%")).trim(), 0.0f) / 100.0f;
                int i3 = iIndexOf2 + 2;
                if (strSubstring3.length() <= i3) {
                    break;
                }
                strSubstring3 = strSubstring3.substring(i3);
            }
            if (iHp < 2) {
                return null;
            }
            c0402hp.f27164l = iArr;
            c0402hp.jx = fArr;
            return c0402hp;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int hp(String str, int i2) throws NumberFormatException {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("transparent")) {
                return 0;
            }
            if (str.charAt(0) == '#' && str.length() == 4) {
                StringBuilder sb = new StringBuilder("#");
                char[] charArray = str.toCharArray();
                for (int i3 = 1; i3 < charArray.length; i3++) {
                    sb.append(charArray[i3]);
                    sb.append(charArray[i3]);
                }
                return Color.parseColor(sb.toString());
            }
            if (str.charAt(0) == '#' && str.length() == 7) {
                return Color.parseColor(str);
            }
            if (str.charAt(0) == '#' && str.length() == 9) {
                return Color.parseColor(str);
            }
            if (!str.startsWith("rgba")) {
                return -16777216;
            }
            String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
            if (strArrSplit != null && strArrSplit.length == 4) {
                return (((int) ((Float.parseFloat(strArrSplit[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(strArrSplit[0])) << 16) | (((int) Float.parseFloat(strArrSplit[1])) << 8) | ((int) Float.parseFloat(strArrSplit[2]));
            }
        }
        return i2;
    }

    public static int hp(String str, char c2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (str.charAt(i3) == c2) {
                i2++;
            }
        }
        return i2;
    }

    public static int hp(int i2, int i3) {
        if (i3 < 0 || i3 > 255) {
            u.l("ColorUtils", "alpha must be between 0 and 255. ");
            i3 = 255;
        }
        return (i2 & ViewCompat.MEASURED_SIZE_MASK) | (i3 << 24);
    }
}
