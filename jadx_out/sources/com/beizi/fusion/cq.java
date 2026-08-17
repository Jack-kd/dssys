package com.beizi.fusion;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;

/* loaded from: classes2.dex */
public abstract class cq {

    public class a implements Animation.AnimationListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f13261a;

        public a(View view) {
            this.f13261a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f13261a.clearAnimation();
            this.f13261a.setTranslationX(0.0f);
            this.f13261a.setTranslationY(0.0f);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f13261a.setVisibility(0);
        }
    }

    public class b implements Animation.AnimationListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f13262a;

        public b(View view) {
            this.f13262a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            cq.b(this.f13262a);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    private static boolean a(int i2) {
        return i2 == 0 || i2 == 1 || i2 == 3 || i2 == 2;
    }

    public static void b(View view, int i2, long j2) {
        if (view == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        if (!a(i2) || j2 <= 0) {
            b(view);
            return;
        }
        float width = view.getWidth();
        float height = view.getHeight();
        TranslateAnimation translateAnimation = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? null : new TranslateAnimation(0.0f, width, 0.0f, 0.0f) : new TranslateAnimation(0.0f, 0.0f, 0.0f, height) : new TranslateAnimation(0.0f, -width, 0.0f, 0.0f) : new TranslateAnimation(0.0f, 0.0f, 0.0f, -height);
        if (translateAnimation == null) {
            b(view);
            return;
        }
        translateAnimation.setDuration(j2);
        translateAnimation.setFillAfter(true);
        translateAnimation.setAnimationListener(new b(view));
        view.startAnimation(translateAnimation);
    }

    public static void a(final View view, ViewGroup viewGroup, final int i2, final long j2) {
        if (view == null || viewGroup == null) {
            return;
        }
        if (a(i2) && j2 > 0) {
            view.setVisibility(4);
            viewGroup.removeView(view);
            viewGroup.addView(view);
            viewGroup.post(new Runnable() { // from class: com.beizi.fusion.r
                @Override // java.lang.Runnable
                public final void run() {
                    cq.a(view, i2, j2);
                }
            });
            return;
        }
        viewGroup.removeView(view);
        viewGroup.addView(view);
        view.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(View view, int i2, long j2) {
        TranslateAnimation translateAnimation;
        if (view.getParent() == null) {
            return;
        }
        float width = view.getWidth();
        float height = view.getHeight();
        if (i2 == 0) {
            translateAnimation = new TranslateAnimation(0.0f, 0.0f, -height, 0.0f);
        } else if (i2 == 1) {
            translateAnimation = new TranslateAnimation(-width, 0.0f, 0.0f, 0.0f);
        } else if (i2 != 2) {
            translateAnimation = i2 != 3 ? null : new TranslateAnimation(width, 0.0f, 0.0f, 0.0f);
        } else {
            translateAnimation = new TranslateAnimation(0.0f, 0.0f, height, 0.0f);
        }
        if (translateAnimation == null) {
            view.setVisibility(0);
            return;
        }
        translateAnimation.setDuration(j2);
        translateAnimation.setFillAfter(true);
        translateAnimation.setAnimationListener(new a(view));
        view.startAnimation(translateAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view) {
        if (view == null || view.getParent() == null) {
            return;
        }
        view.clearAnimation();
        view.setVisibility(8);
        ((ViewGroup) view.getParent()).removeView(view);
    }
}
