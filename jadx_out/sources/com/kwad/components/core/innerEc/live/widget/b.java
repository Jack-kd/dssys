package com.kwad.components.core.innerEc.live.widget;

import android.graphics.PointF;
import android.view.animation.Interpolator;

/* loaded from: classes4.dex */
public final class b implements Interpolator {
    private int Yd = 0;
    private final PointF Ye;
    private final PointF Yf;

    public b(float f2, float f3, float f4, float f5) {
        PointF pointF = new PointF();
        this.Ye = pointF;
        PointF pointF2 = new PointF();
        this.Yf = pointF2;
        pointF.x = 0.42f;
        pointF.y = 0.0f;
        pointF2.x = 0.58f;
        pointF2.y = 1.0f;
    }

    private static double a(double d2, double d3, double d4, double d5, double d6) {
        double d7 = 1.0d - d2;
        double d8 = d2 * d2;
        double d9 = d7 * d7;
        return (d9 * d7 * 0.0d) + (d9 * 3.0d * d2 * d4) + (d7 * 3.0d * d8 * d5) + (d8 * d2 * 1.0d);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f2) {
        int i2 = this.Yd;
        float f3 = f2;
        while (true) {
            if (i2 >= 4096) {
                break;
            }
            f3 = (i2 * 1.0f) / 4096.0f;
            if (a(f3, 0.0d, this.Ye.x, this.Yf.x, 1.0d) >= f2) {
                this.Yd = i2;
                break;
            }
            i2++;
        }
        double dA = a(f3, 0.0d, this.Ye.y, this.Yf.y, 1.0d);
        if (dA > 0.999d) {
            this.Yd = 0;
            dA = 1.0d;
        }
        return (float) dA;
    }
}
