package com.byazt.dpp;

import android.view.MotionEvent;
import android.view.View;

@com.byazt.kj.hp(hp = {0, 1, 1102, 54})
/* loaded from: classes2.dex */
public class a implements View.OnTouchListener {
    public static int jx = 10;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f19191j;

    /* renamed from: l, reason: collision with root package name */
    public float f19192l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.qo.s f19193w;

    public a(com.byazt.qo.s sVar) {
        this.f19193w = sVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.hp = motionEvent.getX();
            this.f19192l = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (Math.abs(x2 - this.hp) >= jx || Math.abs(y2 - this.f19192l) >= jx) {
                    this.f19191j = true;
                }
            } else if (action == 3) {
                this.f19191j = false;
            }
        } else {
            if (this.f19191j) {
                this.f19191j = false;
                return false;
            }
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (Math.abs(x3 - this.hp) >= jx || Math.abs(y3 - this.f19192l) >= jx) {
                this.f19191j = false;
            } else {
                com.byazt.qo.s sVar = this.f19193w;
                if (sVar != null) {
                    sVar.hp();
                }
            }
        }
        return true;
    }
}
