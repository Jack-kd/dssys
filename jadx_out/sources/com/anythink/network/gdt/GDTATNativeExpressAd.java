package com.anythink.network.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.ads.nativ.NativeExpressMediaListener;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.pi.AdData;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class GDTATNativeExpressAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    NativeExpressAD f9716a;

    /* renamed from: b, reason: collision with root package name */
    NativeExpressADView f9717b;

    /* renamed from: c, reason: collision with root package name */
    com.anythink.network.gdt.a f9718c;

    /* renamed from: d, reason: collision with root package name */
    String f9719d;

    /* renamed from: e, reason: collision with root package name */
    private Boolean f9720e = Boolean.FALSE;

    public class a implements NativeExpressAD.NativeExpressADListener {

        /* renamed from: com.anythink.network.gdt.GDTATNativeExpressAd$a$a, reason: collision with other inner class name */
        public class C0103a implements NativeExpressMediaListener {
            public C0103a() {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoCached(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoComplete(NativeExpressADView nativeExpressADView) {
                GDTATNativeExpressAd.this.notifyAdVideoEnd();
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoError(NativeExpressADView nativeExpressADView, AdError adError) {
                GDTATNativeExpressAd.this.notifyAdVideoVideoPlayFail("" + adError.getErrorCode(), adError.getErrorMsg());
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoInit(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoLoading(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoPageClose(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoPageOpen(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoPause(NativeExpressADView nativeExpressADView) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoReady(NativeExpressADView nativeExpressADView, long j2) {
            }

            @Override // com.qq.e.ads.nativ.NativeExpressMediaListener
            public void onVideoStart(NativeExpressADView nativeExpressADView) {
                GDTATNativeExpressAd.this.notifyAdVideoStart();
            }
        }

        public a() {
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADClicked(NativeExpressADView nativeExpressADView) {
            GDTATNativeExpressAd.this.notifyAdClicked();
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADClosed(NativeExpressADView nativeExpressADView) {
            GDTATNativeExpressAd.this.notifyAdDislikeClick();
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADExposure(NativeExpressADView nativeExpressADView) {
            GDTATInitManager.getInstance().a(GDTATNativeExpressAd.this.getShowId(), new WeakReference(GDTATNativeExpressAd.this.f9717b));
            GDTATNativeExpressAd.this.notifyAdImpression();
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADLeftApplication(NativeExpressADView nativeExpressADView) {
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADLoaded(List<NativeExpressADView> list) {
            try {
                if (list.size() <= 0) {
                    com.anythink.network.gdt.a aVar = GDTATNativeExpressAd.this.f9718c;
                    if (aVar != null) {
                        aVar.notifyError("", "GDT Ad request success but no Ad return.");
                    }
                    GDTATNativeExpressAd.this.f9718c = null;
                    return;
                }
                NativeExpressADView nativeExpressADView = list.get(0);
                GDTATNativeExpressAd.this.setNetworkInfoMap(GDTATInitManager.getInstance().a(nativeExpressADView.getExtraInfo(), (Map<String, Object>) null));
                GDTATNativeExpressAd.this.f9717b = nativeExpressADView;
                AdData boundData = nativeExpressADView.getBoundData();
                if (boundData != null) {
                    if (boundData.getAdPatternType() == 2) {
                        ((com.anythink.nativead.unitgroup.a) GDTATNativeExpressAd.this).mAdSourceType = "1";
                    } else {
                        ((com.anythink.nativead.unitgroup.a) GDTATNativeExpressAd.this).mAdSourceType = "2";
                    }
                }
                GDTATNativeExpressAd.this.setVideoDuration(boundData != null ? boundData.getVideoDuration() / 1000 : 0.0d);
                GDTATNativeExpressAd.this.f9717b.setMediaListener(new C0103a());
                GDTATNativeExpressAd gDTATNativeExpressAd = GDTATNativeExpressAd.this;
                com.anythink.network.gdt.a aVar2 = gDTATNativeExpressAd.f9718c;
                if (aVar2 != null) {
                    aVar2.notifyLoaded(gDTATNativeExpressAd);
                }
                GDTATNativeExpressAd.this.f9718c = null;
            } catch (Throwable th) {
                com.anythink.network.gdt.a aVar3 = GDTATNativeExpressAd.this.f9718c;
                if (aVar3 != null) {
                    aVar3.notifyError("", "GDT Ad request fail:" + th.getMessage());
                }
                GDTATNativeExpressAd.this.f9718c = null;
                th.printStackTrace();
            }
        }

        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
        public void onNoAD(AdError adError) {
            com.anythink.network.gdt.a aVar = GDTATNativeExpressAd.this.f9718c;
            if (aVar != null) {
                aVar.notifyError(adError.getErrorCode() + "", adError.getErrorMsg());
            }
            GDTATNativeExpressAd.this.f9718c = null;
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onRenderFail(NativeExpressADView nativeExpressADView) {
            com.anythink.network.gdt.a aVar = GDTATNativeExpressAd.this.f9718c;
            if (aVar != null) {
                aVar.notifyError("", "GDT onRenderFail");
            }
            GDTATNativeExpressAd.this.f9718c = null;
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onRenderSuccess(NativeExpressADView nativeExpressADView) {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                NativeExpressADView nativeExpressADView = GDTATNativeExpressAd.this.f9717b;
                if (nativeExpressADView != null) {
                    nativeExpressADView.render();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public class c implements DownloadConfirmListener {
        public c() {
        }

        @Override // com.qq.e.comm.compliance.DownloadConfirmListener
        public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
            GDTDownloadFirmInfo gDTDownloadFirmInfo = new GDTDownloadFirmInfo();
            gDTDownloadFirmInfo.appInfoUrl = str;
            gDTDownloadFirmInfo.scenes = i2;
            gDTDownloadFirmInfo.confirmCallBack = downloadConfirmCallBack;
            GDTATNativeExpressAd.this.notifyDownloadConfirm(activity, null, gDTDownloadFirmInfo);
        }
    }

    public GDTATNativeExpressAd(Context context, String str, int i2, int i3, int i4, int i5, int i6, String str2) {
        this.f9719d = str2;
        a aVar = new a();
        int iA = i2 > 0 ? GDTATInitManager.getInstance().a(context, i2) : -1;
        int iA2 = i3 > 0 ? GDTATInitManager.getInstance().a(context, i3) : -2;
        if (TextUtils.isEmpty(str2)) {
            this.f9716a = new NativeExpressAD(context, new ADSize(iA, iA2), str, aVar);
        } else {
            this.f9716a = new NativeExpressAD(context, new ADSize(iA, iA2), str, aVar, str2);
        }
        boolean zIsPlayMute = GDTATInitManager.getInstance().isPlayMute(i4);
        this.f9716a.setVideoOption(new VideoOption.Builder().setAutoPlayMuted(zIsPlayMute).setDetailPageMuted(zIsPlayMute).setAutoPlayPolicy(i5).build());
        if (i6 != -1) {
            this.f9716a.setMaxVideoDuration(i6);
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeExpressADView nativeExpressADView = this.f9717b;
        if (nativeExpressADView != null) {
            nativeExpressADView.setMediaListener(null);
            this.f9717b.destroy();
        }
        this.f9717b = null;
        this.f9718c = null;
        this.f9716a = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (!this.f9720e.booleanValue() && this.f9717b != null) {
            synchronized (this.f9720e) {
                if (!this.f9720e.booleanValue()) {
                    this.f9720e = Boolean.TRUE;
                    try {
                        this.f9717b.post(new b());
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return this.f9717b;
    }

    @Override // com.anythink.nativead.unitgroup.a
    public Object getObject() {
        return this.f9716a;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd
    public void registerDownloadConfirmListener() {
        NativeExpressADView nativeExpressADView = this.f9717b;
        if (nativeExpressADView != null) {
            nativeExpressADView.setDownloadConfirmListener(new c());
        }
    }

    public void a(com.anythink.network.gdt.a aVar, LoadAdParams loadAdParams) {
        this.f9718c = aVar;
        if (!TextUtils.isEmpty(this.f9719d)) {
            this.f9716a.loadAD(1);
        } else if (loadAdParams != null) {
            this.f9716a.loadAD(1, loadAdParams);
        } else {
            this.f9716a.loadAD(1);
        }
    }
}
