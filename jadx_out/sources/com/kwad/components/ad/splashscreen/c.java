package com.kwad.components.ad.splashscreen;

import android.content.Context;
import android.content.DialogInterface;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.kwad.components.ad.splashscreen.presenter.j;
import com.kwad.components.ad.splashscreen.presenter.k;
import com.kwad.components.ad.splashscreen.presenter.s;
import com.kwad.components.core.video.DetailVideoView;
import com.kwad.components.offline.api.tk.model.StyleTemplate;
import com.kwad.sdk.R;
import com.kwad.sdk.api.KsSplashScreenAd;
import com.kwad.sdk.api.KsVideoPlayConfig;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.view.AdBaseFrameLayout;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.mvp.Presenter;
import com.kwad.sdk.o;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.bx;
import com.kwad.sdk.wrapper.m;

/* loaded from: classes4.dex */
public final class c extends com.kwad.components.core.n.d<h> implements DialogInterface.OnDismissListener, DialogInterface.OnShowListener {
    private KsSplashScreenAd.SplashScreenAdInteractionListener GB;
    private com.kwad.components.ad.splashscreen.e.d GC;
    private com.kwad.sdk.core.j.b dH;
    private AdInfo mAdInfo;
    private AdResultData mAdResultData;
    private SceneImpl mAdScene;
    private AdTemplate mAdTemplate;
    private com.kwad.components.core.e.d.d mApkDownloadHelper;
    private DetailVideoView mDetailVideoView;
    private boolean mPageDismissCalled;
    private AdBaseFrameLayout mRootContainer;
    private long mStartRenderTime;
    private KsVideoPlayConfig mVideoPlayConfig;

    private c(Context context, AdResultData adResultData) {
        super(context);
        this.mStartRenderTime = -1L;
        this.mAdResultData = adResultData;
        AdTemplate adTemplateR = com.kwad.sdk.core.response.helper.c.r(adResultData);
        this.mAdTemplate = adTemplateR;
        this.mAdScene = adTemplateR.mAdScene;
        tp();
    }

    private static Presenter ai(AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        Presenter presenter = new Presenter();
        a(presenter, adInfoEO);
        if (h.aj(adTemplate)) {
            presenter.a(new com.kwad.components.ad.splashscreen.presenter.playcard.a());
            return presenter;
        }
        presenter.a(new j());
        return presenter;
    }

    private int getSplashLayoutId() {
        return R.layout.ksad_splash_screen_layout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.kwad.components.core.n.d
    /* renamed from: lU, reason: merged with bridge method [inline-methods] */
    public h an() {
        com.kwad.components.ad.splashscreen.e.d dVar = new com.kwad.components.ad.splashscreen.e.d(this.oC, com.kwad.sdk.core.response.helper.a.cN(this.mAdInfo));
        this.GC = dVar;
        dVar.a(this.dH);
        this.GC.Aa();
        if (this.mVideoPlayConfig == null) {
            this.mVideoPlayConfig = new KsVideoPlayConfig.Builder().videoSoundEnable(this.mAdInfo.adSplashInfo.mute != 1).build();
        }
        h hVar = new h();
        hVar.a(this.mAdResultData);
        hVar.setSplashScreenAdListener(this.GB);
        hVar.mRootContainer = this.mRootContainer;
        hVar.mAdScene = this.mAdScene;
        hVar.mVideoPlayConfig = this.mVideoPlayConfig;
        hVar.GP = this.GC;
        hVar.mApkDownloadHelper = this.mApkDownloadHelper;
        hVar.GO = c(this.mAdTemplate);
        hVar.mTimerHelper = new bx();
        hVar.mStartRenderTime = this.mStartRenderTime;
        if (com.kwad.sdk.core.response.helper.a.bi(this.mAdInfo)) {
            com.kwad.components.ad.splashscreen.d.a aVar = new com.kwad.components.ad.splashscreen.d.a(this.mAdTemplate, this.mDetailVideoView, this.mVideoPlayConfig);
            hVar.GN = aVar;
            hVar.GP.a(aVar);
        }
        hVar.GP.a(a(hVar));
        return hVar;
    }

    private void lV() {
        com.kwad.sdk.a.a.c.Hl().Ho();
        if (this.mPageDismissCalled) {
            return;
        }
        this.mPageDismissCalled = true;
    }

    public static boolean o(@NonNull AdInfo adInfo) {
        AdInfo.AdSplashInfo adSplashInfo = adInfo.adSplashInfo;
        return adSplashInfo != null && adSplashInfo.fullScreenClickSwitch == 1;
    }

    @Override // com.kwad.components.core.n.d, com.kwad.sdk.widget.KSFrameLayout
    public final void ae() {
        this.mStartRenderTime = SystemClock.elapsedRealtime();
        super.ae();
        post(new bi() { // from class: com.kwad.components.ad.splashscreen.c.3
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdTemplate adTemplate = c.this.mAdTemplate;
                AdInfo unused = c.this.mAdInfo;
                if (h.aj(adTemplate) || ((h) c.this.abm).GN == null) {
                    return;
                }
                ((h) c.this.abm).GN.nQ();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    @Override // com.kwad.components.core.n.d, com.kwad.sdk.widget.KSFrameLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void af() {
        /*
            r5 = this;
            super.af()
            r0 = 0
            android.view.View r1 = r5.getRootView()     // Catch: java.lang.Throwable -> L46
            r2 = 1
            if (r1 == 0) goto L17
            android.view.View r1 = r5.getRootView()     // Catch: java.lang.Throwable -> L46
            int r1 = r1.getVisibility()     // Catch: java.lang.Throwable -> L46
            if (r1 != 0) goto L17
            r1 = r2
            goto L18
        L17:
            r1 = r0
        L18:
            android.view.View r3 = r5.getRootView()     // Catch: java.lang.Throwable -> L47
            if (r3 == 0) goto L47
            android.view.View r3 = r5.getRootView()     // Catch: java.lang.Throwable -> L47
            android.view.ViewParent r3 = r3.getParent()     // Catch: java.lang.Throwable -> L47
            if (r3 == 0) goto L47
            android.view.View r3 = r5.getRootView()     // Catch: java.lang.Throwable -> L47
            android.view.ViewParent r3 = r3.getParent()     // Catch: java.lang.Throwable -> L47
            boolean r3 = r3 instanceof android.view.View     // Catch: java.lang.Throwable -> L47
            if (r3 == 0) goto L47
            android.view.View r3 = r5.getRootView()     // Catch: java.lang.Throwable -> L47
            android.view.ViewParent r3 = r3.getParent()     // Catch: java.lang.Throwable -> L47
            android.view.View r3 = (android.view.View) r3     // Catch: java.lang.Throwable -> L47
            int r3 = r3.getVisibility()     // Catch: java.lang.Throwable -> L47
            if (r3 != 0) goto L47
            r0 = r2
            goto L47
        L46:
            r1 = r0
        L47:
            com.kwad.components.ad.splashscreen.monitor.b.mv()
            com.kwad.sdk.core.response.model.AdTemplate r2 = r5.mAdTemplate
            com.kwad.sdk.o r3 = com.kwad.sdk.o.Gs()
            long r3 = r3.GW()
            com.kwad.components.ad.splashscreen.monitor.b.a(r2, r3, r1, r0)
            com.kwad.components.core.e.d.d r0 = r5.mApkDownloadHelper
            if (r0 == 0) goto L64
            r1 = 0
            r0.setOnDismissListener(r1)
            com.kwad.components.core.e.d.d r0 = r5.mApkDownloadHelper
            r0.setOnShowListener(r1)
        L64:
            com.kwad.components.ad.splashscreen.e.d r0 = r5.GC
            r0.Ab()
            r5.lV()
            com.kwad.sdk.core.response.model.AdTemplate r0 = r5.mAdTemplate
            com.kwai.adclient.kscommerciallogger.model.BusinessType r0 = com.kwad.sdk.commercial.e.bA(r0)
            com.kwad.components.core.g.a.a(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.splashscreen.c.af():void");
    }

    @Override // com.kwad.components.core.n.d
    public final boolean al() {
        return true;
    }

    @Override // com.kwad.components.core.n.d
    public final int getLayoutId() {
        return getSplashLayoutId();
    }

    @Override // com.kwad.components.core.n.d
    public final void initData() {
        this.mAdInfo = com.kwad.sdk.core.response.helper.e.eO(this.mAdTemplate);
        KsVideoPlayConfig ksVideoPlayConfigBuild = new KsVideoPlayConfig.Builder().videoSoundEnable(this.mAdInfo.adSplashInfo.mute != 1).build();
        this.mVideoPlayConfig = ksVideoPlayConfigBuild;
        this.mAdTemplate.mInitVoiceStatus = ksVideoPlayConfigBuild.isVideoSoundEnable() ? 2 : 1;
        com.kwad.components.core.e.d.d dVar = new com.kwad.components.core.e.d.d(this.mAdTemplate);
        this.mApkDownloadHelper = dVar;
        dVar.setOnDismissListener(this);
        this.mApkDownloadHelper.setOnShowListener(this);
    }

    @Override // com.kwad.components.core.n.d
    @NonNull
    public final Presenter onCreatePresenter() {
        getContext();
        return ai(this.mAdTemplate);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        boolean zPI = dialogInterface instanceof com.kwad.components.core.e.c.b ? ((com.kwad.components.core.e.c.b) dialogInterface).pI() : false;
        try {
            KsSplashScreenAd.SplashScreenAdInteractionListener splashScreenAdInteractionListener = this.GB;
            if (splashScreenAdInteractionListener != null) {
                if (zPI) {
                    splashScreenAdInteractionListener.onDownloadTipsDialogDismiss();
                } else {
                    splashScreenAdInteractionListener.onDownloadTipsDialogCancel();
                }
            }
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        try {
            KsSplashScreenAd.SplashScreenAdInteractionListener splashScreenAdInteractionListener = this.GB;
            if (splashScreenAdInteractionListener != null) {
                splashScreenAdInteractionListener.onDownloadTipsDialogShow();
            }
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@NonNull View view, int i2) {
        super.onVisibilityChanged(view, i2);
    }

    public final void setPageExitListener(com.kwad.sdk.core.j.b bVar) {
        this.dH = bVar;
    }

    public final void setSplashScreenAdListener(KsSplashScreenAd.SplashScreenAdInteractionListener splashScreenAdInteractionListener) {
        this.GB = splashScreenAdInteractionListener;
        T t2 = this.abm;
        if (t2 != 0) {
            ((h) t2).setSplashScreenAdListener(splashScreenAdInteractionListener);
        }
    }

    public static c a(Context context, @NonNull AdResultData adResultData, boolean z2, com.kwad.sdk.core.j.b bVar, KsSplashScreenAd.SplashScreenAdInteractionListener splashScreenAdInteractionListener) throws Throwable {
        c cVar;
        AdTemplate adTemplateR = com.kwad.sdk.core.response.helper.c.r(adResultData);
        c cVar2 = null;
        try {
            adTemplateR.showStartTime = SystemClock.elapsedRealtime();
            com.kwad.components.ad.splashscreen.monitor.b.mv();
            com.kwad.components.ad.splashscreen.monitor.b.ap(adTemplateR);
            com.kwad.components.ad.splashscreen.monitor.b.mv();
            com.kwad.components.ad.splashscreen.monitor.b.a(adTemplateR, o.Gs().GW(), z2);
            cVar = new c(m.wrapContextIfNeed(context), adResultData);
        } catch (Throwable th) {
            th = th;
        }
        try {
            cVar.setPageExitListener(bVar);
            cVar.setSplashScreenAdListener(splashScreenAdInteractionListener);
            return cVar;
        } catch (Throwable th2) {
            th = th2;
            cVar2 = cVar;
            com.kwad.components.ad.splashscreen.monitor.b.mv();
            com.kwad.components.ad.splashscreen.monitor.b.a(adTemplateR, th.toString(), z2);
            if (!o.Gs().Fu()) {
                throw th;
            }
            com.kwad.components.core.d.a.reportSdkCaughtException(th);
            return cVar2;
        }
    }

    private static StyleTemplate c(AdTemplate adTemplate) {
        AdMatrixInfo.MatrixTemplate matrixTemplateT = com.kwad.sdk.core.response.helper.b.t(adTemplate, com.kwad.sdk.core.response.helper.b.em(adTemplate));
        StyleTemplate styleTemplate = new StyleTemplate();
        if (matrixTemplateT != null) {
            styleTemplate.templateId = matrixTemplateT.templateId;
            styleTemplate.templateMd5 = matrixTemplateT.templateMd5;
            styleTemplate.templateUrl = matrixTemplateT.templateUrl;
            styleTemplate.templateVersionCode = (int) matrixTemplateT.templateVersionCode;
        }
        return styleTemplate;
    }

    private com.kwad.sdk.core.j.c a(final h hVar) {
        return new com.kwad.sdk.core.j.c() { // from class: com.kwad.components.ad.splashscreen.c.1
            @Override // com.kwad.sdk.core.j.c
            public final void bA() {
                bx bxVar = hVar.mTimerHelper;
                if (bxVar != null) {
                    bxVar.Xf();
                }
            }

            @Override // com.kwad.sdk.core.j.c
            public final void bz() {
                bx bxVar = hVar.mTimerHelper;
                if (bxVar != null) {
                    bxVar.Xe();
                }
            }
        };
    }

    @Override // com.kwad.components.core.n.d
    public final void a(@NonNull ViewGroup viewGroup) {
        this.mRootContainer = (AdBaseFrameLayout) this.oC.findViewById(R.id.ksad_splash_root_container);
        DetailVideoView detailVideoView = (DetailVideoView) this.oC.findViewById(R.id.ksad_splash_video_player);
        this.mDetailVideoView = detailVideoView;
        detailVideoView.setAd(true);
        this.mDetailVideoView.setVisibility(8);
        this.mRootContainer.findViewById(R.id.splash_play_card_view).setOnClickListener(new View.OnClickListener() { // from class: com.kwad.components.ad.splashscreen.c.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (com.kwad.sdk.c.a.a.HW() || !c.o(c.this.mAdInfo) || c.this.abm == null) {
                    return;
                }
                ((h) c.this.abm).c(1, view.getContext(), 53, 3);
            }
        });
    }

    private static void a(Presenter presenter, AdInfo adInfo) {
        presenter.a(new k());
        presenter.a(new s());
        if (h.s(adInfo)) {
            presenter.a(new com.kwad.components.ad.splashscreen.presenter.endcard.f());
        }
    }
}
