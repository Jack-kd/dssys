package com.sigmob.sdk.nativead;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.C1286z;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.network.f;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.WindNativeAdData;
import com.sigmob.windad.natives.WindNativeAdRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.sigmob.sdk.nativead.y, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1368y implements f.a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f38510a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f38511b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f38512c = 3;

    /* renamed from: d, reason: collision with root package name */
    public static final int f38513d = 0;

    /* renamed from: e, reason: collision with root package name */
    public static final int f38514e = 1;

    /* renamed from: f, reason: collision with root package name */
    public static final int f38515f = 2;

    /* renamed from: h, reason: collision with root package name */
    private List<BaseAdUnit> f38517h;

    /* renamed from: i, reason: collision with root package name */
    private aa f38518i;

    /* renamed from: j, reason: collision with root package name */
    private final WindNativeAdRequest f38519j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f38520k;

    /* renamed from: g, reason: collision with root package name */
    private final Handler f38516g = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.nativead.y.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 20481 && C1368y.this.f38520k) {
                C1368y.this.f38516g.removeMessages(20481);
                C1368y c1368y = C1368y.this;
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_TIME_OUT;
                c1368y.a((List<WindNativeAdData>) null, windAdError.getErrorCode(), windAdError.getMessage());
            }
        }
    };

    /* renamed from: l, reason: collision with root package name */
    private final int f38521l = 20481;

    public C1368y(WindNativeAdRequest windNativeAdRequest, aa aaVar) {
        this.f38519j = windNativeAdRequest;
        this.f38518i = aaVar;
    }

    public Map<String, BiddingResponse> c() {
        BaseAdUnit baseAdUnit;
        List<BaseAdUnit> list = this.f38517h;
        if (list == null || (baseAdUnit = list.get(0)) == null || baseAdUnit.bidding_response == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(baseAdUnit.getRequestId(), baseAdUnit.bidding_response);
        return map;
    }

    public int a(int i2, String str, int i3, String str2, String str3) {
        WindAdError windAdError;
        int i4 = 1;
        this.f38520k = true;
        String placementId = this.f38519j.getPlacementId();
        C1286z c1286zA = C1286z.a(placementId);
        LoadAdRequest loadAdRequest = new LoadAdRequest(this.f38519j);
        loadAdRequest.setBidToken(str);
        loadAdRequest.setBidFloor(Integer.valueOf(i3));
        loadAdRequest.setCurrency(str2);
        loadAdRequest.setAd_count(i2);
        loadAdRequest.setTraceId(str3);
        c1286zA.f36059a++;
        com.sigmob.sdk.base.common.aa aaVarA = com.sigmob.sdk.base.common.aa.a(placementId);
        aaVarA.f35701a++;
        if (i2 < 1) {
            windAdError = WindAdError.ERROR_SIGMOB_NATIVE_ADCOUNT;
        } else {
            long j2 = c1286zA.f36065g;
            if (j2 <= 0 || j2 + (c1286zA.f36062d * 1000) <= System.currentTimeMillis()) {
                this.f38516g.sendEmptyMessageDelayed(20481, com.sigmob.sdk.base.o.a().A());
                c1286zA.f36065g = System.currentTimeMillis();
                com.sigmob.sdk.base.network.f.a(loadAdRequest, this);
                C1286z.a(placementId, c1286zA);
                com.sigmob.sdk.base.common.aa.a(placementId, aaVarA);
                return i4;
            }
            List<BaseAdUnit> listA = C1258h.a(placementId, c1286zA.f36064f, i2);
            if (!listA.isEmpty()) {
                this.f38517h = listA;
                ArrayList arrayList = new ArrayList();
                for (int i5 = 0; i5 < listA.size(); i5++) {
                    BaseAdUnit baseAdUnit = listA.get(i5);
                    baseAdUnit.setLoad_id(loadAdRequest.getLoadId());
                    arrayList.add(a(baseAdUnit));
                    if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
                        C1258h.g().f(baseAdUnit);
                    }
                }
                a(this.f38517h.get(0), loadAdRequest);
                c1286zA.f36060b += listA.size();
                aaVarA.f35702b += listA.size();
                a(arrayList, 0, (String) null);
                i4 = 0;
                C1286z.a(placementId, c1286zA);
                com.sigmob.sdk.base.common.aa.a(placementId, aaVarA);
                return i4;
            }
            windAdError = WindAdError.ERROR_NO_AD;
        }
        a((List<WindNativeAdData>) null, windAdError.getErrorCode(), windAdError.getMessage());
        i4 = 0;
        C1286z.a(placementId, c1286zA);
        com.sigmob.sdk.base.common.aa.a(placementId, aaVarA);
        return i4;
    }

    private WindNativeAdData a(BaseAdUnit baseAdUnit) {
        return new ag(baseAdUnit);
    }

    public String b() {
        BaseAdUnit baseAdUnit;
        BiddingResponse biddingResponse;
        List<BaseAdUnit> list = this.f38517h;
        if (list == null || list.isEmpty() || (baseAdUnit = this.f38517h.get(0)) == null || (biddingResponse = baseAdUnit.bidding_response) == null) {
            return null;
        }
        return biddingResponse.currency;
    }

    public String a() {
        BaseAdUnit baseAdUnit;
        BiddingResponse biddingResponse;
        List<BaseAdUnit> list = this.f38517h;
        if (list == null || list.isEmpty() || (baseAdUnit = this.f38517h.get(0)) == null || (biddingResponse = baseAdUnit.bidding_response) == null) {
            return null;
        }
        return String.valueOf(biddingResponse.ecpm);
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(int i2, String str, String str2, LoadAdRequest loadAdRequest) {
        com.sigmob.sdk.base.common.ad.a(PointCategory.RESPOND, "0", loadAdRequest);
        a((List<WindNativeAdData>) null, i2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, List list, String str) {
        aa aaVar = this.f38518i;
        if (aaVar == null) {
            return;
        }
        if (i2 == 0) {
            aaVar.onNativeAdLoaded(list);
        } else {
            aaVar.onNativeAdLoadFail(i2, str);
        }
    }

    public void a(BaseAdUnit baseAdUnit, LoadAdRequest loadAdRequest) {
        com.sigmob.sdk.base.common.ad.a(PointCategory.READY, null, baseAdUnit, null, loadAdRequest, null);
    }

    public void a(String str, String str2) {
        BaseAdUnit baseAdUnit;
        List<BaseAdUnit> list = this.f38517h;
        if (list == null || (baseAdUnit = list.get(0)) == null || baseAdUnit.bidding_response == null) {
            return;
        }
        baseAdUnit.getMacroCommon().addMarcoKey(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final List<WindNativeAdData> list, final int i2, final String str) {
        this.f38520k = false;
        this.f38516g.removeMessages(20481);
        this.f38516g.post(new Runnable() { // from class: com.sigmob.sdk.nativead.Y
            @Override // java.lang.Runnable
            public final void run() {
                this.f38305b.a(i2, list, str);
            }
        });
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(final List<BaseAdUnit> list, LoadAdRequest loadAdRequest) {
        if (com.sigmob.sdk.base.utils.f.a(list)) {
            WindAdError windAdError = WindAdError.ERROR_NO_AD;
            a((List<WindNativeAdData>) null, windAdError.getErrorCode(), windAdError.getMessage());
            return;
        }
        com.sigmob.sdk.base.common.ad.a(PointCategory.RESPOND, "1", list.get(0), null, loadAdRequest, new ad.a() { // from class: com.sigmob.sdk.nativead.Z
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                C1368y.a(list, obj);
            }
        });
        C1286z c1286zA = C1286z.a(this.f38519j.getPlacementId());
        if (c1286zA != null && c1286zA.f36063e > 0) {
            list = C1258h.a(this.f38519j.getPlacementId(), c1286zA.f36064f, this.f38519j.getAdCount());
            if (com.sigmob.sdk.base.utils.f.a(list)) {
                this.f38517h = null;
                WindAdError windAdError2 = WindAdError.ERROR_NO_AD;
                a((List<WindNativeAdData>) null, windAdError2.getErrorCode(), windAdError2.getMessage());
                return;
            }
        }
        this.f38517h = list;
        com.sigmob.sdk.base.common.aa aaVarA = com.sigmob.sdk.base.common.aa.a(this.f38519j.getPlacementId());
        c1286zA.f36060b += this.f38517h.size();
        aaVarA.f35702b += this.f38517h.size();
        C1286z.a(this.f38519j.getPlacementId(), c1286zA);
        com.sigmob.sdk.base.common.aa.a(this.f38519j.getPlacementId(), aaVarA);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.f38517h.size(); i2++) {
            BaseAdUnit baseAdUnit = this.f38517h.get(i2);
            arrayList.add(a(baseAdUnit));
            if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
                C1258h.g().f(baseAdUnit);
            }
        }
        a(this.f38517h.get(0), loadAdRequest);
        a(arrayList, 0, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put(PointParamKey.AD_COUNT, String.valueOf(list.size()));
            pointEntitySigmob.setOptions(options);
        }
    }
}
