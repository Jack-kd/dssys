package com.kwad.components.ad.nativead.b;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.video.l;
import com.kwad.components.core.video.m;
import com.kwad.sdk.R;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class f extends com.kwad.components.ad.nativead.a.a implements View.OnClickListener, View.OnTouchListener {
    private TextView ev;
    private ImageView gQ;
    private AdInfo mAdInfo;
    private AdTemplate mAdTemplate;

    @Nullable
    private com.kwad.components.core.e.d.d mApkDownloadHelper;
    private ViewGroup qn;
    private TextView qo;
    private MotionEvent qp;
    private KsAppDownloadListener qq = new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.ad.nativead.b.f.2
        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public final void onDownloadFailed() {
            f.this.qo.setText(com.kwad.sdk.core.response.helper.a.aK(f.this.mAdInfo));
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public final void onDownloadFinished() {
            f.this.qo.setText(com.kwad.sdk.core.response.helper.a.cK(f.this.mAdTemplate));
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public final void onIdle() {
            f.this.qo.setText(com.kwad.sdk.core.response.helper.a.aK(f.this.mAdInfo));
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public final void onInstalled() {
            f.this.qo.setText(com.kwad.sdk.core.response.helper.a.af(f.this.mAdInfo));
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public final void onProgressUpdate(int i2) {
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void fI() {
        KSImageLoader.loadAppIcon(this.gQ, com.kwad.sdk.core.response.helper.a.cv(this.mAdInfo), this.mAdTemplate, 12);
        this.ev.setText(com.kwad.sdk.core.response.helper.a.aB(this.mAdInfo));
        this.qo.setText(com.kwad.sdk.core.response.helper.a.aK(this.mAdInfo));
        com.kwad.components.core.e.d.d dVar = this.mApkDownloadHelper;
        if (dVar != null) {
            dVar.b(this.qq);
        }
        this.qn.setOnClickListener(this);
        this.qn.setOnTouchListener(this);
        this.qn.setVisibility(0);
        this.ev.setVisibility(0);
        this.qo.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fJ() {
        try {
            this.ev.setVisibility(8);
            this.qo.setVisibility(8);
            this.qn.setVisibility(8);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private void fK() {
        com.kwad.components.ad.nativead.d.a aVar;
        a.C0529a c0529aB = new a.C0529a(getContext()).aJ(this.mAdTemplate).b(this.mApkDownloadHelper);
        com.kwad.components.ad.nativead.a.b bVar = this.pW;
        com.kwad.components.core.e.d.a.a(c0529aB.D((bVar == null || (aVar = bVar.pX) == null) ? 0L : aVar.getPlayDuration()).a(new a.b() { // from class: com.kwad.components.ad.nativead.b.f.3
            @Override // com.kwad.components.core.e.d.a.b
            public final void onAdClicked() {
                com.kwad.sdk.core.adlog.c.a(f.this.mAdTemplate, 2, f.this.pW.pR.getTouchCoords());
            }
        }));
    }

    private void fL() {
        com.kwad.components.core.e.d.a.a(new a.C0529a(getContext()).aJ(this.pW.mAdTemplate).b(this.pW.mApkDownloadHelper).D(this.pW.pX.getPlayDuration()).a(new a.b() { // from class: com.kwad.components.ad.nativead.b.f.4
            @Override // com.kwad.components.core.e.d.a.b
            public final void onAdClicked() {
                com.kwad.sdk.core.adlog.c.a(f.this.pW.mAdTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT, f.this.pW.pR.getTouchCoords());
            }
        }));
    }

    private void m(View view) {
        if (view == this.qn) {
            fL();
            notifyAdClick();
        }
    }

    private void notifyAdClick() {
        ViewGroup viewGroup = this.qn;
        if (viewGroup != null) {
            this.pW.pD.l(viewGroup);
        }
    }

    @Override // com.kwad.components.ad.nativead.a.a, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        AdTemplate adTemplate = this.pW.mAdTemplate;
        this.mAdTemplate = adTemplate;
        this.mAdInfo = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        this.mApkDownloadHelper = this.pW.mApkDownloadHelper;
        m mVar = new m() { // from class: com.kwad.components.ad.nativead.b.f.1
            @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
            public final void onMediaPlayCompleted() {
                try {
                    f.this.fI();
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.printStackTraceOnly(th);
                    com.kwad.components.core.d.a.reportSdkCaughtException(th);
                }
            }

            @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
            public final void onMediaPlayStart() {
                super.onMediaPlayStart();
                f.this.fJ();
            }
        };
        this.mVideoPlayStateListener = mVar;
        this.pW.pX.b((l) mVar);
        ViewGroup viewGroup = this.qn;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.pW.qd) {
            if (view == this.qn) {
                fK();
                notifyAdClick();
            } else if (view == this.qo) {
                fK();
                notifyAdClick();
            }
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.qn = (ViewGroup) findViewById(R.id.ksad_video_complete_app_container);
        this.gQ = (ImageView) findViewById(R.id.ksad_app_icon);
        this.ev = (TextView) findViewById(R.id.ksad_app_name);
        this.qo = (TextView) findViewById(R.id.ksad_app_download);
        com.kwad.components.ad.nativead.a.a.a(this.qn, "NativePlayEndAppPresenter: R.id.ksad_video_complete_app_container is null");
        com.kwad.components.ad.nativead.a.a.a(this.gQ, "NativePlayEndAppPresenter: R.id.ksad_app_icon is null");
        com.kwad.components.ad.nativead.a.a.a(this.ev, "NativePlayEndAppPresenter: R.id.ksad_app_name is null");
        com.kwad.components.ad.nativead.a.a.a(this.qo, "NativePlayEndAppPresenter: R.id.ksad_app_download is null");
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z2 = false;
        if (action == 0) {
            this.qp = MotionEvent.obtain(motionEvent);
            return false;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        if (com.kwad.sdk.utils.b.a(this.qp, motionEvent)) {
            if (this.pW.qc && com.kwad.sdk.utils.b.a(this.qp, motionEvent, this.mAdTemplate)) {
                m(view);
            }
            z2 = true;
        }
        this.qp = null;
        return z2;
    }

    @Override // com.kwad.components.ad.nativead.a.a, com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        com.kwad.components.core.e.d.d dVar = this.mApkDownloadHelper;
        if (dVar != null) {
            dVar.c(this.qq);
        }
    }
}
