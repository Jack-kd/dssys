package com.kwad.components.ad.feed.widget;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.ad.feed.FeedDownloadActivityProxy;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.page.AdWebViewActivityProxy;
import com.kwad.components.core.widget.KsLogoView;
import com.kwad.sdk.R;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.widget.RatioFrameLayout;
import java.util.List;

/* loaded from: classes4.dex */
public final class n extends a implements View.OnClickListener, com.kwad.sdk.widget.d {
    private TextView hW;
    private ImageView hX;
    private ImageView hY;
    private KsLogoView mLogoView;

    public n(@NonNull Context context) {
        super(context);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view) {
        onClick(view);
    }

    @Override // com.kwad.components.core.widget.b
    public final void bC() {
        ((RatioFrameLayout) findViewById(R.id.ksad_container)).setRatio(0.5600000023841858d);
        this.hW = (TextView) findViewById(R.id.ksad_ad_desc);
        this.hX = (ImageView) findViewById(R.id.ksad_ad_image);
        this.hY = (ImageView) findViewById(R.id.ksad_ad_dislike);
        this.mLogoView = (KsLogoView) findViewById(R.id.ksad_feed_logo);
    }

    @Override // com.kwad.components.core.widget.b
    public final void d(@NonNull AdResultData adResultData) {
        super.d((n) adResultData);
        this.hW.setText(com.kwad.components.ad.feed.f.p(this.mAdTemplate));
        List<String> listBg = com.kwad.sdk.core.response.helper.a.bg(this.mAdInfo);
        this.mLogoView.bl(this.mAdTemplate);
        if (listBg.size() > 0) {
            KSImageLoader.loadFeeImage(this.hX, listBg.get(0), this.mAdTemplate);
        } else {
            com.kwad.sdk.core.d.c.e("FeedTextImmerseImageView", "getImageUrlList size less than one");
        }
        com.kwad.sdk.c.a.a.a(this, this.hW, this.hX, this.hY);
        new com.kwad.sdk.widget.h(getContext(), this.hW, this);
        new com.kwad.sdk.widget.h(getContext(), this.hX, this);
        new com.kwad.sdk.widget.h(getContext(), this.hY, this);
        setOnClickListener(this);
        if (com.kwad.sdk.core.response.helper.a.aL(this.mAdInfo)) {
            cq();
        }
    }

    @Override // com.kwad.components.core.widget.b
    public final int getLayoutId() {
        return R.layout.ksad_feed_text_immerse_image;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        d(view, view == this.hW ? 25 : view == this.hX ? 100 : 35);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view, float f2, float f3, float f4, float f5) {
        if (com.kwad.sdk.core.response.helper.d.eD(this.mAdTemplate)) {
            d(view, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT);
        }
    }

    private void d(View view, int i2) {
        if (view == this.hY) {
            zO();
            return;
        }
        if (com.kwad.components.core.e.d.e.a(new a.C0529a(getContext()).aJ(this.mAdTemplate), 1) == 1) {
            bY(i2);
        } else if (com.kwad.sdk.core.response.helper.a.aL(this.mAdInfo)) {
            bY(i2);
            FeedDownloadActivityProxy.launch(this.mContext, this.mAdTemplate, this.avs);
        } else {
            bY(i2);
            AdWebViewActivityProxy.launch(getContext(), this.mAdTemplate);
        }
    }
}
