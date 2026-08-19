package com.byazt.dpp;

import android.view.MotionEvent;
import android.view.View;

@com.byazt.kj.hp(hp = {0, 1, 1102, 30})
/* loaded from: classes2.dex */
public class jx implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.qo.s f19217a;
    public int eb;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public float f19218j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public float f19219l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19220q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19221s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19222w;

    public jx(com.byazt.qo.s sVar) {
        this(sVar, 5);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        com.byazt.qo.s sVar;
        com.byazt.qo.s sVar2;
        com.byazt.qo.s sVar3;
        if (this.f19220q) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.hp = motionEvent.getX();
            this.f19219l = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                this.f19218j = motionEvent.getX();
                this.jx = motionEvent.getY();
                if (Math.abs(this.f19218j - this.hp) > 10.0f) {
                    this.f19222w = true;
                }
                if (Math.abs(this.f19218j - this.hp) > 8.0f || Math.abs(this.jx - this.f19219l) > 8.0f) {
                    this.f19221s = false;
                }
                int iL = com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), Math.abs(this.f19218j - this.hp));
                if (this.f19218j > this.hp && iL > this.eb && (sVar3 = this.f19217a) != null) {
                    sVar3.hp();
                    this.f19220q = true;
                }
            }
        } else {
            if (!this.f19222w && !this.f19221s) {
                return false;
            }
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int iL2 = com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), Math.abs(this.f19218j - this.hp));
            if (this.f19218j > this.hp && iL2 > this.eb && (sVar2 = this.f19217a) != null) {
                sVar2.hp();
                this.f19220q = true;
            }
            float fAbs = Math.abs(x2 - this.hp);
            float fAbs2 = Math.abs(y2 - this.f19219l);
            if ((fAbs < 8.0f || fAbs2 < 8.0f) && (sVar = this.f19217a) != null) {
                sVar.l();
                this.f19220q = true;
            }
        }
        return true;
    }

    public jx(com.byazt.qo.s sVar, int i2) {
        this.eb = 5;
        this.f19221s = true;
        this.f19217a = sVar;
        if (i2 > 0) {
            this.eb = i2;
        }
    }
}
