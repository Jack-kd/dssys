package com.anythink.network.baidu;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.common.k;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.baidu.BaiduATNativeExpressFeedAd;
import com.anythink.network.baidu.BaiduATNativePortraitVideoAd;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.StyleParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class BaiduATAdapter extends CustomNativeAdapter {

    /* renamed from: a, reason: collision with root package name */
    String f9266a;

    /* renamed from: b, reason: collision with root package name */
    String f9267b;

    /* renamed from: c, reason: collision with root package name */
    String f9268c;

    /* renamed from: e, reason: collision with root package name */
    private BaiduNativeManager f9270e;

    /* renamed from: k, reason: collision with root package name */
    int f9276k;

    /* renamed from: l, reason: collision with root package name */
    int f9277l;

    /* renamed from: m, reason: collision with root package name */
    boolean f9278m;

    /* renamed from: n, reason: collision with root package name */
    private Map<String, Object> f9279n;

    /* renamed from: d, reason: collision with root package name */
    private double f9269d = 0.0d;

    /* renamed from: f, reason: collision with root package name */
    StyleParams.Builder f9271f = new StyleParams.Builder();

    /* renamed from: g, reason: collision with root package name */
    int f9272g = 0;

    /* renamed from: h, reason: collision with root package name */
    boolean f9273h = false;

    /* renamed from: i, reason: collision with root package name */
    boolean f9274i = true;

    /* renamed from: j, reason: collision with root package name */
    boolean f9275j = false;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9280a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9281b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9282c;

        public a(Context context, Map map, Map map2) {
            this.f9280a = context;
            this.f9281b = map;
            this.f9282c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            BaiduATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            try {
                BaiduATAdapter.this.a(this.f9280a, (Map<String, Object>) this.f9281b, (Map<String, Object>) this.f9282c);
            } catch (Throwable th) {
                BaiduATAdapter.this.notifyATLoadFail("", "Baidu: init error, " + th.getMessage());
            }
        }
    }

    public class b implements BaiduATNativePortraitVideoAd.LoadCallbackListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9284a;

        public b(Context context) {
            this.f9284a = context;
        }

        @Override // com.anythink.network.baidu.BaiduATNativePortraitVideoAd.LoadCallbackListener
        public void onFail(String str, String str2) {
            BaiduATAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.baidu.BaiduATNativePortraitVideoAd.LoadCallbackListener
        public void onSuccess(NativeResponse nativeResponse, CustomNativeAd customNativeAd) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(nativeResponse);
            BaiduATAdapter.this.a(arrayList, this.f9284a, customNativeAd);
        }
    }

    public static class c implements BaiduNativeManager.ExpressAdListener {

        /* renamed from: a, reason: collision with root package name */
        private final Context f9286a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f9287b;

        /* renamed from: c, reason: collision with root package name */
        private final BaiduATAdapter f9288c;

        /* renamed from: d, reason: collision with root package name */
        private final ATBiddingListener f9289d;

        /* renamed from: e, reason: collision with root package name */
        private final ATCustomLoadListener f9290e;

        /* renamed from: f, reason: collision with root package name */
        int f9291f;

        /* renamed from: g, reason: collision with root package name */
        int f9292g;

        /* renamed from: h, reason: collision with root package name */
        Map<String, Object> f9293h;

        public class a implements BaiduATNativeExpressFeedAd.RenderCallback {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ ATBiddingResult f9294a;

            public a(ATBiddingResult aTBiddingResult) {
                this.f9294a = aTBiddingResult;
            }

            @Override // com.anythink.network.baidu.BaiduATNativeExpressFeedAd.RenderCallback
            public void onAdRenderFail() {
                if (c.this.f9289d != null) {
                    c.this.f9289d.onC2SBidResult(ATBiddingResult.fail("BaiduATNativeExpressFeedAd Render Failed."));
                }
            }

            @Override // com.anythink.network.baidu.BaiduATNativeExpressFeedAd.RenderCallback
            public void onAdRenderSuccess(CustomNativeAd customNativeAd) {
                if (c.this.f9289d != null) {
                    c.this.f9289d.onC2SBiddingResultWithCache(this.f9294a, customNativeAd);
                }
            }
        }

        public class b implements BaiduATNativeExpressFeedAd.RenderCallback {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f9296a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ AtomicInteger f9297b;

            public b(List list, AtomicInteger atomicInteger) {
                this.f9296a = list;
                this.f9297b = atomicInteger;
            }

            @Override // com.anythink.network.baidu.BaiduATNativeExpressFeedAd.RenderCallback
            public void onAdRenderFail() {
                if (this.f9297b.decrementAndGet() == 0 && this.f9296a.size() == 0 && c.this.f9290e != null) {
                    c.this.f9290e.onAdLoadError("", "All BaiduATNativeExpressFeedAd Render Failed.");
                }
            }

            @Override // com.anythink.network.baidu.BaiduATNativeExpressFeedAd.RenderCallback
            public void onAdRenderSuccess(CustomNativeAd customNativeAd) {
                this.f9296a.add(customNativeAd);
                if (this.f9297b.decrementAndGet() != 0 || c.this.f9290e == null) {
                    return;
                }
                c.this.f9290e.onAdCacheLoaded((CustomNativeAd[]) this.f9296a.toArray(new CustomNativeAd[this.f9296a.size()]));
            }
        }

        public c(Context context, boolean z2, BaiduATAdapter baiduATAdapter, ATBiddingListener aTBiddingListener, ATCustomLoadListener aTCustomLoadListener, int i2, int i3, Map<String, Object> map) {
            this.f9286a = context;
            this.f9287b = z2;
            this.f9288c = baiduATAdapter;
            this.f9289d = aTBiddingListener;
            this.f9290e = aTCustomLoadListener;
            this.f9291f = i2;
            this.f9292g = i3;
            this.f9293h = map;
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
        public void onLpClosed() {
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
        public void onNativeFail(int i2, String str, ExpressResponse expressResponse) {
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(expressResponse);
            this.f9288c.notifyATLoadFail(i2 + "", str, baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
        public void onNativeLoad(List<ExpressResponse> list) {
            double d2;
            if (list == null || list.size() == 0) {
                this.f9288c.notifyATLoadFail("", "Baidu ad return empty.");
                return;
            }
            if (this.f9287b) {
                ExpressResponse expressResponse = list.get(0);
                BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(expressResponse);
                try {
                    d2 = Double.parseDouble(expressResponse.getECPMLevel());
                } catch (Throwable unused) {
                    d2 = 0.0d;
                }
                ATBiddingResult aTBiddingResultSuccess = ATBiddingResult.success(d2, expressResponse.hashCode() + "", baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
                aTBiddingResultSuccess.setExtra(expressResponse.getPECPM());
                BaiduATNativeExpressFeedAd baiduATNativeExpressFeedAd = new BaiduATNativeExpressFeedAd(this.f9286a, expressResponse, this.f9291f, this.f9292g, this.f9287b, this.f9293h);
                baiduATNativeExpressFeedAd.setRenderCallback(new a(aTBiddingResultSuccess));
                baiduATNativeExpressFeedAd.startRender();
                ATBiddingListener aTBiddingListener = this.f9289d;
                if (aTBiddingListener instanceof ATBiddingListenerExt) {
                    ((ATBiddingListenerExt) aTBiddingListener).onC2SBiddingResultWithData(aTBiddingResultSuccess, baiduATNativeExpressFeedAd);
                    return;
                }
                return;
            }
            List listSynchronizedList = Collections.synchronizedList(new ArrayList());
            List listSynchronizedList2 = Collections.synchronizedList(new ArrayList());
            AtomicInteger atomicInteger = new AtomicInteger(list.size());
            for (int i2 = 0; i2 < list.size(); i2++) {
                BaiduATNativeExpressFeedAd baiduATNativeExpressFeedAd2 = new BaiduATNativeExpressFeedAd(this.f9286a, list.get(i2), this.f9291f, this.f9292g, this.f9287b, this.f9293h);
                listSynchronizedList2.add(baiduATNativeExpressFeedAd2);
                baiduATNativeExpressFeedAd2.setRenderCallback(new b(listSynchronizedList, atomicInteger));
                baiduATNativeExpressFeedAd2.startRender();
            }
            try {
                CustomNativeAd[] customNativeAdArr = new CustomNativeAd[listSynchronizedList2.size()];
                ATCustomLoadListener aTCustomLoadListener = this.f9290e;
                if (aTCustomLoadListener instanceof ATCustomLoadListenerExt) {
                    ((ATCustomLoadListenerExt) aTCustomLoadListener).onAdDataLoadedWithAds((BaseAd[]) listSynchronizedList2.toArray(customNativeAdArr));
                }
            } catch (Throwable th) {
                Log.e("anythink_BaiduATAdapter", "onNativeLoad failed: " + th.getMessage());
            }
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
        public void onNoAd(int i2, String str, ExpressResponse expressResponse) {
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(expressResponse);
            this.f9288c.notifyATLoadFail(i2 + "", str, baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
        public void onVideoDownloadFailed() {
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
        public void onVideoDownloadSuccess() {
        }
    }

    public class d implements BaiduNativeManager.FeedAdListener {

        /* renamed from: a, reason: collision with root package name */
        private final Context f9299a;

        public d(Context context) {
            this.f9299a = context;
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onLpClosed() {
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onNativeFail(int i2, String str, NativeResponse nativeResponse) {
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(nativeResponse);
            BaiduATAdapter.this.notifyATLoadFail(i2 + "", str, baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onNativeLoad(List<NativeResponse> list) {
            if (list == null || list.size() == 0) {
                BaiduATAdapter.this.notifyATLoadFail("", "callback onNativeLoad but no ad");
            } else {
                BaiduATAdapter.this.a(list, this.f9299a, (CustomNativeAd) null);
            }
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onNoAd(int i2, String str, NativeResponse nativeResponse) {
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(nativeResponse);
            BaiduATAdapter.this.notifyATLoadFail(i2 + "", str, baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onVideoDownloadFailed() {
        }

        @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
        public void onVideoDownloadSuccess() {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BaiduATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BaiduATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9267b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BaiduATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map, map2);
        if (TextUtils.isEmpty(this.f9266a) || TextUtils.isEmpty(this.f9267b)) {
            notifyATLoadFail("", "app_id or ad_place_id is empty.");
        } else {
            Context applicationContext = context.getApplicationContext();
            BaiduATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9273h = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    public void a(Map<String, Object> map, Map<String, Object> map2) {
        this.f9279n = map;
        this.f9266a = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9267b = ATInitMediation.getStringFromMap(map, "ad_place_id");
        this.f9268c = ATInitMediation.getStringFromMap(map, "payload");
        this.f9272g = ATInitMediation.getIntFromMap(map, "unit_type");
        this.f9269d = ATInitMediation.getDoubleFromMap(map, "bid_floor");
        this.f9276k = ATInitMediation.getIntFromMap(map2, BaiduATConst.EXPECTED_SIZE_WIDTH, 0);
        this.f9277l = ATInitMediation.getIntFromMap(map2, BaiduATConst.EXPECTED_SIZE_HEIGHT, 0);
        this.f9278m = ATInitMediation.getBooleanFromMap(map2, BaiduATConst.BD_NATIVE_REWARD, false);
        try {
            if (map2.containsKey(BaiduATConst.STYLE_BUILDER)) {
                Object obj = map2.get(BaiduATConst.STYLE_BUILDER);
                if (obj instanceof StyleParams.Builder) {
                    this.f9271f = (StyleParams.Builder) obj;
                }
            }
            if (map.containsKey("cta_button")) {
                this.f9271f.setShowActionButton(ATInitMediation.getStringFromMap(map, "cta_button").equals("1"));
            }
            if (map.containsKey(k.aK)) {
                this.f9271f.setRegionClick(ATInitMediation.getStringFromMap(map, k.aK).equals("2"));
            }
            if (map.containsKey("dl_type")) {
                this.f9271f.setShowDialogFrame(ATInitMediation.getStringFromMap(map, "dl_type").equals("2"));
            }
            this.f9274i = ATInitMediation.getIntFromMap(map, "video_autoplay", 1) == 1;
        } catch (Exception unused) {
        }
        this.f9275j = ATInitMediation.getIntFromMap(map, k.aK, -1) == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        BaiduNativeManager baiduNativeManager = new BaiduNativeManager(context, this.f9267b);
        this.f9270e = baiduNativeManager;
        baiduNativeManager.setAppSid(BaiduATInitManager.getInstance().getApp_id());
        RequestParameters.Builder builder = new RequestParameters.Builder();
        BaiduATInitManager.getInstance().a(this.f9267b, builder, map, map2);
        RequestParameters requestParametersBuild = builder.build();
        if (this.f9273h && this.f9269d > 0.0d) {
            ATSDK.isNetworkLogDebug();
            this.f9270e.setBidFloor((int) this.f9269d);
        }
        try {
            if (this.f9278m) {
                this.f9270e.setAdReward(true);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        int i2 = this.f9272g;
        if (i2 == 3) {
            new BaiduATNativePortraitVideoAd(context, this.f9270e, requestParametersBuild, this.f9274i, this.f9279n).load(new b(context));
        } else if (i2 == 2) {
            this.f9270e.loadExpressAd(requestParametersBuild, new c(context, this.f9273h, this, this.mBiddingListener, this.mLoadListener, this.f9276k, this.f9277l, this.f9279n));
        } else {
            this.f9270e.loadFeedAd(requestParametersBuild, new d(context));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<NativeResponse> list, Context context, CustomNativeAd customNativeAd) {
        double d2;
        ArrayList arrayList = new ArrayList();
        this.f9271f.build();
        if (this.f9273h) {
            NativeResponse nativeResponse = list.get(0);
            if (this.f9272g != 3) {
                customNativeAd = new BaiduATNativeAd(context, nativeResponse, this.f9275j, this.f9273h, this.f9279n);
            }
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(nativeResponse);
            try {
                d2 = Double.parseDouble(nativeResponse.getECPMLevel());
            } catch (Throwable th) {
                th.printStackTrace();
                d2 = 0.0d;
            }
            if (this.mBiddingListener != null) {
                if (d2 <= 0.0d) {
                    notifyATLoadFail("", "Price is less than or equal to 0. Price: " + d2);
                    return;
                }
                ATBiddingResult aTBiddingResultSuccess = ATBiddingResult.success(d2, nativeResponse.hashCode() + "", baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
                aTBiddingResultSuccess.setExtra(nativeResponse.getPECPM());
                this.mBiddingListener.onC2SBiddingResultWithCache(aTBiddingResultSuccess, customNativeAd);
                return;
            }
            return;
        }
        Context context2 = context;
        if (this.f9272g == 3) {
            arrayList.add(customNativeAd);
        } else {
            Iterator<NativeResponse> it = list.iterator();
            while (it.hasNext()) {
                Context context3 = context2;
                arrayList.add(new BaiduATNativeAd(context3, it.next(), this.f9275j, this.f9273h, this.f9279n));
                context2 = context3;
            }
        }
        CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]);
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdCacheLoaded(customNativeAdArr);
        }
    }
}
