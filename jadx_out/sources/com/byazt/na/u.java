package com.byazt.na;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u implements Interpolator {
    public final float[] hp;

    /* renamed from: l, reason: collision with root package name */
    public final float[] f23507l;

    public u(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i2 = (int) (length / 0.002f);
        int i3 = i2 + 1;
        this.hp = new float[i3];
        this.f23507l = new float[i3];
        float[] fArr = new float[2];
        for (int i4 = 0; i4 < i3; i4++) {
            pathMeasure.getPosTan((i4 * length) / i2, fArr, null);
            this.hp[i4] = fArr[0];
            this.f23507l[i4] = fArr[1];
        }
    }

    private static Path hp(float f2, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f2, f3, f4, f5, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        int length = this.hp.length - 1;
        int i2 = 0;
        while (length - i2 > 1) {
            int i3 = (i2 + length) / 2;
            if (f2 < this.hp[i3]) {
                length = i3;
            } else {
                i2 = i3;
            }
        }
        float[] fArr = this.hp;
        float f3 = fArr[length];
        float f4 = fArr[i2];
        float f5 = f3 - f4;
        if (f5 == 0.0f) {
            return this.f23507l[i2];
        }
        float f6 = (f2 - f4) / f5;
        float[] fArr2 = this.f23507l;
        float f7 = fArr2[i2];
        return f7 + (f6 * (fArr2[length] - f7));
    }

    public u(float f2, float f3, float f4, float f5) {
        this(hp(f2, f3, f4, f5));
    }
}
