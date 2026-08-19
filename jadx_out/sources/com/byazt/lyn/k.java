package com.byazt.lyn;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 42})
/* loaded from: classes3.dex */
public class k {
    public static volatile k hp;
    public Map<String, ConcurrentHashMap<String, hp>> jx = new ConcurrentHashMap();

    /* renamed from: l, reason: collision with root package name */
    public Map<String, List<l>> f22840l;

    private k() {
    }

    public static k hp() {
        if (hp == null) {
            synchronized (k.class) {
                try {
                    if (hp == null) {
                        hp = new k();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(ConcurrentHashMap<String, List<l>> concurrentHashMap) {
        this.f22840l = concurrentHashMap;
        if (concurrentHashMap == null) {
            com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "mRitAdnControlConfigMap is null ");
            return;
        }
        com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "mRitAdnControlConfigMap = " + this.f22840l);
    }

    public void hp(String str, String str2, String str3, String str4) {
        List<l> list;
        l next;
        com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "setRitAdnError rit_level adnName = " + str2 + " slotId = " + str3 + " error = " + str4);
        Map<String, List<l>> map = this.f22840l;
        if (map == null || (list = map.get(str2)) == null || list.size() == 0) {
            return;
        }
        Iterator<l> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                next = it.next();
                if (next.jx().contains(str)) {
                    break;
                }
            } else {
                next = null;
                break;
            }
        }
        if (next != null) {
            for (String str5 : next.l()) {
                if (TextUtils.equals(str5, str4)) {
                    com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "setAdnError rit_level 命中errorCode = ".concat(String.valueOf(str5)));
                    long jHp = next.hp() + new Date().getTime();
                    com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "setRitAdnError rit_level 更新时间 = " + a.l(jHp));
                    hp hpVar = new hp(str2, str3, jHp, str4);
                    Map<String, ConcurrentHashMap<String, hp>> map2 = this.jx;
                    if (map2 != null) {
                        ConcurrentHashMap<String, hp> concurrentHashMap = map2.get(str2);
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap<>();
                        }
                        concurrentHashMap.put(str + "_" + str3, hpVar);
                        this.jx.put(str2, concurrentHashMap);
                        StringBuilder sb = new StringBuilder("setRitAdnError rit_level mAdnControlMap = ");
                        sb.append(this.jx);
                        com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", sb.toString());
                        return;
                    }
                    return;
                }
            }
        }
    }

    public com.byazt.dq.hp hp(String str, String str2, String str3) {
        hp hpVar;
        ConcurrentHashMap<String, hp> concurrentHashMap;
        com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level adnName = " + str2 + " slotId = " + str3 + " primeRit = " + str);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            Map<String, ConcurrentHashMap<String, hp>> map = this.jx;
            if (map == null || (concurrentHashMap = map.get(str2)) == null) {
                hpVar = null;
            } else {
                hpVar = concurrentHashMap.get(str + "_" + str3);
                com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level 取出的showBean = ".concat(String.valueOf(hpVar)));
            }
            if (hpVar != null && hpVar.hp() != 0) {
                long time = new Date().getTime();
                if (time <= hpVar.hp()) {
                    com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level 当前时间 = " + a.l(time));
                    com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "checkLoad rit_level 规则有效时间 = " + a.l(hpVar.hp()));
                    return new com.byazt.le.hp(40064, com.byazt.dq.hp.hp(40064) + ", " + hpVar.l());
                }
            }
        }
        return null;
    }

    public boolean hp(String str, String str2) {
        Map<String, List<l>> map;
        List<l> list;
        com.byazt.aw.l.hp("TTMediationSDK_RitAdnShowControl", "hasRitAdnConfig rit_level adnName = " + str2 + " primeRit = " + str);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && (map = this.f22840l) != null && map.size() != 0 && (list = this.f22840l.get(str2)) != null && list.size() != 0) {
            Iterator<l> it = list.iterator();
            while (it.hasNext()) {
                List<String> listJx = it.next().jx();
                if (listJx != null && listJx.contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
