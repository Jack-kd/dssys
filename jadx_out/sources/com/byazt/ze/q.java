package com.byazt.ze;

import android.graphics.Path;
import android.graphics.PointF;
import com.byazt.mo.k;

@com.byazt.kj.hp(hp = {0, 1, 683, 150})
/* loaded from: classes3.dex */
public class q {
    public static final PointF hp = new PointF();

    public static float hp(float f2, float f3, float f4) {
        return f2 + (f4 * (f3 - f2));
    }

    public static boolean jx(float f2, float f3, float f4) {
        return f2 >= f3 && f2 <= f4;
    }

    private static int l(int i2, int i3) {
        int i4 = i2 / i3;
        return (((i2 ^ i3) >= 0) || i2 % i3 == 0) ? i4 : i4 - 1;
    }

    public static int hp(int i2, int i3, float f2) {
        return (int) (i2 + (f2 * (i3 - i2)));
    }

    public static PointF hp(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float l(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f4, f2));
    }

    public static void hp(k kVar, Path path) {
        Path path2;
        path.reset();
        PointF pointFHp = kVar.hp();
        path.moveTo(pointFHp.x, pointFHp.y);
        hp.set(pointFHp.x, pointFHp.y);
        int i2 = 0;
        while (i2 < kVar.jx().size()) {
            com.byazt.yg.hp hpVar = kVar.jx().get(i2);
            PointF pointFHp2 = hpVar.hp();
            PointF pointFL = hpVar.l();
            PointF pointFJx = hpVar.jx();
            PointF pointF = hp;
            if (pointFHp2.equals(pointF) && pointFL.equals(pointFJx)) {
                path.lineTo(pointFJx.x, pointFJx.y);
                path2 = path;
            } else {
                path2 = path;
                path2.cubicTo(pointFHp2.x, pointFHp2.y, pointFL.x, pointFL.y, pointFJx.x, pointFJx.y);
            }
            pointF.set(pointFJx.x, pointFJx.y);
            i2++;
            path = path2;
        }
        Path path3 = path;
        if (kVar.l()) {
            path3.close();
        }
    }

    public static int hp(float f2, float f3) {
        return hp((int) f2, (int) f3);
    }

    private static int hp(int i2, int i3) {
        return i2 - (i3 * l(i2, i3));
    }

    public static int hp(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i4, i2));
    }
}
