package com.kwad.components.ad.interstitial.f;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.interstitial.f.c;
import com.kwad.components.core.video.a;
import com.kwad.components.core.video.f;
import com.kwad.sdk.R;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.contentalliance.a.a.b;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.network.a.a;
import com.kwad.sdk.core.response.helper.SlideConvertHelper;
import com.kwad.sdk.core.response.helper.h;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.video.videoview.a;
import com.kwad.sdk.widget.KSFrameLayout;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class f extends b implements com.kwad.sdk.widget.d {
    private com.kwad.sdk.core.video.videoview.a cB;
    private a.InterfaceC0618a cK;

    @NonNull
    private KsAdVideoPlayConfig ce;
    private List<Integer> cv;
    private KSFrameLayout fT;
    private ImageView ik;
    protected AdInfo mAdInfo;
    private AdTemplate mAdTemplate;
    private com.kwad.components.core.e.d.d mApkDownloadHelper;

    @NonNull
    protected Context mContext;
    private c mN;
    private KSFrameLayout nM;
    private com.kwad.components.core.video.f nN;

    @Nullable
    private boolean mIsAudioEnable = false;
    private final a.InterfaceC0559a iq = new a.InterfaceC0559a() { // from class: com.kwad.components.ad.interstitial.f.f.4
        /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
        @Override // com.kwad.components.core.video.a.InterfaceC0559a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(int r11, com.kwad.sdk.utils.al.a r12) {
            /*
                r10 = this;
                r0 = 2
                r1 = 0
                r2 = 1
                if (r11 == r2) goto L16
                if (r11 == r0) goto L13
                r3 = 3
                if (r11 == r3) goto Le
                r11 = 108(0x6c, float:1.51E-43)
            Lc:
                r3 = r0
                goto L19
            Le:
                r11 = 83
                r1 = r2
                r3 = r1
                goto L19
            L13:
                r11 = 82
                goto Lc
            L16:
                r11 = 13
                goto Lc
            L19:
                com.kwad.components.ad.interstitial.f.f r4 = com.kwad.components.ad.interstitial.f.f.this
                com.kwad.components.ad.interstitial.f.f.d(r4)
                boolean r4 = com.kwad.sdk.utils.as.VM()
                if (r4 == 0) goto L25
                goto L26
            L25:
                r0 = r2
            L26:
                com.kwad.components.ad.interstitial.report.a r4 = com.kwad.components.ad.interstitial.report.a.eV()
                com.kwad.components.ad.interstitial.f.f r5 = com.kwad.components.ad.interstitial.f.f.this
                com.kwad.sdk.core.response.model.AdTemplate r5 = com.kwad.components.ad.interstitial.f.f.a(r5)
                r6 = 1
                long r8 = (long) r11
                r4.a(r5, r6, r8)
                com.kwad.components.core.e.d.a$a r4 = new com.kwad.components.core.e.d.a$a
                com.kwad.components.ad.interstitial.f.f r5 = com.kwad.components.ad.interstitial.f.f.this
                android.content.Context r5 = com.kwad.components.ad.interstitial.f.f.f(r5)
                r4.<init>(r5)
                com.kwad.components.ad.interstitial.f.f r5 = com.kwad.components.ad.interstitial.f.f.this
                com.kwad.sdk.core.response.model.AdTemplate r5 = com.kwad.components.ad.interstitial.f.f.a(r5)
                com.kwad.components.core.e.d.a$a r4 = r4.aJ(r5)
                com.kwad.components.ad.interstitial.f.f r5 = com.kwad.components.ad.interstitial.f.f.this
                com.kwad.components.core.e.d.d r5 = com.kwad.components.ad.interstitial.f.f.e(r5)
                com.kwad.components.core.e.d.a$a r4 = r4.b(r5)
                com.kwad.components.core.e.d.a$a r3 = r4.aN(r3)
                com.kwad.components.core.e.d.a$a r1 = r3.as(r1)
                com.kwad.components.core.e.d.a$a r1 = r1.au(r2)
                com.kwad.components.core.e.d.a$a r1 = r1.aM(r11)
                com.kwad.components.core.e.d.a$a r12 = r1.d(r12)
                com.kwad.components.core.e.d.a$a r12 = r12.aO(r0)
                com.kwad.components.ad.interstitial.f.f$4$1 r0 = new com.kwad.components.ad.interstitial.f.f$4$1
                r0.<init>()
                com.kwad.components.core.e.d.a$a r11 = r12.a(r0)
                com.kwad.components.core.e.d.a.a(r11)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.interstitial.f.f.AnonymousClass4.a(int, com.kwad.sdk.utils.al$a):void");
        }
    };

    private void eE() {
        String strFx;
        this.mIsAudioEnable = this.ce.isVideoSoundEnable();
        String url = com.kwad.sdk.core.response.helper.a.bA(this.mAdInfo).getUrl();
        if (TextUtils.isEmpty(url)) {
            this.ik.setVisibility(8);
        } else {
            this.ik.setImageDrawable(null);
            KSImageLoader.loadImage(this.ik, url, this.mAdTemplate);
            this.ik.setVisibility(0);
        }
        int iGa = com.kwad.sdk.core.config.e.Ga();
        String strM = com.kwad.sdk.core.response.helper.a.M(this.mAdInfo);
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        if (iGa < 0) {
            File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(strM);
            if (fileCO == null || !fileCO.exists()) {
                strM = null;
            } else {
                strFx = fileCO.getAbsolutePath();
                strM = strFx;
            }
        } else if (iGa != 0) {
            com.kwad.sdk.core.videocache.f fVarCm = com.kwad.sdk.core.videocache.c.a.cm(this.mContext);
            if (com.kwad.sdk.core.config.e.Jp()) {
                int iGa2 = com.kwad.sdk.core.config.e.Ga();
                if (fVarCm.fz(strM)) {
                    strFx = fVarCm.fx(strM);
                } else {
                    if (fVarCm.a(strM, iGa2 * 1024, new a.C0614a(), null)) {
                        strFx = fVarCm.fx(strM);
                    }
                }
                strM = strFx;
            } else {
                strM = fVarCm.fx(strM);
            }
        }
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        this.cB.a(new b.a(this.mAdTemplate).dQ(strM).dR(h.b(com.kwad.sdk.core.response.helper.e.eP(this.mAdTemplate))).a(this.mAdTemplate.mVideoPlayerStatus).b(new com.kwad.sdk.contentalliance.a.a.a(this.mAdTemplate, System.currentTimeMillis())).IG(), null);
        a.InterfaceC0618a interfaceC0618a = new a.InterfaceC0618a() { // from class: com.kwad.components.ad.interstitial.f.f.1
            @Override // com.kwad.sdk.core.video.videoview.a.InterfaceC0618a
            public final com.kwad.sdk.core.video.a.c a(com.kwad.sdk.contentalliance.a.a.b bVar) {
                if (!((Boolean) com.kwad.sdk.core.config.e.b(com.kwad.sdk.core.config.c.aQq)).booleanValue() || !((Boolean) com.kwad.sdk.core.config.e.b(com.kwad.sdk.core.config.c.aQr)).booleanValue()) {
                    return null;
                }
                com.kwad.components.core.video.g gVar = new com.kwad.components.core.video.g(bVar, f.this.mAdTemplate);
                if (com.kwad.components.core.video.g.isWaynePlayerReady()) {
                    return gVar;
                }
                return null;
            }
        };
        this.cK = interfaceC0618a;
        this.cB.setExternalPlayerListener(interfaceC0618a);
        this.cB.setVideoSoundEnable(this.mIsAudioEnable);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.kwad.components.ad.interstitial.report.d.fb().I(this.mAdTemplate);
        this.nN.setVideoPlayCallback(new f.a() { // from class: com.kwad.components.ad.interstitial.f.f.2
            private boolean eV = false;

            @Override // com.kwad.components.core.video.a.c
            public final void as() {
                if (!this.eV) {
                    this.eV = true;
                    com.kwad.components.core.p.a.vL().a(f.this.mAdTemplate, System.currentTimeMillis(), 0);
                }
                Iterator<a.c> it = f.this.mN.mX.iterator();
                while (it.hasNext()) {
                    it.next().as();
                }
            }

            @Override // com.kwad.components.core.video.a.c
            public final void at() {
                com.kwad.sdk.core.adlog.c.cu(f.this.mAdTemplate);
                if (!f.this.mN.mR && f.this.mN.ls != null) {
                    f.this.mN.ls.onVideoPlayEnd();
                }
                Iterator<a.c> it = f.this.mN.mX.iterator();
                while (it.hasNext()) {
                    it.next().at();
                }
                f.this.mN.mZ = true;
            }

            @Override // com.kwad.components.core.video.a.c
            public final void d(long j2) {
                f.this.c(j2);
                Iterator<a.c> it = f.this.mN.mX.iterator();
                while (it.hasNext()) {
                    it.next().d(j2);
                }
            }

            @Override // com.kwad.components.core.video.f.a
            public final void onVideoPlayError(int i2, int i3) {
                com.kwad.components.ad.interstitial.report.d.fb().b(f.this.mAdTemplate, i2, String.valueOf(i3));
                if (f.this.mN.ls != null) {
                    f.this.mN.ls.onVideoPlayError(i2, i3);
                }
            }

            @Override // com.kwad.components.core.video.a.c
            public final void onVideoPlayStart() {
                com.kwad.sdk.core.adlog.c.ct(f.this.mAdTemplate);
                com.kwad.components.ad.interstitial.report.d.fb().b(f.this.mAdTemplate, System.currentTimeMillis() - jCurrentTimeMillis);
                com.kwad.components.ad.interstitial.report.b.eX().B(f.this.mAdTemplate);
                if (!f.this.mN.mR && f.this.mN.ls != null) {
                    f.this.mN.ls.onVideoPlayStart();
                }
                Iterator<a.c> it = f.this.mN.mX.iterator();
                while (it.hasNext()) {
                    it.next().onVideoPlayStart();
                }
                f.this.mN.mZ = false;
            }
        });
        this.cB.setController(this.nN);
        this.fT.setClickable(true);
        new com.kwad.sdk.widget.h(this.fT.getContext(), this.fT, this);
        this.fT.addView(this.cB);
        this.mN.mV = new c.e() { // from class: com.kwad.components.ad.interstitial.f.f.3
            @Override // com.kwad.components.ad.interstitial.f.c.e
            public final void ej() {
                if (f.this.cB != null) {
                    f.this.cB.restart();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(long j2) {
        c cVar = this.mN;
        cVar.mP = true;
        cVar.c(1L, j2);
    }

    @Override // com.kwad.components.ad.interstitial.f.b, com.kwad.sdk.mvp.Presenter
    public final void ay() throws Resources.NotFoundException, NumberFormatException {
        super.ay();
        c cVar = (c) SB();
        this.mN = cVar;
        this.ce = cVar.ce;
        AdTemplate adTemplate = cVar.mAdTemplate;
        this.mAdTemplate = adTemplate;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        this.mAdInfo = adInfoEO;
        List<Integer> listBv = com.kwad.sdk.core.response.helper.a.bv(adInfoEO);
        this.cv = listBv;
        com.kwad.sdk.core.video.videoview.a aVar = this.mN.cB;
        this.cB = aVar;
        aVar.setTag(listBv);
        com.kwad.components.core.video.f fVar = new com.kwad.components.core.video.f(this.mContext, this.mAdTemplate, this.cB);
        this.nN = fVar;
        fVar.setDataFlowAutoStart(this.ce.isDataFlowAutoStart());
        this.nN.setAdClickListener(this.iq);
        this.nN.xl();
        this.mApkDownloadHelper = this.mN.mApkDownloadHelper;
        eE();
        float dimension = getContext().getResources().getDimension(R.dimen.ksad_interstitial_card_radius);
        this.fT.setRadius(dimension, dimension, 0.0f, 0.0f);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.nM = (KSFrameLayout) getRootView().findViewById(R.id.ksad_container);
        this.fT = (KSFrameLayout) getRootView().findViewById(R.id.ksad_video_container);
        this.ik = (ImageView) getRootView().findViewById(R.id.ksad_video_first_frame_container);
        this.fT.setVisibility(4);
        this.mContext = getContext();
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onDestroy() {
        super.onDestroy();
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        this.mN.mV = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j2) {
        int iCeil = (int) Math.ceil(j2 / 1000.0f);
        List<Integer> list = this.cv;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<Integer> it = this.cv.iterator();
        while (it.hasNext()) {
            if (iCeil >= it.next().intValue()) {
                com.kwad.sdk.core.adlog.c.a(this.mAdTemplate, iCeil, (JSONObject) null);
                it.remove();
                return;
            }
        }
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view) {
        this.mN.a(c(view, true));
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view, float f2, float f3, float f4, float f5) {
        if (SlideConvertHelper.a(this.mN.mAdTemplate, f2, f3, f4, f5)) {
            this.mN.a(c(view, false));
        }
    }

    private c.C0478c c(View view, boolean z2) {
        return new c.C0478c(view.getContext()).l(z2).a(this.nM.getTouchCoords()).W(3).X(85);
    }
}
