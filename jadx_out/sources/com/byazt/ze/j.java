package com.byazt.ze;

@com.byazt.kj.hp(hp = {0, 1, 683, 38})
/* loaded from: classes3.dex */
public class j {
    private static float hp(float f2) {
        return f2 <= 0.0031308f ? f2 * 12.92f : (float) ((Math.pow(f2, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    private static float l(float f2) {
        return f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static int hp(float f2, int i2, int i3) {
        if (i2 == i3) {
            return i2;
        }
        float f3 = ((i2 >> 24) & 255) / 255.0f;
        float fL = l(((i2 >> 16) & 255) / 255.0f);
        float fL2 = l(((i2 >> 8) & 255) / 255.0f);
        float fL3 = l((i2 & 255) / 255.0f);
        float fL4 = l(((i3 >> 16) & 255) / 255.0f);
        float f4 = f3 + (((((i3 >> 24) & 255) / 255.0f) - f3) * f2);
        float fL5 = fL2 + ((l(((i3 >> 8) & 255) / 255.0f) - fL2) * f2);
        float fL6 = fL3 + (f2 * (l((i3 & 255) / 255.0f) - fL3));
        return (Math.round(hp(fL + ((fL4 - fL) * f2)) * 255.0f) << 16) | (Math.round(f4 * 255.0f) << 24) | (Math.round(hp(fL5) * 255.0f) << 8) | Math.round(hp(fL6) * 255.0f);
    }
}
