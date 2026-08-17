package com.byazt.ze;

import android.view.Choreographer;
import com.bytedance.component.sdk.annotation.MainThread;

@com.byazt.kj.hp(hp = {0, 1, 683, 94})
/* loaded from: classes3.dex */
public class eb extends hp implements Choreographer.FrameCallback {

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.na.a f28390e;

    /* renamed from: l, reason: collision with root package name */
    public float f28392l = 1.0f;
    public boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public long f28391j = 0;

    /* renamed from: w, reason: collision with root package name */
    public float f28395w = 0.0f;

    /* renamed from: a, reason: collision with root package name */
    public float f28389a = 0.0f;
    public int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public float f28394s = -2.1474836E9f;

    /* renamed from: q, reason: collision with root package name */
    public float f28393q = 2.1474836E9f;
    public boolean hp = false;
    public boolean gu = false;

    private float ec() {
        com.byazt.na.a aVar = this.f28390e;
        if (aVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / aVar.zy()) / Math.abs(this.f28392l);
    }

    private void n() {
        if (this.f28390e == null) {
            return;
        }
        float f2 = this.f28389a;
        if (f2 < this.f28394s || f2 > this.f28393q) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f28394s), Float.valueOf(this.f28393q), Float.valueOf(this.f28389a)));
        }
    }

    private boolean sz() {
        return e() < 0.0f;
    }

    public float a() {
        com.byazt.na.a aVar = this.f28390e;
        if (aVar == null) {
            return 0.0f;
        }
        return (this.f28389a - aVar.a()) / (this.f28390e.eb() - this.f28390e.a());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        l();
        vv();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j2) {
        xs();
        if (this.f28390e == null || !isRunning()) {
            return;
        }
        com.byazt.na.w.hp("LottieValueAnimator#doFrame");
        float fEc = (this.f28391j != 0 ? j2 - r1 : 0L) / ec();
        float f2 = this.f28395w;
        if (sz()) {
            fEc = -fEc;
        }
        float f3 = f2 + fEc;
        boolean zJx = q.jx(f3, v(), u());
        float f4 = this.f28395w;
        float fL = q.l(f3, v(), u());
        this.f28395w = fL;
        if (this.gu) {
            fL = (float) Math.floor(fL);
        }
        this.f28389a = fL;
        this.f28391j = j2;
        if (!this.gu || this.f28395w != f4) {
            jx();
        }
        if (!zJx) {
            if (getRepeatCount() == -1 || this.eb < getRepeatCount()) {
                hp();
                this.eb++;
                if (getRepeatMode() == 2) {
                    this.jx = !this.jx;
                    q();
                } else {
                    float fU = sz() ? u() : v();
                    this.f28395w = fU;
                    this.f28389a = fU;
                }
                this.f28391j = j2;
            } else {
                float fV = this.f28392l < 0.0f ? v() : u();
                this.f28395w = fV;
                this.f28389a = fV;
                vv();
                l(sz());
            }
        }
        n();
        com.byazt.na.w.l("LottieValueAnimator#doFrame");
    }

    public float e() {
        return this.f28392l;
    }

    public float eb() {
        return this.f28389a;
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float fV;
        float fU;
        float fV2;
        if (this.f28390e == null) {
            return 0.0f;
        }
        if (sz()) {
            fV = u() - this.f28389a;
            fU = u();
            fV2 = v();
        } else {
            fV = this.f28389a - v();
            fU = u();
            fV2 = v();
        }
        return fV / (fU - fV2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(a());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.byazt.na.a aVar = this.f28390e;
        if (aVar == null) {
            return 0L;
        }
        return (long) aVar.w();
    }

    @MainThread
    public void gu() {
        this.hp = true;
        hp(sz());
        hp((int) (sz() ? u() : v()));
        this.f28391j = 0L;
        this.eb = 0;
        xs();
    }

    public void hp(com.byazt.na.a aVar) {
        boolean z2 = this.f28390e == null;
        this.f28390e = aVar;
        if (z2) {
            hp(Math.max(this.f28394s, aVar.a()), Math.min(this.f28393q, aVar.eb()));
        } else {
            hp((int) aVar.a(), (int) aVar.eb());
        }
        float f2 = this.f28389a;
        this.f28389a = 0.0f;
        this.f28395w = 0.0f;
        hp((int) f2);
        jx();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.hp;
    }

    @MainThread
    public void j(boolean z2) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z2) {
            this.hp = false;
        }
    }

    @MainThread
    public void jl() {
        vv();
        l(sz());
    }

    public void jx(boolean z2) {
        this.gu = z2;
    }

    @MainThread
    public void k() {
        this.hp = true;
        xs();
        this.f28391j = 0L;
        if (sz() && eb() == v()) {
            hp(u());
        } else if (!sz() && eb() == u()) {
            hp(v());
        }
        w();
    }

    public void l(float f2) {
        hp(this.f28394s, f2);
    }

    public void q() {
        jx(-e());
    }

    public void s() {
        this.f28390e = null;
        this.f28394s = -2.1474836E9f;
        this.f28393q = 2.1474836E9f;
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i2) {
        super.setRepeatMode(i2);
        if (i2 == 2 || !this.jx) {
            return;
        }
        this.jx = false;
        q();
    }

    public float u() {
        com.byazt.na.a aVar = this.f28390e;
        if (aVar == null) {
            return 0.0f;
        }
        float f2 = this.f28393q;
        return f2 == 2.1474836E9f ? aVar.eb() : f2;
    }

    public float v() {
        com.byazt.na.a aVar = this.f28390e;
        if (aVar == null) {
            return 0.0f;
        }
        float f2 = this.f28394s;
        return f2 == -2.1474836E9f ? aVar.a() : f2;
    }

    @MainThread
    public void vv() {
        j(true);
    }

    public void xs() {
        if (isRunning()) {
            j(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    public void zy() {
        vv();
        j();
    }

    public void jx(float f2) {
        this.f28392l = f2;
    }

    @Override // com.byazt.ze.hp
    public void l() {
        super.l();
        l(sz());
    }

    public void hp(float f2) {
        if (this.f28395w == f2) {
            return;
        }
        float fL = q.l(f2, v(), u());
        this.f28395w = fL;
        if (this.gu) {
            fL = (float) Math.floor(fL);
        }
        this.f28389a = fL;
        this.f28391j = 0L;
        jx();
    }

    public void hp(int i2) {
        hp(i2, (int) this.f28393q);
    }

    public void hp(float f2, float f3) {
        if (f2 <= f3) {
            com.byazt.na.a aVar = this.f28390e;
            float fA = aVar == null ? -3.4028235E38f : aVar.a();
            com.byazt.na.a aVar2 = this.f28390e;
            float fEb = aVar2 == null ? Float.MAX_VALUE : aVar2.eb();
            float fL = q.l(f2, fA, fEb);
            float fL2 = q.l(f3, fA, fEb);
            if (fL == this.f28394s && fL2 == this.f28393q) {
                return;
            }
            this.f28394s = fL;
            this.f28393q = fL2;
            hp((int) q.l(this.f28389a, fL, fL2));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f2), Float.valueOf(f3)));
    }
}
