package com.smartdigimkt.y1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.ViewPagerAnimPlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.viewpager.VpMainImgAnimatorView;

/* loaded from: classes5.dex */
public final class o implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WrapRoundImageView f45181a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WrapRoundImageView f45182b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPagerAnimPlayerView f45183c;

    public o(ViewPagerAnimPlayerView viewPagerAnimPlayerView, WrapRoundImageView wrapRoundImageView, WrapRoundImageView wrapRoundImageView2) {
        this.f45183c = viewPagerAnimPlayerView;
        this.f45181a = wrapRoundImageView;
        this.f45182b = wrapRoundImageView2;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f45183c.f43686w)) {
            ViewPagerAnimPlayerView viewPagerAnimPlayerView = this.f45183c;
            if (viewPagerAnimPlayerView.f43712B != null && bitmap != null) {
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(viewPagerAnimPlayerView.getContext(), bitmap, new n(this)));
            }
            ViewPagerAnimPlayerView viewPagerAnimPlayerView2 = this.f45183c;
            if (viewPagerAnimPlayerView2.f43713C == null) {
                viewPagerAnimPlayerView2.f43713C = new VpMainImgAnimatorView(this.f45183c.getContext().getApplicationContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                ((View) this.f45183c.f43713C).setLayoutParams(layoutParams);
                ViewPagerAnimPlayerView viewPagerAnimPlayerView3 = this.f45183c;
                viewPagerAnimPlayerView3.addView((View) viewPagerAnimPlayerView3.f43713C);
                this.f45183c.f43713C.addMainView(bitmap, this.f45181a, this.f45182b);
            }
            ViewPagerAnimPlayerView viewPagerAnimPlayerView4 = this.f45183c;
            if (viewPagerAnimPlayerView4.f43714D) {
                viewPagerAnimPlayerView4.f43714D = false;
                m mVar = viewPagerAnimPlayerView4.f43713C;
                if (mVar != null) {
                    mVar.start();
                }
            }
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        this.f45183c.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4595l, com.anythink.core.common.inner.b.b.f4577T));
    }
}
