package com.byazt.hxe;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.byazt.nw.eb;

@com.byazt.kj.hp(hp = {0, 1, 1138, 28})
/* loaded from: classes2.dex */
public class hp {
    public static int hp(eb ebVar) {
        if (ebVar == null) {
            return 0;
        }
        String strKy = ebVar.ky();
        String strB = ebVar.b();
        if (TextUtils.isEmpty(strB) || TextUtils.isEmpty(strKy) || !strB.equals("creative")) {
            return 0;
        }
        if (strKy.equals("shake")) {
            return 2;
        }
        if (strKy.equals("twist")) {
            return 3;
        }
        return strKy.equals("slide") ? 1 : 0;
    }

    public static boolean l(View view) {
        if (view == null) {
            return false;
        }
        try {
            Pair pair = (Pair) view.getTag(2097610707);
            if (pair == null) {
                return false;
            }
            return (TextUtils.isEmpty((CharSequence) pair.first) || TextUtils.equals("0", (CharSequence) pair.first)) && ((((Long) pair.second).longValue() > 0L ? 1 : (((Long) pair.second).longValue() == 0L ? 0 : -1)) <= 0);
        } catch (Exception e2) {
            e2.getMessage();
            return false;
        }
    }

    public static boolean hp(View view) {
        Object tag;
        if (view == null) {
            return false;
        }
        try {
            tag = view.getTag(2097610708);
        } catch (Exception unused) {
        }
        if (tag == null) {
            return false;
        }
        return ((Integer) tag).intValue() == 1;
    }

    public static boolean hp(View view, float f2, float f3, float f4, float f5) {
        if (view == null) {
            return false;
        }
        try {
            Pair pair = (Pair) view.getTag(2097610707);
            if (pair != null && !TextUtils.isEmpty((CharSequence) pair.first) && ((Long) pair.second).longValue() > 0) {
                String str = (String) pair.first;
                long jLongValue = ((Long) pair.second).longValue();
                if (str.equals("0")) {
                    return ((float) Math.sqrt(Math.pow((double) (f2 - f4), 2.0d) + Math.pow((double) (f3 - f5), 2.0d))) >= ((float) jLongValue);
                }
                if (str.equals("1")) {
                    float f6 = f3 - f5;
                    return f6 < 0.0f && Math.abs(f6) >= ((float) jLongValue);
                }
                if (str.equals("2")) {
                    float f7 = f2 - f4;
                    return f7 > 0.0f && Math.abs(f7) >= ((float) jLongValue);
                }
                if (str.equals("3")) {
                    float f8 = f2 - f4;
                    return f8 < 0.0f && Math.abs(f8) >= ((float) jLongValue);
                }
                if (str.equals("4")) {
                    float f9 = f3 - f5;
                    if (f9 > 0.0f && Math.abs(f9) >= jLongValue) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
