package com.byazt.ymw;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

@com.byazt.kj.hp(hp = {0, 1, 68, 150})
/* loaded from: classes3.dex */
public class q extends TouchDelegate {
    public View hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f28106j;
    public Rect jx;

    /* renamed from: l, reason: collision with root package name */
    public Rect f28107l;

    /* renamed from: w, reason: collision with root package name */
    public int f28108w;

    public q(Rect rect, View view) {
        super(rect, view);
        this.f28107l = rect;
        this.f28108w = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.jx = rect2;
        int i2 = this.f28108w;
        rect2.inset(-i2, -i2);
        this.hp = view;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zContains;
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 2) {
                boolean z2 = this.f28106j;
                zContains = z2 ? this.jx.contains(x2, y2) : true;
                z = z2;
            } else if (action != 3) {
                zContains = true;
                z = false;
            } else {
                boolean z3 = this.f28106j;
                this.f28106j = false;
                z = z3;
                zContains = true;
            }
        } else if (this.f28107l.contains(x2, y2)) {
            this.f28106j = true;
            zContains = true;
        } else {
            this.f28106j = false;
            zContains = true;
            z = false;
        }
        if (z) {
            View view = this.hp;
            if (zContains) {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            } else {
                float f2 = -(this.f28108w * 2);
                motionEvent.setLocation(f2, f2);
            }
            if (view.getVisibility() == 0) {
                return view.dispatchTouchEvent(motionEvent);
            }
        }
        return false;
    }
}
