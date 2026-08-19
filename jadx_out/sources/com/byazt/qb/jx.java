package com.byazt.qb;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 159, 30})
/* loaded from: classes3.dex */
public class jx implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f24551a;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f24552j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public float f24553l;

    /* renamed from: w, reason: collision with root package name */
    public int f24554w;

    public interface hp {
        void hp();

        void l();
    }

    public jx(Context context, hp hpVar, int i2) {
        this.f24551a = context;
        this.f24554w = i2;
        this.f24552j = hpVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.hp = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y2 = motionEvent.getY();
                this.f24553l = y2;
                if (Math.abs(y2 - this.hp) > 10.0f) {
                    this.jx = true;
                }
            }
        } else {
            if (!this.jx) {
                hp hpVar = this.f24552j;
                if (hpVar != null) {
                    hpVar.l();
                }
                return true;
            }
            int iJ = xh.j(this.f24551a, Math.abs(this.f24553l - this.hp));
            if (this.f24553l - this.hp >= 0.0f || iJ <= this.f24554w) {
                hp hpVar2 = this.f24552j;
                if (hpVar2 != null) {
                    hpVar2.l();
                }
            } else {
                hp hpVar3 = this.f24552j;
                if (hpVar3 != null) {
                    hpVar3.hp();
                }
            }
        }
        return true;
    }
}
