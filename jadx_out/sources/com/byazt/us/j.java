package com.byazt.us;

import com.byazt.us.l;

@com.byazt.kj.hp(hp = {0, 1, 226, 38})
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f26367a;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f26368e;
    public final float[] eb;
    public final float[] gu;
    public final l hp;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f26369j;
    public final float[] jl;
    public final l.j[] jx;

    /* renamed from: k, reason: collision with root package name */
    public int f26370k;

    /* renamed from: l, reason: collision with root package name */
    public final l.jx f26371l;

    /* renamed from: q, reason: collision with root package name */
    public final float[] f26372q;

    /* renamed from: s, reason: collision with root package name */
    public final float[] f26373s;

    /* renamed from: u, reason: collision with root package name */
    public int f26374u;

    /* renamed from: v, reason: collision with root package name */
    public final float[] f26375v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public final float[] f26376w;
    public int xs;
    public final int[] zy;

    public j(l lVar) {
        this.hp = lVar;
        this.f26371l = lVar.hp();
        l.j[] jVarArr = (l.j[]) lVar.l().toArray(new l.j[0]);
        this.jx = jVarArr;
        this.f26369j = new float[600];
        this.f26376w = new float[600];
        this.f26367a = new float[600];
        this.eb = new float[600];
        this.f26373s = new float[600];
        this.f26372q = new float[600];
        this.f26368e = new float[600];
        this.gu = new float[600];
        this.jl = new float[600];
        this.zy = new int[600];
        this.f26375v = new float[jVarArr.length];
        int iNanoTime = (int) (System.nanoTime() ^ System.identityHashCode(this));
        this.f26374u = iNanoTime == 0 ? 305441741 : iNanoTime;
    }

    private float jx() {
        int i2 = this.f26374u;
        int i3 = i2 ^ (i2 << 13);
        int i4 = i3 ^ (i3 >>> 17);
        int i5 = i4 ^ (i4 << 5);
        if (i5 == 0) {
            i5 = -1640531527;
        }
        this.f26374u = i5;
        return (i5 >>> 8) * 5.9604645E-8f;
    }

    public void hp(int i2, int i3) {
        this.xs = i2;
        this.vv = i3;
    }

    public l l() {
        return this.hp;
    }

    public void update(float f2) {
        if (this.xs <= 0 || this.vv <= 0 || this.jx.length == 0) {
            return;
        }
        hp(f2);
        l(f2);
    }

    private void l(float f2) {
        l.j[] jVarArr = this.jx;
        float[] fArr = this.f26375v;
        for (int i2 = 0; i2 < jVarArr.length; i2++) {
            l.j jVar = jVarArr[i2];
            float f3 = jVar.f26394l;
            if (f3 > 0.0f) {
                fArr[i2] = fArr[i2] + (f3 * f2);
                while (true) {
                    float f4 = fArr[i2];
                    if (f4 < 1.0f || this.f26370k >= 600) {
                        break;
                    }
                    fArr[i2] = f4 - 1.0f;
                    hp(i2, jVar);
                }
                if (this.f26370k >= 600) {
                    fArr[i2] = 0.0f;
                }
            }
        }
    }

    public l.j[] hp() {
        return this.jx;
    }

    private void hp(float f2) {
        float[] fArr = this.f26369j;
        float[] fArr2 = this.f26376w;
        float[] fArr3 = this.f26367a;
        float[] fArr4 = this.eb;
        float[] fArr5 = this.f26373s;
        float[] fArr6 = this.f26372q;
        float[] fArr7 = this.gu;
        float[] fArr8 = this.jl;
        int i2 = 0;
        while (i2 < this.f26370k) {
            float f3 = fArr5[i2] + f2;
            if (f3 >= fArr6[i2]) {
                hp(i2);
            } else {
                float f4 = fArr7[i2] + (fArr8[i2] * f2);
                if (f4 <= 0.0f) {
                    hp(i2);
                } else {
                    if (f4 > 1.0f) {
                        f4 = 1.0f;
                    }
                    fArr5[i2] = f3;
                    fArr7[i2] = f4;
                    fArr[i2] = fArr[i2] + (fArr3[i2] * f2);
                    fArr2[i2] = fArr2[i2] + (fArr4[i2] * f2);
                    i2++;
                }
            }
        }
    }

    private void l(int i2) {
        float fHp = this.f26371l.f26402q.hp(this.xs);
        float fHp2 = this.f26371l.f26399e.hp(this.vv);
        float f2 = fHp < 0.0f ? 0.0f : fHp;
        float f3 = fHp2 < 0.0f ? 0.0f : fHp2;
        float fHp3 = this.f26371l.eb.hp(this.xs);
        float fHp4 = this.f26371l.f26403s.hp(this.vv);
        float f4 = f2 / 2.0f;
        float f5 = fHp3 - f4;
        float f6 = f3 / 2.0f;
        float f7 = fHp4 - f6;
        l.jx jxVar = this.f26371l;
        int i3 = jxVar.f26400j;
        int i4 = jxVar.f26404w;
        if (i3 == 2) {
            if (i4 == 1) {
                hp(i2, f5, f7, f2, f3);
                return;
            } else {
                this.f26369j[i2] = (jx() * f2) + f5;
                this.f26376w[i2] = f7 + (jx() * f3);
                return;
            }
        }
        if (i3 == 3 || i3 == 4) {
            float fJx = jx() * 6.2831855f;
            float fSqrt = i4 == 1 ? 1.0f : (float) Math.sqrt(jx());
            double d2 = fJx;
            this.f26369j[i2] = fHp3 + (((float) Math.cos(d2)) * f4 * fSqrt);
            this.f26376w[i2] = fHp4 + (((float) Math.sin(d2)) * f6 * fSqrt);
            return;
        }
        if (i3 == 1) {
            this.f26369j[i2] = (jx() * f2) + f5;
            this.f26376w[i2] = fHp4;
        } else {
            this.f26369j[i2] = fHp3;
            this.f26376w[i2] = fHp4;
        }
    }

    private void hp(int i2) {
        int i3 = this.f26370k - 1;
        this.f26370k = i3;
        if (i2 != i3) {
            float[] fArr = this.f26369j;
            fArr[i2] = fArr[i3];
            float[] fArr2 = this.f26376w;
            fArr2[i2] = fArr2[i3];
            float[] fArr3 = this.f26367a;
            fArr3[i2] = fArr3[i3];
            float[] fArr4 = this.eb;
            fArr4[i2] = fArr4[i3];
            float[] fArr5 = this.f26373s;
            fArr5[i2] = fArr5[i3];
            float[] fArr6 = this.f26372q;
            fArr6[i2] = fArr6[i3];
            float[] fArr7 = this.f26368e;
            fArr7[i2] = fArr7[i3];
            float[] fArr8 = this.gu;
            fArr8[i2] = fArr8[i3];
            float[] fArr9 = this.jl;
            fArr9[i2] = fArr9[i3];
            int[] iArr = this.zy;
            iArr[i2] = iArr[i3];
        }
    }

    private void hp(int i2, l.j jVar) {
        int i3 = this.f26370k;
        this.f26370k = i3 + 1;
        float fHp = hp(jVar.jx, jVar.f26393j);
        if (fHp < 0.01f) {
            fHp = 0.01f;
        }
        float fHp2 = hp(jVar.f26397w, jVar.f26391a);
        if (fHp2 < 0.0f) {
            fHp2 = 0.0f;
        }
        float fHp3 = hp(jVar.eb, jVar.f26396s);
        if (fHp3 < 0.0f) {
            fHp3 = 0.0f;
        }
        float fJx = jx() * 6.2831855f;
        float radians = (float) Math.toRadians(jVar.f26395q);
        if (radians > 0.0f) {
            fJx += (jx() - 0.5f) * radians;
        }
        float fJx2 = 1.0f - (jVar.f26392e > 0.0f ? jx() * jVar.f26392e : 0.0f);
        if (fJx2 < 0.0f) {
            fJx2 = 0.0f;
        }
        this.f26373s[i3] = 0.0f;
        this.f26372q[i3] = fHp;
        this.f26368e[i3] = fHp2;
        double d2 = fJx;
        this.f26367a[i3] = ((float) Math.cos(d2)) * fHp3;
        this.eb[i3] = ((float) Math.sin(d2)) * fHp3;
        this.gu[i3] = fJx2;
        this.jl[i3] = jVar.gu;
        this.zy[i3] = i2;
        l(i3);
    }

    private void hp(int i2, float f2, float f3, float f4, float f5) {
        float f6 = f4 + f5;
        float f7 = f6 * 2.0f;
        if (f7 <= 0.0f) {
            this.f26369j[i2] = f2;
            this.f26376w[i2] = f3;
            return;
        }
        float fJx = jx() * f7;
        if (fJx < f4) {
            this.f26369j[i2] = f2 + fJx;
            this.f26376w[i2] = f3;
            return;
        }
        if (fJx < f6) {
            this.f26369j[i2] = f2 + f4;
            this.f26376w[i2] = f3 + (fJx - f4);
            return;
        }
        float f8 = 2.0f * f4;
        if (fJx < f8 + f5) {
            this.f26369j[i2] = (f2 + f4) - ((fJx - f4) - f5);
            this.f26376w[i2] = f3 + f5;
        } else {
            this.f26369j[i2] = f2;
            this.f26376w[i2] = (f3 + f5) - ((fJx - f8) - f5);
        }
    }

    private float hp(float f2, float f3) {
        return f3 <= 0.0f ? f2 : f2 + (((jx() * 2.0f) - 1.0f) * f3);
    }

    public void hp(a aVar) {
        int i2 = this.f26370k;
        aVar.hp(600);
        aVar.hp = i2;
        System.arraycopy(this.f26369j, 0, aVar.jx, 0, i2);
        System.arraycopy(this.f26376w, 0, aVar.f26358j, 0, i2);
        System.arraycopy(this.f26368e, 0, aVar.f26362w, 0, i2);
        System.arraycopy(this.gu, 0, aVar.f26357a, 0, i2);
        System.arraycopy(this.f26373s, 0, aVar.eb, 0, i2);
        System.arraycopy(this.zy, 0, aVar.f26361s, 0, i2);
        aVar.f26359l = this.f26371l.f26398a;
    }
}
