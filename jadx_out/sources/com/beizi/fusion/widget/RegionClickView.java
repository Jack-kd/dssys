package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.vo;

/* loaded from: classes2.dex */
public class RegionClickView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private boolean f17131a;

    /* renamed from: b, reason: collision with root package name */
    GradientDrawable f17132b;

    /* renamed from: c, reason: collision with root package name */
    TextView f17133c;

    /* renamed from: d, reason: collision with root package name */
    private Boolean f17134d;

    public RegionClickView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17131a = false;
        init(context);
    }

    private void a(Context context, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f17132b = gradientDrawable;
        gradientDrawable.setColor(Color.parseColor("#80000000"));
        if (i2 == 1) {
            this.f17132b.setStroke(1, Color.parseColor("#E8E8E8"));
        }
        this.f17132b.setCornerRadius(vo.a(context, 30.0f));
        setBackgroundDrawable(this.f17132b);
    }

    public void init(Context context) {
        if (this.f17131a) {
            return;
        }
        this.f17131a = true;
        a(context, 1);
        TextView textView = new TextView(context);
        this.f17133c = textView;
        textView.setLines(1);
        this.f17133c.setTextSize(2, 18.0f);
        this.f17133c.setTextColor(Color.parseColor("#949494"));
        this.f17133c.setText("点击跳转详情页或第三方应用     >");
        this.f17133c.setGravity(17);
        setGravity(17);
        setOrientation(1);
        addView(this.f17133c);
    }

    public void setBackGroundAlpha(double d2) {
        GradientDrawable gradientDrawable = this.f17132b;
        if (gradientDrawable == null || d2 <= 0.0d) {
            return;
        }
        gradientDrawable.setAlpha((int) (d2 * 255.0d));
    }

    public void setBackgroundColor(String str) {
        GradientDrawable gradientDrawable = this.f17132b;
        if (gradientDrawable == null || str == null) {
            return;
        }
        try {
            gradientDrawable.setColor(Color.parseColor(str));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setDownloadApp(Boolean bool) {
        this.f17134d = bool;
    }

    public void setRegionalClickViewBean(AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean) {
        String downloadTitle;
        if (regionalClickViewBean == null) {
            return;
        }
        if (this.f17134d.booleanValue()) {
            downloadTitle = regionalClickViewBean.getDownloadTitle();
            if (TextUtils.isEmpty(downloadTitle)) {
                downloadTitle = "点击下载应用";
            }
        } else {
            downloadTitle = regionalClickViewBean.getTitle();
        }
        setTitle(downloadTitle);
        setTitleColor(regionalClickViewBean.getTitleColor());
        setBackGroundAlpha(regionalClickViewBean.getBackgroundAlpha());
        setBackgroundColor(regionalClickViewBean.getBackgroundColor());
    }

    public void setTitle(String str) {
        TextView textView = this.f17133c;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setText(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setTitleColor(String str) {
        TextView textView = this.f17133c;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setTextColor(Color.parseColor(str));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public RegionClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17131a = false;
        init(context);
    }

    public RegionClickView(Context context) {
        super(context);
        this.f17131a = false;
        init(context);
    }
}
