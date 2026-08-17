package com.smartdigimkt.e5;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.api.format.SDMAd;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import com.smartdigimkt.sdk.api.format.SDMNativeAd;
import com.smartdigimkt.sdk.api.format.SDMNativeAdListener;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;
import com.smartdigimkt.sdk.api.format.SDMWinInfo;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class u implements SDMNativeAd {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.r1.m f40106a;

    public u(com.smartdigimkt.r1.m mVar) {
        this.f40106a = mVar;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void destroy() {
        this.f40106a.getClass();
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final View generateShakeViewContainer() {
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getAdChoiceIconUrl() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        return aVar != null ? aVar.f41816g : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdImageHeight() {
        int i2;
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        if (aVar == null) {
            return 0;
        }
        synchronized (aVar) {
            i2 = aVar.f41789J;
        }
        return i2;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdImageWidth() {
        int i2;
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        if (aVar == null) {
            return 0;
        }
        synchronized (aVar) {
            i2 = aVar.f41788I;
        }
        return i2;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdType() {
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdVideoHeight() {
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdVideoWidth() {
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getAppName() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getAppVersion() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getCallToAction() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        return aVar != null ? aVar.f41817h : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final ViewGroup getCustomAdContainer() {
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getDescription() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        return aVar != null ? aVar.f41812d : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getDownloadStatus() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        if (aVar != null) {
            return aVar.f41787H;
        }
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getFunctionUrl() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getIcon() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        return aVar != null ? aVar.f41814e : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getInteractionType() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        if (aVar != null) {
            return aVar.f41824o;
        }
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getMainImageUrl() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        return aVar != null ? aVar.f41815f : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final View getMediaView(Context context, SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener) {
        this.f40106a.getClass();
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getPermissionUrl() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getPrivacyUrl() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getPublisher() {
        return "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public final SDMAd getSDMAd() {
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getTitle() {
        com.smartdigimkt.p3.a aVar = this.f40106a.f42949e;
        return aVar != null ? aVar.f41810c : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final long getVideoCurrentPosition() {
        return 0L;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final long getVideoDuration() {
        return 0L;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final boolean isAdReady() {
        com.smartdigimkt.r1.m mVar = this.f40106a;
        if (mVar != null) {
            return mVar.d();
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final boolean isDownloadApp() {
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final boolean isTemplateAd() {
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public final void notifyLoss(SDMLossInfo sDMLossInfo) {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public final void notifyWin(SDMWinInfo sDMWinInfo) {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void onPause() {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void onResume() {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void pauseVideo() {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void registerAdView(View view, List list, List list2, FrameLayout.LayoutParams layoutParams, View view2) {
        com.smartdigimkt.p3.a aVar;
        com.smartdigimkt.l3.a aVar2;
        com.smartdigimkt.r1.m mVar = this.f40106a;
        if (mVar != null) {
            mVar.f42966j = view;
            if (view != null && (view instanceof ViewGroup) && (aVar = mVar.f42949e) != null && (aVar2 = mVar.f42946b) != null) {
                mVar.f42971o = new com.smartdigimkt.r1.l(mVar, (ViewGroup) view, aVar, aVar2, new com.smartdigimkt.r1.k(mVar));
            }
            com.smartdigimkt.r1.j jVar = new com.smartdigimkt.r1.j(mVar);
            if (mVar.f42964h == null) {
                view.getContext();
                mVar.f42964h = new com.smartdigimkt.a4.c(1);
            }
            mVar.f42964h.a(view, jVar);
            if (list == null || list.size() <= 0) {
                com.smartdigimkt.r1.m.a(view, mVar.f42969m);
            } else {
                View[] viewArr = new View[1];
                mVar.a(view, viewArr);
                View view3 = viewArr[0];
                if (view3 != null) {
                    mVar.f42968l = view3;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    View view4 = (View) it.next();
                    if (view4 != null) {
                        view4.setOnClickListener(mVar.f42969m);
                    }
                }
            }
            if (list2 == null || list2.size() <= 0) {
                return;
            }
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                View view5 = (View) it2.next();
                if (view5 != null) {
                    view5.setOnClickListener(mVar.f42970n);
                }
            }
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void resumeVideo() {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void setAutoPlay(String str) {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void setListener(SDMNativeAdListener sDMNativeAdListener) {
        this.f40106a.f42963g = new t(sDMNativeAdListener);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void setMute(boolean z2) {
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void unregisterView() {
        com.smartdigimkt.a4.c cVar = this.f40106a.f42964h;
        if (cVar != null) {
            cVar.f39317b.clear();
            cVar.f39318c.clear();
            com.smartdigimkt.a4.h hVar = cVar.f39316a;
            hVar.f39333d.clear();
            hVar.f39337h.removeMessages(0);
            hVar.f39338i = false;
        }
    }
}
