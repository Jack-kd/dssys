package com.byazt.xd;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.gp.eb;
import com.byazt.iqm.l;
import com.byazt.rt.jx;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 933, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final List<String> jx;
    public final Map<String, Integer> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, Integer> f27630l = new HashMap();

    static {
        ArrayList arrayList = new ArrayList();
        jx = arrayList;
        arrayList.add(MediationConstant.ADN_GDT);
        arrayList.add("baidu");
        arrayList.add(MediationConstant.ADN_KS);
        arrayList.add(MediationConstant.ADN_PANGLE);
        arrayList.add("sigmob");
        arrayList.add("gromoreExtra");
    }

    public void hp(String str, String str2, int i2) {
        this.hp.put(str + "_" + str2, Integer.valueOf(i2));
    }

    public void l(String str, String str2, int i2) {
        this.f27630l.put(str + "_" + str2, Integer.valueOf(i2));
    }

    public int hp(String str, String str2) {
        Integer num = this.hp.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 1800000;
    }

    public int l(String str, String str2) {
        Integer num = this.f27630l.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public int hp(eb ebVar, l lVar, l lVar2, String str) {
        if (ebVar == null || ebVar.hp == null) {
            return 4;
        }
        String strSz = lVar2 != null ? lVar2.sz() : "";
        String adNetWorkName = ebVar.hp.getAdNetWorkName();
        String adNetworkSlotId = ebVar.hp.getAdNetworkSlotId();
        Integer numIsReadyStatus = ebVar.hp.isReadyStatus();
        if (numIsReadyStatus.intValue() == 1) {
            if (ebVar.hp.isHasShown()) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":广告已show过 ---: " + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
                return 7;
            }
            if (hp(strSz, ebVar.hp)) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":广告过期了(M配置) ---: " + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
                return 2;
            }
            if (!hp(lVar, lVar2, ebVar.hp)) {
                com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":AdSlot不符合 ---: " + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
                return 6;
            }
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":复用成功：---" + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
            return -1;
        }
        if (ebVar.hp.isHasShown()) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":广告已show过 ---: " + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
            return 7;
        }
        if (numIsReadyStatus.intValue() == 3) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":广告过期了(adn api) ---: " + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
            return 1;
        }
        if (numIsReadyStatus.intValue() == 4) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":isReady是false ---: " + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
            return 5;
        }
        if (!hp(lVar, lVar2, ebVar.hp)) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":AdSlot不符合 ---: " + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
            return 6;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- " + str + ":复用成功：---" + adNetWorkName + ", adSlotId: " + adNetworkSlotId);
        return -1;
    }

    public final boolean hp(String str, jx jxVar) {
        if (jxVar == null || jxVar.hasDestroyed()) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 广告已经destroy了，视为过期 ------");
            return true;
        }
        boolean z2 = SystemClock.elapsedRealtime() > jxVar.getFillTime() + ((long) hp(str, jxVar.getAdNetworkSlotId()));
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 使用了配置的过期时间进行判断 ------");
        return z2;
    }

    public static boolean hp(l lVar, l lVar2, jx jxVar) {
        if (lVar != null && lVar2 != null) {
            if (lVar.ud() != lVar2.ud()) {
                com.byazt.aw.l.hp("TMe", "--==-- orientation, a1: " + lVar.ud() + ", a2: " + lVar2.ud());
                return false;
            }
            if (lVar.nu() != lVar2.nu()) {
                com.byazt.aw.l.hp("TMe", "--==-- isMuted, a1: " + lVar.nu() + ", a2: " + lVar2.nu());
                return false;
            }
            if (lVar.ns() != lVar2.ns()) {
                com.byazt.aw.l.hp("TMe", "--==-- ImgWidth, a1: " + lVar.ns() + ", a2: " + lVar2.ns());
                return false;
            }
            if (lVar.cx() != lVar2.cx()) {
                com.byazt.aw.l.hp("TMe", "--==-- ImgHeight, a1: " + lVar.cx() + ", a2: " + lVar2.cx());
                return false;
            }
            if (lVar.o() != null && lVar2.o() != null) {
                if (!lVar.o().equals(lVar2.o())) {
                    com.byazt.aw.l.hp("TMe", "--==-- rewardName, a1: " + lVar.o() + ", a2: " + lVar2.o());
                    return false;
                }
            } else if (lVar.o() != null || lVar2.o() != null) {
                com.byazt.aw.l.hp("TMe", "--==-- rewardName=null, a1: " + lVar.o() + ", a2: " + lVar2.o());
                return false;
            }
            if (lVar.d() != lVar2.d()) {
                com.byazt.aw.l.hp("TMe", "--==-- rewardAmount, a1: " + lVar.d() + ", a2: " + lVar2.d());
                return false;
            }
            if (lVar.hq() != null && lVar2.hq() != null) {
                if (!lVar.hq().equals(lVar2.hq())) {
                    com.byazt.aw.l.hp("TMe", "--==-- reward, userId, a1: " + lVar.hq() + ", a2: " + lVar2.hq());
                    return false;
                }
            } else if (lVar.hq() != null || lVar2.hq() != null) {
                com.byazt.aw.l.hp("TMe", "--==-- reward, userId=null, a1: " + lVar.hq() + ", a2: " + lVar2.hq());
                return false;
            }
            if (lVar.r() != null && lVar2.r() != null) {
                if (hp(lVar.r(), lVar2.r())) {
                    return true;
                }
                com.byazt.aw.l.hp("TMe", "--==-- customData, a1: " + lVar.r().toString() + ", a2: " + lVar2.r().toString());
                return false;
            }
            if (lVar.r() == null && lVar2.r() == null) {
                return true;
            }
            com.byazt.aw.l.hp("TMe", "--==-- customData=null, a1: " + lVar.r() + ", a2: " + lVar2.r());
            return false;
        }
        com.byazt.aw.l.hp("TMe", "--==-- adSlot = null, a1: " + lVar + ", a2: " + lVar2);
        return false;
    }

    public static boolean hp(Map<String, Object> map, Map<String, Object> map2) {
        if (map == null && map2 == null) {
            return true;
        }
        if (map == null || map2 == null) {
            return false;
        }
        for (String str : jx) {
            if (!TextUtils.isEmpty(str)) {
                Object obj = map.get(str);
                String str2 = obj instanceof String ? (String) obj : null;
                Object obj2 = map2.get(str);
                String str3 = obj2 instanceof String ? (String) obj2 : null;
                if (str2 != null || str3 != null) {
                    if (!TextUtils.equals(str2, str3)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
