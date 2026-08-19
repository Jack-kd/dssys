package com.byazt.dpp;

import android.view.MotionEvent;
import android.view.View;

@com.byazt.kj.hp(hp = {0, 1, 1102, 38})
/* loaded from: classes2.dex */
public class j implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public float f19210a;

    /* renamed from: e, reason: collision with root package name */
    public int f19211e;
    public float eb;
    public boolean gu;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public float f19212j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public float f19213l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.qo.s f19214q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19215s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19216w = true;

    public j(com.byazt.qo.s sVar, int i2, boolean z2) {
        this.f19214q = sVar;
        this.f19211e = i2;
        this.gu = z2;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        com.byazt.qo.s sVar;
        com.byazt.qo.s sVar2;
        com.byazt.qo.s sVar3;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.hp = motionEvent.getX();
            this.f19213l = motionEvent.getY();
            this.f19210a = motionEvent.getY();
            this.f19216w = true;
        } else if (action != 1) {
            if (action == 2) {
                float y2 = motionEvent.getY();
                this.eb = y2;
                if (Math.abs(y2 - this.f19210a) > 10.0f) {
                    this.f19215s = true;
                }
                this.f19212j = motionEvent.getX();
                this.jx = motionEvent.getY();
                if (Math.abs(this.f19212j - this.hp) > 8.0f || Math.abs(this.jx - this.f19213l) > 8.0f) {
                    this.f19216w = false;
                }
            }
        } else {
            if (!this.f19215s && !this.f19216w) {
                return false;
            }
            if (this.gu || (sVar3 = this.f19214q) == null) {
                int iL = com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), Math.abs(this.eb - this.f19210a));
                if (this.eb - this.f19210a < 0.0f && iL > this.f19211e && (sVar2 = this.f19214q) != null) {
                    sVar2.hp();
                } else if (this.f19216w && (sVar = this.f19214q) != null) {
                    sVar.hp();
                }
            } else {
                sVar3.hp();
            }
        }
        return true;
    }
}
