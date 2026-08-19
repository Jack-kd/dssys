package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.LinkedHashMap;

/* loaded from: classes2.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11549a = "竞价参数格式错误，请检查参数是否为空";

    /* renamed from: b, reason: collision with root package name */
    private static final String f11550b = "ecpm格式错误，请检查是否满足以下条件：ecpm需大于0，单位：分，无小数点";

    /* renamed from: c, reason: collision with root package name */
    private static final String f11551c = "adn格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* renamed from: d, reason: collision with root package name */
    private static final String f11552d = "ad_t格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* renamed from: e, reason: collision with root package name */
    private static final String f11553e = "ad_time格式错误，请检查是否满足以下条件：秒级时间戳（10位数字）、无特殊符号";

    /* renamed from: f, reason: collision with root package name */
    private static final String f11554f = "bid_t格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* renamed from: g, reason: collision with root package name */
    private static final String f11555g = "reason格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* renamed from: h, reason: collision with root package name */
    private static final String f11556h = "is_s格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* renamed from: i, reason: collision with root package name */
    private static final String f11557i = "is_c格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    public static boolean a(boolean z2, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        if (linkedHashMap != null) {
            try {
                if (linkedHashMap.containsKey("ecpm")) {
                    String strValueOf = String.valueOf(linkedHashMap.get("ecpm"));
                    if (!TextUtils.isEmpty(strValueOf)) {
                        if (!strValueOf.contains(com.anythink.core.common.d.i.f2495E)) {
                            if (Integer.parseInt(strValueOf) <= 0) {
                            }
                        }
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f11550b, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey(SplashAd.KEY_BIDFAIL_ADN)) {
                    String strValueOf2 = String.valueOf(linkedHashMap.get(SplashAd.KEY_BIDFAIL_ADN));
                    if (!TextUtils.isEmpty(strValueOf2) && (strValueOf2.contains(com.anythink.core.common.d.i.f2495E) || Integer.parseInt(strValueOf2) < 0)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f11551c, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey("ad_t")) {
                    String strValueOf3 = String.valueOf(linkedHashMap.get("ad_t"));
                    if (TextUtils.isEmpty(strValueOf3) && (strValueOf3.contains(com.anythink.core.common.d.i.f2495E) || Integer.parseInt(strValueOf3) < 0)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f11552d, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey("ad_time")) {
                    String strValueOf4 = String.valueOf(linkedHashMap.get("ad_time"));
                    if (strValueOf4.length() == 13) {
                        linkedHashMap.put("ad_time", strValueOf4.substring(0, 10));
                    }
                    if (TextUtils.isEmpty(strValueOf4) && (strValueOf4.contains(com.anythink.core.common.d.i.f2495E) || Double.parseDouble(strValueOf4) < 1.0E9d)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f11553e, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey("bid_t")) {
                    String strValueOf5 = String.valueOf(linkedHashMap.get("bid_t"));
                    if (TextUtils.isEmpty(strValueOf5) && (strValueOf5.contains(com.anythink.core.common.d.i.f2495E) || Integer.parseInt(strValueOf5) < 0)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f11554f, null);
                        }
                        return false;
                    }
                }
                if (!z2) {
                    if (linkedHashMap.containsKey(MediationConstant.KEY_REASON)) {
                        String strValueOf6 = String.valueOf(linkedHashMap.get(MediationConstant.KEY_REASON));
                        if (TextUtils.isEmpty(strValueOf6) && (strValueOf6.contains(com.anythink.core.common.d.i.f2495E) || Integer.parseInt(strValueOf6) < 0)) {
                            if (biddingListener != null) {
                                biddingListener.onBiddingResult(false, f11555g, null);
                            }
                            return false;
                        }
                    }
                    if (linkedHashMap.containsKey(com.anythink.core.common.m.f.bh)) {
                        String strValueOf7 = String.valueOf(linkedHashMap.get(com.anythink.core.common.m.f.bh));
                        if (TextUtils.isEmpty(strValueOf7) && (strValueOf7.contains(com.anythink.core.common.d.i.f2495E) || Integer.parseInt(strValueOf7) < 0)) {
                            if (biddingListener != null) {
                                biddingListener.onBiddingResult(false, f11556h, null);
                            }
                            return false;
                        }
                    }
                    if (linkedHashMap.containsKey("is_c")) {
                        String strValueOf8 = String.valueOf(linkedHashMap.get("is_c"));
                        if (TextUtils.isEmpty(strValueOf8) && (strValueOf8.contains(com.anythink.core.common.d.i.f2495E) || Integer.parseInt(strValueOf8) < 0)) {
                            if (biddingListener != null) {
                                biddingListener.onBiddingResult(false, f11557i, null);
                            }
                            return false;
                        }
                    }
                }
            } catch (Throwable th) {
                if (biddingListener != null) {
                    biddingListener.onBiddingResult(false, f11549a, null);
                }
                th.printStackTrace();
                return false;
            }
        }
        if (biddingListener != null) {
            biddingListener.onBiddingResult(true, cb.f11292o, null);
        }
        return true;
    }
}
