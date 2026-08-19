package com.byazt.xm;

import android.os.Build;
import android.view.View;
import com.kuaishou.weapon.p0.bg;

@com.byazt.kj.hp(hp = {0, 1, 168, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final int hp = Build.VERSION.SDK_INT;

    public static int hp(long j2, long j3) {
        return Math.min(Math.max(0, j3 > 0 ? (int) (((j2 * 1.0d) / j3) * 100.0d) : 0), 100);
    }

    public static String hp(long j2) {
        StringBuilder sb = new StringBuilder();
        long j3 = j2 / 60000;
        long j4 = ((j2 % bg.f30873s) % 60000) / 1000;
        if (j3 >= 10) {
            sb.append(j3);
        } else if (j3 > 0) {
            sb.append(0);
            sb.append(j3);
        } else {
            sb.append(0);
            sb.append(0);
        }
        sb.append(":");
        if (j4 >= 10) {
            sb.append(j4);
        } else if (j4 > 0) {
            sb.append(0);
            sb.append(j4);
        } else {
            sb.append(0);
            sb.append(0);
        }
        return sb.toString();
    }

    public static void hp(View view, boolean z2) {
        if (view == null) {
            return;
        }
        if (z2) {
            view.setSystemUiVisibility(0);
            return;
        }
        int i2 = hp;
        if (i2 >= 19) {
            view.setSystemUiVisibility(3846);
        } else if (i2 >= 16) {
            view.setSystemUiVisibility(5);
        } else {
            view.setSystemUiVisibility(1);
        }
    }
}
