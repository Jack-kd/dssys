package com.byazt.ay;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.jz.sz;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 525, 42})
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public int f18402a;
    public int eb;
    public boolean gu;
    public final hp hp;

    /* renamed from: j, reason: collision with root package name */
    public float f18404j;

    /* renamed from: w, reason: collision with root package name */
    public float f18408w;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18405l = false;
    public boolean jx = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18407s = true;

    /* renamed from: q, reason: collision with root package name */
    public boolean f18406q = false;

    /* renamed from: e, reason: collision with root package name */
    public final View.OnTouchListener f18403e = new View.OnTouchListener() { // from class: com.byazt.ay.k.1
        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (k.this.hp.v()) {
                return k.this.f18405l || !k.this.jx;
            }
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                k kVar = k.this;
                kVar.gu = kVar.hp(motionEvent);
                k.this.f18404j = x2;
                k.this.f18408w = y2;
                k.this.f18402a = (int) x2;
                k.this.eb = (int) y2;
                k.this.f18407s = true;
                if (k.this.hp != null && k.this.jx && !k.this.f18405l) {
                    k.this.hp.hp(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x2 - k.this.f18402a) > 20.0f || Math.abs(y2 - k.this.eb) > 20.0f) {
                    k.this.f18407s = false;
                }
                if (!k.this.f18405l) {
                    k.this.f18407s = true;
                }
                k.this.f18406q = false;
                k.this.f18404j = 0.0f;
                k.this.f18408w = 0.0f;
                k.this.f18402a = 0;
                if (k.this.hp != null) {
                    k.this.hp.hp(view, k.this.f18407s);
                }
                k.this.gu = false;
            } else if (action != 2) {
                if (action == 3) {
                    k.this.gu = false;
                }
            } else if (k.this.f18405l && !k.this.gu) {
                float f2 = x2 - k.this.f18404j;
                float f3 = y2 - k.this.f18408w;
                float fAbs = Math.abs(f2);
                float fAbs2 = Math.abs(f3);
                if (!k.this.f18406q) {
                    if (fAbs <= 20.0f && fAbs2 <= 20.0f) {
                        return true;
                    }
                    k.this.f18406q = true;
                }
                if (k.this.hp != null) {
                    k.this.hp.k();
                }
                k.this.f18404j = x2;
                k.this.f18408w = y2;
            }
            return k.this.f18405l || !k.this.jx;
        }
    };

    public interface hp {
        void hp(View view, boolean z2);

        void k();

        boolean v();
    }

    public k(hp hpVar) {
        this.hp = hpVar;
    }

    public void hp(View view) {
        if (view != null) {
            view.setOnTouchListener(this.f18403e);
        }
    }

    public void hp(boolean z2) {
        this.jx = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        int iJ = xh.j(sz.getContext().getApplicationContext());
        int iW = xh.w(sz.getContext().getApplicationContext());
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f2 = iJ;
        if (rawX <= f2 * 0.01f || rawX >= f2 * 0.99f) {
            return true;
        }
        float f3 = iW;
        return rawY <= 0.01f * f3 || rawY >= f3 * 0.99f;
    }
}
