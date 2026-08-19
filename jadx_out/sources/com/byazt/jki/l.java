package com.byazt.jki;

import android.content.Context;
import com.byazt.pg.jl;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 1972, 34})
/* loaded from: classes.dex */
public final class l {
    public static float[] hp(Context context, float f2, int i2) {
        float fMin;
        float fMax;
        float fJ = xh.j(context, xh.s(context));
        float fJ2 = xh.j(context, xh.q(context));
        if (i2 == 2) {
            fMin = Math.max(fJ, fJ2);
            fMax = Math.min(fJ, fJ2);
        } else {
            fMin = Math.min(fJ, fJ2);
            fMax = Math.max(fJ, fJ2);
        }
        int iJ = xh.j(context, xh.e(context));
        if (xh.l() || f2 != 100.0f) {
            if (i2 != 2) {
                fMax -= iJ;
            } else {
                if ("SM-A207F".equals(((jl) com.byazt.ym.j.getService("device_info_new")).getDeviceModel())) {
                    iJ *= 2;
                }
                fMin -= iJ;
            }
        }
        return new float[]{fMin, fMax};
    }

    public static int[] hp(Context context, float f2, float f3, int i2) {
        int iMax;
        float[] fArrHp = hp(context, f2, i2);
        float f4 = fArrHp[0];
        float f5 = fArrHp[1];
        int iMin = (int) (Math.min(f4, f5) * f3);
        if (i2 != 2) {
            float f6 = iMin;
            iMax = (int) Math.max((f5 - (((f4 - f6) - f6) / f2)) / 2.0f, 0.0f);
        } else {
            float f7 = iMin;
            iMin = (int) Math.max((f4 - (((f5 - f7) - f7) * f2)) / 2.0f, 0.0f);
            iMax = iMin;
        }
        return new int[]{iMin, iMax, iMin, iMax};
    }
}
