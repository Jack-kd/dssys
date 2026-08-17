package com.byazt.pj;

import android.text.TextUtils;
import com.byazt.tgw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_MAX_FPS, 28})
/* loaded from: classes3.dex */
public class hp {
    public static Map<String, C0340hp> hp = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_MAX_FPS, 170})
    /* renamed from: com.byazt.pj.hp$hp, reason: collision with other inner class name */
    public static class C0340hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public Map<String, String> f24408j;
        public double jx;

        /* renamed from: l, reason: collision with root package name */
        public String f24409l;

        public C0340hp(String str, String str2, double d2, Map<String, String> map) {
            this.hp = str2;
            this.jx = d2;
            this.f24408j = map;
            this.f24409l = str;
        }
    }

    public static void hp(com.byazt.iqm.l lVar, e eVar, Map<String, Object> map) {
        C0340hp c0340hp;
        if (lVar == null || eVar == null || map == null || !eVar.lv() || !"baidu".equals(eVar.v()) || (c0340hp = hp.get(lVar.sz())) == null) {
            return;
        }
        map.put(MediationConstant.BIDDING_WIN_ADN, c0340hp.hp);
        map.put(MediationConstant.BIDDING_WIN_PRICE, Double.valueOf(c0340hp.jx));
        boolean zRu = com.byazt.di.l.l().ru();
        map.put(MediationConstant.BIDDING_IS_OPEN_ECPM, Boolean.valueOf(zRu));
        if (zRu) {
            map.put(MediationConstant.BIDDING_REQUEST_ID_MAP, c0340hp.f24408j);
            map.put(MediationConstant.BIDDING_WIN_ADN_ID, c0340hp.f24409l);
        }
    }

    public static void hp(com.byazt.iqm.l lVar, com.byazt.tgw.l lVar2, List<com.byazt.rt.jx> list, List<com.byazt.rt.jx> list2) {
        HashMap map;
        com.byazt.rt.jx next;
        if (lVar == null || lVar2 == null || list == null || list.size() == 0 || !lVar.lv() || !hp(lVar2)) {
            return;
        }
        Iterator<com.byazt.rt.jx> it = list.iterator();
        while (true) {
            map = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next != null && "baidu".equals(next.getAdNetWorkName())) {
                break;
            }
        }
        if (next == null) {
            next = list.get(0);
        }
        if (next != null) {
            if (com.byazt.di.l.l().ru() && (list2 != null || list2.size() != 0)) {
                map = new HashMap();
                for (com.byazt.rt.jx jxVar : list2) {
                    map.put(jxVar.getAdNetworkSlotId(), jxVar.getReqId());
                }
            }
            hp.put(lVar2.ky(), new C0340hp(next.getAdNetworkSlotId(), next.getAdNetWorkName(), next.getCpm(), map));
        }
    }

    private static boolean hp(com.byazt.tgw.l lVar) {
        if (lVar == null) {
            return false;
        }
        for (e eVar : lVar.rz()) {
            if (TextUtils.equals(eVar.v(), "baidu") && eVar.lv()) {
                return true;
            }
        }
        return false;
    }
}
