package com.meishu.sdk.platform.oppo.recycler;

import android.text.TextUtils;
import com.heytap.msp.mobad.api.ad.NativeAdvanceAd;
import com.heytap.msp.mobad.api.ad.NativeTempletAd;
import com.heytap.msp.mobad.api.listener.INativeAdvanceLoadListener;
import com.heytap.msp.mobad.api.listener.INativeTempletAdListener;
import com.heytap.msp.mobad.api.params.INativeAdvanceData;
import com.heytap.msp.mobad.api.params.INativeTempletAdView;
import com.heytap.msp.mobad.api.params.NativeAdError;
import com.heytap.msp.mobad.api.params.NativeAdSize;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.ad.recycler.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class OPPORecyclerAdLoader extends BasePlatformLoader<RecyclerMixAdLoader, a> {
    private static final String TAG = "OPPORecyclerAdLoader";
    private ArrayList<NativeAdvanceAd> nativeAdvanceAdList;
    private ArrayList<NativeTempletAd> nativeTemplateAdList;
    private ArrayList<OPPORecyclerAd> oppoRecyclerAdList;
    private ArrayList<OPPOTemplateRecyclerAd> oppoTemplateRecyclerAdList;

    public OPPORecyclerAdLoader(RecyclerMixAdLoader recyclerMixAdLoader, SdkAdInfo sdkAdInfo) {
        super(recyclerMixAdLoader, sdkAdInfo);
        this.oppoTemplateRecyclerAdList = new ArrayList<>();
        this.nativeTemplateAdList = new ArrayList<>();
        this.oppoRecyclerAdList = new ArrayList<>();
        this.nativeAdvanceAdList = new ArrayList<>();
    }

    private void loadRecycler() {
        NativeAdvanceAd nativeAdvanceAd = new NativeAdvanceAd(getContext(), getSdkAdInfo().getPid(), new INativeAdvanceLoadListener() { // from class: com.meishu.sdk.platform.oppo.recycler.OPPORecyclerAdLoader.2
            public void onAdFailed(int i2, String str) {
                LogUtil.e(OPPORecyclerAdLoader.TAG, "onAdFailed " + str + " " + i2);
                if (OPPORecyclerAdLoader.this.getLoaderListener() != null) {
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdError();
                }
            }

            public void onAdSuccess(List<INativeAdvanceData> list) {
                ArrayList arrayList = new ArrayList();
                Iterator<INativeAdvanceData> it = list.iterator();
                while (it.hasNext()) {
                    OPPORecyclerAd oPPORecyclerAd = new OPPORecyclerAd(it.next(), OPPORecyclerAdLoader.this);
                    OPPORecyclerAdLoader.this.oppoRecyclerAdList.add(oPPORecyclerAd);
                    arrayList.add(oPPORecyclerAd);
                }
                if (OPPORecyclerAdLoader.this.getLoaderListener() != null) {
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdLoaded(arrayList);
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdReady(arrayList);
                }
            }
        });
        nativeAdvanceAd.loadAd();
        this.nativeAdvanceAdList.add(nativeAdvanceAd);
    }

    private void loadTemplate() {
        final ArrayList arrayList = new ArrayList();
        NativeTempletAd nativeTempletAd = new NativeTempletAd(getContext(), getSdkAdInfo().getPid(), new NativeAdSize.Builder().setWidthInDp(getAdLoader().getAccept_ad_width().intValue()).setHeightInDp(getAdLoader().getAccept_ad_height().intValue()).build(), new INativeTempletAdListener() { // from class: com.meishu.sdk.platform.oppo.recycler.OPPORecyclerAdLoader.1
            public void onAdClick(INativeTempletAdView iNativeTempletAdView) {
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    OPPOTemplateRecyclerAd oPPOTemplateRecyclerAd = (OPPOTemplateRecyclerAd) ((RecyclerAdData) obj);
                    if (oPPOTemplateRecyclerAd.getNativeTemplateAdView() == iNativeTempletAdView) {
                        if (OPPORecyclerAdLoader.this.getSdkAdInfo() != null && !TextUtils.isEmpty(OPPORecyclerAdLoader.this.getSdkAdInfo().getClk())) {
                            LogUtil.d(OPPORecyclerAdLoader.TAG, "send onAdClick");
                            com.meishu.sdk.core.loader.a.a(OPPORecyclerAdLoader.this.getContext(), f.a(OPPORecyclerAdLoader.this.getSdkAdInfo().getClk(), oPPOTemplateRecyclerAd));
                        }
                        if (oPPOTemplateRecyclerAd.getInteractionListener() != null) {
                            oPPOTemplateRecyclerAd.getInteractionListener().onAdClicked();
                        }
                        if (oPPOTemplateRecyclerAd.getRecylcerAdInteractionListener() != null) {
                            oPPOTemplateRecyclerAd.getRecylcerAdInteractionListener().onAdClicked();
                        }
                    }
                }
            }

            public void onAdClose(INativeTempletAdView iNativeTempletAdView) {
                if (OPPORecyclerAdLoader.this.getLoaderListener() != null) {
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdClosed();
                }
            }

            public void onAdFailed(NativeAdError nativeAdError) {
                String str = OPPORecyclerAdLoader.TAG;
                StringBuilder sbA = com.meishu.sdk.activity.a.a("onRenderFailed ");
                sbA.append(nativeAdError.msg);
                sbA.append(" ");
                sbA.append(nativeAdError.code);
                LogUtil.e(str, sbA.toString());
                a0.a(OPPORecyclerAdLoader.this.getSdkAdInfo().getErr(), Integer.valueOf(nativeAdError.code), nativeAdError.msg);
                if (OPPORecyclerAdLoader.this.getLoaderListener() != null) {
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdError();
                }
            }

            public void onAdShow(INativeTempletAdView iNativeTempletAdView) {
                if (OPPORecyclerAdLoader.this.getLoaderListener() != null) {
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdExposure();
                }
            }

            public void onAdSuccess(List<INativeTempletAdView> list) {
                Iterator<INativeTempletAdView> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new OPPOTemplateRecyclerAd(it.next()));
                }
                if (OPPORecyclerAdLoader.this.getLoaderListener() != null) {
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdLoaded(arrayList);
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    OPPOTemplateRecyclerAd oPPOTemplateRecyclerAd = (OPPOTemplateRecyclerAd) ((RecyclerAdData) obj);
                    oPPOTemplateRecyclerAd.getNativeTemplateAdView().render();
                    OPPORecyclerAdLoader.this.oppoTemplateRecyclerAdList.add(oPPOTemplateRecyclerAd);
                }
            }

            public void onRenderFailed(NativeAdError nativeAdError, INativeTempletAdView iNativeTempletAdView) {
                String str = OPPORecyclerAdLoader.TAG;
                StringBuilder sbA = com.meishu.sdk.activity.a.a("onRenderFailed ");
                sbA.append(nativeAdError.msg);
                sbA.append(" ");
                sbA.append(nativeAdError.code);
                LogUtil.e(str, sbA.toString());
                if (OPPORecyclerAdLoader.this.getLoaderListener() != null) {
                    OPPORecyclerAdLoader.this.getLoaderListener().onAdError();
                }
            }

            public void onRenderSuccess(INativeTempletAdView iNativeTempletAdView) {
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    OPPOTemplateRecyclerAd oPPOTemplateRecyclerAd = (OPPOTemplateRecyclerAd) ((RecyclerAdData) obj);
                    if (oPPOTemplateRecyclerAd.getNativeTemplateAdView() == iNativeTempletAdView) {
                        oPPOTemplateRecyclerAd.setAdView(iNativeTempletAdView.getAdView());
                    }
                }
                OPPORecyclerAdLoader.this.getLoaderListener().onAdReady(arrayList);
            }
        });
        nativeTempletAd.loadAd();
        this.nativeTemplateAdList.add(nativeTempletAd);
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
        ArrayList<OPPOTemplateRecyclerAd> arrayList = this.oppoTemplateRecyclerAdList;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            OPPOTemplateRecyclerAd oPPOTemplateRecyclerAd = arrayList.get(i3);
            i3++;
            oPPOTemplateRecyclerAd.destroy();
        }
        this.oppoTemplateRecyclerAdList.clear();
        ArrayList<NativeTempletAd> arrayList2 = this.nativeTemplateAdList;
        int size2 = arrayList2.size();
        int i4 = 0;
        while (i4 < size2) {
            NativeTempletAd nativeTempletAd = arrayList2.get(i4);
            i4++;
            nativeTempletAd.destroyAd();
        }
        this.nativeTemplateAdList.clear();
        ArrayList<OPPORecyclerAd> arrayList3 = this.oppoRecyclerAdList;
        int size3 = arrayList3.size();
        int i5 = 0;
        while (i5 < size3) {
            OPPORecyclerAd oPPORecyclerAd = arrayList3.get(i5);
            i5++;
            oPPORecyclerAd.destroy();
        }
        this.oppoRecyclerAdList.clear();
        ArrayList<NativeAdvanceAd> arrayList4 = this.nativeAdvanceAdList;
        int size4 = arrayList4.size();
        while (i2 < size4) {
            NativeAdvanceAd nativeAdvanceAd = arrayList4.get(i2);
            i2++;
            nativeAdvanceAd.destroyAd();
        }
        this.nativeAdvanceAdList.clear();
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        com.meishu.sdk.core.loader.a.a(((RecyclerMixAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()));
        if (((RecyclerMixAdLoader) this.adLoader).getAdPatternType() == 100000) {
            loadTemplate();
        } else {
            loadRecycler();
        }
    }
}
