package com.kwad.components.ad.draw.view.playend;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.draw.view.DrawDownloadProgressBar;
import com.kwad.components.ad.widget.AppScoreView;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.e.d.d;
import com.kwad.components.core.widget.KsLogoView;
import com.kwad.sdk.R;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.api.KsDrawAd;
import com.kwad.sdk.core.adlog.c;
import com.kwad.sdk.core.download.a.a;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.view.AdBaseFrameLayout;
import com.kwad.sdk.wrapper.m;

/* loaded from: classes4.dex */
public class DrawVideoTailFrame extends FrameLayout implements View.OnClickListener {
    private KsDrawAd.AdInteractionListener dB;

    @Nullable
    private KsAppDownloadListener en;
    private TextView ev;
    private AdBaseFrameLayout gN;
    private ImageView gO;
    private ViewGroup gP;
    private ImageView gQ;
    private AppScoreView gR;
    private TextView gS;
    private TextView gT;
    private DrawDownloadProgressBar gU;
    private ViewGroup gV;
    private TextView gW;
    private TextView gX;
    private AdInfo mAdInfo;
    private AdTemplate mAdTemplate;

    @Nullable
    private d mApkDownloadHelper;
    private KsLogoView mLogoView;

    public DrawVideoTailFrame(@NonNull Context context) {
        super(context);
        B(context);
    }

    private void B(Context context) {
        m.inflate(context, R.layout.ksad_draw_video_tailframe, this);
        this.gO = (ImageView) findViewById(R.id.ksad_video_cover);
        this.gP = (ViewGroup) findViewById(R.id.ksad_app_container);
        this.gQ = (ImageView) findViewById(R.id.ksad_app_icon);
        this.ev = (TextView) findViewById(R.id.ksad_app_name);
        this.gR = (AppScoreView) findViewById(R.id.ksad_app_score);
        this.gS = (TextView) findViewById(R.id.ksad_app_download_count);
        this.gT = (TextView) findViewById(R.id.ksad_app_ad_desc);
        DrawDownloadProgressBar drawDownloadProgressBar = (DrawDownloadProgressBar) findViewById(R.id.ksad_app_download_btn);
        this.gU = drawDownloadProgressBar;
        drawDownloadProgressBar.setTextSize(15);
        this.gV = (ViewGroup) findViewById(R.id.ksad_h5_container);
        this.gW = (TextView) findViewById(R.id.ksad_h5_ad_desc);
        this.gX = (TextView) findViewById(R.id.ksad_h5_open_btn);
        this.mLogoView = (KsLogoView) findViewById(R.id.ksad_draw_tailframe_logo);
    }

    private KsAppDownloadListener getAppDownloadListener() {
        return new a() { // from class: com.kwad.components.ad.draw.view.playend.DrawVideoTailFrame.1
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                DrawVideoTailFrame.this.gU.e(com.kwad.sdk.core.response.helper.a.aK(DrawVideoTailFrame.this.mAdInfo), DrawVideoTailFrame.this.gU.getMax());
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                DrawVideoTailFrame.this.gU.e(com.kwad.sdk.core.response.helper.a.cK(DrawVideoTailFrame.this.mAdTemplate), DrawVideoTailFrame.this.gU.getMax());
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                DrawVideoTailFrame.this.gU.e(com.kwad.sdk.core.response.helper.a.aK(DrawVideoTailFrame.this.mAdInfo), DrawVideoTailFrame.this.gU.getMax());
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                DrawVideoTailFrame.this.gU.e(com.kwad.sdk.core.response.helper.a.af(DrawVideoTailFrame.this.mAdInfo), DrawVideoTailFrame.this.gU.getMax());
            }

            @Override // com.kwad.sdk.core.download.a.a
            public final void onPaused(int i2) {
                super.onPaused(i2);
                DrawVideoTailFrame.this.gU.e(com.kwad.sdk.core.response.helper.a.Nx(), i2);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i2) {
                DrawVideoTailFrame.this.gU.e(i2 + "%", i2);
            }
        };
    }

    public final void cc() {
        d dVar = this.mApkDownloadHelper;
        if (dVar != null) {
            KsAppDownloadListener ksAppDownloadListener = this.en;
            if (ksAppDownloadListener != null) {
                dVar.d(ksAppDownloadListener);
                return;
            }
            KsAppDownloadListener appDownloadListener = getAppDownloadListener();
            this.en = appDownloadListener;
            this.mApkDownloadHelper.b(appDownloadListener);
        }
    }

    public final void n(AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
        AdInfo adInfoEO = e.eO(adTemplate);
        this.mAdInfo = adInfoEO;
        AdInfo.AdMaterialInfo.MaterialFeature materialFeatureBb = com.kwad.sdk.core.response.helper.a.bb(adInfoEO);
        String str = materialFeatureBb.coverUrl;
        this.mLogoView.bl(adTemplate);
        if (!TextUtils.isEmpty(str)) {
            int i2 = materialFeatureBb.width;
            int i3 = materialFeatureBb.height;
            if (i2 > 0 && i2 > i3) {
                int screenWidth = com.kwad.sdk.c.a.a.getScreenWidth(getContext());
                if (getWidth() != 0) {
                    screenWidth = getWidth();
                }
                int i4 = (int) (screenWidth * (i3 / i2));
                ViewGroup.LayoutParams layoutParams = this.gO.getLayoutParams();
                layoutParams.width = screenWidth;
                layoutParams.height = i4;
            }
            KSImageLoader.loadImage(this.gO, str, this.mAdTemplate);
        }
        if (com.kwad.sdk.core.response.helper.a.aL(this.mAdInfo)) {
            KSImageLoader.loadAppIcon(this.gQ, com.kwad.sdk.core.response.helper.a.cv(this.mAdInfo), this.mAdTemplate, 11);
            this.ev.setText(com.kwad.sdk.core.response.helper.a.aB(this.mAdInfo));
            float fAG = com.kwad.sdk.core.response.helper.a.aG(this.mAdInfo);
            if (fAG >= 3.0f) {
                this.gR.setScore(fAG);
                this.gR.setVisibility(0);
            }
            this.gS.setText(com.kwad.sdk.core.response.helper.a.aF(this.mAdInfo));
            this.gT.setText(com.kwad.sdk.core.response.helper.a.aA(this.mAdInfo));
            this.gP.setVisibility(0);
            this.gV.setVisibility(8);
        } else {
            this.gW.setText(com.kwad.sdk.core.response.helper.a.aA(this.mAdInfo));
            this.gX.setText(com.kwad.sdk.core.response.helper.a.aK(this.mAdInfo));
            this.gP.setVisibility(8);
            this.gV.setVisibility(0);
        }
        this.gU.setOnClickListener(this);
        setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.kwad.components.core.e.d.a.a(new a.C0529a(getContext()).aJ(this.mAdTemplate).b(this.mApkDownloadHelper).aN(view == this.gU ? 1 : 3).as(view == this.gU).a(new a.b() { // from class: com.kwad.components.ad.draw.view.playend.DrawVideoTailFrame.2
            @Override // com.kwad.components.core.e.d.a.b
            public final void onAdClicked() {
                if (DrawVideoTailFrame.this.dB != null) {
                    DrawVideoTailFrame.this.dB.onAdClicked();
                }
                c.a(DrawVideoTailFrame.this.mAdTemplate, 2, DrawVideoTailFrame.this.gN.getTouchCoords());
            }
        }));
    }

    public final void release() {
        KsAppDownloadListener ksAppDownloadListener;
        d dVar = this.mApkDownloadHelper;
        if (dVar == null || (ksAppDownloadListener = this.en) == null) {
            return;
        }
        dVar.c(ksAppDownloadListener);
    }

    public void setAdBaseFrameLayout(AdBaseFrameLayout adBaseFrameLayout) {
        this.gN = adBaseFrameLayout;
    }

    public void setAdInteractionListener(KsDrawAd.AdInteractionListener adInteractionListener) {
        this.dB = adInteractionListener;
    }

    public void setApkDownloadHelper(@Nullable d dVar) {
        this.mApkDownloadHelper = dVar;
    }

    public DrawVideoTailFrame(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        B(context);
    }

    public DrawVideoTailFrame(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        B(context);
    }
}
