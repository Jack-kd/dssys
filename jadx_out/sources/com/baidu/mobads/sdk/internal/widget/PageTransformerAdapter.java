package com.baidu.mobads.sdk.internal.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.baidu.mobads.sdk.internal.widget.ViewPager2;
import java.util.Locale;

/* loaded from: classes2.dex */
final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    private final LinearLayoutManager f11611a;

    /* renamed from: b, reason: collision with root package name */
    private ViewPager2.PageTransformer f11612b;

    public PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.f11611a = linearLayoutManager;
    }

    public ViewPager2.PageTransformer a() {
        return this.f11612b;
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i2) {
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i2, float f2, int i3) {
        if (this.f11612b == null) {
            return;
        }
        float f3 = -f2;
        for (int i4 = 0; i4 < this.f11611a.getChildCount(); i4++) {
            View childAt = this.f11611a.getChildAt(i4);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i4), Integer.valueOf(this.f11611a.getChildCount())));
            }
            this.f11612b.transformPage(childAt, (this.f11611a.getPosition(childAt) - i2) + f3);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i2) {
    }

    public void a(@Nullable ViewPager2.PageTransformer pageTransformer) {
        this.f11612b = pageTransformer;
    }
}
