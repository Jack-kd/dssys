package com.kwad.components.core.innerEc.live.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParentHelper;

/* loaded from: classes4.dex */
public class OverScrollLayout extends FrameLayout implements NestedScrollingParent2 {
    private boolean aap;
    private boolean aaq;
    private boolean aar;
    private a aas;
    private b aat;
    public com.kwad.components.core.innerEc.live.widget.a<ScrollState> aau;
    private OverScrollType aav;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    private ValueAnimator mn;

    public enum OverScrollType {
        ONLY_UP_DRAG,
        ONLY_DOWN_DRAG,
        BOTH_UP_AND_DOWN_DRAG,
        NONE;

        public final boolean isDownDragEnable() {
            return this == ONLY_DOWN_DRAG || this == BOTH_UP_AND_DOWN_DRAG;
        }

        public final boolean isUpDragEnable() {
            return this == ONLY_UP_DRAG || this == BOTH_UP_AND_DOWN_DRAG;
        }
    }

    public enum ScrollState {
        START_REFRESHING,
        REFRESHING,
        SCROLL_UP,
        SCROLL_DOWN,
        START_LOAD_MORE,
        LOADING_MORE
    }

    public interface a {
    }

    public interface b {
        boolean tk();
    }

    public OverScrollLayout(@NonNull Context context) {
        super(context);
        this.aap = false;
        this.aaq = false;
        this.aau = com.kwad.components.core.innerEc.live.widget.a.h(null);
        this.aav = OverScrollType.BOTH_UP_AND_DOWN_DRAG;
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
    }

    public static /* synthetic */ int a(OverScrollLayout overScrollLayout, View view, float f2) {
        return b(view, f2);
    }

    private static int b(@NonNull View view, float f2) {
        float height = view.getHeight();
        float f3 = 1.8f * height;
        return (int) (height - ((f3 * height) / (Math.abs(f2) + f3)));
    }

    private static int c(@NonNull View view, float f2) {
        float height = view.getHeight();
        float f3 = 1.8f * height;
        return (int) (((f3 * height) / (height - Math.abs(f2))) - f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(@NonNull View view, int i2) {
        view.setTranslationY(i2);
    }

    private void tj() {
        ValueAnimator valueAnimator = this.mn;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mn.removeAllListeners();
        }
    }

    private void z(@NonNull final View view) {
        float translationY = view.getTranslationY();
        tj();
        final boolean z2 = translationY < 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(c(view, translationY), 0.0f);
        this.mn = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.mn.setInterpolator(new DecelerateInterpolator());
        this.mn.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.core.innerEc.live.widget.OverScrollLayout.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Float f2 = (Float) valueAnimator.getAnimatedValue();
                OverScrollLayout overScrollLayout = OverScrollLayout.this;
                View view2 = view;
                overScrollLayout.k(view2, OverScrollLayout.a(overScrollLayout, view2, f2.floatValue()) * (z2 ? -1 : 1));
            }
        });
        this.mn.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.core.innerEc.live.widget.OverScrollLayout.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                OverScrollLayout.this.k(view, 0);
            }
        });
        this.mn.start();
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i2) {
        return this.aav.isDownDragEnable() ? i2 < 0 : this.aav.isUpDragEnable() && i2 > 0;
    }

    public boolean getIsNeedControlBounceBack() {
        return this.aar;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        tj();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f2, float f3, boolean z2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i2, int i3, @NonNull int[] iArr) {
        onNestedPreScroll(view, i2, i3, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5) {
        onNestedScroll(view, i2, i3, i4, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    public void setEnableOverScroll(boolean z2) {
        setOverScrollMode(z2 ? 0 : 2);
    }

    public void setIsNeedControlBounceBack(boolean z2) {
        this.aar = z2;
    }

    public void setOnTargetViewOffsetListener(@Nullable a aVar) {
        this.aas = aVar;
    }

    public void setOnTargetViewStopListener(@Nullable b bVar) {
        this.aat = bVar;
    }

    public void setOverScrollType(OverScrollType overScrollType) {
        this.aav = overScrollType;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull View view, int i2, int i3, @NonNull int[] iArr, int i4) {
        int translationY = (int) view.getTranslationY();
        if (translationY > 0 && i3 > 0) {
            if (translationY - i3 <= 0) {
                i3 = translationY;
            }
            iArr[1] = i3;
            k(view, translationY - i3);
            return;
        }
        if (translationY >= 0 || i3 >= 0) {
            return;
        }
        if (translationY - i3 >= 0) {
            i3 = translationY;
        }
        iArr[1] = i3;
        k(view, translationY - i3);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5, int i6) {
        a(view, i3, i5, i6, new int[2]);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2, int i3) {
        this.mNestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i2, i3);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2, int i3) {
        this.aap = this.aap || i3 == 0;
        this.aaq = this.aaq || i3 == 1;
        return (i2 & 2) != 0;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i2) {
        this.mNestedScrollingParentHelper.onStopNestedScroll(view, i2);
        if (i2 == 0) {
            this.aap = false;
        }
        if (i2 == 1) {
            this.aaq = false;
        }
        if (this.aap || this.aaq || view.getTranslationY() == 0.0f) {
            return;
        }
        if (!this.aar) {
            z(view);
            return;
        }
        b bVar = this.aat;
        if (bVar != null) {
            view.getTranslationY();
            if (bVar.tk()) {
                return;
            }
        }
        z(view);
    }

    private void a(@NonNull View view, int i2, int i3, int i4, @NonNull int[] iArr) {
        if (i4 != 0) {
            return;
        }
        int translationY = (int) view.getTranslationY();
        if (translationY == 0) {
            if (i3 < 0) {
                this.aau.onNext(ScrollState.START_REFRESHING);
            } else if (i3 != 0) {
                this.aau.onNext(ScrollState.START_LOAD_MORE);
            } else if (i2 >= 0) {
                this.aau.onNext(ScrollState.SCROLL_DOWN);
            } else {
                this.aau.onNext(ScrollState.SCROLL_UP);
            }
        } else if (translationY > 0) {
            this.aau.onNext(ScrollState.REFRESHING);
        } else {
            this.aau.onNext(ScrollState.LOADING_MORE);
        }
        if (translationY >= 0 && i3 < 0) {
            if (this.aav.isDownDragEnable()) {
                iArr[1] = i3;
                k(view, b(view, (-c(view, translationY)) + i3));
                return;
            } else {
                getParent().requestDisallowInterceptTouchEvent(false);
                return;
            }
        }
        if (translationY > 0 || i3 <= 0) {
            return;
        }
        if (this.aav.isUpDragEnable()) {
            iArr[1] = i3;
            k(view, -b(view, c(view, translationY) + i3));
        } else {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
    }

    public OverScrollLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aap = false;
        this.aaq = false;
        this.aau = com.kwad.components.core.innerEc.live.widget.a.h(null);
        this.aav = OverScrollType.BOTH_UP_AND_DOWN_DRAG;
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
    }

    public OverScrollLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.aap = false;
        this.aaq = false;
        this.aau = com.kwad.components.core.innerEc.live.widget.a.h(null);
        this.aav = OverScrollType.BOTH_UP_AND_DOWN_DRAG;
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
    }
}
