package com.byazt.dth;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.dnb.s;
import com.byazt.ymw.e;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 584, 1679})
/* loaded from: classes2.dex */
public class LazeLayout<T extends View> extends View {

    /* renamed from: a, reason: collision with root package name */
    public View.OnClickListener f19298a;
    public View.OnTouchListener eb;
    public volatile com.byazt.dth.hp<T> hp;

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f19299j;
    public hp jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile Context f19300l;

    /* renamed from: s, reason: collision with root package name */
    public T f19301s;

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f19302w;

    public interface hp<T extends View> {
        void onFill(T t2);
    }

    public LazeLayout(Context context, com.byazt.dth.hp hpVar, hp hpVar2) {
        super(context);
        this.f19299j = new AtomicBoolean(false);
        this.f19302w = new AtomicBoolean(false);
        this.hp = hpVar;
        this.f19300l = context;
        this.jx = hpVar2;
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f19302w.set(true);
        if (this.f19299j.get()) {
            return;
        }
        this.f19299j.set(true);
        T t2 = this.f19301s;
        if (t2 != null) {
            hp((LazeLayout<T>) t2, getParent());
        } else {
            e.jx().post(new Runnable() { // from class: com.byazt.dth.LazeLayout.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LazeLayout lazeLayout = LazeLayout.this;
                        lazeLayout.f19301s = lazeLayout.hp.inflate(LazeLayout.this.f19300l);
                        if (LazeLayout.this.f19301s == null) {
                            return;
                        }
                        LazeLayout lazeLayout2 = LazeLayout.this;
                        lazeLayout2.hp((LazeLayout) lazeLayout2.f19301s, LazeLayout.this.getParent());
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f19302w.set(false);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f19298a = onClickListener;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.eb = onTouchListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final T t2, final ViewParent viewParent) {
        if (t2 == null) {
            return;
        }
        if (viewParent == null) {
            if (this.f19302w.get()) {
                e.jx().postDelayed(new Runnable() { // from class: com.byazt.dth.LazeLayout.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LazeLayout lazeLayout = LazeLayout.this;
                        lazeLayout.hp((LazeLayout) t2, lazeLayout.getParent());
                    }
                }, 50L);
                return;
            } else {
                this.f19299j.set(false);
                return;
            }
        }
        if (viewParent instanceof ViewGroup) {
            s.hp(new Runnable() { // from class: com.byazt.dth.LazeLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    if (LazeLayout.this.f19302w.get()) {
                        LazeLayout.this.hp((LazeLayout) t2, (ViewGroup) viewParent);
                    } else {
                        LazeLayout.this.f19299j.set(false);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(T t2, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        this.f19300l = null;
        this.hp = null;
        ViewParent parent = t2.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(t2);
        }
        View.OnClickListener onClickListener = this.f19298a;
        if (onClickListener != null) {
            t2.setOnClickListener(onClickListener);
        }
        View.OnTouchListener onTouchListener = this.eb;
        if (onTouchListener != null) {
            t2.setOnTouchListener(onTouchListener);
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(t2, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(t2, iIndexOfChild);
        }
        hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.onFill(t2);
        }
        this.f19301s = null;
    }

    public void hp() {
        this.f19301s = null;
        this.hp = null;
        this.f19300l = null;
        this.jx = null;
    }
}
