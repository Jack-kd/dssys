package com.octopus.ad.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.octopus.ad.d.b.f;
import com.octopus.ad.internal.utilities.ViewUtil;

/* loaded from: classes4.dex */
public class RegionClickView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private boolean f35117a;

    /* renamed from: b, reason: collision with root package name */
    private GradientDrawable f35118b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f35119c;

    public RegionClickView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f35117a = false;
        a(context);
    }

    public void a(String str, float f2) {
        setTitle(str);
        setTitleColor("#FFFFFF");
        setTitleSize(f2 * 14.0f);
        setBackGroundAlpha(0.7d);
        setBackgroundColor("#80000000");
    }

    public void setBackGroundAlpha(double d2) {
        GradientDrawable gradientDrawable = this.f35118b;
        if (gradientDrawable == null || d2 <= 0.0d) {
            return;
        }
        gradientDrawable.setAlpha((int) (d2 * 255.0d));
    }

    public void setBackgroundColor(String str) {
        GradientDrawable gradientDrawable = this.f35118b;
        if (gradientDrawable == null || str == null) {
            return;
        }
        try {
            gradientDrawable.setColor(Color.parseColor(str));
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void setTitle(String str) {
        TextView textView = this.f35119c;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setText(str);
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void setTitleColor(String str) {
        TextView textView = this.f35119c;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setTextColor(Color.parseColor(str));
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void setTitleSize(float f2) {
        TextView textView = this.f35119c;
        if (textView == null || f2 <= 0.0f) {
            return;
        }
        textView.setTextSize(2, f2);
    }

    public RegionClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35117a = false;
        a(context);
    }

    private void a(Context context, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f35118b = gradientDrawable;
        gradientDrawable.setColor(Color.parseColor("#80000000"));
        this.f35118b.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD);
        if (i2 == 1) {
            this.f35118b.setStroke(1, Color.parseColor("#E8E8E8"));
        }
        this.f35118b.setCornerRadius(ViewUtil.dip2px(context, 30.0f));
        setBackgroundDrawable(this.f35118b);
    }

    public RegionClickView(Context context) {
        super(context);
        this.f35117a = false;
        a(context);
    }

    public void a(Context context) {
        if (this.f35117a) {
            return;
        }
        this.f35117a = true;
        a(context, 1);
        TextView textView = new TextView(context);
        this.f35119c = textView;
        textView.getPaint().setFakeBoldText(true);
        this.f35119c.setLines(1);
        this.f35119c.setTextSize(2, 14.0f);
        this.f35119c.setTextColor(Color.parseColor("#FFFFFF"));
        this.f35119c.setText("点击跳转至第三方应用或详情页");
        this.f35119c.setGravity(17);
        setGravity(17);
        setOrientation(1);
        addView(this.f35119c);
    }
}
