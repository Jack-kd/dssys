package com.byazt.zde;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.byazt.uq.DynamicBaseWidgetImp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 37, 38})
/* loaded from: classes3.dex */
public abstract class j implements com.byazt.uq.w {
    public View jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.nw.hp f28382l;

    /* renamed from: j, reason: collision with root package name */
    public Set<ScheduledFuture<?>> f28381j = new HashSet();
    public List<ObjectAnimator> hp = hp();

    @com.byazt.kj.hp(hp = {0, 1, 37, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public class hp implements Runnable {
        public ObjectAnimator hp;

        /* renamed from: l, reason: collision with root package name */
        public ScheduledFuture<?> f28385l;

        public hp(ObjectAnimator objectAnimator) {
            this.hp = objectAnimator;
        }

        public void hp(ScheduledFuture<?> scheduledFuture) {
            this.f28385l = scheduledFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.byazt.ui.hp.hp().jx() != null) {
                com.byazt.ui.hp.hp().jx().l().post(new Runnable() { // from class: com.byazt.zde.j.hp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.hp.resume();
                    }
                });
                if (this.f28385l != null) {
                    j.this.f28381j.remove(this.f28385l);
                }
            }
        }
    }

    public j(View view, com.byazt.nw.hp hpVar) {
        this.jx = view;
        this.f28382l = hpVar;
    }

    public abstract List<ObjectAnimator> hp();

    public void jx() {
        List<ObjectAnimator> list = this.hp;
        if (list == null) {
            return;
        }
        for (final ObjectAnimator objectAnimator : list) {
            objectAnimator.start();
            if (this.f28382l.xs() > 0.0d) {
                objectAnimator.addListener(new Animator.AnimatorListener() { // from class: com.byazt.zde.j.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                        objectAnimator.pause();
                        hp hpVar = j.this.new hp(objectAnimator);
                        ScheduledFuture<?> scheduledFutureHp = com.byazt.sq.w.hp(hpVar, (long) (j.this.f28382l.xs() * 1000.0d), TimeUnit.MILLISECONDS);
                        hpVar.hp(scheduledFutureHp);
                        j.this.f28381j.add(scheduledFutureHp);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        }
    }

    @Override // com.byazt.uq.w
    public void l() {
        List<ObjectAnimator> list = this.hp;
        if (list == null) {
            return;
        }
        for (ObjectAnimator objectAnimator : list) {
            objectAnimator.cancel();
            objectAnimator.removeAllUpdateListeners();
        }
        Iterator<ScheduledFuture<?>> it = this.f28381j.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
    }

    public ObjectAnimator hp(final ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay((long) (this.f28382l.k() * 1000.0d));
        if (this.f28382l.v() > 0) {
            objectAnimator.setRepeatCount(this.f28382l.v() - 1);
        } else {
            objectAnimator.setRepeatCount(-1);
        }
        if (!PrerollVideoResponse.NORMAL.equals(this.f28382l.u())) {
            if ("alternate".equals(this.f28382l.u()) || "alternate-reverse".equals(this.f28382l.u())) {
                objectAnimator.setRepeatMode(2);
            } else {
                objectAnimator.setRepeatMode(1);
            }
        }
        if ("ease-in-out".equals(this.f28382l.zy())) {
            objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if ("ease-in".equals(this.f28382l.u())) {
            objectAnimator.setInterpolator(new AccelerateInterpolator());
        } else if ("ease-out".equals(this.f28382l.u())) {
            objectAnimator.setInterpolator(new DecelerateInterpolator());
        } else {
            objectAnimator.setInterpolator(new LinearInterpolator());
        }
        objectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.zde.j.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (valueAnimator.getCurrentPlayTime() > 0) {
                    j.this.jx.setVisibility(0);
                    if (j.this.jx.getParent() instanceof DynamicBaseWidgetImp) {
                        ((View) j.this.jx.getParent()).setVisibility(0);
                    }
                    objectAnimator.removeAllUpdateListeners();
                }
            }
        });
        return objectAnimator;
    }
}
