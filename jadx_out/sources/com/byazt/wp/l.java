package com.byazt.wp;

import android.content.Context;
import com.byazt.ik.a;

@com.byazt.kj.hp(hp = {0, 1, 207, 34})
/* loaded from: classes3.dex */
public class l {
    public static int hp(Context context, String str) {
        try {
            return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
        } catch (Exception e2) {
            a.hp(e2);
            return 0;
        }
    }

    public static int jx(Context context, String str) {
        try {
            return context.getResources().getIdentifier(str, "id", context.getPackageName());
        } catch (Exception e2) {
            a.hp(e2);
            return 0;
        }
    }

    public static int l(Context context, String str) {
        try {
            return context.getResources().getIdentifier(str, "style", "android");
        } catch (Exception e2) {
            a.hp(e2);
            return 0;
        }
    }

    public static int l(Context context, String str, String str2) {
        try {
            return context.getResources().getIdentifier(str, "attr", str2);
        } catch (Exception e2) {
            a.hp(e2);
            return 0;
        }
    }

    public static int hp(Context context, String str, String str2) {
        try {
            return context.getResources().getIdentifier(str, "drawable", str2);
        } catch (Exception e2) {
            a.hp(e2);
            return 0;
        }
    }
}
