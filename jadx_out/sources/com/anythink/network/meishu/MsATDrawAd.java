package com.anythink.network.meishu;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.meishu.sdk.core.ad.draw.DrawAd;
import com.meishu.sdk.core.ad.draw.IDrawAd;
import com.meishu.sdk.core.loader.InteractionListener;

/* loaded from: classes2.dex */
public class MsATDrawAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f9951a = MsATDrawAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    Context f9952b;

    /* renamed from: c, reason: collision with root package name */
    IDrawAd f9953c;

    /* renamed from: d, reason: collision with root package name */
    FrameLayout f9954d;

    public class a implements InteractionListener {
        public a() {
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
            String unused = MsATDrawAd.this.f9951a;
            MsATDrawAd.this.notifyAdClicked();
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
            String unused = MsATDrawAd.this.f9951a;
            MsATDrawAd.this.notifyAdDislikeClick();
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            String unused = MsATDrawAd.this.f9951a;
            MsATDrawAd.this.notifyAdImpression();
        }
    }

    public class b implements DrawAd.IDrawVideoListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void onClickRetry() {
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void onProgressUpdate(long j2, long j3) {
            try {
                MsATDrawAd.this.notifyAdVideoPlayProgress((int) (j2 / j3));
            } catch (Exception unused) {
            }
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void onVideoError(int i2, int i3) {
            MsATDrawAd.this.notifyAdVideoVideoPlayFail(String.valueOf(i2), String.valueOf(i3));
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void onVideoLoad() {
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void pauseBtnClick() {
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void playCompletion() {
            MsATDrawAd.this.notifyAdVideoEnd();
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void playError() {
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void playPause() {
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void playRenderingStart() {
            MsATDrawAd.this.notifyAdVideoStart();
        }

        @Override // com.meishu.sdk.core.ad.draw.DrawAd.IDrawVideoListener
        public void playResume() {
        }
    }

    public MsATDrawAd(Context context, IDrawAd iDrawAd) {
        this.f9952b = context;
        this.f9953c = iDrawAd;
        a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        IDrawAd iDrawAd = this.f9953c;
        if (iDrawAd != null) {
            iDrawAd.destroy();
            this.f9953c = null;
        }
        this.f9952b = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (this.f9953c == null) {
            return null;
        }
        if (this.f9954d == null) {
            FrameLayout frameLayout = new FrameLayout(this.f9952b);
            this.f9954d = frameLayout;
            this.f9953c.showAd(frameLayout);
        }
        return this.f9954d;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
    }

    private void a() {
        try {
            setNativeInteractionType(this.f9953c.getInteractionType() == 1 ? 1 : this.f9953c.getInteractionType() == 0 ? 2 : 0);
            int imageMode = this.f9953c.getImageMode();
            if (imageMode == 2) {
                this.mAdSourceType = "1";
            } else if (imageMode == 1 || imageMode == 12 || imageMode == 11 || imageMode == 13) {
                this.mAdSourceType = "2";
            }
            this.f9953c.setInteractionListener(new a());
            this.f9953c.setOnDrawVideoListener(new b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
