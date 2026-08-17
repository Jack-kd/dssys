package com.byazt.lyn;

import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 302})
/* loaded from: classes3.dex */
public class zy {
    public Map<String, Long> hp;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Pair<String, String>> f22848l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 312})
    public static class hp {
        public static zy hp = new zy();
    }

    public Pair<String, String> a(String str) {
        return this.f22848l.get(str);
    }

    public eb e(String str) {
        return s.hp().l(str);
    }

    public void eb(final String str) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.lyn.zy.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "addShowFreqctlCount ritId = " + str);
                eb ebVarE = zy.this.e(str);
                if (ebVarE == null || !ebVarE.s()) {
                    return;
                }
                for (w wVar : ebVarE.gu()) {
                    if (wVar.w() < wVar.hp()) {
                        zy.this.hp(ebVarE, wVar.jx(), wVar.w() + 1);
                    }
                }
            }
        });
    }

    public void j(String str) {
        e.hp().hp(str);
    }

    public boolean jx(String str) {
        q qVarW = w(str);
        if (qVarW != null && qVarW.s() && qVarW.jl()) {
            long time = new Date().getTime();
            long jGu = qVarW.gu();
            long jGu2 = qVarW.gu() + qVarW.q();
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "checkPacing currentTime = " + a.l(time) + " showTime = " + a.l(jGu) + " pacingBean.getPacing() = " + qVarW.q() + " pacingTime = " + a.l(jGu2));
            if (time <= jGu2) {
                this.hp.put(str, Long.valueOf(time - jGu));
                return false;
            }
        }
        return true;
    }

    public void l() {
        this.f22848l = new ConcurrentHashMap();
        this.hp = new ConcurrentHashMap();
    }

    public void q(String str) {
        s.hp().hp(str);
    }

    public boolean s(String str) {
        eb ebVarE = e(str);
        if (ebVarE == null || !ebVarE.s()) {
            return true;
        }
        for (w wVar : ebVarE.gu()) {
            Date date = new Date();
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "checkFreqctl date = " + date.getTime() + " item.getEffectiveTime() = " + wVar.j());
            if (date.getTime() > wVar.j()) {
                hp(ebVarE, wVar.jx(), 0);
                hp(ebVarE, wVar.jx(), a.hp(wVar.l()));
                com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "checkFreqctl 有效期外计数需要清0，过期时间需要更新 = " + wVar.jx());
            } else {
                if (wVar.w() >= wVar.hp()) {
                    com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "checkFreqctl 到了上线不可以展示 ruleId = " + wVar.jx() + " count = " + wVar.w());
                    Map<String, Pair<String, String>> map = this.f22848l;
                    String strJx = wVar.jx();
                    StringBuilder sb = new StringBuilder();
                    sb.append(wVar.w());
                    map.put(str, new Pair<>(strJx, sb.toString()));
                    return false;
                }
                com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "checkFreqctl 未到上线可以展示 ruleId = " + wVar.jx() + " count = " + wVar.w());
            }
        }
        return true;
    }

    public q w(String str) {
        return e.hp().l(str);
    }

    private zy() {
        l();
    }

    public static zy hp() {
        return hp.hp;
    }

    public long hp(String str) {
        Long l2 = this.hp.get(str);
        if (l2 == null) {
            return -2L;
        }
        return l2.longValue();
    }

    public void l(final String str) {
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.lyn.zy.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "updateShowPacingTime ritId = " + str);
                q qVarW = zy.this.w(str);
                if (qVarW == null || !qVarW.s()) {
                    return;
                }
                Date date = new Date();
                com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "updateShowPacingTime save time = " + a.l(date.getTime()));
                zy.this.hp(str, date.getTime());
            }
        });
    }

    public void l(q qVar) {
        e.hp().hp(qVar);
    }

    public boolean hp(q qVar) {
        if (qVar == null) {
            return false;
        }
        q qVarW = w(qVar.l());
        if (qVarW == null) {
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "pacing 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(qVar.e())) {
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "pacing ruleId 为空 清空本地数据 ");
            j(qVar.j());
            return false;
        }
        if (TextUtils.equals(qVarW.e(), qVar.e())) {
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "pacing ruleId 一致 ruleId = " + qVarW.e() + " 无需处理");
            return false;
        }
        com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "pacing ruleId不一致，缓存新规则 old ruleId = " + qVarW.e() + "  new ruleId = " + qVar.e());
        StringBuilder sb = new StringBuilder("pacing 删除 ritId = ");
        sb.append(qVar.j());
        com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", sb.toString());
        j(qVar.j());
        return true;
    }

    public void l(eb ebVar) {
        s.hp().hp(ebVar);
    }

    public void hp(String str, long j2) {
        e.hp().hp(str, j2);
    }

    public boolean hp(eb ebVar) {
        if (ebVar == null) {
            return false;
        }
        eb ebVarE = e(ebVar.l());
        if (ebVarE == null) {
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "freqctl 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(ebVar.w())) {
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "freqctl version 为空 清空本地数据 ");
            q(ebVarE.l());
            return false;
        }
        if (TextUtils.equals(ebVarE.w(), ebVar.w())) {
            com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "freqctl version 一致 version = " + ebVarE.w() + "无需处理");
            return false;
        }
        com.byazt.aw.l.hp("TTMediationSDK_IntervalShowControl", "freqctl version不一致，缓存新规则 old version = " + ebVarE.w() + "  new version " + ebVar.w());
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
