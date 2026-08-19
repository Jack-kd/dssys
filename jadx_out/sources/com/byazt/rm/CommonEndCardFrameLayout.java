package com.byazt.rm;

import android.annotation.SuppressLint;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.go.l;
import com.byazt.jy.PlayableEndcardFrameLayout;
import com.byazt.jz.sz;
import com.byazt.kj.hp;
import com.byazt.uy.RewardLpBottomView;
import com.byazt.vi.a;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.n;
import com.byazt.zn.r;

@hp(hp = {0, 1, 1342, 1723})
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class CommonEndCardFrameLayout extends AbstractEndCardFrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public RewardLpBottomView f25255a;
    public PlayableEndcardFrameLayout eb;

    /* renamed from: j, reason: collision with root package name */
    public SSWebView f25256j;
    public SSWebView jx;

    /* renamed from: w, reason: collision with root package name */
    public FrameLayout f25257w;

    public CommonEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
    }

    private void j() {
        SSWebView sSWebView = new SSWebView(this.hp);
        sSWebView.setMaterialMeta(r.hp(this.f25254l));
        sSWebView.setId(2114387859);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        this.f25256j = sSWebView;
        this.eb.addView(sSWebView, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    private void jx() {
        SSWebView sSWebView = new SSWebView(this.hp);
        sSWebView.setMaterialMeta(r.hp(this.f25254l));
        sSWebView.setId(2114387697);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        this.jx = sSWebView;
        addView(sSWebView, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public SSWebView getEndCardWebView() {
        if (this.jx == null) {
            jx();
        }
        return this.jx;
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public SSWebView getPlayableWebView() {
        if (this.f25256j == null) {
            j();
        }
        return this.f25256j;
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public FrameLayout getVideoArea() {
        return this.f25257w;
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public void hp() {
        setId(2114387542);
        if (!TextUtils.isEmpty(df.q(this.f25254l)) || !sz.l().kq()) {
            jx();
        }
        LinearLayout linearLayout = new LinearLayout(this.hp);
        linearLayout.setId(2114387541);
        linearLayout.setOrientation(1);
        PlayableEndcardFrameLayout playableEndcardFrameLayout = new PlayableEndcardFrameLayout(this.hp);
        this.eb = playableEndcardFrameLayout;
        playableEndcardFrameLayout.setId(2114387675);
        if (n.l(this.f25254l)) {
            j();
        }
        FrameLayout frameLayout = new FrameLayout(this.hp);
        frameLayout.setId(2114387919);
        frameLayout.setVisibility(8);
        this.eb.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        View viewL = a.l(this.hp);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-2236963, -1});
        gradientDrawable.setShape(0);
        viewL.setBackground(gradientDrawable);
        this.eb.addView(viewL, new FrameLayout.LayoutParams(-1, -1));
        RewardLpBottomView rewardLpBottomView = new RewardLpBottomView(this.hp);
        rewardLpBottomView.setId(2114387824);
        rewardLpBottomView.setVisibility(8);
        this.f25255a = rewardLpBottomView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        this.eb.addView(rewardLpBottomView, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        linearLayout.addView(this.eb, layoutParams2);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(this.hp);
        frameLayout2.setId(2114387798);
        frameLayout2.setBackgroundColor(0);
        frameLayout2.setVisibility(8);
        addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        this.f25257w = frameLayout2;
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public void l() {
        super.l();
        RewardLpBottomView rewardLpBottomView = this.f25255a;
        if (rewardLpBottomView != null) {
            rewardLpBottomView.l();
        }
    }

    @Override // com.byazt.rm.AbstractEndCardFrameLayout
    public void setClickListener(l lVar) {
    }
}
