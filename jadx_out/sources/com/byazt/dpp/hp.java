package com.byazt.dpp;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

@com.byazt.kj.hp(hp = {0, 1, 1102, 28})
/* loaded from: classes2.dex */
public class hp implements View.OnTouchListener {
    public static int jx = 10;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qo.s f19204j;

    /* renamed from: l, reason: collision with root package name */
    public float f19205l;

    /* renamed from: w, reason: collision with root package name */
    public int f19208w;

    /* renamed from: a, reason: collision with root package name */
    public RectF f19202a = new RectF();
    public long eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public final int f19207s = 200;

    /* renamed from: q, reason: collision with root package name */
    public final int f19206q = 3;

    /* renamed from: e, reason: collision with root package name */
    public SoftReference<ViewGroup> f19203e = new SoftReference<>(null);

    public hp(com.byazt.qo.s sVar, int i2, final ViewGroup viewGroup) {
        this.f19208w = jx;
        this.f19204j = sVar;
        if (i2 > 0) {
            this.f19208w = i2;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.byazt.dpp.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.f19203e = new SoftReference(viewGroup);
                }
            });
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.byazt.qo.s sVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f19202a = hp(this.f19203e.get());
            this.hp = motionEvent.getRawX();
            this.f19205l = motionEvent.getRawY();
            this.eb = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.f19202a;
            if (rectF != null && !rectF.contains(this.hp, this.f19205l)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.hp);
            float fAbs2 = Math.abs(rawY - this.f19205l);
            int i2 = this.f19208w;
            if (fAbs >= i2 && fAbs2 >= i2) {
                com.byazt.qo.s sVar2 = this.f19204j;
                if (sVar2 != null) {
                    sVar2.hp();
                }
            } else if ((System.currentTimeMillis() - this.eb < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (sVar = this.f19204j) != null) {
                sVar.hp();
            }
        }
        return true;
    }

    private RectF hp(View view) {
        if (view == null) {
            return new RectF();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], r2 + view.getWidth(), iArr[1] + view.getHeight());
    }
}
