package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.bl;
import com.beizi.fusion.je;
import com.beizi.fusion.jf;
import com.beizi.fusion.kf;
import com.beizi.fusion.qb;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ScopeCarouselView2 extends ScopeViewGroup implements qb {

    /* renamed from: n, reason: collision with root package name */
    private static final int f12792n = R.id.scope_animator_tag;

    /* renamed from: e, reason: collision with root package name */
    private final List f12793e;

    /* renamed from: f, reason: collision with root package name */
    private int f12794f;

    /* renamed from: g, reason: collision with root package name */
    private long f12795g;

    /* renamed from: h, reason: collision with root package name */
    private final long f12796h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f12797i;

    /* renamed from: j, reason: collision with root package name */
    private final e f12798j;

    /* renamed from: k, reason: collision with root package name */
    private final jf f12799k;

    /* renamed from: l, reason: collision with root package name */
    private int f12800l;

    /* renamed from: m, reason: collision with root package name */
    private final bl f12801m;

    public class a extends bl {
        public a(long j2, long j3) {
            super(j2, j3);
        }

        @Override // com.beizi.fusion.bl
        public void a(long j2) {
            ScopeCarouselView2.b(ScopeCarouselView2.this, 1000);
            jf jfVar = ScopeCarouselView2.this.f12799k;
            kf.a aVar = kf.a.VIDEO_PROCESS;
            ScopeCarouselView2 scopeCarouselView2 = ScopeCarouselView2.this;
            jfVar.a(aVar, scopeCarouselView2, Integer.valueOf(scopeCarouselView2.f12800l));
        }

        @Override // com.beizi.fusion.bl
        public void c() {
            ScopeCarouselView2.this.f12800l = 0;
        }

        @Override // com.beizi.fusion.bl
        public void d() {
            ScopeCarouselView2.this.f12800l = 0;
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ScopeCarouselView2.this.nextCarousel();
        }
    }

    public class c implements Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f12804a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f12805b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f12806c;

        public c(int i2, View view, View view2) {
            this.f12804a = i2;
            this.f12805b = view;
            this.f12806c = view2;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScopeCarouselView2.this.f12794f = this.f12804a;
            ScopeCarouselView2.this.f();
            ScopeCarouselView2.this.a(this.f12805b);
            ScopeCarouselView2.this.a(this.f12806c);
            if (ScopeCarouselView2.this.f12797i) {
                ScopeCarouselView2.this.startCarousel();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public class d implements Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f12808a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f12809b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f12810c;

        public d(int i2, View view, View view2) {
            this.f12808a = i2;
            this.f12809b = view;
            this.f12810c = view2;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScopeCarouselView2.this.f12794f = this.f12808a;
            ScopeCarouselView2.this.f();
            ScopeCarouselView2.this.a(this.f12809b);
            ScopeCarouselView2.this.a(this.f12810c);
            if (ScopeCarouselView2.this.f12797i) {
                ScopeCarouselView2.this.e();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static class e extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference f12812a;

        public e(WeakReference weakReference) {
            super(Looper.getMainLooper());
            this.f12812a = weakReference;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ScopeCarouselView2 scopeCarouselView2 = (ScopeCarouselView2) this.f12812a.get();
            if (scopeCarouselView2 == null || scopeCarouselView2.f12793e.isEmpty()) {
                removeCallbacksAndMessages(null);
            } else if (message.what == 1001) {
                scopeCarouselView2.a();
            }
        }
    }

    public ScopeCarouselView2(Context context) {
        super(context);
        this.f12793e = new ArrayList();
        this.f12794f = 0;
        this.f12795g = 3000L;
        this.f12796h = 500L;
        this.f12797i = false;
        this.f12798j = new e(new WeakReference(this));
        this.f12799k = new jf();
        this.f12800l = 0;
        this.f12801m = new a(100000L, 1000L);
        b();
    }

    public static /* synthetic */ int b(ScopeCarouselView2 scopeCarouselView2, int i2) {
        int i3 = scopeCarouselView2.f12800l + i2;
        scopeCarouselView2.f12800l = i3;
        return i3;
    }

    private View getCurrentView() {
        int i2;
        if (this.f12793e.isEmpty() || (i2 = this.f12794f) < 0 || i2 >= this.f12793e.size()) {
            return null;
        }
        return (View) this.f12793e.get(this.f12794f);
    }

    @Override // com.beizi.fusion.qb
    public synchronized void addCarouseItemView(View view) {
        if (view != null) {
            if (!this.f12793e.contains(view)) {
                view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                view.setDrawingCacheEnabled(true);
                view.setVisibility(4);
                this.f12793e.add(view);
                addView(view);
                if (this.f12793e.size() == 1) {
                    post(new Runnable() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f12858b.c();
                        }
                    });
                }
            }
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void bindRenderModel(RenderModel renderModel) {
        super.bindRenderModel(renderModel);
        if (renderModel.getViewModel() == null || renderModel.getViewModel().getScrollInterval() <= 0) {
            return;
        }
        this.f12795g = renderModel.getViewModel().getScrollInterval();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        aVar.b(this.f12927b.getId());
    }

    @Override // com.beizi.fusion.qb
    public void nextCarousel() {
        int i2 = this.f12794f + 1;
        if (i2 >= this.f12793e.size()) {
            i2 = 0;
        }
        a(i2);
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f12797i = false;
        this.f12798j.removeCallbacksAndMessages(null);
        for (View view : this.f12793e) {
            c(view);
            a(view);
        }
        setDrawingCacheEnabled(false);
        setChildrenDrawingCacheEnabled(false);
        this.f12793e.clear();
        removeAllViews();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f12793e.size() > 0) {
            post(new Runnable() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12856b.f();
                }
            });
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
        this.f12799k.b();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        this.f12799k.a();
    }

    @Override // com.beizi.fusion.qb
    public synchronized void pauseCarousel() {
        if (!this.f12797i) {
            this.f12801m.e();
            return;
        }
        this.f12797i = false;
        this.f12798j.removeMessages(1001);
        Iterator it = this.f12793e.iterator();
        while (it.hasNext()) {
            c((View) it.next());
        }
        f();
        this.f12801m.e();
    }

    @Override // com.beizi.fusion.qb
    public void registerAsVideoObserver(kf kfVar) {
        jf jfVar = this.f12799k;
        if (jfVar != null) {
            jfVar.a(kfVar);
        }
    }

    /* renamed from: seekToItemPosition, reason: merged with bridge method [inline-methods] */
    public void a(final int i2) {
        if (this.f12793e.isEmpty() || i2 < 0 || i2 >= this.f12793e.size() || this.f12794f == i2) {
            return;
        }
        if (getWidth() == 0 || getHeight() == 0) {
            post(new Runnable() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12859b.a(i2);
                }
            });
            return;
        }
        pauseCarousel();
        View currentView = getCurrentView();
        View view = (View) this.f12793e.get(i2);
        if (currentView == null || view == null) {
            return;
        }
        b(view);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(currentView, "translationX", 0.0f, -getWidth());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationX", getWidth(), 0.0f);
        a(objectAnimatorOfFloat, currentView);
        a(objectAnimatorOfFloat2, view);
        objectAnimatorOfFloat2.addListener(new c(i2, currentView, view));
        objectAnimatorOfFloat.start();
        objectAnimatorOfFloat2.start();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        super.setExpressRoot(scopeExpressContainer);
        ScopeExpressContainer.d.a(scopeExpressContainer, (qb) this);
    }

    @Override // com.beizi.fusion.qb
    public synchronized void startCarousel() {
        try {
            bl blVar = this.f12801m;
            if (blVar != null) {
                if (blVar.b()) {
                    this.f12801m.f();
                } else {
                    this.f12801m.g();
                }
            }
            if (this.f12793e.size() >= 2 && !this.f12797i) {
                if (getWidth() != 0 && getHeight() != 0) {
                    this.f12797i = true;
                    e();
                    return;
                }
                post(new Runnable() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12857b.d();
                    }
                });
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f12797i = true;
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f12798j.removeMessages(1001);
        this.f12798j.sendEmptyMessageDelayed(1001, this.f12795g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f12793e.isEmpty() || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        int i2 = 0;
        while (i2 < this.f12793e.size()) {
            View view = (View) this.f12793e.get(i2);
            if (view != null) {
                c(view);
                a(view);
                view.setTranslationX(0.0f);
                view.setVisibility(i2 == this.f12794f ? 0 : 4);
                view.invalidate();
            }
            i2++;
        }
        invalidate();
    }

    private void b() {
        setWillNotDraw(false);
        setDrawingCacheEnabled(true);
        setDrawingCacheQuality(1048576);
        setChildrenDrawingCacheEnabled(true);
        setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.f12794f = 0;
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f12793e.size() < 2 || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        int size = (this.f12794f + 1) % this.f12793e.size();
        View currentView = getCurrentView();
        View view = (View) this.f12793e.get(size);
        if (currentView == null || view == null) {
            return;
        }
        b(view);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(currentView, "translationX", 0.0f, -getWidth());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationX", getWidth(), 0.0f);
        a(objectAnimatorOfFloat, currentView);
        a(objectAnimatorOfFloat2, view);
        objectAnimatorOfFloat2.addListener(new d(size, currentView, view));
        objectAnimatorOfFloat.start();
        objectAnimatorOfFloat2.start();
    }

    private void c(View view) {
        if (view == null) {
            return;
        }
        Object tag = view.getTag(f12792n);
        if (tag instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) tag;
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            }
        }
    }

    private void b(View view) {
        if (view == null || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        c(view);
        view.setTranslationX(getWidth());
        view.setVisibility(0);
        if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            try {
                view.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(getHeight(), C.ENCODING_PCM_32BIT));
                view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            } catch (Exception unused) {
            }
        }
        view.invalidate();
    }

    public ScopeCarouselView2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12793e = new ArrayList();
        this.f12794f = 0;
        this.f12795g = 3000L;
        this.f12796h = 500L;
        this.f12797i = false;
        this.f12798j = new e(new WeakReference(this));
        this.f12799k = new jf();
        this.f12800l = 0;
        this.f12801m = new a(100000L, 1000L);
        b();
    }

    private void a(ObjectAnimator objectAnimator, View view) {
        if (objectAnimator == null || view == null) {
            return;
        }
        objectAnimator.setDuration(500L);
        objectAnimator.setTarget(view);
        view.setTag(f12792n, objectAnimator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (view == null) {
            return;
        }
        view.setTag(f12792n, null);
    }

    public ScopeCarouselView2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12793e = new ArrayList();
        this.f12794f = 0;
        this.f12795g = 3000L;
        this.f12796h = 500L;
        this.f12797i = false;
        this.f12798j = new e(new WeakReference(this));
        this.f12799k = new jf();
        this.f12800l = 0;
        this.f12801m = new a(100000L, 1000L);
        b();
    }
}
