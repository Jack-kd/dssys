package com.byazt.lyn;

import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {
    public static final String hp = "TTMediationSDK_" + gu.class.getSimpleName();

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Pair<String, String>> f22829l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 1132})
    public static class hp {
        public static gu hp = new gu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public eb j(String str, String str2) {
        return s.hp().l(str, str2);
    }

    public void delete(String str, String str2) {
        s.hp().hp(str, str2);
    }

    public boolean jx(String str, String str2) {
        com.byazt.aw.l.hp(hp, "adn checkFreqctl ritId = " + str + " adnSlotId = " + str2);
        eb ebVarJ = j(str, str2);
        if (ebVarJ == null || !ebVarJ.s()) {
            return true;
        }
        for (w wVar : ebVarJ.gu()) {
            Date date = new Date();
            String str3 = hp;
            com.byazt.aw.l.hp(str3, "adn checkFreqctl ritId = " + str + " adnSlotId = " + str2 + "  date = " + date.getTime() + " item.getEffectiveTime() = " + wVar.j());
            if (date.getTime() > wVar.j()) {
                hp(ebVarJ, wVar.jx(), 0);
                hp(ebVarJ, wVar.jx(), a.hp(wVar.l()));
                com.byazt.aw.l.hp(str3, "adn checkFreqctl 有效期外计数需要清0，过期时间需要更新 = " + wVar.jx());
            } else {
                if (wVar.w() >= wVar.hp()) {
                    com.byazt.aw.l.hp(str3, "adn checkFreqctl 到了上线不可以展示 ritId = " + str + " adnSlotId = " + str2 + " ruleId = " + wVar.jx() + " count = " + wVar.w());
                    Map<String, Pair<String, String>> map = this.f22829l;
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append("_");
                    sb.append(str2);
                    String string = sb.toString();
                    String strJx = wVar.jx();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(wVar.w());
                    map.put(string, new Pair<>(strJx, sb2.toString()));
                    return false;
                }
                com.byazt.aw.l.hp(str3, "adn checkFreqctl 未到上线可以展示 ritId = " + str + " adnSlotId = " + str2 + " ruleId = " + wVar.jx() + " count = " + wVar.w());
            }
        }
        return true;
    }

    private gu() {
        this.f22829l = new ConcurrentHashMap();
    }

    public void l(final String str, final String str2) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.lyn.gu.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.aw.l.hp(gu.hp, "adn addShowFreqctlCount ritId = " + str + " adnSlotId = " + str2);
                eb ebVarJ = gu.this.j(str, str2);
                if (ebVarJ == null || !ebVarJ.s()) {
                    return;
                }
                for (w wVar : ebVarJ.gu()) {
                    if (wVar.w() < wVar.hp()) {
                        gu.this.hp(ebVarJ, wVar.jx(), wVar.w() + 1);
                    }
                }
            }
        });
    }

    public static gu hp() {
        return hp.hp;
    }

    public void l(eb ebVar) {
        zy.hp().l(ebVar);
    }

    public Pair<String, String> hp(String str, String str2) {
        return this.f22829l.get(str + "_" + str2);
    }

    public boolean hp(eb ebVar) {
        if (ebVar == null) {
            return false;
        }
        eb ebVarJ = j(ebVar.l(), ebVar.jx());
        if (ebVarJ == null) {
            com.byazt.aw.l.hp(hp, "adn freqctl 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(ebVar.a())) {
            com.byazt.aw.l.hp(hp, "adn freqctl version 为空 清空本地数据 ");
            delete(ebVarJ.l(), ebVarJ.jx());
            return false;
        }
        if (TextUtils.equals(ebVarJ.a(), ebVar.a())) {
            com.byazt.aw.l.hp(hp, "adn freqctl version 一致 version = " + ebVarJ.a() + " 无需处理");
            return false;
        }
        com.byazt.aw.l.hp(hp, "adn freqctl version不一致，缓存新规则 old version = " + ebVarJ.a() + "  new version " + ebVar.a());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(eb ebVar, String str, int i2) {
        s.hp().hp(ebVar, str, i2);
    }

    private void hp(eb ebVar, String str, long j2) {
        s.hp().hp(ebVar, str, j2);
    }
}
