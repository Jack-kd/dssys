package com.byazt.lyn;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 19})
/* loaded from: classes3.dex */
public class jl {
    public static final String hp = "TTMediationSDK_" + jl.class.getSimpleName();

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Long> f22837l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 757})
    public static class hp {
        public static jl hp = new jl();
    }

    public void delete(String str, String str2) {
        e.hp().hp(str, str2);
    }

    public q j(String str, String str2) {
        return e.hp().l(str, str2);
    }

    public boolean jx(String str, String str2) {
        String str3 = hp;
        com.byazt.aw.l.hp(str3, "adn checkPacing ritId = " + str + " adnSlotId = " + str2);
        q qVarJ = j(str, str2);
        if (qVarJ != null && qVarJ.s() && qVarJ.jl()) {
            long time = new Date().getTime();
            long jGu = qVarJ.gu();
            long jGu2 = qVarJ.gu() + qVarJ.q();
            com.byazt.aw.l.hp(str3, "adn checkPacing currentTime = " + a.l(time) + " showTime = " + a.l(jGu) + " pacingBean.getPacing() = " + qVarJ.q() + " pacingTime = " + a.l(jGu2));
            if (time <= jGu2) {
                this.f22837l.put(str + "_" + str2, Long.valueOf(time - jGu));
                return false;
            }
        }
        return true;
    }

    private jl() {
        this.f22837l = new ConcurrentHashMap();
    }

    public static jl hp() {
        return hp.hp;
    }

    public void l(final String str, final String str2) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.lyn.jl.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.aw.l.hp(jl.hp, "adn updateShowPacingTime ritId = " + str + " adnSlotId = " + str2);
                q qVarJ = jl.this.j(str, str2);
                if (qVarJ == null || !qVarJ.s()) {
                    return;
                }
                Date date = new Date();
                com.byazt.aw.l.hp(jl.hp, "adn updateShowPacingTime save time = " + a.l(date.getTime()));
                jl.this.hp(str, str2, date.getTime());
            }
        });
    }

    public long hp(String str, String str2) {
        Long l2 = this.f22837l.get(str + "_" + str2);
        if (l2 == null) {
            return -2L;
        }
        return l2.longValue();
    }

    public void l(q qVar) {
        e.hp().hp(qVar);
    }

    public boolean hp(q qVar) {
        if (qVar == null) {
            return false;
        }
        q qVarJ = j(qVar.l(), qVar.jx());
        if (qVarJ == null) {
            com.byazt.aw.l.hp(hp, "adn pacing 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(qVar.e())) {
            com.byazt.aw.l.hp(hp, "adn pacing ruleId 为空 清空本地数据 ");
            delete(qVar.l(), qVar.jx());
            return false;
        }
        if (TextUtils.equals(qVarJ.e(), qVar.e())) {
            com.byazt.aw.l.hp(hp, "adn pacing ruleId 一致 ruleId = " + qVarJ.e() + " 无需处理");
            return false;
        }
        com.byazt.aw.l.hp(hp, "adn pacing ruleId不一致，缓存新规则 old ruleId = " + qVarJ.e() + "  new ruleId = " + qVar.e());
        delete(qVar.l(), qVar.jx());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, String str2, long j2) {
        e.hp().hp(str, str2, j2);
    }
}
