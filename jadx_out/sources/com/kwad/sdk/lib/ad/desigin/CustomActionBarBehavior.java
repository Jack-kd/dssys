package com.kwad.sdk.lib.ad.desigin;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import androidx.core.view.ViewCompat;
import com.kwad.sdk.R;
import com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout;
import java.util.Arrays;

@Keep
/* loaded from: classes4.dex */
public abstract class CustomActionBarBehavior extends KSCoordinatorLayout.Behavior<RelativeLayout> {
    private int mActionBarBgColor;
    private float mActionBarColorChangeRange;
    private float mActionBarHeight;
    private Activity mActivity;

    public CustomActionBarBehavior(Context context, AttributeSet attributeSet) {
        int dimension;
        super(context, attributeSet);
        if (context instanceof Activity) {
            this.mActivity = (Activity) context;
        }
        Resources resources = context.getResources();
        if (resources != null) {
            this.mActionBarBgColor = -1;
            dimension = (int) resources.getDimension(R.dimen.ksad_title_bar_height);
        } else {
            dimension = 0;
        }
        int i2 = R.attr.ksad_action_bar_height;
        int i3 = R.attr.ksad_action_bar_bg_color;
        int[] iArr = {i2, i3, R.attr.ksad_color_change_range};
        Arrays.sort(iArr);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        this.mActionBarHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(Arrays.binarySearch(iArr, i2), dimension);
        this.mActionBarBgColor = typedArrayObtainStyledAttributes.getColor(Arrays.binarySearch(iArr, i3), this.mActionBarBgColor);
        this.mActionBarColorChangeRange = typedArrayObtainStyledAttributes.getDimensionPixelSize(Arrays.binarySearch(iArr, r3), dimension);
        typedArrayObtainStyledAttributes.recycle();
    }

    public int getColorWithAlpha(float f2, int i2) {
        return (Math.min(255, Math.max(0, (int) (f2 * 255.0f))) << 24) + (i2 & ViewCompat.MEASURED_SIZE_MASK);
    }

    public abstract void initView(RelativeLayout relativeLayout);

    public void onActionBarHeightChanged(RelativeLayout relativeLayout, float f2) {
        initView(relativeLayout);
        relativeLayout.setBackgroundColor(getColorWithAlpha(transRatio(0.08f, 1.0f, f2), this.mActionBarBgColor));
    }

    public void setActionBarColorChangeRange(int i2) {
        this.mActionBarColorChangeRange = i2;
    }

    public float transRatio(float f2, float f3, float f4) {
        if (f4 < f2) {
            return 0.0f;
        }
        if (f4 > f3) {
            return 1.0f;
        }
        return (f4 - f2) / (f3 - f2);
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean layoutDependsOn(KSCoordinatorLayout kSCoordinatorLayout, RelativeLayout relativeLayout, View view) {
        return view instanceof KSAppBarLayout;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onDependentViewChanged(KSCoordinatorLayout kSCoordinatorLayout, RelativeLayout relativeLayout, View view) {
        onActionBarHeightChanged(relativeLayout, Math.min((-view.getTop()) / (this.mActionBarColorChangeRange - this.mActionBarHeight), 1.0f));
        return true;
    }
}
