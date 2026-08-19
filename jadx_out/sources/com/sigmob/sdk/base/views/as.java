package com.sigmob.sdk.base.views;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class as extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private y f36879a;

    /* renamed from: b, reason: collision with root package name */
    private final int f36880b;

    public as(Context context) {
        super(context);
        y yVar = new y(context);
        this.f36879a = yVar;
        setImageDrawable(yVar);
        this.f36880b = Dips.dipsToIntPixels(2.0f, context);
    }

    public void a(int i2) {
        this.f36879a.a(i2);
    }

    @Deprecated
    public y getImageViewDrawable() {
        return this.f36879a;
    }

    public void setAnchorId(int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f36880b);
        layoutParams.addRule(12, i2);
        setLayoutParams(layoutParams);
    }

    @Deprecated
    public void setImageViewDrawable(y yVar) {
        this.f36879a = yVar;
    }

    public void a(int i2, int i3) {
        this.f36879a.a(i2, i3);
        setVisibility(0);
    }
}
