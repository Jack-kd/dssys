package com.fl.saas;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import com.fl.saas.C1188j;
import com.fl.saas.adx.api.mixNative.NativeAdAppInfo;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.base.bean.MaterialBean;
import com.fl.saas.adx.base.bean.Size;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.innterNative.AdAppInfo;
import com.fl.saas.adx.base.innterNative.NativeStyle;
import com.fl.saas.adx.util.Check;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class J0 extends AbstractC1192k0 {

    /* renamed from: m, reason: collision with root package name */
    private static final String f29952m = CommConstant.getClassTag("S2S", J0.class);

    /* renamed from: l, reason: collision with root package name */
    private K0 f29953l;

    public class a implements InterfaceC1201n0 {
        public a() {
        }

        @Override // com.fl.saas.InterfaceC1201n0
        public void onAdFailed(FLError fLError) {
            J0.this.onAdFailed(fLError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(C1188j c1188j) {
            if (J0.this.f29953l == null) {
                J0.this.onAdFailed(new FLError(ErrorCodeConstant.NETWORK_ERROR, "onLoadFailed, native is empty"));
                return;
            }
            if (J0.this.b() != NativeStyle.EXPRESS || !J0.this.a().isMixNative()) {
                J0 j02 = J0.this;
                j02.onNativeAdLoaded(j02.f29953l);
            } else {
                int iDip2px = DeviceUtil.dip2px(J0.this.a().getExpressWidth());
                int iDip2px2 = DeviceUtil.dip2px(J0.this.a().getExpressHeight());
                J0 j03 = J0.this;
                j03.onNativeAdLoaded(new L0(j03.c(), J0.this.f29953l, iDip2px, iDip2px2).a(c1188j.f30428H));
            }
        }

        @Override // com.fl.saas.InterfaceC1201n0
        public void a(List list) {
            final C1188j c1188j = (C1188j) Check.findFirstNonNull(list);
            if (c1188j == null) {
                J0.this.onAdFailed(FLError.create(ErrorCodeConstant.AD_DATA_ERROR, "onNativeAdReceived but pojoList is empty"));
                return;
            }
            c1188j.f30515j0 = J0.this.f();
            J0.this.a(c1188j);
            J0.this.f29953l = new K0(J0.this.c(), c1188j, new G0() { // from class: com.fl.saas.m1
                @Override // com.fl.saas.G0
                public final void a() {
                    this.f30611a.a(c1188j);
                }
            });
            J0.this.f29953l.c();
        }
    }

    public class b implements NativeMaterial {

        /* renamed from: a, reason: collision with root package name */
        private List f29955a;

        /* renamed from: b, reason: collision with root package name */
        Bitmap f29956b;

        /* renamed from: c, reason: collision with root package name */
        Bitmap f29957c;

        /* renamed from: d, reason: collision with root package name */
        private NativeAdAppInfo f29958d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ C1188j f29959e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f29960f;

        public class a extends AdAppInfo {
            public a() {
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
            public String getAppName() {
                return b.this.f29959e.f30414C0;
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
            public String getAppPermissionUrl() {
                return b.this.f29959e.f30426G0;
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
            public String getAppPrivacyUrl() {
                return b.this.f29959e.f30429H0;
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
            public String getAppVersion() {
                return b.this.f29959e.f30420E0;
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
            public String getFunctionUrl() {
                return b.this.f29959e.f30435J0;
            }

            @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
            public String getPublisher() {
                return b.this.f29959e.f30417D0;
            }
        }

        public b(C1188j c1188j, View view) {
            this.f29959e = c1188j;
            this.f29960f = view;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public NativeAdAppInfo getAdAppInfo() {
            if (this.f29958d == null) {
                this.f29958d = new a();
            }
            return this.f29958d;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public Bitmap getAdLogo() {
            if (this.f29956b == null) {
                try {
                    C1188j c1188j = this.f29959e;
                    this.f29956b = (c1188j.f30485a == 0 || "广告".equals(c1188j.f30559y)) ? AbstractC1156a0.a(DeviceUtil.getContext(), R.mipmap.fl_adx_icon_logo) : AbstractC1156a0.a(this.f29959e.f30559y);
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
            return this.f29956b;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public Bitmap getAdLogoBitmap() {
            if (this.f29957c == null) {
                try {
                    C1188j c1188j = this.f29959e;
                    this.f29957c = (c1188j.f30485a == 0 || "广告".equals(c1188j.f30559y)) ? AbstractC1156a0.a(DeviceUtil.getContext(), R.mipmap.fl_adx_icon_no_text_logo) : AbstractC1156a0.a(this.f29959e.f30559y);
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
            return this.f29957c;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public String getAdLogoUrl() {
            return null;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public View getAdMediaView() {
            return this.f29960f;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public int getAdType() {
            int i2 = this.f29959e.f30453P0.f30574b;
            if (i2 != 1) {
                if (i2 == 2) {
                    return 3;
                }
                if (i2 != 3) {
                    return 0;
                }
            }
            return 1;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public String getCallToAction() {
            return TextUtils.equals("1", this.f29959e.f30554w0) ? "开始下载" : "查看详情";
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public String getDescription() {
            return this.f29959e.f30543s1;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public String getIconUrl() {
            return this.f29959e.f30558x1;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public List getImageUrlList() {
            if (this.f29955a == null) {
                ArrayList arrayList = new ArrayList();
                this.f29955a = arrayList;
                arrayList.add(this.f29959e.f30534p1);
            }
            return this.f29955a;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public String getMainImageUrl() {
            return this.f29959e.f30534p1;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public MaterialBean getMaterial() {
            MaterialBean materialBean = new MaterialBean();
            C1188j c1188j = this.f29959e;
            if (c1188j != null && c1188j.x2 == 1) {
                materialBean.setId(c1188j.f30562z);
                materialBean.setPlaceId(this.f29959e.f30511i);
                materialBean.setTitle(this.f29959e.f30530o0);
                materialBean.setDes(this.f29959e.f30543s1);
                materialBean.setImgUrl(this.f29959e.f30534p1);
                materialBean.setDeepLinkUrl(this.f29959e.f30560y0);
                materialBean.setLandPageUrl(this.f29959e.f30557x0);
                materialBean.setDownloadUrl(this.f29959e.f30563z0);
            }
            return materialBean;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public Size getSize() {
            C1188j.e eVar;
            C1188j c1188j = this.f29959e;
            C1188j.c cVar = c1188j.f30453P0;
            return (cVar.f30574b != 2 || (eVar = cVar.f30579g) == null) ? new Size(c1188j.f30552v1, c1188j.f30555w1) : new Size(eVar.f30586b, eVar.f30587c);
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public String getTitle() {
            return this.f29959e.f30530o0;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public double getVideoDuration() {
            return this.f29959e.f30478X1 * 1000;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public String getVideoUrl() {
            return this.f29959e.f30546t1;
        }

        @Override // com.fl.saas.adx.api.mixNative.NativeMaterial
        public boolean isNativeAppAd() {
            return !TextUtils.isEmpty(this.f29959e.f30563z0);
        }
    }

    @Override // com.fl.saas.AbstractC1192k0
    public void g() {
        LogcatUtil.d(f29952m, "loadNative");
        R0.a().a(e(), d(), f(), new a());
    }

    public static NativeMaterial a(C1188j c1188j, View view) {
        return new b(c1188j, view);
    }
}
