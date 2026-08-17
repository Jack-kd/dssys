package com.byazt.nk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 2439})
/* loaded from: classes3.dex */
public class TTScrollView extends ScrollView {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23667j;
    public hp jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f23668l;

    public interface hp {
        void hp(boolean z2);
    }

    public TTScrollView(Context context) {
        super(context);
        this.f23668l = false;
        this.f23667j = false;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.f23668l) {
            return;
        }
        try {
            this.f23668l = true;
            View childAt = ((ViewGroup) getChildAt(0)).getChildAt(1);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.height = getHeight();
            childAt.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            u.l("TTScrollView", "onLayout error" + th.toString());
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        super.onOverScrolled(i2, i3, z2, z3);
    }

    @Override // android.widget.ScrollView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.hp = getChildAt(0).getMeasuredHeight();
        post(new Runnable() { // from class: com.byazt.nk.TTScrollView.3
            @Override // java.lang.Runnable
            public void run() {
                TTScrollView tTScrollView = TTScrollView.this;
                tTScrollView.smoothScrollTo(0, tTScrollView.hp);
            }
        });
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        hp hpVar;
        boolean z2 = true;
        if (motionEvent.getAction() == 1 && getScrollY() < this.hp) {
            if (getScrollY() > this.hp / 2) {
                post(new Runnable() { // from class: com.byazt.nk.TTScrollView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TTScrollView tTScrollView = TTScrollView.this;
                        tTScrollView.smoothScrollTo(0, tTScrollView.hp);
                    }
                });
            } else {
                if (getScrollY() > 0) {
                    post(new Runnable() { // from class: com.byazt.nk.TTScrollView.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TTScrollView.this.smoothScrollTo(0, 0);
                        }
                    });
                } else if (getScrollY() != 0) {
                }
                hpVar = this.jx;
                if (hpVar != null && z2 != this.f23667j) {
                    hpVar.hp(z2);
                }
                this.f23667j = z2;
            }
            z2 = false;
            hpVar = this.jx;
            if (hpVar != null) {
                hpVar.hp(z2);
            }
            this.f23667j = z2;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListener(hp hpVar) {
        this.jx = hpVar;
    }

    public boolean hp() {
        return this.f23667j;
    }
}
