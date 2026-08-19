package com.anythink.network.ks;

import android.content.Context;
import android.view.View;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.kwad.sdk.api.KsFeedAd;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATFeedAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    Context f9813a;

    /* renamed from: b, reason: collision with root package name */
    KsFeedAd f9814b;

    /* renamed from: c, reason: collision with root package name */
    View f9815c;

    public class a implements KsFeedAd.AdInteractionListener {
        public a() {
        }

        @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
        public void onAdClicked() {
            KSATFeedAd.this.notifyAdClicked();
        }

        @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
        public void onAdShow() {
            KSATInitManager.getInstance().a(KSATFeedAd.this.getShowId(), new WeakReference(KSATFeedAd.this.f9814b));
            KSATFeedAd.this.notifyAdImpression();
        }

        @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
        public void onDislikeClicked() {
            KSATFeedAd.this.notifyAdDislikeClick();
        }

        @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
        public void onDownloadTipsDialogDismiss() {
        }

        @Override // com.kwad.sdk.api.KsFeedAd.AdInteractionListener
        public void onDownloadTipsDialogShow() {
        }
    }

    public KSATFeedAd(Context context, KsFeedAd ksFeedAd, boolean z2) {
        this.f9813a = context.getApplicationContext();
        this.f9814b = ksFeedAd;
        a(z2);
    }

    private void a(boolean z2) {
        try {
            this.f9814b.setVideoSoundEnable(z2);
            int i2 = this.f9814b.getInteractionType() == 1 ? 1 : 0;
            if (this.f9814b.getInteractionType() == 2) {
                i2 = 2;
            }
            setNetworkInfoMap(KSATInitManager.getInstance().a(this.f9814b.getMediaExtraInfo(), (Map<String, Object>) null));
            setNativeInteractionType(i2);
            if (this.f9814b.getMaterialType() == 1) {
                this.mAdSourceType = "1";
            } else if (this.f9814b.getMaterialType() == 3 || this.f9814b.getMaterialType() == 2) {
                this.mAdSourceType = "2";
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f9814b.setAdInteractionListener(new a());
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        KsFeedAd ksFeedAd = this.f9814b;
        if (ksFeedAd != null) {
            ksFeedAd.setAdInteractionListener(null);
            this.f9814b = null;
        }
        this.f9813a = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        try {
            if (this.f9815c == null) {
                this.f9815c = this.f9814b.getFeedView(this.f9813a);
            }
            return this.f9815c;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
    }
}
