package com.byazt.uy;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.jy.SlideUpLoadMoreArrow;
import com.byazt.kj.hp;
import com.byazt.ln.j;
import com.byazt.ln.jx;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.r;

@hp(hp = {0, 1, 723, 1137})
/* loaded from: classes3.dex */
public class RewardJointBottomView extends FrameLayout implements jx {

    /* renamed from: a, reason: collision with root package name */
    public int f26479a;

    /* renamed from: e, reason: collision with root package name */
    public final SlideUpLoadMoreArrow f26480e;
    public View.OnClickListener eb;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public SSWebView f26481j;
    public int[] jx;

    /* renamed from: l, reason: collision with root package name */
    public int[] f26482l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f26483q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f26484s;

    /* renamed from: w, reason: collision with root package name */
    public j f26485w;

    public RewardJointBottomView(Context context, mp mpVar) {
        super(context);
        this.f26482l = new int[2];
        this.jx = new int[2];
        this.f26479a = 0;
        this.f26484s = false;
        this.f26483q = false;
        SSWebView sSWebView = new SSWebView(context);
        this.f26481j = sSWebView;
        sSWebView.setMaterialMeta(r.hp(mpVar));
        this.f26481j.setWebViewClient(null);
        addView(this.f26481j, new ViewGroup.LayoutParams(-1, -1));
        this.f26481j.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.byazt.uy.RewardJointBottomView.1
            @Override // android.view.View.OnScrollChangeListener
            public void onScrollChange(View view, int i2, int i3, int i4, int i5) {
                if (Math.abs((RewardJointBottomView.this.f26481j.getWebView().getHeight() + RewardJointBottomView.this.f26481j.getWebView().getScrollY()) - (RewardJointBottomView.this.f26481j.getWebView().getContentHeight() * RewardJointBottomView.this.f26481j.getWebView().getScale())) >= 10.0f) {
                    RewardJointBottomView.this.f26484s = false;
                } else {
                    if (RewardJointBottomView.this.f26484s) {
                        return;
                    }
                    RewardJointBottomView.this.f26484s = true;
                }
            }
        });
        getScrollingChildHelper().hp(true);
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = new SlideUpLoadMoreArrow(getContext(), 36, true);
        this.f26480e = slideUpLoadMoreArrow;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        addView(slideUpLoadMoreArrow, layoutParams);
        slideUpLoadMoreArrow.hp();
    }

    private j getScrollingChildHelper() {
        if (this.f26485w == null) {
            this.f26485w = new j(this);
        }
        return this.f26485w;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return super.dispatchNestedFling(f2, f3, z2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return super.dispatchNestedPreFling(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnClickListener onClickListener;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f26479a = 0;
            this.hp = motionEvent.getY();
            hp(2, 0);
            this.f26483q = this.f26484s;
        } else if (action != 1) {
            if (action == 2) {
                float y2 = motionEvent.getY() - this.hp;
                if (y2 < 0.0f) {
                    hp();
                    if (hp(0, (int) y2, this.f26482l, this.jx, 0)) {
                        y2 -= this.f26482l[1];
                    }
                    this.f26479a += hp((int) ((Math.floor((double) Math.abs(y2)) != 0.0d ? y2 : 0.0f) - this.f26479a));
                } else {
                    int i2 = (int) (y2 - this.f26479a);
                    int iHp = hp(i2);
                    this.f26479a += iHp;
                    hp(0, i2 - iHp, this.f26482l, this.jx, 0);
                }
            }
        } else if (this.f26483q && this.hp - motionEvent.getY() > 100.0f && (onClickListener = this.eb) != null) {
            onClickListener.onClick(this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public SSWebView getWebView() {
        return this.f26481j;
    }

    public void setClickListener(View.OnClickListener onClickListener) {
        this.eb = onClickListener;
    }

    public void l() {
        hp();
    }

    public void hp(String str) {
        this.f26481j.loadUrl(str);
    }

    public boolean hp(int i2, int i3) {
        return getScrollingChildHelper().l(0);
    }

    public boolean hp(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().hp(i2, i3, iArr, iArr2, i4);
    }

    public int hp(int i2) {
        if (i2 < 0) {
            return (int) (-Math.abs(Math.min(this.f26481j.getWebView().getContentHeight() - (this.f26481j.getWebView().getHeight() + this.f26481j.getWebView().getScrollY()), -i2)));
        }
        if (i2 > 0) {
            return Math.min(this.f26481j.getWebView().getScrollY(), i2);
        }
        return 0;
    }

    public void hp() {
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = this.f26480e;
        if (slideUpLoadMoreArrow != null) {
            slideUpLoadMoreArrow.setVisibility(8);
            this.f26480e.l();
        }
    }
}
