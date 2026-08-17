package com.fl.saas;

import android.content.Context;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bidding.BiddingResult;
import com.fl.saas.adx.base.bidding.C2SBiddingECPM;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.innterNative.BaseNativeAd;
import com.fl.saas.adx.base.interfaces.AdChangeCacheData;
import com.fl.saas.adx.base.interfaces.AdGetWinInfo;
import com.fl.saas.adx.base.interfaces.AdMaterial;
import com.fl.saas.adx.base.interfaces.AdValid;
import com.fl.saas.adx.base.interfaces.MixNativeCycleDataListener;
import com.fl.saas.adx.base.manager.MixNativeManager;
import com.fl.saas.adx.base.widget.WinAdInfo;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.List;

/* renamed from: com.fl.saas.f, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1176f extends AbstractC1200n implements NativeLoadListener, BiddingResult, AdValid, AdMaterial, AdChangeCacheData, AdGetWinInfo, MixNativeCycleDataListener {

    /* renamed from: a, reason: collision with root package name */
    private final String f30377a = CommConstant.getObjTag(this);

    /* renamed from: b, reason: collision with root package name */
    private final InterfaceC1189j0 f30378b;

    /* renamed from: c, reason: collision with root package name */
    private B f30379c;

    /* renamed from: d, reason: collision with root package name */
    private B f30380d;

    /* renamed from: e, reason: collision with root package name */
    private NativeAd f30381e;

    /* renamed from: f, reason: collision with root package name */
    private MixNativeManager.OnNativeReleaseListener f30382f;

    /* renamed from: com.fl.saas.f$a */
    public class a implements D0 {
        public a() {
        }

        @Override // com.fl.saas.D0
        public void onClickedEvent() {
            C1176f.this.onClickedEvent();
        }

        @Override // com.fl.saas.D0
        public void onShowEvent() {
            C1176f.this.onShowEvent();
        }

        @Override // com.fl.saas.D0
        public void reportRequestShow() {
            C1176f.this.reportRequestShow();
        }
    }

    /* renamed from: com.fl.saas.f$b */
    public class b implements BaseNativeAd.AdInfoMapper {
        public b() {
        }

        @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
        public AdInfo getAdInfo() {
            return AdInfo.create(C1176f.this.getAdSource().f30532p, C1176f.this.getAdSource().f30535q, C1176f.this.getAdSource().f30514j, C1176f.this.getAdSource().f30517k);
        }

        @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.AdInfoMapper
        public C1188j getSource() {
            return C1176f.this.getAdSource();
        }
    }

    public C1176f(InterfaceC1189j0 interfaceC1189j0) {
        this.f30378b = interfaceC1189j0;
        interfaceC1189j0.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer a(NativeAd nativeAd) {
        return Integer.valueOf(C2SBiddingECPM.getC2SBiddingECPM(nativeAd, this.f30378b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int c() {
        if (canUseEcpm()) {
            return getAdSource().g();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        onAdFailed(FLError.create(ErrorCodeConstant.NULL_ERROR, "showAd but mNativeAd is null"));
    }

    public InterfaceC1189j0 b() {
        return this.f30378b;
    }

    @Override // com.fl.saas.adx.base.bidding.BiddingResult
    public void biddingResult(boolean z2, int i2, int i3, int i4) {
        Object obj = this.f30381e;
        BiddingResult biddingResult = ((obj == null || !(obj instanceof BiddingResult)) && ((obj = this.f30378b) == null || !(obj instanceof BiddingResult))) ? null : (BiddingResult) obj;
        if (biddingResult != null) {
            biddingResult.biddingResult(z2, i2, i3, i4);
        }
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        super.destroy();
        if (isCache()) {
            return;
        }
        NativeAd nativeAd = this.f30381e;
        if (nativeAd != null) {
            nativeAd.release();
        }
        this.f30379c = null;
        this.f30378b.destroy();
    }

    @Override // com.fl.saas.adx.base.interfaces.AdMaterial
    public AdMaterial.AdMaterialData getAdMaterialData() {
        NativeAd nativeAd = this.f30381e;
        if (nativeAd == null || !(nativeAd instanceof AdMaterial)) {
            return null;
        }
        return ((AdMaterial) nativeAd).getAdMaterialData();
    }

    @Override // com.fl.saas.adx.base.interfaces.MixNativeCycleDataListener
    public NativeAd getCycleNativeAd() {
        return this.f30381e;
    }

    @Override // com.fl.saas.adx.base.interfaces.AdGetWinInfo
    public WinAdInfo getWinAdInfo() {
        try {
            NativeAd nativeAd = this.f30381e;
            if (nativeAd == null || nativeAd.getAdMaterial() == null) {
                return null;
            }
            WinAdInfo winAdInfo = new WinAdInfo();
            if (this.f30381e.getAdMaterial().getAdAppInfo() != null) {
                winAdInfo.setAdUserName(this.f30381e.getAdMaterial().getAdAppInfo().getAppName());
            }
            winAdInfo.setPosId(getAdSource().f30502f);
            winAdInfo.setTitle(this.f30381e.getAdMaterial().getTitle());
            return winAdInfo;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    @Override // com.fl.saas.AbstractC1200n
    public void handle(Context context) {
        this.f30378b.setContext(context);
        this.f30378b.a(context);
    }

    @Override // com.fl.saas.adx.base.interfaces.AdValid
    public boolean isValid() {
        NativeAd nativeAd = this.f30381e;
        if (nativeAd == null) {
            return false;
        }
        if (nativeAd instanceof AdValid) {
            return ((AdValid) nativeAd).isValid();
        }
        return true;
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.interfaces.AdViewListener
    public void onAdFailed(FLError fLError) {
        LogcatUtil.d(this.f30377a, "onAdFailed: " + fLError);
        disposeError(fLError);
        B b3 = this.f30380d;
        if (b3 != null) {
            b3.a(fLError);
        }
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeLoadListener
    public void onNativeAdLoaded(final NativeAd nativeAd) {
        try {
            setAdSource(this.f30378b.getAdSource());
            bindC2SBidECPM(new InterfaceC1164b1() { // from class: com.fl.saas.j2
                @Override // com.fl.saas.InterfaceC1164b1
                public final Object a() {
                    return this.f30592a.a(nativeAd);
                }
            });
            this.f30381e = nativeAd;
            if (nativeAd instanceof BaseNativeAd) {
                nativeAd.setOnNativeReleaseListener(this.f30382f);
                ((BaseNativeAd) nativeAd).setReportEventListener(new a());
                ((BaseNativeAd) nativeAd).setEcpmMapper(new BaseNativeAd.EcpmMapper() { // from class: com.fl.saas.k2
                    @Override // com.fl.saas.adx.base.innterNative.BaseNativeAd.EcpmMapper
                    public final int getECPM() {
                        return this.f30606a.c();
                    }
                });
                ((BaseNativeAd) nativeAd).setAdInfoMapper(new b());
            }
            onLoadedEvent();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void setCache() {
        super.setCache();
        this.f30378b.setCache();
    }

    @Override // com.fl.saas.adx.base.interfaces.AdChangeCacheData
    public void setCacheData(String str, C1188j c1188j) {
        NativeAd nativeAd = this.f30381e;
        if (nativeAd instanceof AdChangeCacheData) {
            ((AdChangeCacheData) nativeAd).setCacheData(str, c1188j);
        }
    }

    @Override // com.fl.saas.adx.base.interfaces.MixNativeCycleDataListener
    public void setCycleNativeAd(List list, int i2) {
        NativeAd nativeAd = this.f30381e;
        if (nativeAd instanceof MixNativeCycleDataListener) {
            ((MixNativeCycleDataListener) nativeAd).setCycleNativeAd(list, i2);
        }
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void showAd() {
        super.showAd();
        this.f30378b.clearCache();
        NativeAd nativeAd = this.f30381e;
        if (nativeAd == null || !nativeAd.isNativeExpress() || this.f30381e.getAdMaterial() == null || this.f30381e.getAdMaterial().getAdMediaView() != null) {
            C1207p0.b(this.f30381e).a(new B() { // from class: com.fl.saas.m2
                @Override // com.fl.saas.B
                public final void a(Object obj) {
                    this.f30613a.b((NativeAd) obj);
                }
            }, new Runnable() { // from class: com.fl.saas.n2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30615b.d();
                }
            });
        } else {
            onAdFailed(FLError.create(ErrorCodeConstant.NULL_ERROR, "联盟返回了模版广告，但是广告view为null"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final NativeAd nativeAd) {
        C1207p0.b(this.f30379c).a(new B() { // from class: com.fl.saas.l2
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((B) obj).a(nativeAd);
            }
        });
    }

    public C1176f a(B b3) {
        this.f30380d = b3;
        return this;
    }

    public C1176f b(B b3) {
        this.f30379c = b3;
        return this;
    }

    public void a(MixNativeManager.OnNativeReleaseListener onNativeReleaseListener) {
        this.f30382f = onNativeReleaseListener;
    }
}
