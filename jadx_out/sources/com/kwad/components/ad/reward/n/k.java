package com.kwad.components.ad.reward.n;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.ad.widget.KsPriceView;
import com.kwad.components.core.widget.KSCornerImageView;
import com.kwad.components.core.widget.KsStyledTextButton;
import com.kwad.sdk.R;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.response.helper.SlideConvertHelper;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class k extends d implements com.kwad.sdk.widget.d {
    private TextView DC;
    private TextView DD;
    private View DE;
    private ViewStub DX;
    private ViewGroup DY;
    private KsStyledTextButton DZ;
    private KsPriceView Dz;
    private KsStyledTextButton Ea;
    private TextView fM;
    private TextView kO;
    private KSCornerImageView ov;
    private com.kwad.components.ad.reward.g uj;

    public k(com.kwad.components.ad.reward.g gVar, ViewStub viewStub) {
        this.DX = viewStub;
        this.uj = gVar;
    }

    private void f(View view, boolean z2) {
        boolean zEquals = view.equals(this.Ea);
        int i2 = MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT;
        if (zEquals) {
            com.kwad.components.ad.reward.g gVar = this.uj;
            Context context = view.getContext();
            if (z2) {
                i2 = 38;
            }
            gVar.a(2, context, i2, 1);
            return;
        }
        if (view.equals(this.DZ)) {
            com.kwad.components.ad.reward.g gVar2 = this.uj;
            Context context2 = view.getContext();
            if (z2) {
                i2 = 37;
            }
            gVar2.a(2, context2, i2, 1);
            return;
        }
        if (view.equals(this.DY)) {
            com.kwad.components.ad.reward.g gVar3 = this.uj;
            Context context3 = view.getContext();
            if (z2) {
                i2 = 2;
            }
            gVar3.a(2, context3, i2, 2);
        }
    }

    @Override // com.kwad.components.ad.reward.n.d
    public final void a(r rVar) throws Resources.NotFoundException {
        super.a(rVar);
        a(rVar.getAdTemplate(), com.kwad.components.ad.reward.model.a.V(rVar.getAdTemplate()));
    }

    public final void hide() {
        ViewGroup viewGroup = this.DY;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    @Override // com.kwad.components.ad.reward.n.d
    public final ViewGroup ib() {
        return this.DY;
    }

    public k(com.kwad.components.ad.reward.g gVar, ViewGroup viewGroup) {
        this.DY = viewGroup;
        this.uj = gVar;
    }

    private void a(AdTemplate adTemplate, com.kwad.components.ad.reward.model.a aVar) throws Resources.NotFoundException {
        KSImageLoader.loadAppIcon(this.ov, aVar.hA(), adTemplate, 8);
        this.kO.setText(aVar.getTitle());
        this.fM.setText(aVar.hB());
        int dimensionPixelSize = this.DY.getResources().getDimensionPixelSize(R.dimen.ksad_reward_jinniu_end_origin_text_size);
        this.Dz.getConfig().aE(dimensionPixelSize).aG(dimensionPixelSize).aF(this.DY.getResources().getColor(R.color.ksad_jinniu_end_origin_color));
        this.Dz.d(aVar.getPrice(), aVar.getOriginPrice(), true);
        String strIs = aVar.is();
        this.DE.setVisibility(TextUtils.isEmpty(strIs) ? 8 : 0);
        if (strIs != null) {
            this.DC.setText(strIs);
        }
        this.DD.setText(aVar.it());
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view) {
        f(view, true);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view, float f2, float f3, float f4, float f5) {
        if (SlideConvertHelper.a(this.uj.mAdTemplate, f2, f3, f4, f5)) {
            f(view, false);
        }
    }
}
