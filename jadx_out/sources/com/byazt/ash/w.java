package com.byazt.ash;

import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.dnb.jl;
import com.byazt.jdb.hp;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.la.e;
import com.byazt.lf.k;
import com.byazt.rx.BaseConstants;
import com.byazt.sr.l;
import com.byazt.um.zy;
import com.byazt.xci.bu;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.f;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.rz;
import com.byazt.xci.s;
import com.byazt.xci.zx;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 513, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public abstract class w<T> extends com.byazt.sr.l<T> {
    public w(com.byazt.pc.l lVar) {
        super(lVar);
    }

    @Override // com.byazt.sr.l, com.byazt.esb.hp
    public void hp(int i2, com.byazt.jt.l lVar, mp mpVar) {
    }

    public abstract void hp(T t2);

    public abstract boolean hp();

    public abstract boolean hp(com.byazt.xci.hp hpVar);

    public abstract void l(com.byazt.jt.l lVar, List<mp> list, T t2);

    private void l(com.byazt.jt.l lVar, final mp mpVar, final com.byazt.pc.jx jxVar) {
        if (df.v(mpVar) == null) {
            return;
        }
        com.byazt.tw.a aVarHp = df.hp(1, mpVar);
        aVarHp.putExtra("material_meta", mpVar);
        aVarHp.putExtra("ad_slot", lVar);
        com.byazt.cwe.jx.hp(aVarHp, new com.byazt.fm.hp() { // from class: com.byazt.ash.w.3
            @Override // com.byazt.um.e.hp
            public void onVideoPreloadFail(zy zyVar, int i2, String str) {
                com.byazt.pc.jx jxVar2;
                if (df.zy(mpVar) && (jxVar2 = jxVar) != null) {
                    jxVar2.l();
                }
            }

            @Override // com.byazt.um.e.hp
            public void onVideoPreloadSuccess(zy zyVar, int i2) {
                com.byazt.pc.jx jxVar2 = jxVar;
                if (jxVar2 != null) {
                    jxVar2.l();
                }
            }
        });
    }

    @Override // com.byazt.sr.l, com.byazt.esb.hp
    public boolean hp(final com.byazt.jt.l lVar, List<mp> list) {
        mp mpVar = list.get(0);
        if (!com.byazt.sr.w.hp(lVar, mpVar, hp())) {
            return false;
        }
        new hp.C0281hp().w(mpVar.j()).hp(hp() ? "rewarded_video" : "fullscreen_interstitial_ad").j(mpVar.w_()).l("get_preload_ad").hp(new com.byazt.dhy.hp() { // from class: com.byazt.ash.w.1
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                if (lVar.cx() != null) {
                    int iHp = com.byazt.ktf.a.hp(lVar.cx());
                    if (iHp == 1) {
                        jSONObject2.put("req_type", 1);
                    } else if (iHp != 3) {
                        jSONObject2.put("req_type", -1);
                    } else {
                        jSONObject2.put("req_type", 3);
                    }
                }
                jSONObject2.put("preload_ad_type", 2);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
        return true;
    }

    @Override // com.byazt.sr.l, com.byazt.esb.hp
    public void hp(int i2, final List<mp> list, final com.byazt.jt.l lVar, final com.byazt.pc.w<T> wVar, Bundle bundle, final com.byazt.pc.eb ebVar) {
        final boolean z2 = bundle.getBoolean(PointParamKey.IS_CACHE, false);
        final boolean z3 = bundle.getBoolean("is_playAgain", false);
        final long j2 = bundle.getLong("start_time");
        final boolean z4 = bundle.getBoolean("is_second_page_ad", false);
        final mp mpVar = list.get(0);
        hp(lVar, list, (l.hp) new l.hp<T>() { // from class: com.byazt.ash.w.2
            @Override // com.byazt.sr.l.hp
            public void hp(final T t2) {
                for (mp mpVar2 : list) {
                    mpVar2.xm().l();
                    mpVar2.e(z2);
                }
                w.this.l(lVar, list, (List<mp>) t2);
                com.byazt.pc.jx jxVar = new com.byazt.pc.jx() { // from class: com.byazt.ash.w.2.1
                    public final AtomicBoolean jx = new AtomicBoolean(false);

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.byazt.pc.jx
                    public void hp() throws JSONException {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        if (!z3 && !z4) {
                            w.this.hp(lVar, (List<mp>) list, (List) t2);
                        }
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("is_play_again", z3);
                            jSONObject.put("is_second_page_ad", z4);
                            jSONObject.put(PointParamKey.IS_CACHE, z2);
                            AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                            jSONObject.put("cache_type", mpVar.gu(z2));
                            jSONObject.put("is_adm", !TextUtils.isEmpty(lVar.n()));
                            jSONObject.put("src_req_id", mpVar.lr());
                            jSONObject.put("is_map", mpVar.in());
                            jSONObject.put("load_duration", System.currentTimeMillis() - j2);
                            jSONObject.put("reward_full_scene_type", com.byazt.vsq.j.hp(mpVar));
                        } catch (JSONException unused) {
                        }
                        k.hp().hp(mpVar, "stats_reward_full_ad_loaded", jSONObject);
                        AnonymousClass2 anonymousClass23 = AnonymousClass2.this;
                        com.byazt.pc.w wVar2 = wVar;
                        if (wVar2 != 0) {
                            wVar2.hp(t2, z2, mpVar);
                        }
                        AnonymousClass2 anonymousClass24 = AnonymousClass2.this;
                        w.this.hp(lVar, mpVar, this);
                    }

                    @Override // com.byazt.pc.jx
                    public void jx() {
                        if (this.jx.compareAndSet(false, true)) {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            w.this.hp(z2, lVar, (List<mp>) list);
                        }
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.byazt.pc.jx
                    public void l() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        if (j2 != 0) {
                            com.byazt.jdb.j.l(mpVar, ky.l(w.this.hp() ? 7 : 8), j2);
                        }
                        w.this.hp((w) t2);
                        com.byazt.pc.w wVar2 = wVar;
                        if (wVar2 != 0) {
                            wVar2.hp(t2);
                        }
                    }
                };
                com.byazt.pc.eb ebVar2 = ebVar;
                if (ebVar2 != null) {
                    ebVar2.hp(jxVar);
                }
            }
        });
    }

    @Override // com.byazt.sr.l, com.byazt.esb.hp
    public void hp(com.byazt.jt.l lVar, int i2, String str, com.byazt.xci.l lVar2) throws JSONException {
        if (lVar != null) {
            hp(lVar.j(), i2, str, lVar2);
        }
    }

    @Override // com.byazt.sr.l, com.byazt.esb.hp
    public void hp(int i2, com.byazt.xci.hp hpVar, com.byazt.xci.l lVar, f fVar, com.byazt.jt.l lVar2, com.byazt.pc.w wVar, com.byazt.pc.eb ebVar) throws JSONException {
        if (hpVar.l() == null || hpVar.l().isEmpty()) {
            if (ebVar != null) {
                ebVar.hp(-3);
                return;
            }
            return;
        }
        Bundle bundle = fVar == null ? null : fVar.f27276u;
        boolean z2 = bundle != null && bundle.getBoolean("is_preload", false);
        boolean z3 = bundle != null && bundle.getBoolean("is_playAgain", false);
        long j2 = bundle != null ? bundle.getLong("start_time", 0L) : 0L;
        boolean z4 = bundle != null && bundle.getBoolean("is_second_page_ad", false);
        hpVar.l().size();
        mp mpVar = hpVar.l().get(0);
        if (hp(lVar2.j(), mpVar)) {
            return;
        }
        if (!mpVar.qb()) {
            if (ebVar != null) {
                ebVar.hp(-4);
                return;
            }
            return;
        }
        if (hp(hpVar)) {
            if (ebVar != null) {
                ebVar.hp(-3);
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (hpVar.l().size() > 1) {
            if (s.hp(i2).hp("mix_ad", new s.l.hp().hp(lVar2).hp(mpVar).hp())) {
                com.byazt.jz.hp.hp(hpVar.l());
                arrayList.add(mpVar);
            } else {
                arrayList.addAll(hpVar.l());
            }
        } else {
            arrayList.addAll(hpVar.l());
        }
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((mp) obj).yr(z2 ? 103 : 102);
        }
        if (z2) {
            com.byazt.pc.l lVar3 = this.hp;
            if (lVar3 != null) {
                lVar3.l().hp(lVar2, mpVar);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("src_req_id", mpVar.lr());
                jSONObject.put("is_map", mpVar.in());
                jSONObject.put("reward_full_scene_type", com.byazt.vsq.j.hp(mpVar));
            } catch (Exception unused) {
            }
            k.hp().hp(mpVar, "stats_reward_full_preload", jSONObject);
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("start_time", j2);
        bundle2.putBoolean("is_playAgain", z3);
        bundle2.putBoolean(PointParamKey.IS_CACHE, false);
        bundle2.putBoolean("is_second_page_ad", z4);
        hp(i2, arrayList, lVar2, wVar, bundle2, ebVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, int i2, String str2, com.byazt.xci.l lVar) throws JSONException {
        lVar.hp(i2);
        lVar.l(str2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_id", com.byazt.jz.s.u().ns());
            jSONObject.put("rit", str);
        } catch (Exception unused) {
        }
        lVar.hp(jSONObject);
        com.byazt.xci.l.hp(lVar);
    }

    public void hp(mp mpVar, com.byazt.jt.l lVar) {
        lVar.j();
        try {
            dy dyVarNq = mpVar.nq();
            if (dyVarNq != null && !TextUtils.isEmpty(dyVarNq.hp())) {
                com.byazt.cm.jx jxVar = new com.byazt.cm.jx(true);
                jxVar.hp(lVar.j());
                jxVar.hp(8);
                jxVar.jx(mpVar.j());
                jxVar.j(mpVar.w_());
                jxVar.l(ky.xs(mpVar));
                com.byazt.ws.l.hp(dyVarNq).to(jxVar);
            }
        } catch (Throwable unused) {
        }
        if (hd.e(mpVar) && hd.a(mpVar) != null) {
            e.hp(hd.a(mpVar).q(), hd.a(mpVar).e(), (com.byazt.la.jx) null);
        }
        if (hp()) {
            ArrayList<bu> arrayListSz = ea.sz(mpVar);
            int size = arrayListSz.size();
            int i2 = 0;
            int i3 = 0;
            while (i3 < size) {
                bu buVar = arrayListSz.get(i3);
                i3++;
                bu buVar2 = buVar;
                e.hp(buVar2.j(), buVar2.w(), (com.byazt.la.jx) null);
            }
            ArrayList<bu> arrayListW = rz.w(mpVar);
            int size2 = arrayListW.size();
            while (i2 < size2) {
                bu buVar3 = arrayListW.get(i2);
                i2++;
                bu buVar4 = buVar3;
                e.hp(buVar4.j(), buVar4.w(), (com.byazt.la.jx) null);
            }
        }
        if (TextUtils.isEmpty(zx.gu(mpVar))) {
            return;
        }
        e.hp(zx.gu(mpVar), zx.jl(mpVar), (com.byazt.la.jx) null);
    }

    @Override // com.byazt.sr.l
    public void hp(com.byazt.jt.l lVar, List<mp> list, T t2) {
        mp mpVar = list.get(0);
        com.byazt.pc.l lVar2 = this.hp;
        if (lVar2 != null) {
            lVar2.l().hp(lVar, mpVar, t2, mpVar.uj());
        }
    }

    @Override // com.byazt.esb.hp
    public void hp(com.byazt.jt.l lVar, mp mpVar, com.byazt.pc.jx jxVar) {
        hp(mpVar, lVar);
        if (com.byazt.we.hp.hp(mpVar)) {
            com.byazt.we.hp.l(mpVar);
            jxVar.l();
            return;
        }
        if (!ea.jx(mpVar, true)) {
            jxVar.l();
            return;
        }
        if (n.jx(mpVar)) {
            if (ec.hp(mpVar) && jl.hp(mpVar)) {
                l(lVar, mpVar, jxVar);
                return;
            } else {
                jxVar.l();
                return;
            }
        }
        if (!mp.jx(mpVar) && !jl.hp(mpVar)) {
            jxVar.l();
        } else {
            l(lVar, mpVar, jxVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(String str, mp mpVar) throws JSONException {
        if (!sz.l().l(str) || mpVar == null) {
            return false;
        }
        int i2 = hp() ? 7 : 8;
        mp mpVarL = com.byazt.vo.hp.hp().l(hp(), str);
        if (mpVarL == null) {
            return false;
        }
        if (mpVarL.tw() + mpVarL.su() < System.currentTimeMillis()) {
            com.byazt.fe.w.hp(i2).hp(str);
            return true;
        }
        if (!TextUtils.equals(mpVarL.ru(), mpVar.ru())) {
            if (com.byazt.jz.hp.hp(mpVar, hp() ? 7 : 8) != 200) {
                return true;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(mpVar.wt());
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject.get(next);
                mpVarL.q_().put(next, jSONObject.get(next));
            }
            mpVarL.b(mpVarL.q_().toString());
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // com.byazt.esb.hp
    public void hp(final com.byazt.jt.l lVar) {
        if (sz.l().l(lVar.j())) {
            f fVar = new f();
            fVar.hp = 2;
            if (sz.l().q(lVar.j()) || lVar.s() > 0.0f) {
                fVar.eb = 2;
            }
            sz.hp().l(lVar, fVar, hp() ? 7 : 8, new cx.l() { // from class: com.byazt.ash.w.4
                @Override // com.byazt.jz.cx.l
                public void hp(int i2, String str, com.byazt.xci.l lVar2) {
                    lVar2.hp(i2);
                    lVar2.l(str);
                    com.byazt.xci.l.hp(lVar2);
                }

                @Override // com.byazt.jz.cx.l
                public void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar2) throws JSONException {
                    if (hpVar.l() == null || hpVar.l().isEmpty()) {
                        w.this.hp(lVar.j(), -3, com.byazt.jz.eb.hp(-3), lVar2);
                        return;
                    }
                    mp mpVar = hpVar.l().get(0);
                    if (w.this.hp(lVar.j(), mpVar)) {
                        return;
                    }
                    if (!mpVar.qb() || w.this.hp(hpVar)) {
                        w.this.hp(lVar.j(), -4, com.byazt.jz.eb.hp(-4), lVar2);
                        return;
                    }
                    if (hpVar.l().size() > 1) {
                        if (s.hp(w.this.hp() ? 7 : 8).hp("mix_ad", new s.l.hp().hp(lVar).hp(mpVar).hp())) {
                            com.byazt.jz.hp.hp(hpVar.l());
                        }
                    }
                    if (w.this.hp != null) {
                        w.this.hp.l().hp(lVar, mpVar);
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("src_req_id", mpVar.lr());
                        jSONObject.put("is_map", mpVar.in());
                    } catch (Exception unused) {
                    }
                    k.hp().hp(mpVar, "stats_reward_full_preload", jSONObject);
                }
            });
        }
    }
}
