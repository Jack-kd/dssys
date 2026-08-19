package com.anythink.banner.a;

import android.content.Context;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.n;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.b.e;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class b implements CustomBannerEventListener {

    /* renamed from: a, reason: collision with root package name */
    WeakReference<d> f1337a;

    /* renamed from: b, reason: collision with root package name */
    CustomBannerAdapter f1338b;

    /* renamed from: c, reason: collision with root package name */
    boolean f1339c;

    public b(d dVar, CustomBannerAdapter customBannerAdapter, boolean z2) {
        this.f1339c = false;
        this.f1337a = new WeakReference<>(dVar);
        this.f1338b = customBannerAdapter;
        this.f1339c = z2;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onBannerAdClicked() {
        final CustomBannerAdapter customBannerAdapter = this.f1338b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(e.ak, new Runnable() { // from class: com.anythink.banner.a.b.3
            @Override // java.lang.Runnable
            public final void run() {
                CustomBannerAdapter customBannerAdapter2 = customBannerAdapter;
                if (customBannerAdapter2 != null) {
                    n trackingInfo = customBannerAdapter2.getTrackingInfo();
                    ah.c(trackingInfo, customBannerAdapter);
                    com.anythink.core.common.u.e.a(s.b().g());
                    com.anythink.core.common.u.e.a(6, trackingInfo);
                    if (trackingInfo != null ? trackingInfo.aB() : false) {
                        return;
                    }
                    com.anythink.core.common.v.c.a().b(customBannerAdapter);
                    aa.a(trackingInfo, i.s.f2724d, i.s.f2733m, "");
                    d dVar = b.this.f1337a.get();
                    if (dVar != null) {
                        dVar.onBannerClicked(customBannerAdapter);
                    }
                }
            }
        }));
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onBannerAdClose() {
        final CustomBannerAdapter customBannerAdapter = this.f1338b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(e.al, new Runnable() { // from class: com.anythink.banner.a.b.1
            @Override // java.lang.Runnable
            public final void run() {
                if (customBannerAdapter != null) {
                    com.anythink.core.common.v.c.a().c(customBannerAdapter);
                    d dVar = b.this.f1337a.get();
                    if (dVar != null) {
                        dVar.onBannerClose(customBannerAdapter);
                    }
                    n trackingInfo = customBannerAdapter.getTrackingInfo();
                    aa.a(trackingInfo, i.s.f2725e, i.s.f2733m, "");
                    if (trackingInfo != null) {
                        f.a(trackingInfo, false);
                    }
                }
                s.b().ai();
            }
        }));
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onBannerAdShow() {
        final CustomBannerAdapter customBannerAdapter = this.f1338b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(e.am, new Runnable() { // from class: com.anythink.banner.a.b.2
            @Override // java.lang.Runnable
            public final void run() {
                if (customBannerAdapter != null) {
                    com.anythink.core.common.v.c.a().a(customBannerAdapter);
                    d dVar = b.this.f1337a.get();
                    if (dVar != null) {
                        dVar.onBannerShow(customBannerAdapter, b.this.f1339c);
                    }
                    n trackingInfo = customBannerAdapter.getTrackingInfo();
                    trackingInfo.a(customBannerAdapter.getInternalNetworkInfoMap());
                    aa.a(trackingInfo, i.s.f2723c, i.s.f2733m, "");
                    ah.b(trackingInfo, customBannerAdapter);
                    com.anythink.core.common.u.e.a(s.b().g());
                    com.anythink.core.common.u.e.a(4, trackingInfo, customBannerAdapter.getUnitGroupInfo());
                }
            }
        }));
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onDeeplinkCallback(final boolean z2) {
        final CustomBannerAdapter customBannerAdapter = this.f1338b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(e.an, new Runnable() { // from class: com.anythink.banner.a.b.4
            @Override // java.lang.Runnable
            public final void run() {
                d dVar = b.this.f1337a.get();
                if (dVar != null) {
                    dVar.onDeeplinkCallback(customBannerAdapter, z2);
                }
                CustomBannerAdapter customBannerAdapter2 = customBannerAdapter;
                if (customBannerAdapter2 != null) {
                    aa.a(customBannerAdapter2.getTrackingInfo(), i.s.f2730j, z2 ? i.s.f2733m : i.s.f2734n, "");
                }
            }
        }));
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onDownloadConfirm(final Context context, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        final CustomBannerAdapter customBannerAdapter = this.f1338b;
        com.anythink.core.common.v.b.c.a().f(new com.anythink.core.common.v.b.d(e.ao, new Runnable() { // from class: com.anythink.banner.a.b.5
            @Override // java.lang.Runnable
            public final void run() {
                d dVar = b.this.f1337a.get();
                if (dVar != null) {
                    dVar.onDownloadConfirm(context, customBannerAdapter, aTNetworkConfirmInfo);
                }
                CustomBannerAdapter customBannerAdapter2 = customBannerAdapter;
                if (customBannerAdapter2 != null) {
                    aa.a(customBannerAdapter2.getTrackingInfo(), i.s.f2731k, i.s.f2733m, "");
                }
            }
        }));
    }
}
