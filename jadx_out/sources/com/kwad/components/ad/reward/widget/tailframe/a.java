package com.kwad.components.ad.reward.widget.tailframe;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.kwad.components.ad.reward.g;
import com.kwad.components.core.page.widget.TextProgressBar;
import com.kwad.components.core.widget.KsLogoView;
import com.kwad.sdk.R;
import com.kwad.sdk.core.response.helper.SlideConvertHelper;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.widget.d;
import com.kwad.sdk.widget.h;
import com.kwad.sdk.wrapper.m;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class a implements d {
    protected View FW;
    protected ImageView FX;
    private com.kwad.components.ad.widget.tailframe.appbar.a FY;
    private TailFrameBarH5View FZ;
    private b Ga;
    private TextProgressBar Gb;
    private View Gc;
    private int Gd;
    private TextView gX;
    protected AdInfo mAdInfo;
    protected AdTemplate mAdTemplate;
    private com.kwad.components.core.e.d.d mApkDownloadHelper;
    protected KsLogoView mLogoView;
    private JSONObject mReportExtData;
    private g uj;

    public a(int i2) {
        this.Gd = i2;
    }

    private void bindDownloadListener() {
        this.mApkDownloadHelper = new com.kwad.components.core.e.d.d(this.mAdTemplate, this.mReportExtData, new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.ad.reward.widget.tailframe.a.1
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                a.this.FY.E(a.this.mAdInfo);
                a.this.Gb.e(com.kwad.sdk.core.response.helper.a.aK(a.this.mAdInfo), 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                a.this.FY.E(a.this.mAdInfo);
                a.this.Gb.e(com.kwad.sdk.core.response.helper.a.cK(a.this.mAdTemplate), 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                a.this.FY.E(a.this.mAdInfo);
                a.this.Gb.e(com.kwad.sdk.core.response.helper.a.aK(a.this.mAdInfo), 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                a.this.FY.E(a.this.mAdInfo);
                a.this.Gb.e(com.kwad.sdk.core.response.helper.a.af(a.this.mAdInfo), 0);
            }

            @Override // com.kwad.sdk.core.download.a.a
            public final void onPaused(int i2) {
                a.this.FY.E(a.this.mAdInfo);
                a.this.Gb.e(com.kwad.sdk.core.response.helper.a.eG(i2), i2);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i2) {
                a.this.FY.E(a.this.mAdInfo);
                a.this.Gb.e(com.kwad.sdk.core.response.helper.a.eF(i2), i2);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        r1 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(android.view.View r6, final boolean r7) {
        /*
            r5 = this;
            com.kwad.sdk.core.response.model.AdTemplate r0 = r5.mAdTemplate
            boolean r0 = com.kwad.sdk.core.response.helper.e.S(r0)
            r1 = 2
            r2 = 1
            if (r0 == 0) goto L21
            if (r7 == 0) goto Le
            r7 = r2
            goto L10
        Le:
            r7 = 153(0x99, float:2.14E-43)
        L10:
            com.kwad.components.ad.reward.g r0 = r5.uj
            android.view.View r3 = r5.FW
            android.content.Context r3 = r3.getContext()
            android.view.View r4 = r5.Gc
            if (r6 != r4) goto L1d
            r1 = r2
        L1d:
            r0.a(r2, r3, r7, r1)
            return
        L21:
            com.kwad.sdk.core.response.model.AdInfo r0 = r5.mAdInfo
            boolean r0 = com.kwad.sdk.core.response.helper.a.aL(r0)
            if (r0 == 0) goto L2f
            com.kwad.components.core.page.widget.TextProgressBar r0 = r5.Gb
            if (r6 != r0) goto L34
        L2d:
            r1 = r2
            goto L34
        L2f:
            android.widget.TextView r0 = r5.gX
            if (r6 != r0) goto L34
            goto L2d
        L34:
            com.kwad.components.core.e.d.a$a r0 = new com.kwad.components.core.e.d.a$a
            android.content.Context r3 = r6.getContext()
            r0.<init>(r3)
            com.kwad.sdk.core.response.model.AdTemplate r3 = r5.mAdTemplate
            com.kwad.components.core.e.d.a$a r0 = r0.aJ(r3)
            com.kwad.components.core.e.d.d r3 = r5.mApkDownloadHelper
            com.kwad.components.core.e.d.a$a r0 = r0.b(r3)
            r3 = 0
            if (r1 != r2) goto L4e
            r4 = r2
            goto L4f
        L4e:
            r4 = r3
        L4f:
            com.kwad.components.core.e.d.a$a r0 = r0.aM(r4)
            com.kwad.components.core.e.d.a$a r0 = r0.aL(r2)
            com.kwad.components.core.page.widget.TextProgressBar r4 = r5.Gb
            if (r6 != r4) goto L5c
            goto L5d
        L5c:
            r2 = r3
        L5d:
            com.kwad.components.core.e.d.a$a r6 = r0.as(r2)
            com.kwad.components.core.e.d.a$a r6 = r6.aN(r1)
            com.kwad.components.ad.reward.widget.tailframe.a$2 r0 = new com.kwad.components.ad.reward.widget.tailframe.a$2
            r0.<init>()
            com.kwad.components.core.e.d.a$a r6 = r6.a(r0)
            com.kwad.components.core.e.d.a.a(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.reward.widget.tailframe.a.d(android.view.View, boolean):void");
    }

    private void lN() {
        this.FW.setOnClickListener(null);
        this.mApkDownloadHelper = null;
    }

    private void lP() {
        if (!com.kwad.sdk.core.response.helper.a.aL(this.mAdInfo) && !e.S(this.mAdTemplate)) {
            this.FZ.n(this.mAdTemplate);
            TextView h5OpenBtn = this.FZ.getH5OpenBtn();
            this.gX = h5OpenBtn;
            h5OpenBtn.setClickable(true);
            this.FZ.setVisibility(0);
            new h(this.gX, this);
            return;
        }
        this.FY.n(this.mAdTemplate);
        this.FY.setVisibility(0);
        this.Gb = this.FY.getTextProgressBar();
        if (!e.S(this.mAdTemplate)) {
            this.Gb.setClickable(true);
            new h(this.Gb, this);
            bindDownloadListener();
        } else {
            View btnInstallContainer = this.FY.getBtnInstallContainer();
            this.Gc = btnInstallContainer;
            btnInstallContainer.setClickable(true);
            new h(this.Gc, this);
        }
    }

    public void B(Context context) {
        View viewA = m.a(context, this.Gd, null, false);
        this.FW = viewA;
        this.FX = (ImageView) viewA.findViewById(R.id.ksad_video_thumb_img);
        this.mLogoView = (KsLogoView) this.FW.findViewById(R.id.ksad_video_tf_logo);
        this.FY = (com.kwad.components.ad.widget.tailframe.appbar.a) this.FW.findViewById(R.id.ksad_video_app_tail_frame);
        this.FZ = (TailFrameBarH5View) this.FW.findViewById(R.id.ksad_video_h5_tail_frame);
    }

    public final void destroy() {
        com.kwad.components.ad.widget.tailframe.appbar.a aVar = this.FY;
        if (aVar != null) {
            aVar.lR();
            this.FY.setVisibility(8);
        }
        TailFrameBarH5View tailFrameBarH5View = this.FZ;
        if (tailFrameBarH5View != null) {
            tailFrameBarH5View.lR();
            this.FZ.setVisibility(8);
        }
        lN();
    }

    public final void g(boolean z2, boolean z3) {
        this.FZ.h(z2, z3);
    }

    public final View lO() {
        return this.FW;
    }

    public final void lw() {
        com.kwad.components.ad.widget.tailframe.appbar.a aVar = this.FY;
        if (aVar != null) {
            aVar.lR();
        }
        TailFrameBarH5View tailFrameBarH5View = this.FZ;
        if (tailFrameBarH5View != null) {
            tailFrameBarH5View.lR();
        }
    }

    public final void setCallerContext(g gVar) {
        this.uj = gVar;
    }

    public void a(@NonNull AdTemplate adTemplate, JSONObject jSONObject, b bVar) {
        this.mAdTemplate = adTemplate;
        this.mAdInfo = e.eO(adTemplate);
        this.mReportExtData = jSONObject;
        this.Ga = bVar;
        this.mLogoView.bl(this.mAdTemplate);
        lP();
        this.FW.setClickable(true);
        new h(this.FW, this);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view) {
        d(view, true);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view, float f2, float f3, float f4, float f5) {
        if (SlideConvertHelper.a(this.mAdTemplate, f2, f3, f4, f5)) {
            d(view, false);
        }
    }
}
