package com.smartdigimkt.y1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.AlbumScaleAnimPlayerView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.scale.AlbumScaleAnimatorView;

/* loaded from: classes5.dex */
public final class a implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlbumScaleAnimPlayerView f45167a;

    public a(AlbumScaleAnimPlayerView albumScaleAnimPlayerView) {
        this.f45167a = albumScaleAnimPlayerView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f45167a.f43686w)) {
            AlbumScaleAnimPlayerView albumScaleAnimPlayerView = this.f45167a;
            if (albumScaleAnimPlayerView.f43678B == null) {
                albumScaleAnimPlayerView.f43678B = new AlbumScaleAnimatorView(this.f45167a.getContext().getApplicationContext());
                AlbumScaleAnimPlayerView albumScaleAnimPlayerView2 = this.f45167a;
                albumScaleAnimPlayerView2.f43678B.setBitmapResources(albumScaleAnimPlayerView2.f43680D);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                AlbumScaleAnimPlayerView albumScaleAnimPlayerView3 = this.f45167a;
                albumScaleAnimPlayerView3.addView((View) albumScaleAnimPlayerView3.f43678B, layoutParams);
                this.f45167a.f43678B.addMainView(bitmap, new WrapRoundImageView[0]);
            }
            AlbumScaleAnimPlayerView albumScaleAnimPlayerView4 = this.f45167a;
            if (albumScaleAnimPlayerView4.f43679C) {
                albumScaleAnimPlayerView4.f43679C = false;
                m mVar = albumScaleAnimPlayerView4.f43678B;
                if (mVar != null) {
                    mVar.start();
                }
            }
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        this.f45167a.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4595l, com.anythink.core.common.inner.b.b.f4577T));
    }
}
