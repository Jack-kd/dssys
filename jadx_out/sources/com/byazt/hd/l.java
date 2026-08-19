package com.byazt.hd;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig;
import java.util.List;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 1402, 34})
/* loaded from: classes2.dex */
public class l {
    public static final SparseArray<Object> hp(final IMediationPrivacyConfig iMediationPrivacyConfig) {
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
        if (iMediationPrivacyConfig == null) {
            return null;
        }
        jxVarHp.hp(262114, new Supplier<List<String>>() { // from class: com.byazt.hd.l.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public List<String> get() {
                return iMediationPrivacyConfig.getCustomAppList();
            }
        });
        jxVarHp.hp(262115, new Supplier<List<String>>() { // from class: com.byazt.hd.l.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public List<String> get() {
                return iMediationPrivacyConfig.getCustomDevImeis();
            }
        });
        jxVarHp.hp(262116, new Supplier<Boolean>() { // from class: com.byazt.hd.l.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationPrivacyConfig.isCanUseOaid());
            }
        });
        jxVarHp.hp(262117, new Supplier<Boolean>() { // from class: com.byazt.hd.l.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationPrivacyConfig.isLimitPersonalAds());
            }
        });
        jxVarHp.hp(262118, new Supplier<Boolean>() { // from class: com.byazt.hd.l.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(iMediationPrivacyConfig.isProgrammaticRecommend());
            }
        });
        return jxVarHp.l().sparseArray();
    }
}
