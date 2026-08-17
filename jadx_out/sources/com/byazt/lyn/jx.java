package com.byazt.lyn;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 30})
/* loaded from: classes3.dex */
public class jx {
    public Map<String, l> hp;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, ConcurrentHashMap<String, com.byazt.lyn.hp>> f22839l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 219})
    public static class hp {
        public static jx hp = new jx();
    }

    public static jx hp() {
        return hp.hp;
    }

    private jx() {
        this.f22839l = new ConcurrentHashMap();
    }

    public void hp(ConcurrentHashMap<String, l> concurrentHashMap) {
        this.hp = concurrentHashMap;
        if (concurrentHashMap != null) {
            com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "mAdnControlMap = ".concat(String.valueOf(concurrentHashMap)));
        } else {
            com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "mAdnControlMap is null ");
        }
    }

    public void hp(String str, String str2, String str3) {
        com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "setAdnError adnName = " + str + " slotId = " + str2 + " error = " + str3);
        Map<String, l> map = this.hp;
        l lVar = map != null ? map.get(str) : null;
        if (lVar != null) {
            for (String str4 : lVar.l()) {
                if (TextUtils.equals(str4, str3)) {
                    com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "setAdnError 命中errorCode = ".concat(String.valueOf(str4)));
                    long time = new Date().getTime() + lVar.hp();
                    com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "setAdnError 更新时间 = " + a.l(time));
                    com.byazt.lyn.hp hpVar = new com.byazt.lyn.hp(str, str2, time);
                    if (this.f22839l != null) {
                        ConcurrentHashMap<String, com.byazt.lyn.hp> concurrentHashMap = new ConcurrentHashMap<>();
                        concurrentHashMap.put(str2, hpVar);
                        this.f22839l.put(str, concurrentHashMap);
                        com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "setAdnError mAdnControlMap = " + this.f22839l);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public com.byazt.dq.hp hp(String str, String str2) {
        com.byazt.lyn.hp hpVar;
        ConcurrentHashMap<String, com.byazt.lyn.hp> concurrentHashMap;
        com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "checkLoad adnName = " + str + " slotId = " + str2);
        Map<String, ConcurrentHashMap<String, com.byazt.lyn.hp>> map = this.f22839l;
        if (map == null || (concurrentHashMap = map.get(str)) == null) {
            hpVar = null;
        } else {
            hpVar = concurrentHashMap.get(str2);
            com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "checkLoad 取出的showBean = ".concat(String.valueOf(hpVar)));
        }
        if (hpVar != null && hpVar.hp() != 0) {
            long time = new Date().getTime();
            if (time <= hpVar.hp()) {
                com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "checkLoad 当前时间 = " + a.l(time));
                com.byazt.aw.l.hp("TTMediationSDK_AdnShowControl", "checkLoad 规则有效时间 = " + a.l(hpVar.hp()));
                return new com.byazt.le.hp(40044, com.byazt.dq.hp.hp(40044));
            }
        }
        return null;
    }
}
