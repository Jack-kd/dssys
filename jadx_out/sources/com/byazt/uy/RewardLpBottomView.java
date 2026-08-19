package com.byazt.uy;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.byazt.jy.SlideUpLoadMoreArrow;
import com.byazt.kj.hp;
import com.byazt.xci.ec;
import com.byazt.xci.mp;

@hp(hp = {0, 1, 723, 1404})
/* loaded from: classes3.dex */
public class RewardLpBottomView extends LinearLayout {
    public boolean hp;
    public RewardLandingPageAppInfoView jx;

    /* renamed from: l, reason: collision with root package name */
    public SlideUpLoadMoreArrow f26494l;

    public RewardLpBottomView(Context context) {
        super(context);
        this.hp = false;
    }

    private void j() {
        if (this.jx == null) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.uy.RewardLpBottomView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                RewardLpBottomView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (RewardLpBottomView.this.jx == null) {
                    return;
                }
                int measuredHeight = RewardLpBottomView.this.jx.getMeasuredHeight();
                View viewFindViewById = RewardLpBottomView.this.getRootView().findViewById(2114387658);
                if (viewFindViewById == null) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    layoutParams2.leftMargin = 0;
                    layoutParams2.bottomMargin = measuredHeight;
                    viewFindViewById.setLayoutParams(layoutParams2);
                }
            }
        });
    }

    private void jx() {
        this.f26494l = new SlideUpLoadMoreArrow(getContext(), this.hp ? 12 : 48, false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        addView(this.f26494l, layoutParams);
    }

    public void l() {
        SlideUpLoadMoreArrow slideUpLoadMoreArrow;
        if (getVisibility() == 0 && (slideUpLoadMoreArrow = this.f26494l) != null) {
            slideUpLoadMoreArrow.l();
            this.f26494l.setVisibility(8);
        }
    }

    public void setDownLoadClickListener(View.OnClickListener onClickListener) {
        RewardLandingPageAppInfoView rewardLandingPageAppInfoView = this.jx;
        if (rewardLandingPageAppInfoView == null || onClickListener == null) {
            return;
        }
        rewardLandingPageAppInfoView.setDownLoadClickListener(onClickListener);
    }

    public void hp(mp mpVar, String str) {
        if (mpVar == null) {
            return;
        }
        this.hp = hp(mpVar);
        jx();
        if (!ec.jx(mpVar)) {
            l(mpVar, str);
        }
        setOrientation(1);
        setVisibility(8);
        setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -2013265920}));
    }

    private void l(mp mpVar, String str) {
        if (this.hp) {
            RewardLandingPageAppInfoView rewardLandingPageAppInfoView = new RewardLandingPageAppInfoView(getContext());
            this.jx = rewardLandingPageAppInfoView;
            rewardLandingPageAppInfoView.hp(mpVar, str);
            addView(this.jx, new LinearLayout.LayoutParams(-2, -2));
        }
    }

    private boolean hp(mp mpVar) {
        return mpVar.q() == 4;
    }

    public void hp() {
        if (getVisibility() == 0) {
            return;
        }
        setVisibility(0);
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = this.f26494l;
        if (slideUpLoadMoreArrow != null) {
            slideUpLoadMoreArrow.hp();
        }
        j();
    }
}
