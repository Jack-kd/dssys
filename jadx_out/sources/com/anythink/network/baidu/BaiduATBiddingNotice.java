package com.anythink.network.baidu;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATIBiddingResultListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.common.m.q;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class BaiduATBiddingNotice implements ATBiddingNotice {

    /* renamed from: c, reason: collision with root package name */
    private static final String f9306c = "adn";

    /* renamed from: d, reason: collision with root package name */
    private static final String f9307d = "ad_t";

    /* renamed from: e, reason: collision with root package name */
    private static final String f9308e = "ad_time";

    /* renamed from: f, reason: collision with root package name */
    private static final String f9309f = "bid_t";

    /* renamed from: g, reason: collision with root package name */
    private static final String f9310g = "is_s";

    /* renamed from: h, reason: collision with root package name */
    private static final String f9311h = "is_c";

    /* renamed from: a, reason: collision with root package name */
    Object f9312a;

    /* renamed from: b, reason: collision with root package name */
    ATIBiddingResultListener f9313b = null;

    public class a implements BiddingListener {
        public a() {
        }

        @Override // com.baidu.mobads.sdk.api.BiddingListener
        public void onBiddingResult(boolean z2, String str, HashMap<String, Object> map) {
            BaiduATBiddingNotice.this.a("onBiddingResult-win: " + z2 + " msg信息：" + str);
        }
    }

    public class b implements BiddingListener {
        public b() {
        }

        @Override // com.baidu.mobads.sdk.api.BiddingListener
        public void onBiddingResult(boolean z2, String str, HashMap<String, Object> map) {
            BaiduATBiddingNotice.this.a("onBiddingResult-loss: " + z2 + " msg信息：" + str);
            ATIBiddingResultListener aTIBiddingResultListener = BaiduATBiddingNotice.this.f9313b;
            if (aTIBiddingResultListener != null) {
                if (z2) {
                    aTIBiddingResultListener.reportSuccess(map);
                } else {
                    aTIBiddingResultListener.reportFailed(q.f5854l, str, map);
                }
            }
        }
    }

    public BaiduATBiddingNotice(Object obj) {
        this.f9312a = obj;
    }

    private int a(int i2) {
        if (i2 == 15) {
            return 1;
        }
        if (i2 == 22) {
            return 9;
        }
        if (i2 == 66) {
            return 5;
        }
        if (i2 == 78) {
            return 8;
        }
        if (i2 != 28) {
            return i2 != 29 ? 10 : 4;
        }
        return 3;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidLoss(String str, double d2, Map<String, Object> map) {
        char c2;
        int i2;
        try {
            str.getClass();
            int iHashCode = str.hashCode();
            if (iHashCode != 50) {
                if (iHashCode != 53) {
                    switch (iHashCode) {
                        case 48627:
                            if (!str.equals("102")) {
                                break;
                            } else {
                                c2 = 2;
                                break;
                            }
                        case 48628:
                            if (!str.equals("103")) {
                                break;
                            } else {
                                c2 = 3;
                                break;
                            }
                        case 48629:
                            if (!str.equals("104")) {
                                break;
                            } else {
                                c2 = 4;
                                break;
                            }
                        default:
                            break;
                    }
                } else {
                    c2 = !str.equals("5") ? (char) 65535 : (char) 1;
                }
            } else if (str.equals("2")) {
                c2 = 0;
            }
            if (c2 != 0) {
                i2 = 900;
                if (c2 != 1) {
                    if (c2 == 2 || c2 == 3) {
                        i2 = 203;
                    } else if (c2 == 4) {
                        i2 = 202;
                    }
                }
            } else {
                i2 = 100;
            }
            int iRound = (int) Math.round(d2);
            StringBuilder sb = new StringBuilder();
            Object obj = this.f9312a;
            sb.append(obj != null ? obj.toString() : "");
            sb.append(": notifyBidLoss winPrice: ");
            sb.append(iRound);
            sb.append(", lossCode:");
            sb.append(str);
            sb.append(", lossReason:");
            sb.append(i2);
            a(sb.toString());
            LinkedHashMap<String, Object> linkedHashMapA = a(str, map);
            linkedHashMapA.put("ecpm", Integer.valueOf(iRound));
            linkedHashMapA.put(MediationConstant.KEY_REASON, Integer.valueOf(i2));
            Object obj2 = map.get(ATBiddingNotice.ADN_BID_LISTENER_OBJECT);
            if (obj2 instanceof ATIBiddingResultListener) {
                ATIBiddingResultListener aTIBiddingResultListener = (ATIBiddingResultListener) obj2;
                this.f9313b = aTIBiddingResultListener;
                aTIBiddingResultListener.setNeedWait(true);
            }
            b bVar = new b();
            try {
                Object obj3 = this.f9312a;
                if (obj3 != null && (obj3 instanceof RewardVideoAd)) {
                    ((RewardVideoAd) obj3).biddingFail(linkedHashMapA, bVar);
                    return;
                }
            } catch (Throwable unused) {
            }
            try {
                Object obj4 = this.f9312a;
                if (obj4 != null && (obj4 instanceof SplashAd)) {
                    ((SplashAd) obj4).biddingFail(linkedHashMapA, bVar);
                    return;
                }
            } catch (Throwable unused2) {
            }
            try {
                Object obj5 = this.f9312a;
                if (obj5 != null && (obj5 instanceof NativeResponse)) {
                    ((NativeResponse) obj5).biddingFail(linkedHashMapA, bVar);
                    return;
                }
            } catch (Throwable unused3) {
            }
            try {
                Object obj6 = this.f9312a;
                if (obj6 != null && (obj6 instanceof ExpressResponse)) {
                    ((ExpressResponse) obj6).biddingFail(linkedHashMapA, bVar);
                    return;
                }
            } catch (Throwable unused4) {
            }
            try {
                Object obj7 = this.f9312a;
                if (obj7 != null && (obj7 instanceof ExpressInterstitialAd)) {
                    ((ExpressInterstitialAd) obj7).biddingFail(linkedHashMapA, bVar);
                    return;
                }
            } catch (Throwable unused5) {
            }
            try {
                Object obj8 = this.f9312a;
                if (obj8 != null && (obj8 instanceof FullScreenVideoAd)) {
                    ((FullScreenVideoAd) obj8).biddingFail(linkedHashMapA, bVar);
                    return;
                }
            } catch (Throwable unused6) {
            }
            this.f9312a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        try {
            LinkedHashMap<String, Object> linkedHashMapA = a(map);
            int iRound = (int) Math.round(d3);
            String strValueOf = String.valueOf(iRound);
            linkedHashMapA.put("ecpm", Integer.valueOf(iRound));
            StringBuilder sb = new StringBuilder();
            Object obj = this.f9312a;
            sb.append(obj != null ? obj.toString() : "");
            sb.append(": notifyBidWin : second price:");
            sb.append(strValueOf);
            a(sb.toString());
            a aVar = new a();
            try {
                Object obj2 = this.f9312a;
                if (obj2 != null && (obj2 instanceof RewardVideoAd)) {
                    ((RewardVideoAd) obj2).biddingSuccess(linkedHashMapA, aVar);
                    return;
                }
            } catch (Throwable unused) {
            }
            try {
                Object obj3 = this.f9312a;
                if (obj3 != null && (obj3 instanceof SplashAd)) {
                    ((SplashAd) obj3).biddingSuccess(linkedHashMapA, aVar);
                    return;
                }
            } catch (Throwable unused2) {
            }
            try {
                Object obj4 = this.f9312a;
                if (obj4 != null && (obj4 instanceof NativeResponse)) {
                    ((NativeResponse) obj4).biddingSuccess(linkedHashMapA, aVar);
                    return;
                }
            } catch (Throwable unused3) {
            }
            try {
                Object obj5 = this.f9312a;
                if (obj5 != null && (obj5 instanceof ExpressResponse)) {
                    ((ExpressResponse) obj5).biddingSuccess(linkedHashMapA, aVar);
                    return;
                }
            } catch (Throwable unused4) {
            }
            try {
                Object obj6 = this.f9312a;
                if (obj6 != null && (obj6 instanceof ExpressInterstitialAd)) {
                    ((ExpressInterstitialAd) obj6).biddingSuccess(linkedHashMapA, aVar);
                    return;
                }
            } catch (Throwable unused5) {
            }
            try {
                Object obj7 = this.f9312a;
                if (obj7 != null && (obj7 instanceof FullScreenVideoAd)) {
                    ((FullScreenVideoAd) obj7).biddingSuccess(linkedHashMapA, aVar);
                    return;
                }
            } catch (Throwable unused6) {
            }
            this.f9312a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    private LinkedHashMap<String, Object> a(Map<String, Object> map) {
        int iA;
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>(4);
        int intFromMap = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_ID);
        int intFromMap2 = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_TYPE);
        int intFromMap3 = 0;
        int intFromMap4 = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_EXTRA_NW_FIRM_ID, 0);
        if (intFromMap4 > 0) {
            iA = a(intFromMap4);
        } else {
            iA = intFromMap == 5 ? 9 : 10;
        }
        int i2 = intFromMap2 == 101 ? 3 : 1;
        linkedHashMap.put("adn", Integer.valueOf(iA));
        linkedHashMap.put(f9308e, Long.valueOf(System.currentTimeMillis() / 1000));
        linkedHashMap.put(f9309f, Integer.valueOf(i2));
        Object obj = map.get(ATBiddingNotice.ADN_EXTRA_NATIVE_MATERIAL_INFO);
        if (obj != null) {
            try {
                intFromMap3 = ATInitMediation.getIntFromMap((Map) obj, "native_material_type", 0);
            } catch (Throwable unused) {
            }
        }
        if (intFromMap3 > 0 && intFromMap3 <= 7) {
            linkedHashMap.put(f9307d, Integer.valueOf(intFromMap3));
        } else {
            linkedHashMap.put(f9307d, 7);
        }
        a((Map<String, Object>) linkedHashMap, true);
        return linkedHashMap;
    }

    private LinkedHashMap<String, Object> a(String str, Map<String, Object> map) {
        int iA;
        int intFromMap;
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>(8);
        int intFromMap2 = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_ID);
        int intFromMap3 = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_EXTRA_NW_FIRM_ID, 0);
        int i2 = 1;
        if (intFromMap3 > 0) {
            iA = a(intFromMap3);
        } else {
            iA = (intFromMap2 == 1 || intFromMap2 == 2) ? 9 : 10;
        }
        str.getClass();
        if (str.equals("102")) {
            i2 = 3;
        } else if (!str.equals("103")) {
            i2 = 4;
        }
        linkedHashMap.put("adn", Integer.valueOf(iA));
        linkedHashMap.put(f9308e, Long.valueOf(System.currentTimeMillis() / 1000));
        linkedHashMap.put(f9309f, Integer.valueOf(i2));
        linkedHashMap.put("is_s", 2);
        linkedHashMap.put(f9311h, 2);
        Object obj = map.get(ATBiddingNotice.ADN_EXTRA_NATIVE_MATERIAL_INFO);
        if (obj != null) {
            try {
                intFromMap = ATInitMediation.getIntFromMap((Map) obj, "native_material_type", 0);
            } catch (Throwable unused) {
            }
        } else {
            intFromMap = 0;
        }
        if (intFromMap > 0 && intFromMap <= 7) {
            linkedHashMap.put(f9307d, Integer.valueOf(intFromMap));
        } else {
            linkedHashMap.put(f9307d, 7);
        }
        a((Map<String, Object>) linkedHashMap, false);
        return linkedHashMap;
    }

    private void a(Map<String, Object> map, boolean z2) {
        if (map == null || map.size() == 0 || !ATSDK.isNetworkLogDebug()) {
            return;
        }
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()) {
            map.get(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        ATSDK.isNetworkLogDebug();
    }
}
