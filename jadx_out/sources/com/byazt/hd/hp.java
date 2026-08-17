package com.byazt.hd;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig;
import java.util.Map;
import java.util.function.Supplier;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1402, 28})
/* loaded from: classes2.dex */
public class hp {
    public static final SparseArray<Object> hp(final IMediationConfig iMediationConfig) {
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
        if (iMediationConfig == null) {
            return null;
        }
        jxVarHp.hp(264101, new Supplier<String>() { // from class: com.byazt.hd.hp.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return iMediationConfig.getPublisherDid();
            }
        });
        jxVarHp.hp(264102, new Supplier<Boolean>() { // from class: com.byazt.hd.hp.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationConfig.isOpenAdnTest());
            }
        });
        jxVarHp.hp(264103, iMediationConfig.getMediationConfigUserInfoForSegment() != null ? jx.hp(iMediationConfig.getMediationConfigUserInfoForSegment()) : null);
        jxVarHp.hp(264104, new Supplier<Map<String, Object>>() { // from class: com.byazt.hd.hp.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return iMediationConfig.getLocalExtra();
            }
        });
        jxVarHp.hp(264105, new Supplier<Boolean>() { // from class: com.byazt.hd.hp.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationConfig.getHttps());
            }
        });
        jxVarHp.hp(264106, new Supplier<JSONObject>() { // from class: com.byazt.hd.hp.6
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public JSONObject get() {
                return iMediationConfig.getCustomLocalConfig();
            }
        });
        jxVarHp.hp(264107, new Supplier<String>() { // from class: com.byazt.hd.hp.7
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return iMediationConfig.getOpensdkVer();
            }
        });
        jxVarHp.hp(264108, new Supplier<Boolean>() { // from class: com.byazt.hd.hp.8
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationConfig.isWxInstalled());
            }
        });
        jxVarHp.hp(264109, new Supplier<Boolean>() { // from class: com.byazt.hd.hp.9
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationConfig.isSupportH265());
            }
        });
        jxVarHp.hp(264110, new Supplier<Boolean>() { // from class: com.byazt.hd.hp.10
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationConfig.isSupportSplashZoomout());
            }
        });
        jxVarHp.hp(264111, new Supplier<String>() { // from class: com.byazt.hd.hp.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return iMediationConfig.wxAppId();
            }
        });
        return jxVarHp.l().sparseArray();
    }
}
