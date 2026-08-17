package com.byazt.uy;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.kj.hp;
import com.byazt.xci.a;
import com.byazt.xci.mp;
import com.byazt.zn.w;
import com.byazt.zn.xh;

@hp(hp = {0, 1, 723, 2423})
/* loaded from: classes3.dex */
public class RewardLandingPageAppInfoView extends LinearLayout {
    public DownloadItemView hp;

    public RewardLandingPageAppInfoView(Context context) {
        super(context);
    }

    private View j(Context context, RelativeLayout relativeLayout, int i2) {
        TextView textView = new TextView(context);
        textView.setText("权限");
        textView.setTextColor(Color.parseColor("#262626"));
        textView.setTextSize(2, 10.0f);
        textView.setId(View.generateViewId());
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(0, i2);
        layoutParams.rightMargin = xh.jx(context, 6.0f);
        relativeLayout.addView(textView, layoutParams);
        int iJx = xh.jx(context, 6.0f);
        xh.hp(textView, iJx, iJx, 0, 0);
        return textView;
    }

    private View jx(Context context, RelativeLayout relativeLayout, int i2) {
        TextView textView = new TextView(context);
        textView.setText("功能");
        textView.setTextColor(Color.parseColor("#262626"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        textView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(0, i2);
        layoutParams.rightMargin = xh.jx(context, 6.0f);
        relativeLayout.addView(textView, layoutParams);
        int iJx = xh.jx(context, 6.0f);
        xh.hp(textView, iJx, iJx, 0, 0);
        return textView;
    }

    private View l(Context context, RelativeLayout relativeLayout, int i2) {
        TextView textView = new TextView(context);
        textView.setText("隐私");
        textView.setTextColor(Color.parseColor("#262626"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        textView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i2 == -1) {
            layoutParams.addRule(11, -1);
        } else {
            layoutParams.addRule(0, i2);
            layoutParams.rightMargin = xh.jx(context, 6.0f);
        }
        relativeLayout.addView(textView, layoutParams);
        int iJx = xh.jx(context, 6.0f);
        xh.hp(textView, iJx, iJx, 0, 0);
        return textView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public void hp(mp mpVar, String str) {
        if (mpVar == null) {
            return;
        }
        setBackgroundColor(-1);
        setOrientation(1);
        Context context = getContext();
        hp(mpVar);
        a aVarVv = mpVar.vv();
        if (aVarVv == null) {
            return;
        }
        int iJx = xh.jx(context, 12.0f);
        View viewHp = hp(context, aVarVv);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = iJx;
        addView(viewHp, layoutParams);
        View viewHp2 = hp(context, mpVar, aVarVv, str);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = iJx;
        addView(viewHp2, layoutParams2);
        int iJx2 = xh.jx(context, 16.0f);
        setPadding(iJx2, iJx, iJx2, iJx);
    }

    public void setDownLoadClickListener(View.OnClickListener onClickListener) {
        DownloadItemView downloadItemView = this.hp;
        if (downloadItemView == null || onClickListener == null) {
            return;
        }
        downloadItemView.setOnClickListener(onClickListener);
    }

    private void hp(mp mpVar) {
        DownloadItemView downloadItemView = new DownloadItemView(getContext());
        this.hp = downloadItemView;
        downloadItemView.hp(mpVar);
        addView(this.hp);
    }

    private View hp(Context context, a aVar) {
        TextView textView = new TextView(context);
        textView.setText(aVar.eb());
        textView.setTextColor(Color.parseColor("#888888"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        return textView;
    }

    private View hp(final Context context, final mp mpVar, a aVar, final String str) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        TextView textView = new TextView(context);
        textView.setText(String.format("版本号：%s", aVar.w()));
        textView.setTextColor(Color.parseColor("#888888"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int id = -1;
        layoutParams.addRule(9, -1);
        textView.setId(View.generateViewId());
        relativeLayout.addView(textView, layoutParams);
        if (!TextUtils.isEmpty(aVar.gu())) {
            View viewHp = hp(context, relativeLayout);
            id = hp(context, relativeLayout, viewHp.getId()).getId();
            viewHp.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.uy.RewardLandingPageAppInfoView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    w.hp(mpVar, context, str);
                }
            });
        }
        View viewL = l(context, relativeLayout, id);
        viewL.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.uy.RewardLandingPageAppInfoView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.l(mpVar, context, str);
            }
        });
        View viewJ = j(context, relativeLayout, hp(context, relativeLayout, viewL.getId()).getId());
        viewJ.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.uy.RewardLandingPageAppInfoView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.jx(mpVar, context, str);
            }
        });
        jx(context, relativeLayout, hp(context, relativeLayout, viewJ.getId()).getId()).setOnClickListener(new View.OnClickListener() { // from class: com.byazt.uy.RewardLandingPageAppInfoView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.hp(context, mpVar, str);
            }
        });
        return relativeLayout;
    }

    private View hp(Context context, RelativeLayout relativeLayout, int i2) {
        View view = new View(context);
        view.setBackgroundColor(Color.parseColor("#22000000"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(xh.jx(context, 1.5f), xh.jx(context, 8.0f));
        layoutParams.rightMargin = xh.jx(context, 6.0f);
        view.setId(View.generateViewId());
        layoutParams.addRule(0, i2);
        layoutParams.addRule(15, -1);
        relativeLayout.addView(view, layoutParams);
        return view;
    }

    private View hp(Context context, RelativeLayout relativeLayout) {
        TextView textView = new TextView(context);
        textView.setText("备案");
        textView.setTextColor(Color.parseColor("#262626"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        textView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11, -1);
        relativeLayout.addView(textView, layoutParams);
        int iJx = xh.jx(context, 6.0f);
        xh.hp(textView, iJx, iJx, 0, 0);
        return textView;
    }
}
