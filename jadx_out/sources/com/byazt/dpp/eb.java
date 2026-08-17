package com.byazt.dpp;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

@com.byazt.kj.hp(hp = {0, 1, 1102, 94})
/* loaded from: classes2.dex */
public class eb implements View.OnTouchListener {
    public static int jx = 10;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qo.s f19196j;

    /* renamed from: l, reason: collision with root package name */
    public float f19197l;

    /* renamed from: w, reason: collision with root package name */
    public int f19200w;

    /* renamed from: a, reason: collision with root package name */
    public RectF f19194a = new RectF();
    public long eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public final int f19199s = 200;

    /* renamed from: q, reason: collision with root package name */
    public final int f19198q = 3;

    /* renamed from: e, reason: collision with root package name */
    public SoftReference<View> f19195e = new SoftReference<>(null);

    public eb(com.byazt.qo.s sVar, int i2, final ViewGroup viewGroup) {
        this.f19200w = jx;
        this.f19196j = sVar;
        if (i2 > 0) {
            this.f19200w = i2;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.byazt.dpp.eb.1
                @Override // java.lang.Runnable
                public void run() {
                    View viewFindViewById = viewGroup.findViewById(2097610746);
                    eb.this.f19195e = new SoftReference(viewFindViewById);
                }
            });
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        com.byazt.qo.s sVar;
        com.byazt.qo.s sVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f19194a = hp(this.f19195e.get());
            this.hp = motionEvent.getRawX();
            this.f19197l = motionEvent.getRawY();
            this.eb = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.f19194a;
            if (rectF != null && !rectF.contains(this.hp, this.f19197l)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.hp);
            float fAbs2 = Math.abs(rawY - this.f19197l);
            int iL = com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), Math.abs(rawX - this.hp));
            int i2 = jx;
            if (fAbs < i2 || fAbs2 < i2) {
                if ((System.currentTimeMillis() - this.eb < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (sVar = this.f19196j) != null) {
                    sVar.hp();
                }
            } else if (rawX > this.hp && iL > this.f19200w && (sVar2 = this.f19196j) != null) {
                sVar2.hp();
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
