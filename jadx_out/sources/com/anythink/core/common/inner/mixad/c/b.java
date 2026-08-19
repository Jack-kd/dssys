package com.anythink.core.common.inner.mixad.c;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATNativeAdInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.d.h;
import com.anythink.core.common.d.k;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.e.b;
import com.anythink.core.common.inner.e.e;
import com.anythink.core.common.inner.mixad.c.a.a;
import com.anythink.core.common.inner.ui.BaseATActivity;
import com.anythink.core.common.inner.ui.BaseMediaATView;
import com.anythink.core.common.inner.ui.CloseShadeView;
import com.anythink.core.common.inner.ui.thirdparty.ThirdPartyBannerATView;
import com.anythink.core.common.inner.ui.thirdparty.ThirdPartyNativeTemplateView;
import com.anythink.core.common.inner.ui.thirdparty.ThirdPartySplashATView;
import com.anythink.core.common.l.e.a.a;
import com.anythink.core.common.l.e.a.g;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class b implements com.anythink.core.common.l.e.a.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f4723a = "b";

    /* renamed from: b, reason: collision with root package name */
    private com.anythink.core.common.inner.mixad.c.a.a f4724b;

    /* renamed from: com.anythink.core.common.inner.mixad.c.b$2, reason: invalid class name */
    public class AnonymousClass2 extends com.anythink.core.common.inner.e.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.l.e.a.b f4728a;

        public AnonymousClass2(com.anythink.core.common.l.e.a.b bVar) {
            this.f4728a = bVar;
        }

        @Override // com.anythink.core.common.inner.e.c, com.anythink.core.common.inner.e.a
        public final void a(com.anythink.core.common.inner.b.a aVar) {
            com.anythink.core.common.l.e.a.b bVar = this.f4728a;
            if (bVar != null) {
                if (aVar != null) {
                    bVar.onVideoError(aVar.a(), aVar.b());
                } else {
                    bVar.onVideoError("", "");
                }
            }
        }

        @Override // com.anythink.core.common.inner.e.c, com.anythink.core.common.inner.e.a
        public final void b() {
            com.anythink.core.common.l.e.a.b bVar = this.f4728a;
            if (bVar != null) {
                bVar.onClose();
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.mixad.c.b$3, reason: invalid class name */
    public class AnonymousClass3 extends h {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean[] f4730a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.l.e.a.b f4731b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ThirdPartySplashATView f4732c;

        public AnonymousClass3(boolean[] zArr, com.anythink.core.common.l.e.a.b bVar, ThirdPartySplashATView thirdPartySplashATView) {
            this.f4730a = zArr;
            this.f4731b = bVar;
            this.f4732c = thirdPartySplashATView;
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onAdClicked(View view) {
            if (this.f4731b != null) {
                CloseShadeView closeShadeView = this.f4732c.getCloseShadeView();
                if (closeShadeView != null) {
                    if (closeShadeView.isTouch()) {
                        com.anythink.core.common.l.e.a.b bVar = this.f4731b;
                        if (bVar instanceof com.anythink.core.common.l.e.a) {
                            ((com.anythink.core.common.l.e.a) bVar).setClickType(com.anythink.core.common.inner.mixad.f.b.f4763h);
                        }
                    }
                    closeShadeView.setVisibility(8);
                }
                this.f4731b.onAdClicked(null);
            }
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onAdImpressed() {
            boolean[] zArr = this.f4730a;
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            com.anythink.core.common.l.e.a.b bVar = this.f4731b;
            if (bVar != null) {
                bVar.onAdImpressed();
            }
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onAdVideoStart() {
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onDeeplinkCallback(boolean z2) {
            com.anythink.core.common.l.e.a.b bVar = this.f4731b;
            if (bVar != null) {
                bVar.onDeeplinkCallback(z2);
            }
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            com.anythink.core.common.l.e.a.b bVar = this.f4731b;
            if (bVar != null) {
                bVar.onDownloadConfirmCallback(context, view, aTNetworkConfirmInfo);
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.mixad.c.b$4, reason: invalid class name */
    public class AnonymousClass4 extends com.anythink.core.common.inner.e.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.l.e.a.b f4734a;

        public AnonymousClass4(com.anythink.core.common.l.e.a.b bVar) {
            this.f4734a = bVar;
        }

        @Override // com.anythink.core.common.inner.e.c, com.anythink.core.common.inner.e.a
        public final void b() {
            com.anythink.core.common.l.e.a.b bVar = this.f4734a;
            if (bVar != null) {
                bVar.onClose();
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.mixad.c.b$5, reason: invalid class name */
    public class AnonymousClass5 extends h {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean[] f4736a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.l.e.a.b f4737b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ThirdPartyBannerATView f4738c;

        public AnonymousClass5(boolean[] zArr, com.anythink.core.common.l.e.a.b bVar, ThirdPartyBannerATView thirdPartyBannerATView) {
            this.f4736a = zArr;
            this.f4737b = bVar;
            this.f4738c = thirdPartyBannerATView;
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onAdClicked(View view) {
            com.anythink.core.common.l.e.a.b bVar = this.f4737b;
            if (bVar != null) {
                if (bVar instanceof com.anythink.core.common.l.e.a) {
                    ((com.anythink.core.common.l.e.a) bVar).setClickedArea(this.f4738c.getClickedArea());
                }
                this.f4737b.onAdClicked(null);
            }
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onAdDislikeButtonClick() {
            super.onAdDislikeButtonClick();
            com.anythink.core.common.l.e.a.b bVar = this.f4737b;
            if (bVar != null) {
                bVar.onClose();
            }
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onAdImpressed() {
            boolean[] zArr = this.f4736a;
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            com.anythink.core.common.l.e.a.b bVar = this.f4737b;
            if (bVar != null) {
                bVar.onAdImpressed();
            }
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onDeeplinkCallback(boolean z2) {
            com.anythink.core.common.l.e.a.b bVar = this.f4737b;
            if (bVar != null) {
                bVar.onDeeplinkCallback(z2);
            }
        }

        @Override // com.anythink.core.common.d.h, com.anythink.core.common.d.n
        public final void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            com.anythink.core.common.l.e.a.b bVar = this.f4737b;
            if (bVar != null) {
                bVar.onDownloadConfirmCallback(context, view, aTNetworkConfirmInfo);
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.mixad.c.b$6, reason: invalid class name */
    public class AnonymousClass6 implements BaseMediaATView.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.l.e.a.b f4740a;

        public AnonymousClass6(com.anythink.core.common.l.e.a.b bVar) {
            this.f4740a = bVar;
        }

        @Override // com.anythink.core.common.inner.ui.BaseMediaATView.a
        public final void a() {
            com.anythink.core.common.l.e.a.b bVar = this.f4740a;
            if (bVar != null) {
                bVar.onAdDislikeButtonClick();
            }
        }
    }

    public b(com.anythink.core.common.inner.mixad.c.a.a aVar) {
        this.f4724b = aVar;
    }

    private static ATNativeAdInfo a(ATNativeAdCustomRender aTNativeAdCustomRender, BaseAd baseAd) {
        c cVar = new c(baseAd);
        cVar.a(new a(baseAd));
        cVar.a(aTNativeAdCustomRender);
        return cVar;
    }

    private com.anythink.core.common.l.e.a.c b(com.anythink.core.common.inner.mixad.c.a.a aVar, BaseAd baseAd, Context context, x xVar, w<?> wVar) {
        if (aVar == null) {
            return null;
        }
        ThirdPartyNativeTemplateView thirdPartyNativeTemplateView = new ThirdPartyNativeTemplateView(context, wVar, xVar, true, new AnonymousClass6(aVar.h()), baseAd);
        thirdPartyNativeTemplateView.init(aVar.k(), aVar.l(), xVar.f4500t.M());
        int mediaViewWidth = thirdPartyNativeTemplateView.getMediaViewWidth();
        int mediaViewHeight = thirdPartyNativeTemplateView.getMediaViewHeight();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
        if (mediaViewWidth > 0) {
            layoutParams.width = mediaViewWidth;
        }
        if (mediaViewHeight > 0) {
            layoutParams.height = mediaViewHeight;
        }
        thirdPartyNativeTemplateView.setLayoutParams(layoutParams);
        return thirdPartyNativeTemplateView;
    }

    public b(com.anythink.core.common.l.d.a aVar) {
        if (aVar == null) {
            return;
        }
        BaseAd baseAdB = aVar.b();
        if (baseAdB instanceof com.anythink.core.common.l.g.d) {
            Context contextA = aVar.a();
            ATNativeAdCustomRender aTNativeAdCustomRenderC = aVar.c();
            com.anythink.core.common.l.g.d dVar = (com.anythink.core.common.l.g.d) baseAdB;
            com.anythink.core.common.inner.mixad.e.a aVar2 = new com.anythink.core.common.inner.mixad.e.a(dVar);
            com.anythink.core.common.inner.mixad.e.b bVar = new com.anythink.core.common.inner.mixad.e.b(dVar, aVar.g(), aVar.e());
            a.C0056a c0056aA = new a.C0056a().a(contextA);
            c cVar = new c(baseAdB);
            cVar.a(new a(baseAdB));
            cVar.a(aTNativeAdCustomRenderC);
            this.f4724b = c0056aA.a(cVar).a(aVar2).a(bVar).b(aVar.h()).a(aVar.d()).b(aVar.j()).c(aVar.k()).a();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0154  */
    @Override // com.anythink.core.common.l.e.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.anythink.core.common.l.e.a.c a() {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.mixad.c.b.a():com.anythink.core.common.l.e.a.c");
    }

    @Override // com.anythink.core.common.l.e.a.a
    public final void a(Activity activity, com.anythink.core.basead.b.c cVar, a.InterfaceC0064a interfaceC0064a) {
        com.anythink.core.common.inner.mixad.c.a.a aVar;
        View mediationViewFromNativeAd;
        if (activity == null || cVar == null || (aVar = this.f4724b) == null) {
            return;
        }
        cVar.f1635c = aVar.c();
        cVar.f1640h = this.f4724b.b();
        final String str = cVar.f1636d;
        final com.anythink.core.common.l.e.a.b bVarH = this.f4724b.h();
        com.anythink.core.common.inner.e.b.a().a(str, new b.AbstractC0055b() { // from class: com.anythink.core.common.inner.mixad.c.b.1
            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void a(e eVar) {
                com.anythink.core.common.l.e.a.b bVar = bVarH;
                if (bVar != null) {
                    bVar.onAdImpressed();
                }
            }

            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void b() {
                com.anythink.core.common.l.e.a.b bVar = bVarH;
                if (bVar != null) {
                    bVar.onAdVideoEnd();
                }
            }

            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void c() {
            }

            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void d() {
                com.anythink.core.common.inner.e.b.a().b(str);
                com.anythink.core.common.l.e.a.b bVar = bVarH;
                if (bVar != null) {
                    bVar.onClose();
                }
            }

            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void a(com.anythink.core.common.inner.b.a aVar2) {
                com.anythink.core.common.l.e.a.b bVar = bVarH;
                if (bVar != null) {
                    if (aVar2 != null) {
                        bVar.onVideoError(aVar2.a(), aVar2.b());
                    } else {
                        bVar.onVideoError("", "");
                    }
                }
            }

            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void b(e eVar) {
                com.anythink.core.common.l.e.a.b bVar = bVarH;
                if ((bVar instanceof com.anythink.core.common.l.e.a) && eVar != null) {
                    ((com.anythink.core.common.l.e.a) bVar).setClickedArea(eVar.f4676b);
                    ((com.anythink.core.common.l.e.a) bVarH).setClickType(eVar.f4675a);
                }
                com.anythink.core.common.l.e.a.b bVar2 = bVarH;
                if (bVar2 != null) {
                    bVar2.onAdClicked(null);
                }
            }

            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void a() {
                com.anythink.core.common.l.e.a.b bVar = bVarH;
                if (bVar != null) {
                    bVar.onAdVideoStart();
                }
            }

            @Override // com.anythink.core.common.inner.e.b.AbstractC0055b
            public final void a(boolean z2) {
                com.anythink.core.common.l.e.a.b bVar = bVarH;
                if (bVar != null) {
                    bVar.onDeeplinkCallback(z2);
                }
            }
        });
        com.anythink.core.common.inner.mixad.a.a().a(str, interfaceC0064a);
        com.anythink.core.common.inner.mixad.a.a().a(str, this.f4724b);
        com.anythink.core.common.inner.mixad.c.a.a aVar2 = this.f4724b;
        if (aVar2 != null) {
            y yVar = aVar2.b().f4500t;
            if ((yVar instanceof com.anythink.core.common.inner.mixad.e.c) && !((com.anythink.core.common.inner.mixad.e.c) yVar).ae()) {
                ATNativeAdInfo aTNativeAdInfoA = aVar2.a();
                if (aTNativeAdInfoA instanceof g) {
                    g gVar = (g) aTNativeAdInfoA;
                    BaseAd baseAdA = gVar.a();
                    ATNativeAdCustomRender aTNativeAdCustomRenderD = gVar.d();
                    if (aTNativeAdCustomRenderD != null && (mediationViewFromNativeAd = aTNativeAdCustomRenderD.getMediationViewFromNativeAd(aTNativeAdInfoA, k.a(baseAdA, gVar.b()))) != null) {
                        aVar2.a(mediationViewFromNativeAd);
                        cVar.f1642j = true;
                    }
                }
            }
        }
        BaseATActivity.a(activity, cVar);
    }

    private static int a(Context context, String str) {
        str.getClass();
        switch (str) {
            case "2":
                return p.a(context, 50.0f);
            case "3":
            case "4":
                return p.a(context, 148.0f);
            default:
                return 0;
        }
    }

    private com.anythink.core.common.l.e.a.c a(com.anythink.core.common.inner.mixad.c.a.a aVar, BaseAd baseAd, Context context, x xVar, w wVar, com.anythink.core.common.l.a aVar2) {
        if (aVar == null) {
            return null;
        }
        com.anythink.core.common.l.e.a.b bVarH = aVar.h();
        ThirdPartySplashATView thirdPartySplashATView = new ThirdPartySplashATView(context, xVar, wVar, new AnonymousClass2(bVarH), "", baseAd, aVar2);
        baseAd.setNativeEventListener(new AnonymousClass3(new boolean[]{false}, bVarH, thirdPartySplashATView));
        thirdPartySplashATView.setDontCountDown(aVar.g());
        return thirdPartySplashATView;
    }

    private com.anythink.core.common.l.e.a.c a(com.anythink.core.common.inner.mixad.c.a.a aVar, BaseAd baseAd, Context context, x xVar, w<?> wVar) {
        if (aVar == null) {
            return null;
        }
        com.anythink.core.common.l.e.a.b bVarH = aVar.h();
        ThirdPartyBannerATView thirdPartyBannerATView = new ThirdPartyBannerATView(context, baseAd, xVar, wVar, new AnonymousClass4(bVarH));
        baseAd.setNativeEventListener(new AnonymousClass5(new boolean[]{false}, bVarH, thirdPartyBannerATView));
        return thirdPartyBannerATView;
    }

    private static boolean a(com.anythink.core.common.inner.mixad.c.a.a aVar) {
        View mediationViewFromNativeAd;
        if (aVar == null) {
            return false;
        }
        y yVar = aVar.b().f4500t;
        if ((yVar instanceof com.anythink.core.common.inner.mixad.e.c) && !((com.anythink.core.common.inner.mixad.e.c) yVar).ae()) {
            ATNativeAdInfo aTNativeAdInfoA = aVar.a();
            if (aTNativeAdInfoA instanceof g) {
                g gVar = (g) aTNativeAdInfoA;
                BaseAd baseAdA = gVar.a();
                ATNativeAdCustomRender aTNativeAdCustomRenderD = gVar.d();
                if (aTNativeAdCustomRenderD != null && (mediationViewFromNativeAd = aTNativeAdCustomRenderD.getMediationViewFromNativeAd(aTNativeAdInfoA, k.a(baseAdA, gVar.b()))) != null) {
                    aVar.a(mediationViewFromNativeAd);
                    return true;
                }
            }
        }
        return false;
    }
}
