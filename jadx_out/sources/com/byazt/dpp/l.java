package com.byazt.dpp;

import android.view.MotionEvent;
import android.view.View;
import com.byazt.qo.InteractViewContainer;

@com.byazt.kj.hp(hp = {0, 1, 1102, 34})
/* loaded from: classes2.dex */
public class l implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.qo.s f19223a;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f19224j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public float f19225l;

    /* renamed from: w, reason: collision with root package name */
    public InteractViewContainer f19226w;

    public l(InteractViewContainer interactViewContainer, com.byazt.qo.s sVar) {
        this.f19226w = interactViewContainer;
        this.f19223a = sVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.jx = System.currentTimeMillis();
            this.hp = motionEvent.getX();
            this.f19225l = motionEvent.getY();
            this.f19226w.w();
        } else if (action != 1) {
            if (action == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (Math.abs(x2 - this.hp) >= com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), 10.0f) || Math.abs(y2 - this.f19225l) >= com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), 10.0f)) {
                    this.f19224j = true;
                    this.f19226w.a();
                }
            }
        } else {
            if (this.f19224j) {
                return false;
            }
            if (System.currentTimeMillis() - this.jx >= 1500) {
                com.byazt.qo.s sVar = this.f19223a;
                if (sVar != null) {
                    sVar.hp();
                }
            } else {
                this.f19226w.a();
            }
        }
        return true;
    }
}
