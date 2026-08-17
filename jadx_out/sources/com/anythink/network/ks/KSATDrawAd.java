package com.anythink.network.ks;

import android.content.Context;
import android.view.View;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.kwad.sdk.api.KsDrawAd;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATDrawAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    Context f9808a;

    /* renamed from: b, reason: collision with root package name */
    KsDrawAd f9809b;

    /* renamed from: c, reason: collision with root package name */
    View f9810c;

    public class a implements KsDrawAd.AdInteractionListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ KsDrawAd f9811a;

        public a(KsDrawAd ksDrawAd) {
            this.f9811a = ksDrawAd;
        }

        @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
        public void onAdClicked() {
            KSATDrawAd.this.notifyAdClicked();
        }

        @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
        public void onAdShow() {
            KSATInitManager.getInstance().a(KSATDrawAd.this.getShowId(), new WeakReference(this.f9811a));
            KSATDrawAd.this.notifyAdImpression();
        }

        @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
        public void onVideoPlayEnd() {
            KSATDrawAd.this.notifyAdVideoEnd();
        }

        @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
        public void onVideoPlayError() {
            KSATDrawAd.this.notifyAdVideoVideoPlayFail("", "KS Native Video Play Error");
        }

        @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
        public void onVideoPlayPause() {
        }

        @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
        public void onVideoPlayResume() {
        }

        @Override // com.kwad.sdk.api.KsDrawAd.AdInteractionListener
        public void onVideoPlayStart() {
            KSATDrawAd.this.notifyAdVideoStart();
        }
    }

    public KSATDrawAd(Context context, KsDrawAd ksDrawAd, boolean z2) {
        this.f9808a = context;
        this.f9809b = ksDrawAd;
        if (ksDrawAd != null) {
            i = ksDrawAd.getInteractionType() == 2 ? 2 : ksDrawAd.getInteractionType() == 1 ? 1 : 0;
            setNetworkInfoMap(KSATInitManager.getInstance().a(ksDrawAd.getMediaExtraInfo(), (Map<String, Object>) null));
        }
        setNativeInteractionType(i);
        if (ksDrawAd != null) {
            ksDrawAd.setVideoSoundEnable(z2);
            ksDrawAd.setAdInteractionListener(new a(ksDrawAd));
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        KsDrawAd ksDrawAd = this.f9809b;
        if (ksDrawAd != null) {
            ksDrawAd.setAdInteractionListener(null);
            this.f9809b = null;
        }
        this.f9808a = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        try {
            if (this.f9810c == null) {
                this.f9810c = this.f9809b.getDrawView(this.f9808a);
            }
            return this.f9810c;
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
