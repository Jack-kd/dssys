package com.octopus.ad.e;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.octopus.ad.R;
import com.octopus.ad.internal.q;

/* loaded from: classes4.dex */
public class b extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private boolean f34112a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f34113b;

    /* renamed from: c, reason: collision with root package name */
    private String f34114c;

    /* renamed from: d, reason: collision with root package name */
    private AnimationDrawable f34115d;

    public b(Context context, int i2, float f2, float f3, int i3) {
        super(context);
        this.f34112a = false;
        a(context, i2, f2, f3, i3);
    }

    public void a() {
        AnimationDrawable animationDrawable = this.f34115d;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    public void b() {
        AnimationDrawable animationDrawable = this.f34115d;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public void setTitleText(String str) {
        this.f34114c = str;
        TextView textView = this.f34113b;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void a(Context context, int i2, float f2, float f3, int i3) {
        if (this.f34112a) {
            return;
        }
        this.f34112a = true;
        setGravity(1);
        setOrientation(1);
        ImageView imageView = new ImageView(context);
        int i4 = (int) (i2 * 0.5d);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i4);
        if (i3 == 0) {
            imageView.setImageResource(R.drawable.oct_anim_shake);
        } else {
            int iApplyDimension = (int) TypedValue.applyDimension(1, 3.0f, q.a().s());
            layoutParams.setMargins(iApplyDimension, iApplyDimension, iApplyDimension, iApplyDimension);
            imageView.setImageResource(R.drawable.oct_anim_rotate);
            imageView.setBackgroundResource(R.drawable.oct_bg_rotate);
            int iApplyDimension2 = (int) TypedValue.applyDimension(1, 1.0f, q.a().s());
            imageView.setPadding(iApplyDimension2, (int) TypedValue.applyDimension(1, f3 * 6.0f, q.a().s()), iApplyDimension2, iApplyDimension2);
        }
        this.f34115d = (AnimationDrawable) imageView.getDrawable();
        addView(imageView, layoutParams);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        TextView textView = new TextView(context);
        this.f34113b = textView;
        textView.getPaint().setFakeBoldText(true);
        this.f34113b.setGravity(1);
        this.f34113b.setTextColor(-1);
        this.f34113b.setTextSize(2, f2);
        this.f34113b.setText(this.f34114c);
        this.f34113b.setShadowLayer(5.0f, 1.0f, 1.0f, Color.parseColor("#80000000"));
        addView(this.f34113b, layoutParams2);
    }
}
