package com.anythink.network.meishu;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class MsATExpressAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f9957a = MsATExpressAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    Context f9958b;

    /* renamed from: c, reason: collision with root package name */
    RecyclerAdData f9959c;

    /* renamed from: d, reason: collision with root package name */
    private final FrameLayout f9960d;

    public class a implements ExpressMediaListener {
        public a() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.ExpressMediaListener
        public void onVideoCompleted() {
            MsATExpressAd.this.notifyAdVideoEnd();
        }

        @Override // com.meishu.sdk.core.ad.recycler.ExpressMediaListener
        public void onVideoError(int i2, String str) {
            MsATExpressAd.this.notifyAdVideoVideoPlayFail(String.valueOf(i2), str);
        }

        @Override // com.meishu.sdk.core.ad.recycler.ExpressMediaListener
        public void onVideoLoaded() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.ExpressMediaListener
        public void onVideoPause() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.ExpressMediaListener
        public void onVideoResume() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.ExpressMediaListener
        public void onVideoStart() {
            MsATExpressAd.this.notifyAdVideoStart();
        }
    }

    public class b implements RecylcerAdInteractionListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
            String unused = MsATExpressAd.this.f9957a;
            MsATExpressAd.this.notifyAdClicked();
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
            String unused = MsATExpressAd.this.f9957a;
            MsATExpressAd.this.notifyAdDislikeClick();
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            String unused = MsATExpressAd.this.f9957a;
            MsATExpressAd.this.notifyAdImpression();
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener
        public void onAdRenderFailed() {
            String unused = MsATExpressAd.this.f9957a;
        }
    }

    public MsATExpressAd(Context context, RecyclerAdData recyclerAdData) {
        this.f9958b = context.getApplicationContext();
        this.f9959c = recyclerAdData;
        this.f9960d = new FrameLayout(context);
        a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        RecyclerAdData recyclerAdData = this.f9959c;
        if (recyclerAdData != null) {
            recyclerAdData.destroy();
            this.f9959c = null;
        }
        this.f9958b = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return this.f9960d;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (this.f9959c != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f9960d);
            this.f9959c.bindAdToView(this.f9958b, this.f9960d, arrayList, new b());
        }
    }

    private void a() {
        try {
            setNativeInteractionType(this.f9959c.getInteractionType() == 1 ? 1 : this.f9959c.getInteractionType() == 0 ? 2 : 0);
            int adPatternType = this.f9959c.getAdPatternType();
            if (adPatternType == 2) {
                this.mAdSourceType = "1";
            } else if (adPatternType == 1 || adPatternType == 12 || adPatternType == 11 || adPatternType == 13) {
                this.mAdSourceType = "2";
            }
            this.f9959c.setExpressMediaListener(new a());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
