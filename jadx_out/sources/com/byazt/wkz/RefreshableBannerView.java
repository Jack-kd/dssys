package com.byazt.wkz;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.UiThread;
import com.byazt.aw.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LICENSE_DIR, 511})
/* loaded from: classes3.dex */
public class RefreshableBannerView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public hp f26913a;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public final Rect f26914j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f26915l;

    /* renamed from: w, reason: collision with root package name */
    public final ViewTreeObserver.OnScrollChangedListener f26916w;

    public interface hp {
        void hp(boolean z2);
    }

    public RefreshableBannerView(Context context) {
        super(context);
        this.hp = true;
        this.f26915l = true;
        this.jx = true;
        this.f26914j = new Rect();
        this.f26916w = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.wkz.RefreshableBannerView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                RefreshableBannerView refreshableBannerView = RefreshableBannerView.this;
                refreshableBannerView.f26915l = refreshableBannerView.getGlobalVisibleRect(refreshableBannerView.f26914j);
                RefreshableBannerView refreshableBannerView2 = RefreshableBannerView.this;
                refreshableBannerView2.hp(refreshableBannerView2.f26915l);
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f26916w);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.f26916w);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        boolean z2 = i2 == 0;
        this.hp = z2;
        hp(z2);
    }

    public void setVisibilityChangeListener(hp hpVar) {
        this.f26913a = hpVar;
    }

    @UiThread
    public void hp(View view) {
        view.setTranslationX(getWidth());
        addView(view);
        ObjectAnimator.ofFloat(view, "translationX", 0.0f).setDuration(250L).start();
        if (getChildCount() > 1) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(getChildAt(0), "translationX", -getWidth()).setDuration(250L);
            duration.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.wkz.RefreshableBannerView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (RefreshableBannerView.this.getChildCount() > 1) {
                        RefreshableBannerView.this.removeViewAt(0);
                        l.hp("TMe", "--==-- after remove, view count: " + RefreshableBannerView.this.getChildCount());
                    }
                }
            });
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(boolean z2) {
        boolean z3 = this.hp && this.f26915l;
        if (z2) {
            if (!z3 || this.jx) {
                return;
            }
            this.jx = true;
            hp hpVar = this.f26913a;
            if (hpVar != null) {
                hpVar.hp(true);
                return;
            }
            return;
        }
        if (z3 || !this.jx) {
            return;
        }
        this.jx = false;
        hp hpVar2 = this.f26913a;
        if (hpVar2 != null) {
            hpVar2.hp(false);
        }
    }
}
