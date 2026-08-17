package com.byazt.vop;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.byazt.bki.gu;
import com.byazt.gkj.j;
import com.byazt.gkj.jx;
import com.byazt.zg.ns;
import com.byazt.zg.o;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

@com.byazt.kj.hp(hp = {0, 1, 1672, 34})
/* loaded from: classes3.dex */
public abstract class l {
    public jx hp;

    /* renamed from: l, reason: collision with root package name */
    public final Set<String> f26611l = new CopyOnWriteArraySet();

    /* renamed from: j, reason: collision with root package name */
    public boolean f26610j = false;
    public boolean jx = false;

    private synchronized void jx(gu guVar) {
        try {
            if (this.f26610j || !com.byazt.uhd.hp.jx(l(), this.jx)) {
                String strJx = jx();
                if (!TextUtils.isEmpty(strJx)) {
                    throw new Exception("adn init ".concat(String.valueOf(strJx)));
                }
                Map<String, Object> mapHp = hp();
                if (mapHp == null) {
                    throw new Exception("adn init getConfig() is null");
                }
                mapHp.put(MediationConstant.EXTRA_ADN_NAME, l());
                mapHp.put("q_x_c", Integer.valueOf(com.byazt.dl.l.hp().j()));
                mapHp.put("wf_q_x_c", Integer.valueOf(com.byazt.dl.l.hp().w()));
                j jVarHp = com.byazt.uhd.l.hp().hp(l(), guVar);
                if (jVarHp == null) {
                    throw new Exception("configuration is null");
                }
                hp(jVarHp, mapHp);
                if (!this.f26610j) {
                    com.byazt.uhd.hp.l(l(), this.jx);
                }
            }
        } catch (Throwable th) {
            com.byazt.uhd.hp.hp(l(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, th.toString()));
        }
    }

    public abstract Map<String, Object> hp();

    public void j() {
        l((gu) null);
    }

    public abstract String jx();

    public abstract String l();

    private void l(gu guVar) {
        com.byazt.tgw.hp hpVarHp = com.byazt.di.l.l().hp(l());
        if (guVar == null && hpVarHp == null && !MediationConstant.ADN_PANGLE.equals(l())) {
            return;
        }
        jx(guVar);
    }

    public void hp(gu guVar) {
        this.f26610j = true;
        l(guVar);
    }

    public void hp(gu guVar, jx jxVar) {
        this.hp = jxVar;
        this.f26610j = true;
        l(guVar);
    }

    private synchronized void hp(j jVar, Map<String, Object> map) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.byazt.aw.l.hp("TMe", "--==--time: start " + l());
        jVar.initAdn(com.byazt.di.l.getContext(), map, new jx() { // from class: com.byazt.vop.l.1
            @Override // com.byazt.gkj.jx
            public void hp() {
                if (l.this.hp != null) {
                    l.this.hp.hp();
                }
                if (TextUtils.equals(l.this.l(), MediationConstant.ADN_PANGLE)) {
                    ns.hp();
                }
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                com.byazt.aw.l.hp("TMe", "--==--time: " + l.this.l() + ", ----==----- " + jElapsedRealtime2);
                if (!l.this.f26611l.contains(l.this.l())) {
                    l.this.f26611l.add(l.this.l());
                    o.hp(l.this.l(), jElapsedRealtime2);
                }
                com.byazt.uhd.hp.hp(l.this.l(), (Pair<Boolean, String>) new Pair(Boolean.TRUE, ""));
            }

            @Override // com.byazt.gkj.jx
            public void hp(@NonNull com.byazt.dq.hp hpVar) {
                if (l.this.hp != null) {
                    l.this.hp.hp(hpVar);
                }
                if (hpVar != null) {
                    com.byazt.uhd.hp.hp(l.this.l(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, "errorCode = " + hpVar.hp + " errorMessage = " + hpVar.f19238l));
                }
            }
        });
    }
}
