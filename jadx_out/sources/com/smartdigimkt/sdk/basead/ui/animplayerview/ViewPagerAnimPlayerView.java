package com.smartdigimkt.sdk.basead.ui.animplayerview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.core.common.res.image.RecycleImageView;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.y1.m;

/* loaded from: classes5.dex */
public class ViewPagerAnimPlayerView extends BaseMainAnimPlayerView {

    /* renamed from: B, reason: collision with root package name */
    public RecycleImageView f43712B;

    /* renamed from: C, reason: collision with root package name */
    public m f43713C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f43714D;

    public ViewPagerAnimPlayerView(Context context) {
        this(context, null);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseMainAnimPlayerView
    public final void a(Context context) {
        RecycleImageView recycleImageView = new RecycleImageView(context);
        this.f43712B = recycleImageView;
        recycleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.f43712B, -1, -1);
        WrapRoundImageView wrapRoundImageView = new WrapRoundImageView(getContext().getApplicationContext());
        WrapRoundImageView wrapRoundImageView2 = new WrapRoundImageView(getContext().getApplicationContext());
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        wrapRoundImageView.setScaleType(scaleType);
        wrapRoundImageView2.setScaleType(scaleType);
        com.smartdigimkt.t3.m.a(getContext()).a(new o(1, this.f43686w), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new com.smartdigimkt.y1.o(this, wrapRoundImageView, wrapRoundImageView2));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void b() {
        m mVar = this.f43713C;
        if (mVar != null) {
            mVar.release();
            this.f43713C = null;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void c() {
        m mVar = this.f43713C;
        if (mVar != null) {
            mVar.start();
        } else {
            this.f43714D = true;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void d() {
        m mVar = this.f43713C;
        if (mVar != null) {
            mVar.stop();
        }
    }

    public ViewPagerAnimPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewPagerAnimPlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView
    public final void a() {
        m mVar = this.f43713C;
        if (mVar != null) {
            mVar.pause();
        }
    }
}
