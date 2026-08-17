package com.byazt.dth;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 584, 1321})
/* loaded from: classes2.dex */
public final class TTViewStub extends View {
    public WeakReference<View> hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f19305j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.dth.hp f19306l;

    public interface hp {
    }

    public TTViewStub(Context context, com.byazt.dth.hp hpVar) {
        super(context);
        this.jx = context;
        this.f19306l = hpVar;
        setVisibility(8);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public View hp() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        com.byazt.dth.hp hpVar = this.f19306l;
        if (hpVar == null) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        View viewInflate = hpVar.inflate(this.jx);
        hp(viewInflate, (ViewGroup) parent);
        this.hp = new WeakReference<>(viewInflate);
        return viewInflate;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    public void setOnInflateListener(hp hpVar) {
        this.f19305j = hpVar;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        WeakReference<View> weakReference = this.hp;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i2);
            return;
        }
        super.setVisibility(i2);
        if (i2 == 0 || i2 == 4) {
            hp();
        }
    }

    private void hp(View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }
}
