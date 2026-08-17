package com.beizi.fusion;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.TouchOptimizeFrame;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;

/* loaded from: classes2.dex */
public class ep extends yk {

    /* renamed from: f, reason: collision with root package name */
    private boolean f13739f;

    /* renamed from: g, reason: collision with root package name */
    private View.OnTouchListener f13740g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f13741h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f13742i;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1 || !ep.this.f13739f) {
                return false;
            }
            ep.this.c();
            ep.this.f13739f = false;
            ep.this.h();
            return true;
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            ep.this.f13739f = true;
            if (ep.this.f13742i) {
                ep.this.c();
                return false;
            }
            ep.this.g();
            return false;
        }
    }

    public ep(Context context) {
        super(context);
        this.f13739f = false;
        this.f13741h = false;
        this.f13742i = false;
    }

    private View.OnTouchListener f() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f13740g == null && this.f13741h) {
            View.OnTouchListener onTouchListenerF = f();
            this.f13740g = onTouchListenerF;
            a(this.f17697d, onTouchListenerF);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        a(this.f17697d, (View.OnTouchListener) null);
    }

    @Override // com.beizi.fusion.yk
    public void b(OptimizeModel optimizeModel) {
        super.b(optimizeModel);
        View view = this.f17697d;
        if (view != null) {
            view.setOnTouchListener(new b());
        }
    }

    @Override // com.beizi.fusion.yk, com.beizi.fusion.zc
    public void a(View view, EnumC1130d enumC1130d) {
        super.a(view, enumC1130d);
        if (view instanceof TouchOptimizeFrame) {
            TouchOptimizeFrame touchOptimizeFrame = (TouchOptimizeFrame) view;
            this.f13741h = touchOptimizeFrame.isParentUp();
            this.f13742i = touchOptimizeFrame.isQuickTouch();
        }
    }

    private void a(View view, View.OnTouchListener onTouchListener) {
        if (view != null) {
            for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ((ViewGroup) parent).setOnTouchListener(onTouchListener);
            }
        }
    }
}
