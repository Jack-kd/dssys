package com.sigmob.sdk.videoAd;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class i extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private com.sigmob.sdk.base.views.y f38776a;

    /* renamed from: b, reason: collision with root package name */
    private final int f38777b;

    public i(Context context) {
        super(context);
        com.sigmob.sdk.base.views.y yVar = new com.sigmob.sdk.base.views.y(context);
        this.f38776a = yVar;
        setImageDrawable(yVar);
        this.f38777b = Dips.dipsToIntPixels(2.0f, context);
    }

    public void a() {
        this.f38776a.a();
        this.f38776a.a(0);
    }

    @Deprecated
    public com.sigmob.sdk.base.views.y getImageViewDrawable() {
        return this.f38776a;
    }

    public void setAnchorId(int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f38777b);
        layoutParams.addRule(8, i2);
        setLayoutParams(layoutParams);
    }

    @Deprecated
    public void setImageViewDrawable(com.sigmob.sdk.base.views.y yVar) {
        this.f38776a = yVar;
    }

    public void a(int i2) {
        this.f38776a.a(i2);
    }

    public void a(int i2, int i3) {
        this.f38776a.a(i2, i3);
        setVisibility(0);
    }
}
