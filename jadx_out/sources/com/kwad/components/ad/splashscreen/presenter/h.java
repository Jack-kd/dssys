package com.kwad.components.ad.splashscreen.presenter;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.kwad.components.ad.splashscreen.SplashPreloadManager;
import com.kwad.components.ad.splashscreen.presenter.playcard.SplashPlayDefaultInfoView;
import com.kwad.sdk.R;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.imageloader.core.assist.FailReason;
import com.kwad.sdk.core.imageloader.core.decode.DecodedResult;
import com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener;
import com.kwad.sdk.core.imageloader.utils.BlurUtils;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.io.File;
import java.io.InputStream;

/* loaded from: classes4.dex */
public final class h extends e {
    private ImageView HE;
    private ImageView HF;
    private int HI;
    private long HK;
    private View HL;
    private ViewGroup HM;
    private SplashPlayDefaultInfoView HN;
    private AdInfo mAdInfo;
    private boolean HG = false;
    private boolean HH = false;
    private int HJ = 1;
    Runnable HO = new Runnable() { // from class: com.kwad.components.ad.splashscreen.presenter.h.5
        @Override // java.lang.Runnable
        public final void run() {
            h.this.mH();
        }
    };

    /* renamed from: com.kwad.components.ad.splashscreen.presenter.h$1, reason: invalid class name */
    public class AnonymousClass1 implements ImageLoadingListener {
        public AnonymousClass1() {
        }

        @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
        public final boolean onDecode(String str, InputStream inputStream, DecodedResult decodedResult) {
            return false;
        }

        @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
        public final void onLoadingCancelled(String str, View view) {
        }

        @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
        public final void onLoadingComplete(String str, View view, final DecodedResult decodedResult) {
            if (com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Hn)) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                com.kwad.components.ad.splashscreen.monitor.b.mv();
                h hVar = h.this;
                com.kwad.components.ad.splashscreen.monitor.b.a(hVar.HC.mAdTemplate, 2, hVar.HI, h.this.HJ, jElapsedRealtime - h.this.HK, jElapsedRealtime - h.this.HC.mAdTemplate.showTime);
            }
            h.this.mI();
            h.this.HF.setVisibility(0);
            GlobalThreadPools.NY().submit(new Runnable() { // from class: com.kwad.components.ad.splashscreen.presenter.h.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    final Bitmap bitmapStackBlur = BlurUtils.stackBlur(decodedResult.mBitmap, 20, false);
                    h.this.HF.post(new bi() { // from class: com.kwad.components.ad.splashscreen.presenter.h.1.1.1
                        @Override // com.kwad.sdk.utils.bi
                        public final void doTask() {
                            h.this.HF.setImageDrawable(new BitmapDrawable(h.this.getContext().getResources(), bitmapStackBlur));
                        }
                    });
                }
            });
        }

        @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
        public final void onLoadingFailed(String str, View view, FailReason failReason) {
            h.this.mH();
        }

        @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
        public final void onLoadingStarted(String str, View view) {
        }
    }

    private void l(String str, int i2) {
        if (i2 == 0) {
            this.HE.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.HE.setVisibility(0);
            KSImageLoader.loadImage(this.HE, str, this.HC.mAdTemplate, new AnonymousClass1());
        } else {
            this.HF.setVisibility(0);
            if (com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Hm)) {
                a(this.HF, this.mAdInfo);
            } else {
                a(this.HF);
            }
            KSImageLoader.loadImage(this.HF, str, this.HC.mAdTemplate, new ImageLoadingListener() { // from class: com.kwad.components.ad.splashscreen.presenter.h.2
                @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
                public final boolean onDecode(String str2, InputStream inputStream, DecodedResult decodedResult) {
                    return false;
                }

                @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
                public final void onLoadingCancelled(String str2, View view) {
                }

                @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
                public final void onLoadingComplete(String str2, View view, DecodedResult decodedResult) {
                    if (com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Hn)) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        com.kwad.components.ad.splashscreen.monitor.b.mv();
                        h hVar = h.this;
                        com.kwad.components.ad.splashscreen.monitor.b.a(hVar.HC.mAdTemplate, 2, hVar.HI, h.this.HJ, jElapsedRealtime - h.this.HK, jElapsedRealtime - h.this.HC.mAdTemplate.showTime);
                    }
                    h.this.mI();
                }

                @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
                public final void onLoadingFailed(String str2, View view, FailReason failReason) {
                    h.this.mH();
                }

                @Override // com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
                public final void onLoadingStarted(String str2, View view) {
                }
            });
        }
    }

    private void mG() {
        if (com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Hn)) {
            this.HK = SystemClock.elapsedRealtime();
            com.kwad.components.ad.splashscreen.monitor.b.mv();
            com.kwad.components.ad.splashscreen.monitor.b.k(this.HC.mAdTemplate, 2, this.HI);
            by.runOnUiThreadDelay(this.HO, com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Ho));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mH() {
        if (this.HG) {
            return;
        }
        if (com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Hn)) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            com.kwad.components.ad.splashscreen.monitor.b.mv();
            AdTemplate adTemplate = this.HC.mAdTemplate;
            com.kwad.components.ad.splashscreen.monitor.b.b(adTemplate, 2, this.HI, this.HJ, jElapsedRealtime - this.HK, jElapsedRealtime - adTemplate.showTime);
        }
        this.HG = true;
        this.HL.post(new Runnable() { // from class: com.kwad.components.ad.splashscreen.presenter.h.6
            @Override // java.lang.Runnable
            public final void run() {
                h.this.HM.setVisibility(0);
                h.this.HN.a(h.this.HC.mAdTemplate, com.kwad.sdk.c.a.a.px2dip(h.this.getContext(), h.this.HL.getHeight()) / 414.0f);
            }
        });
        this.HE.setVisibility(8);
        this.HF.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mI() {
        if (this.HH) {
            return;
        }
        this.HH = true;
        if (com.kwad.sdk.core.config.e.a(com.kwad.components.ad.splashscreen.b.a.Hn)) {
            by.b(this.HO);
        }
    }

    @Override // com.kwad.components.ad.splashscreen.presenter.e, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.HL = findViewById(R.id.ksad_splash_root_container);
        this.HF = (ImageView) findViewById(R.id.ksad_splash_background);
        this.HE = (ImageView) findViewById(R.id.ksad_splash_foreground);
        this.mAdInfo = com.kwad.sdk.core.response.helper.e.eO(this.HC.mAdTemplate);
        this.HM = (ViewGroup) findViewById(R.id.ksad_splash_default_image_view_container);
        this.HN = (SplashPlayDefaultInfoView) findViewById(R.id.ksad_splash_default_image_view);
        this.HI = com.kwad.components.ad.splashscreen.h.aj(this.HC.mAdTemplate) ? 2 : 1;
        String string = com.kwad.sdk.core.response.helper.a.ba(this.mAdInfo).materialUrl;
        this.HF.setVisibility(0);
        int i2 = com.kwad.sdk.core.response.helper.a.ba(this.mAdInfo).source;
        mG();
        if (getContext() != null) {
            SplashPreloadManager.lZ();
            File fileAe = SplashPreloadManager.ae(this.mAdInfo.adPreloadInfo.preloadId);
            if (fileAe != null && fileAe.exists() && fileAe.length() > 0) {
                this.HJ = 2;
                string = Uri.fromFile(fileAe).toString();
            }
            l(string, i2);
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        mI();
    }

    private void a(final ImageView imageView, final AdInfo adInfo) {
        ((FrameLayout) this.HC.mRootContainer.findViewById(R.id.splash_play_card_view)).setClipChildren(false);
        final AdInfo.CutRuleInfo cutRuleInfoCA = com.kwad.sdk.core.response.helper.a.cA(adInfo);
        imageView.post(new bi() { // from class: com.kwad.components.ad.splashscreen.presenter.h.3
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                int height = imageView.getHeight();
                int width = imageView.getWidth();
                double d2 = com.kwad.sdk.core.response.helper.a.ba(adInfo).width;
                AdInfo.CutRuleInfo cutRuleInfo = cutRuleInfoCA;
                double d3 = cutRuleInfo.picHeight;
                double d4 = cutRuleInfo.viewTopMargin;
                double d5 = cutRuleInfo.safeAreaHeight;
                if (d3 <= 0.0d || d5 <= 0.0d) {
                    return;
                }
                double d6 = width / d2;
                double d7 = d4 / (d3 - d5);
                double d8 = d4 * d6;
                double d9 = (d3 * d6) - height;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                marginLayoutParams.topMargin = (int) (((d9 / 2.0d) - (d8 - (d8 - (d7 * d9)))) * 2.0d);
                imageView.setLayoutParams(marginLayoutParams);
            }
        });
    }

    private void a(final ImageView imageView) {
        ((FrameLayout) this.HC.mRootContainer.findViewById(R.id.splash_play_card_view)).setClipChildren(false);
        imageView.post(new bi() { // from class: com.kwad.components.ad.splashscreen.presenter.h.4
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                float width = imageView.getWidth() / 1080.0f;
                float f2 = ((width * 880.0f) * 1152.0f) / 880.0f;
                float f3 = width * 2340.0f;
                float height = imageView.getHeight();
                float f4 = (f3 - height) / 2.0f;
                float f5 = f3 - f2;
                float f6 = (0.44107744f * f5) - f4;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                marginLayoutParams.topMargin = (int) (((((f5 * 0.5589225f) - f4) - f6) / 2.0f) - (height * 0.03f));
                imageView.setLayoutParams(marginLayoutParams);
            }
        });
    }
}
