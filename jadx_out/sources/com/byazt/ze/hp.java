package com.byazt.ze;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

@com.byazt.kj.hp(hp = {0, 1, 683, 28})
/* loaded from: classes3.dex */
public abstract class hp extends ValueAnimator {
    public final Set<ValueAnimator.AnimatorUpdateListener> hp = new CopyOnWriteArraySet();

    /* renamed from: l, reason: collision with root package name */
    public final Set<Animator.AnimatorListener> f28396l = new CopyOnWriteArraySet();
    public final Set<Animator.AnimatorPauseListener> jx = new CopyOnWriteArraySet();

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.f28396l.add(animatorListener);
    }

    @Override // android.animation.Animator
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.jx.add(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.hp.add(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    public void hp(boolean z2) {
        for (Animator.AnimatorListener animatorListener : this.f28396l) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z2);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    public void j() {
        Iterator<Animator.AnimatorPauseListener> it = this.jx.iterator();
        while (it.hasNext()) {
            it.next().onAnimationPause(this);
        }
    }

    public void jx() {
        Iterator<ValueAnimator.AnimatorUpdateListener> it = this.hp.iterator();
        while (it.hasNext()) {
            it.next().onAnimationUpdate(this);
        }
    }

    public void l(boolean z2) {
        for (Animator.AnimatorListener animatorListener : this.f28396l) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z2);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.f28396l.clear();
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.hp.clear();
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.f28396l.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.jx.remove(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.hp.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j2) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    public void w() {
        Iterator<Animator.AnimatorPauseListener> it = this.jx.iterator();
        while (it.hasNext()) {
            it.next().onAnimationResume(this);
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j2) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    public void hp() {
        Iterator<Animator.AnimatorListener> it = this.f28396l.iterator();
        while (it.hasNext()) {
            it.next().onAnimationRepeat(this);
        }
    }

    public void l() {
        Iterator<Animator.AnimatorListener> it = this.f28396l.iterator();
        while (it.hasNext()) {
            it.next().onAnimationCancel(this);
        }
    }
}
