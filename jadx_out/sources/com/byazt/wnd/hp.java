package com.byazt.wnd;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 28})
/* loaded from: classes3.dex */
public class hp implements Interpolator {
    public PointF hp;

    /* renamed from: j, reason: collision with root package name */
    public PointF f27090j;
    public PointF jx;

    /* renamed from: l, reason: collision with root package name */
    public PointF f27091l;

    /* renamed from: w, reason: collision with root package name */
    public PointF f27092w;

    public hp(PointF pointF, PointF pointF2) throws IllegalArgumentException {
        this.jx = new PointF();
        this.f27090j = new PointF();
        this.f27092w = new PointF();
        float f2 = pointF.x;
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("startX value must be in the range [0, 1]");
        }
        float f3 = pointF2.x;
        if (f3 < 0.0f || f3 > 1.0f) {
            throw new IllegalArgumentException("endX value must be in the range [0, 1]");
        }
        this.hp = pointF;
        this.f27091l = pointF2;
    }

    private float j(float f2) {
        PointF pointF = this.f27092w;
        PointF pointF2 = this.hp;
        float f3 = pointF2.x * 3.0f;
        pointF.x = f3;
        PointF pointF3 = this.f27090j;
        float f4 = ((this.f27091l.x - pointF2.x) * 3.0f) - f3;
        pointF3.x = f4;
        PointF pointF4 = this.jx;
        float f5 = (1.0f - pointF.x) - f4;
        pointF4.x = f5;
        return f2 * (pointF.x + ((pointF3.x + (f5 * f2)) * f2));
    }

    private float jx(float f2) {
        return this.f27092w.x + (f2 * ((this.f27090j.x * 2.0f) + (this.jx.x * 3.0f * f2)));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return hp(l(f2));
    }

    public float hp(float f2) {
        PointF pointF = this.f27092w;
        PointF pointF2 = this.hp;
        float f3 = pointF2.y * 3.0f;
        pointF.y = f3;
        PointF pointF3 = this.f27090j;
        float f4 = ((this.f27091l.y - pointF2.y) * 3.0f) - f3;
        pointF3.y = f4;
        PointF pointF4 = this.jx;
        float f5 = (1.0f - pointF.y) - f4;
        pointF4.y = f5;
        return f2 * (pointF.y + ((pointF3.y + (f5 * f2)) * f2));
    }

    public float l(float f2) {
        float fJx = f2;
        for (int i2 = 1; i2 < 14; i2++) {
            float fJ = j(fJx) - f2;
            if (Math.abs(fJ) < 0.001d) {
                break;
            }
            fJx -= fJ / jx(fJx);
        }
        return fJx;
    }

    public hp(float f2, float f3, float f4, float f5) {
        this(new PointF(f2, f3), new PointF(f4, f5));
    }
}
