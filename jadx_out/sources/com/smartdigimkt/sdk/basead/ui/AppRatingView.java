package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class AppRatingView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final Context f43166a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f43167b;

    /* renamed from: c, reason: collision with root package name */
    public int f43168c;

    /* renamed from: d, reason: collision with root package name */
    public int f43169d;

    public AppRatingView(Context context) {
        this(context, null, 0);
    }

    public static int dip2px(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setRating(int i2) {
        for (int i3 = 0; i3 < this.f43167b.size(); i3++) {
            StarLevelView starLevelView = (StarLevelView) this.f43167b.get(i3);
            if (i3 < i2) {
                starLevelView.setState(true);
            } else {
                starLevelView.setState(false);
            }
        }
    }

    public void setStarMargin(int i2) {
        this.f43169d = i2;
    }

    public void setStarNum(int i2) {
        if (this.f43167b == null) {
            this.f43167b = new ArrayList();
        }
        this.f43167b.clear();
        removeAllViews();
        setOrientation(0);
        for (int i3 = 0; i3 < i2; i3++) {
            StarLevelView starLevelView = new StarLevelView(getContext());
            int i4 = this.f43168c;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i4);
            if (i3 != i2 - 1) {
                layoutParams.setMargins(0, 0, dip2px(getContext(), this.f43169d), 0);
            }
            starLevelView.setLayoutParams(layoutParams);
            addView(starLevelView);
            this.f43167b.add(starLevelView);
        }
    }

    public void setStarSizeInDp(int i2) {
        this.f43168c = dip2px(this.f43166a, i2);
    }

    public AppRatingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppRatingView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43166a = context;
        setStarSizeInDp(17);
        setStarMargin(8);
    }
}
