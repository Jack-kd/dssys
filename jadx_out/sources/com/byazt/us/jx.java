package com.byazt.us;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;

@com.byazt.kj.hp(hp = {0, 1, 226, 30})
/* loaded from: classes3.dex */
public final class jx {

    /* renamed from: a, reason: collision with root package name */
    public boolean f26377a;
    public boolean eb;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.us.hp f26379j;
    public w jx;

    /* renamed from: l, reason: collision with root package name */
    public l f26381l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f26382q;

    /* renamed from: v, reason: collision with root package name */
    public Application f26385v;

    /* renamed from: w, reason: collision with root package name */
    public View f26386w;

    /* renamed from: s, reason: collision with root package name */
    public boolean f26383s = true;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f26378e = new Rect();
    public final View.OnLayoutChangeListener gu = new View.OnLayoutChangeListener() { // from class: com.byazt.us.jx.1
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            if (jx.this.f26379j != null) {
                jx.this.f26379j.setBounds(0, 0, i4 - i2, i5 - i3);
            }
            jx.this.s();
        }
    };
    public final ViewTreeObserver.OnScrollChangedListener jl = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.us.jx.2
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            jx.this.s();
        }
    };
    public final ViewTreeObserver.OnWindowFocusChangeListener zy = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.byazt.us.jx.3
        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
        public void onWindowFocusChanged(boolean z2) {
            jx.this.s();
        }
    };

    /* renamed from: k, reason: collision with root package name */
    public final View.OnAttachStateChangeListener f26380k = new View.OnAttachStateChangeListener() { // from class: com.byazt.us.jx.4
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            jx.this.w();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            jx.this.a();
        }
    };

    /* renamed from: u, reason: collision with root package name */
    public final Application.ActivityLifecycleCallbacks f26384u = new hp() { // from class: com.byazt.us.jx.5
        @Override // com.byazt.us.jx.hp, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (activity == jx.this.u()) {
                jx.this.f26383s = false;
                jx.this.s();
            }
        }

        @Override // com.byazt.us.jx.hp, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity == jx.this.u()) {
                jx.this.f26383s = true;
                jx.this.s();
            }
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, 226, 219})
    public static abstract class hp implements Application.ActivityLifecycleCallbacks {
        private hp() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    public jx(Context context) {
        this.hp = context != null ? context.getApplicationContext() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        View view = this.f26386w;
        if (view == null) {
            this.f26377a = false;
            this.eb = false;
            vv();
            this.f26382q = false;
            return;
        }
        if (this.f26377a) {
            this.f26377a = false;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnScrollChangedListener(this.jl);
                ViewTreeObserver.OnWindowFocusChangeListener onWindowFocusChangeListener = this.zy;
                if (onWindowFocusChangeListener != null) {
                    viewTreeObserver.removeOnWindowFocusChangeListener(onWindowFocusChangeListener);
                }
            }
            hp(false);
            zy();
        }
        gu();
        vv();
    }

    private void e() {
        View view = this.f26386w;
        if (view == null || this.f26382q) {
            return;
        }
        view.addOnLayoutChangeListener(this.gu);
        this.f26386w.addOnAttachStateChangeListener(this.f26380k);
        this.f26382q = true;
    }

    private boolean eb() {
        View view;
        return this.f26377a && (view = this.f26386w) != null && this.f26383s && view.getVisibility() == 0 && this.f26386w.getWindowVisibility() == 0 && this.f26386w.getWidth() > 0 && this.f26386w.getHeight() > 0 && this.f26386w.getAlpha() > 0.0f && this.f26386w.getGlobalVisibleRect(this.f26378e) && this.f26378e.width() > 1 && this.f26378e.height() > 1;
    }

    private void gu() {
        View view = this.f26386w;
        if (view == null || !this.f26382q) {
            return;
        }
        view.removeOnLayoutChangeListener(this.gu);
        this.f26386w.removeOnAttachStateChangeListener(this.f26380k);
        this.f26382q = false;
    }

    private void jl() {
        if (this.f26386w == null || this.f26381l == null || !v()) {
            return;
        }
        q();
        if (this.f26379j == null) {
            this.f26379j = new com.byazt.us.hp(this.jx);
        }
        int width = this.f26386w.getWidth();
        int height = this.f26386w.getHeight();
        if (width > 0 && height > 0) {
            this.f26379j.setBounds(0, 0, width, height);
        }
        this.f26386w.getOverlay().add(this.f26379j);
    }

    private void k() {
        com.byazt.us.hp hpVar = this.f26379j;
        if (hpVar != null) {
            hpVar.l();
        }
        w wVar = this.jx;
        if (wVar != null) {
            wVar.a();
            this.jx = null;
        }
        this.f26379j = null;
    }

    private void q() {
        l lVar = this.f26381l;
        if (lVar == null) {
            return;
        }
        if (this.jx == null) {
            this.jx = new w(lVar);
        }
        View view = this.f26386w;
        if (view != null) {
            this.jx.hp(view.getWidth(), this.f26386w.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        hp(eb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity u() {
        View view = this.f26386w;
        if (view == null) {
            return null;
        }
        return hp(view.getContext());
    }

    private static boolean v() {
        return true;
    }

    private void vv() {
        Application application = this.f26385v;
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.f26384u);
            this.f26385v = null;
        }
    }

    private void xs() {
        Activity activityU;
        Application application;
        if (this.f26385v != null || (activityU = u()) == null || (application = activityU.getApplication()) == null) {
            return;
        }
        this.f26385v = application;
        application.registerActivityLifecycleCallbacks(this.f26384u);
    }

    private void zy() {
        if (this.f26386w == null || this.f26379j == null || !v()) {
            return;
        }
        this.f26386w.getOverlay().remove(this.f26379j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.f26377a || this.f26386w == null || this.f26381l == null || !v()) {
            return;
        }
        e();
        this.f26377a = true;
        jl();
        ViewTreeObserver viewTreeObserver = this.f26386w.getViewTreeObserver();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnScrollChangedListener(this.jl);
            ViewTreeObserver.OnWindowFocusChangeListener onWindowFocusChangeListener = this.zy;
            if (onWindowFocusChangeListener != null) {
                viewTreeObserver.addOnWindowFocusChangeListener(onWindowFocusChangeListener);
            }
        }
        xs();
        s();
    }

    public void j() {
        a();
    }

    public void jx() {
        w();
    }

    public void l() {
        a();
        this.f26386w = null;
        k();
    }

    public void hp(String str) {
        l lVarHp = l.hp(this.hp, str);
        if (lVarHp != null && lVarHp.jx()) {
            if (this.f26381l == lVarHp) {
                return;
            }
            zy();
            k();
            this.f26381l = lVarHp;
            if (!this.f26377a || this.f26386w == null) {
                return;
            }
            jl();
            boolean z2 = this.eb;
            this.eb = false;
            hp(z2 || eb());
            return;
        }
        if (this.f26381l != null) {
            zy();
            k();
            this.f26381l = null;
        }
    }

    public boolean hp() {
        return this.f26381l != null;
    }

    public void hp(View view) {
        if (this.f26386w == view) {
            return;
        }
        l();
        this.f26386w = view;
        if (view == null || this.f26381l == null || !v()) {
            return;
        }
        e();
        if (this.f26386w.getWindowToken() != null) {
            w();
        }
    }

    private void hp(boolean z2) {
        if (this.eb == z2) {
            return;
        }
        this.eb = z2;
        if (z2) {
            q();
            w wVar = this.jx;
            if (wVar != null) {
                wVar.j();
            }
            com.byazt.us.hp hpVar = this.f26379j;
            if (hpVar != null) {
                hpVar.hp();
                return;
            }
            return;
        }
        com.byazt.us.hp hpVar2 = this.f26379j;
        if (hpVar2 != null) {
            hpVar2.l();
        }
        w wVar2 = this.jx;
        if (wVar2 != null) {
            wVar2.w();
        }
    }

    private static Activity hp(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext == context) {
                return null;
            }
            context = baseContext;
        }
        return null;
    }
}
