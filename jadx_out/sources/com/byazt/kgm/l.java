package com.byazt.kgm;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.nk.RoundImageView;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 46, 34})
/* loaded from: classes.dex */
public class l extends hp {
    @Override // com.byazt.dth.hp
    public View inflate(Context context) {
        RelativeLayout relativeLayoutHp = hp(context, 2114387953);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        relativeLayout.setLayoutParams(layoutParams);
        View roundImageView = new RoundImageView(context);
        roundImageView.setId(2114387958);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(xh.jx(context, 72.0f), xh.jx(context, 72.0f));
        layoutParams2.addRule(14);
        layoutParams2.addRule(15);
        layoutParams2.setMargins(0, xh.jx(context, 30.0f), 0, 0);
        roundImageView.setLayoutParams(layoutParams2);
        TextView textView = new TextView(context);
        textView.setId(2114387926);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(14);
        layoutParams3.addRule(3, 2114387958);
        layoutParams3.setMargins(0, xh.jx(context, 8.0f), 0, 0);
        textView.setLayoutParams(layoutParams3);
        textView.setTextColor(context.getResources().getColor(R.color.white));
        textView.setTextSize(2, 14.0f);
        textView.setText("直播结束");
        TextView textView2 = new TextView(context);
        textView2.setId(2114387877);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(14);
        layoutParams4.addRule(3, 2114387926);
        layoutParams4.setMargins(0, xh.jx(context, 24.0f), 0, 0);
        textView2.setLayoutParams(layoutParams4);
        textView2.setTextColor(context.getResources().getColor(R.color.white));
        textView2.setTextSize(2, 20.0f);
        textView2.setText("直播已结束");
        relativeLayout.addView(roundImageView);
        relativeLayout.addView(textView);
        relativeLayout.addView(textView2);
        relativeLayoutHp.addView(relativeLayout);
        return relativeLayoutHp;
    }
}
