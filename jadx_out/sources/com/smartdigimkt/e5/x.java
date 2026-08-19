package com.smartdigimkt.e5;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.SDMAd;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import com.smartdigimkt.sdk.api.format.SDMNativeAd;
import com.smartdigimkt.sdk.api.format.SDMNativeAdListener;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;
import com.smartdigimkt.sdk.api.format.SDMWinInfo;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.v1.a3;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes5.dex */
public final class x implements SDMNativeAd {

    /* renamed from: a, reason: collision with root package name */
    public final a f40110a = new a();

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.j1.i f40111b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.m1.l f40112c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f40113d;

    /* renamed from: e, reason: collision with root package name */
    public WeakReference f40114e;

    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public x(com.smartdigimkt.j1.i r6) {
        /*
            r5 = this;
            r5.<init>()
            com.smartdigimkt.e5.a r0 = new com.smartdigimkt.e5.a
            r0.<init>()
            r5.f40110a = r0
            r5.f40111b = r6
            com.smartdigimkt.m3.b r0 = r6.f41069e
            java.lang.String r0 = r0.f41777v0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L30
            com.smartdigimkt.l1.c r0 = r6.f41073i
            if (r0 == 0) goto L4a
            android.content.Context r0 = r6.f41066b
            com.smartdigimkt.m3.b r1 = r6.f41069e
            com.smartdigimkt.l3.a r2 = r6.f41067c
            boolean r3 = r6.f41092n
            if (r3 == 0) goto L2a
            com.smartdigimkt.m1.s r4 = new com.smartdigimkt.m1.s
            r4.<init>(r0, r1, r2, r3)
            goto L4b
        L2a:
            com.smartdigimkt.m1.o r4 = new com.smartdigimkt.m1.o
            r4.<init>(r0, r1, r2, r3)
            goto L4b
        L30:
            com.smartdigimkt.l1.c r0 = r6.f41073i
            if (r0 == 0) goto L4a
            android.content.Context r0 = r6.f41066b
            com.smartdigimkt.m3.b r1 = r6.f41069e
            com.smartdigimkt.l3.a r2 = r6.f41067c
            boolean r3 = r6.f41092n
            if (r3 == 0) goto L44
            com.smartdigimkt.m1.s r4 = new com.smartdigimkt.m1.s
            r4.<init>(r0, r1, r2, r3)
            goto L4b
        L44:
            com.smartdigimkt.m1.o r4 = new com.smartdigimkt.m1.o
            r4.<init>(r0, r1, r2, r3)
            goto L4b
        L4a:
            r4 = 0
        L4b:
            r0 = 0
            if (r4 == 0) goto L74
            com.smartdigimkt.j1.g r1 = r6.f41068d
            if (r1 == 0) goto L74
            int r2 = r1.f41085h
            int r3 = r1.f41086i
            r4.f41751i = r2
            r4.f41752j = r3
            org.json.JSONArray r2 = r1.f41090m
            r4.f41753k = r2
            int r1 = r1.f41078a
            if (r1 != 0) goto L64
            r1 = 1
            goto L65
        L64:
            r1 = r0
        L65:
            r4.f41748f = r1
            com.smartdigimkt.v1.a3 r2 = r4.f41726r
            if (r2 == 0) goto L6e
            r2.setIsMuted(r1)
        L6e:
            com.smartdigimkt.j1.g r6 = r6.f41068d
            java.lang.String r6 = r6.f41091n
            r4.f41749g = r6
        L74:
            r5.f40112c = r4
            r5.f40113d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.e5.x.<init>(com.smartdigimkt.j1.i):void");
    }

    public final void a(String str, String str2, String str3, AdError adError) {
        a aVar = this.f40110a;
        aVar.f40076a = this.f40111b;
        a.a(aVar, str, str2, adError);
        com.smartdigimkt.j1.i iVar = this.f40111b;
        com.smartdigimkt.c5.w.a(iVar != null ? iVar.f41076l : null, str, str2, str3);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void destroy() {
        this.f40112c.f();
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final View generateShakeViewContainer() {
        return this.f40112c.b();
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getAdChoiceIconUrl() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41816g : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdImageHeight() {
        int i2;
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        if (kVar == null) {
            return 0;
        }
        synchronized (kVar) {
            i2 = kVar.f41789J;
        }
        return i2;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdImageWidth() {
        int i2;
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        if (kVar == null) {
            return 0;
        }
        synchronized (kVar) {
            i2 = kVar.f41788I;
        }
        return i2;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdType() {
        return this.f40112c.f41750h;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdVideoHeight() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        if (kVar != null) {
            return kVar.f41791L;
        }
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getAdVideoWidth() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        if (kVar != null) {
            return kVar.f41790K;
        }
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getAppName() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f42049j0 : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getAppVersion() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41828s : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getCallToAction() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41817h : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final ViewGroup getCustomAdContainer() {
        return this.f40112c.c();
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getDescription() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41812d : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getDownloadStatus() {
        com.smartdigimkt.m3.k kVar;
        com.smartdigimkt.m1.l lVar = this.f40112c;
        if (lVar.f41746d || (kVar = lVar.f41744b) == null) {
            return 0;
        }
        return kVar.f41787H;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getFunctionUrl() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41831v : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getIcon() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41814e : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final int getInteractionType() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        if (kVar != null) {
            return kVar.f41824o;
        }
        return 0;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getMainImageUrl() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41815f : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final View getMediaView(Context context, SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener) {
        View viewA = this.f40112c.a(context, new v(sDMNativeAdMediaViewListener));
        this.f40114e = new WeakReference(viewA);
        return viewA;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getPermissionUrl() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41830u : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getPrivacyUrl() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41829t : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getPublisher() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41827r : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public final SDMAd getSDMAd() {
        com.smartdigimkt.j1.i iVar = this.f40111b;
        if (iVar != null) {
            return new l(iVar);
        }
        return null;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final String getTitle() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        return kVar != null ? kVar.f41810c : "";
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final long getVideoCurrentPosition() {
        a3 a3Var = this.f40112c.f41726r;
        if (a3Var != null) {
            return a3Var.getVideoCurrentPosition();
        }
        return 0L;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final long getVideoDuration() {
        com.smartdigimkt.m3.k kVar = this.f40112c.f41744b;
        if (kVar == null) {
            return 0L;
        }
        long j2 = kVar.f41792M;
        return j2 > 0 ? j2 : kVar.f42044e0 * 1000;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final boolean isAdReady() {
        boolean z2;
        int i2;
        String str;
        int i3;
        String str2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.j1.i iVar = this.f40111b;
        if (iVar != null) {
            com.smartdigimkt.q3.a aVar = iVar.f41076l;
            String str3 = aVar != null ? aVar.f42748a : "";
            int iB = iVar.b();
            this.f40111b.getClass();
            boolean zA = com.smartdigimkt.j1.f.a(iB);
            if (iB == 1) {
                c0.a(this.f40111b, new SDMLossInfo(SDMLossInfo.LOSS_REASON.LOSS_TO_EXPIRE, 0.0d));
                this.f40112c.f();
            }
            i2 = iB;
            str = str3;
            z2 = zA;
        } else {
            z2 = false;
            i2 = 0;
            str = "";
        }
        com.smartdigimkt.y3.h.a(z2, str, this.f40111b, System.currentTimeMillis() - jCurrentTimeMillis, i2);
        com.smartdigimkt.j1.i iVar2 = this.f40111b;
        if (iVar2 != null) {
            com.smartdigimkt.l3.a aVar2 = iVar2.f41067c;
            str2 = aVar2 != null ? aVar2.f41627a : "";
            i3 = aVar2 != null ? aVar2.f41628b : 0;
        } else {
            i3 = 0;
            str2 = "";
        }
        if (z2) {
            com.smartdigimkt.c5.w.a(str2, com.smartdigimkt.c5.j.a(String.valueOf(i3)), "isready", String.valueOf(true), "");
            return z2;
        }
        com.smartdigimkt.c5.w.a(str2, com.smartdigimkt.c5.j.a(String.valueOf(i3)), "isready", String.valueOf(false), "");
        return z2;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final boolean isDownloadApp() {
        com.smartdigimkt.m1.l lVar = this.f40112c;
        com.smartdigimkt.m3.k kVar = lVar.f41744b;
        if (kVar != null) {
            return (TextUtils.isEmpty(kVar.f41827r) && TextUtils.isEmpty(lVar.f41744b.f42049j0) && TextUtils.isEmpty(lVar.f41744b.f41830u) && TextUtils.isEmpty(lVar.f41744b.f41829t) && TextUtils.isEmpty(lVar.f41744b.f41831v) && TextUtils.isEmpty(lVar.f41744b.f41828s)) ? false : true;
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final boolean isTemplateAd() {
        return this.f40112c.f41746d;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public final void notifyLoss(SDMLossInfo sDMLossInfo) {
        c0.a(this.f40111b, sDMLossInfo);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public final void notifyWin(SDMWinInfo sDMWinInfo) {
        c0.a(this.f40111b, sDMWinInfo);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void onPause() {
        a3 a3Var = this.f40112c.f41726r;
        if (a3Var != null) {
            a3Var.pauseVideo();
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void onResume() {
        a3 a3Var = this.f40112c.f41726r;
        if (a3Var != null) {
            a3Var.resumeVideo();
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void pauseVideo() {
        a3 a3Var = this.f40112c.f41726r;
        if (a3Var != null) {
            a3Var.pauseVideo();
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void registerAdView(View view, List list, List list2, FrameLayout.LayoutParams layoutParams, View view2) {
        com.smartdigimkt.m3.b bVar;
        if (!this.f40113d) {
            this.f40113d = true;
            com.smartdigimkt.j1.i iVar = this.f40111b;
            if (iVar != null) {
                iVar.c();
            }
            com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(13, this.f40111b.f41076l, -1L);
        }
        a3 a3Var = this.f40112c.f41726r;
        if (a3Var != null) {
            a3Var.resumeVideo();
        }
        this.f40112c.a(view, list, list2, layoutParams, view2);
        if (this.f40112c.f41746d || (bVar = this.f40111b.f41069e) == null || bVar.e() != 2 || this.f40111b.f41069e == null) {
            return;
        }
        WeakReference weakReference = this.f40114e;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        boolean z2 = (view3 == null || view3.getParent() == null) ? false : true;
        com.smartdigimkt.j1.i iVar2 = this.f40111b;
        com.smartdigimkt.q3.a aVar = iVar2.f41076l;
        com.smartdigimkt.m3.b bVar2 = iVar2.f41069e;
        String str = bVar2.f42054o0;
        String str2 = bVar2.f41806a;
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004710";
        cVar.a(aVar);
        cVar.f42828l = String.valueOf(aVar.f42737P);
        cVar.f42829m = aVar.f42738Q;
        cVar.f42830n = str;
        cVar.f42831o = str2;
        cVar.f42832p = z2 ? "1" : "2";
        com.smartdigimkt.y3.h.a(cVar);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void resumeVideo() {
        a3 a3Var = this.f40112c.f41726r;
        if (a3Var != null) {
            a3Var.resumeVideo();
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void setAutoPlay(String str) {
        this.f40112c.f41749g = str;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void setListener(SDMNativeAdListener sDMNativeAdListener) {
        w wVar = new w(this, sDMNativeAdListener);
        this.f40112c.f41747e = new com.smartdigimkt.p1.r(this.f40111b, wVar);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void setMute(boolean z2) {
        com.smartdigimkt.m1.l lVar = this.f40112c;
        lVar.f41748f = z2;
        a3 a3Var = lVar.f41726r;
        if (a3Var != null) {
            a3Var.setIsMuted(z2);
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAd
    public final void unregisterView() {
        com.smartdigimkt.a4.c cVar = this.f40112c.f41731w;
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
