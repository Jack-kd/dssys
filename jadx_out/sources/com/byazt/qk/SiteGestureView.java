package com.byazt.qk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.xci.b;
import com.byazt.xci.pc;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 64, 1579})
/* loaded from: classes3.dex */
public class SiteGestureView extends View {

    /* renamed from: a, reason: collision with root package name */
    public float f24807a;
    public long eb;
    public ns hp;

    /* renamed from: j, reason: collision with root package name */
    public float f24808j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public pc f24809l;

    /* renamed from: w, reason: collision with root package name */
    public float f24810w;

    public SiteGestureView(Context context, pc pcVar, ns nsVar) {
        super(context);
        this.f24809l = pcVar;
        this.hp = nsVar;
        setTag(2097610717, "click");
    }

    private boolean hp(int i2, MotionEvent motionEvent) {
        if (this.f24809l.hp() == 1 && this.hp.hp()) {
            this.hp.hp(motionEvent);
            return false;
        }
        l(i2, motionEvent);
        return true;
    }

    private void l(int i2, MotionEvent motionEvent) {
        int[] iArrHp = xh.hp(this);
        com.byazt.xci.b bVarHp = new b.hp().hp("express_gesture_view").j(this.f24810w).jx(this.f24807a).l(motionEvent.getRawX()).hp(motionEvent.getRawY()).l(this.eb).jx(getWidth()).j(getHeight()).hp(iArrHp == null ? 0 : iArrHp[0]).l(iArrHp != null ? iArrHp[1] : 0).hp(true).hp(System.currentTimeMillis()).hp();
        this.f24809l.hp(i2);
        this.hp.hp(this, 1, bVarHp, this.f24809l);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.jx = xh.j(getContext(), motionEvent.getX());
            this.f24808j = xh.j(getContext(), motionEvent.getY());
            this.f24810w = motionEvent.getRawX();
            this.f24807a = motionEvent.getRawY();
            this.eb = System.currentTimeMillis();
            this.hp.hp(motionEvent);
            if (this.f24809l.l() == -1 || !this.hp.jx()) {
                return false;
            }
        } else if (action == 1) {
            this.hp.l();
            float fJ = xh.j(getContext(), motionEvent.getX());
            float fJ2 = xh.j(getContext(), motionEvent.getY());
            if (this.f24809l.jx() == 0.0d) {
                l(-1, motionEvent);
                return true;
            }
            float f2 = fJ - this.jx;
            float f3 = fJ2 - this.f24808j;
            float fAbs = Math.abs(f2);
            float fAbs2 = Math.abs(f3);
            if (fAbs <= 3.0f && fAbs2 <= 3.0f) {
                this.hp.hp(motionEvent);
                return true;
            }
            double dJx = this.f24809l.jx();
            int iJ = this.f24809l.j();
            if (fAbs > fAbs2) {
                if (fAbs > dJx) {
                    long j2 = iJ;
                    if (com.byazt.rl.l.hp(j2, 2L) && f2 < 0.0f) {
                        return hp(2, motionEvent);
                    }
                    if (com.byazt.rl.l.hp(j2, 4L) && f2 > 0.0f) {
                        return hp(4, motionEvent);
                    }
                }
            } else if (fAbs2 > dJx) {
                long j3 = iJ;
                if (com.byazt.rl.l.hp(j3, 8L) && f3 < 0.0f) {
                    return hp(8, motionEvent);
                }
                if (com.byazt.rl.l.hp(j3, 16L) && f3 > 0.0f) {
                    return hp(16, motionEvent);
                }
            }
            return false;
        }
        return true;
    }
}
