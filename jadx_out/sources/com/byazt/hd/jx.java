package com.byazt.hd;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;

@com.byazt.kj.hp(hp = {0, 1, 1402, 30})
/* loaded from: classes2.dex */
public class jx {
    public static final SparseArray<Object> hp(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
        if (mediationConfigUserInfoForSegment == null) {
            return null;
        }
        jxVarHp.hp(265007, mediationConfigUserInfoForSegment.getCustomInfos());
        jxVarHp.hp(265001, mediationConfigUserInfoForSegment.getUserId());
        jxVarHp.hp(265002, mediationConfigUserInfoForSegment.getChannel());
        jxVarHp.hp(265003, mediationConfigUserInfoForSegment.getSubChannel());
        jxVarHp.hp(265004, mediationConfigUserInfoForSegment.getAge());
        jxVarHp.hp(265005, mediationConfigUserInfoForSegment.getGender());
        jxVarHp.hp(265006, mediationConfigUserInfoForSegment.getUserValueGroup());
        return jxVarHp.l().sparseArray();
    }
}
