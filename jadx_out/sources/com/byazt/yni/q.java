package com.byazt.yni;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.llc.DoubleColorBallAnimationView;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 316, 150})
/* loaded from: classes3.dex */
public class q extends l {

    /* renamed from: k, reason: collision with root package name */
    public LinearLayout f28204k;

    /* renamed from: u, reason: collision with root package name */
    public DoubleColorBallAnimationView f28205u;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f28206v;

    public q(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, z2);
    }

    @Override // com.byazt.yni.l
    public void hp() {
        super.hp();
        this.f28206v = new ImageView(this.f28200l);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.f28206v.setAdjustViewBounds(true);
        this.f28206v.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f28206v.setLayoutParams(layoutParams);
        this.eb.addView(this.f28206v);
        View view = new View(this.f28200l);
        view.setBackgroundColor(Color.parseColor("#A6000000"));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.eb.addView(view);
        LinearLayout linearLayout = new LinearLayout(this.f28200l);
        this.f28204k = linearLayout;
        linearLayout.setOrientation(1);
        TextView textView = new TextView(this.f28200l);
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setText("\"奖励发放中\"");
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = 24;
        textView.setLayoutParams(layoutParams2);
        this.f28205u = new DoubleColorBallAnimationView(this.f28200l);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(xh.jx(this.f28200l, 60.0f), xh.jx(this.f28200l, 60.0f));
        layoutParams3.gravity = 17;
        this.f28205u.setLayoutParams(layoutParams3);
        this.f28204k.addView(this.f28205u);
        this.f28204k.addView(textView);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 17;
        this.f28204k.setLayoutParams(layoutParams4);
        this.eb.addView(this.f28204k);
        this.f28204k.setVisibility(8);
        String strL = df.l(this.jx);
        if (TextUtils.isEmpty(strL)) {
            return;
        }
        com.byazt.ws.l.hp(strL).width(this.eb.getWidth()).height(this.eb.getHeight()).to(this.f28206v);
    }

    public void jx() {
        DoubleColorBallAnimationView doubleColorBallAnimationView = this.f28205u;
        if (doubleColorBallAnimationView != null) {
            doubleColorBallAnimationView.jx();
            this.f28204k.setVisibility(8);
        }
    }

    public void l() {
        DoubleColorBallAnimationView doubleColorBallAnimationView = this.f28205u;
        if (doubleColorBallAnimationView != null) {
            doubleColorBallAnimationView.l();
            this.f28204k.setVisibility(0);
        }
    }
}
