package com.byazt.uq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import com.byazt.nw.s;
import com.bytedance.component.sdk.annotation.ColorInt;

@com.byazt.kj.hp(hp = {0, 1, 85, 2150})
/* loaded from: classes3.dex */
public class DynamicRoot extends DynamicBaseWidgetImp {
    public l hp;

    public DynamicRoot(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public GradientDrawable getDrawable() {
        l lVar = new l();
        this.hp = lVar;
        return lVar;
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public l hp(Bitmap bitmap) {
        hp hpVar = new hp(bitmap, this.hp);
        this.hp = hpVar;
        return hpVar;
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        return super.s();
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public GradientDrawable hp(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        l lVar = new l(orientation, iArr);
        this.hp = lVar;
        return lVar;
    }
}
