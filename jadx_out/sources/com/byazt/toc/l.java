package com.byazt.toc;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.common.m.f;
import com.baidu.mobads.sdk.api.SplashAd;
import com.byazt.zg.d;
import com.byazt.zg.ec;
import com.byazt.zg.ns;
import com.byazt.zg.v;
import com.byazt.zg.xs;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.SoftReference;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 225, 34})
/* loaded from: classes3.dex */
public abstract class l implements com.byazt.wij.hp {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.iqm.l f25948a;
    public com.byazt.tgw.l eb;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.rt.jx f25950j;
    public com.byazt.ktq.l jx;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.gu.l f25951k;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.sdu.a f25953q;

    /* renamed from: s, reason: collision with root package name */
    public SoftReference<Context> f25954s;

    /* renamed from: w, reason: collision with root package name */
    public String f25956w;
    public com.byazt.voc.l zy;

    /* renamed from: e, reason: collision with root package name */
    public boolean f25949e = false;
    public int gu = 0;
    public volatile boolean jl = false;
    public final Comparator<com.byazt.tgw.e> hp = new Comparator<com.byazt.tgw.e>() { // from class: com.byazt.toc.l.1
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(com.byazt.tgw.e eVar, com.byazt.tgw.e eVar2) {
            int iO;
            int iO2;
            if (eVar.o() == eVar2.o()) {
                iO = eVar.d();
                iO2 = eVar2.d();
            } else {
                iO = eVar.o();
                iO2 = eVar2.o();
            }
            return iO - iO2;
        }
    };

    /* renamed from: v, reason: collision with root package name */
    public final Comparator<com.byazt.tgw.e> f25955v = new Comparator<com.byazt.tgw.e>() { // from class: com.byazt.toc.l.2
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(com.byazt.tgw.e eVar, com.byazt.tgw.e eVar2) {
            if (eVar.b() > eVar2.b()) {
                return -1;
            }
            return eVar.b() < eVar2.b() ? 1 : 0;
        }
    };

    /* renamed from: l, reason: collision with root package name */
    public final Comparator<com.byazt.tgw.e> f25952l = new Comparator<com.byazt.tgw.e>() { // from class: com.byazt.toc.l.3
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(com.byazt.tgw.e eVar, com.byazt.tgw.e eVar2) {
            if (eVar.di() > eVar2.di()) {
                return -1;
            }
            return eVar.di() < eVar2.di() ? 1 : 0;
        }
    };

    public l(Context context) {
        this.f25954s = new SoftReference<>(context);
    }

    @DungeonFlag
    private void j(com.byazt.rt.jx jxVar) {
        HashMap map;
        if (jxVar == null || this.f25948a == null) {
            return;
        }
        if (TextUtils.equals(jxVar.getAdnName(), MediationConstant.ADN_XIAOMI)) {
            HashMap map2 = new HashMap();
            map2.put("ecpm", Long.valueOf((long) jxVar.getCpm()));
            jxVar.bidWinNotify(map2);
            return;
        }
        if (this.f25948a.lv()) {
            if (jxVar.isMultiBiddingAd() || jxVar.isClientBiddingAd() || jxVar.isServerBiddingAd()) {
                if (TextUtils.equals(jxVar.getAdnName(), "baidu")) {
                    map = new HashMap();
                    if (com.byazt.di.l.l().gd()) {
                        com.byazt.rt.jx jxVarJx = jx(jxVar);
                        map.put("ecpm", Integer.valueOf(jxVarJx != null ? (int) jxVarJx.getCpm() : 0));
                        map.put(SplashAd.KEY_BIDFAIL_ADN, 10);
                        map.put("ad_t", 7);
                        map.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                        map.put("bid_t", 3);
                    } else if (com.byazt.di.l.l().yj()) {
                        com.byazt.rt.jx jxVarJx2 = jx(jxVar);
                        int cpm = jxVarJx2 != null ? (int) jxVarJx2.getCpm() : 0;
                        int cpm2 = (int) jxVar.getCpm();
                        int iNextInt = new SecureRandom().nextInt(21) + 10;
                        com.byazt.aw.l.l(MediationConstant.TAG, "-------baidu_bid_win firstAdEcpm = " + cpm2 + " secondAdEcpm =" + cpm + " randomNumber = " + iNextInt);
                        map.put("ecpm", Integer.valueOf(Math.max(cpm2 - iNextInt, cpm)));
                        map.put(SplashAd.KEY_BIDFAIL_ADN, 10);
                        map.put("ad_t", 7);
                        map.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                        map.put("bid_t", 4);
                    } else {
                        map.put("ecpm", 0);
                        map.put(SplashAd.KEY_BIDFAIL_ADN, 10);
                        map.put("ad_t", 7);
                        map.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                        map.put("bid_t", 4);
                    }
                } else if (TextUtils.equals(jxVar.getAdnName(), MediationConstant.ADN_KS)) {
                    map = new HashMap();
                    if (com.byazt.di.l.l().tw()) {
                        com.byazt.rt.jx jxVarJx3 = jx(jxVar);
                        map.put("bidEcpm", Double.valueOf(jxVar.getCpm()));
                        map.put("lossBidEcpm", Double.valueOf(jxVarJx3 != null ? jxVarJx3.getCpm() : 0.0d));
                    } else {
                        map.put("bidEcpm", 0);
                        map.put("lossBidEcpm", 0);
                    }
                } else {
                    map = null;
                }
                jxVar.bidWinNotify(map);
            }
        }
    }

    private List<com.byazt.tgw.e> w(List<com.byazt.tgw.e> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.byazt.tgw.e> it = list.iterator();
        while (it.hasNext()) {
            com.byazt.tgw.e next = it.next();
            if (next.r()) {
                it.remove();
                arrayList2.add(next);
            } else if (next.dy() || next.pu() || next.lv()) {
                it.remove();
                com.byazt.tgw.e eVar = new com.byazt.tgw.e();
                eVar.w(next.vv());
                eVar.e(next.ec());
                eVar.jx(next.v());
                eVar.j(next.s());
                eVar.hp(next.eb());
                eVar.gu(next.o());
                eVar.jl(next.d());
                eVar.q(next.zy());
                StringBuilder sb = new StringBuilder();
                sb.append(next.b());
                eVar.eb(sb.toString());
                eVar.l(next.k());
                eVar.s(next.wv());
                eVar.q(next.hq());
                eVar.hp(next.ud());
                eVar.a(next.cx());
                com.byazt.rt.jx jxVarHp = hp(eVar);
                if (jxVarHp != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(jxVarHp.getBiddingCpmWithOutExchangeRate());
                    eVar.eb(sb2.toString());
                }
                arrayList.add(eVar);
            }
        }
        list.addAll(arrayList);
        Collections.sort(list, this.f25952l);
        Collections.sort(arrayList2, this.hp);
        list.addAll(0, arrayList2);
        return list;
    }

    public List<com.byazt.dq.l> e() {
        return this.jx.wv();
    }

    @Override // com.byazt.wij.hp
    public void eb() {
    }

    public com.byazt.iqm.l ec() {
        return this.f25948a;
    }

    public com.byazt.dq.jx f_() {
        if (this.f25950j == null || v.hp()) {
            return null;
        }
        return com.byazt.zg.jl.hp(this.f25948a, this.f25950j, true);
    }

    public List<com.byazt.dq.jx> gu() {
        if (!com.byazt.di.l.l().lv()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<com.byazt.rt.jx> it = this.jx.k().iterator();
        while (it.hasNext()) {
            com.byazt.rt.jx next = it.next();
            if (next != null) {
                arrayList.add(com.byazt.zg.jl.hp(this.f25948a, next, false));
            }
        }
        return arrayList;
    }

    @Override // com.byazt.wij.hp
    public void hp(@Nullable String str) {
    }

    public List<com.byazt.dq.jx> jl() {
        if (!com.byazt.di.l.l().lv()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.byazt.rt.jx jxVar : this.jx.hp(false)) {
            if (jxVar != null) {
                arrayList.add(com.byazt.zg.jl.hp(this.f25948a, jxVar, false));
            }
        }
        return arrayList;
    }

    public void jx() {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            jxVar.onDestroy();
        }
        this.jx.as();
        this.f25953q = null;
    }

    public List<com.byazt.tgw.e> k() {
        com.byazt.tgw.l lVar = this.eb;
        if (lVar == null || lVar.rz() == null || this.eb.rz().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.byazt.tgw.e eVar : this.eb.rz()) {
            if (eVar != null && eVar.ec() == 100) {
                arrayList.add(eVar);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.wij.hp
    public void l(@NonNull com.byazt.dq.hp hpVar) {
    }

    public com.byazt.tfn.eb q() {
        com.byazt.aw.l.l(MediationConstant.TAG, "ad load start.....");
        if (com.byazt.di.l.l().kg()) {
            com.byazt.lsx.a.hp((com.byazt.rt.jx) null, this.jx.cx(), xs.hp(), 3);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.byazt.tfn.gu());
        arrayList.add(new com.byazt.tfn.jl());
        arrayList.add(new com.byazt.tfn.w());
        arrayList.add(new com.byazt.tfn.jx());
        arrayList.add(new com.byazt.tfn.zy());
        arrayList.add(new com.byazt.tfn.a());
        arrayList.add(new com.byazt.tfn.s());
        arrayList.add(new com.byazt.tfn.l());
        arrayList.add(new com.byazt.tfn.j());
        com.byazt.tfn.eb ebVar = new com.byazt.tfn.eb(arrayList);
        ebVar.hp(this.jx);
        return ebVar;
    }

    @Override // com.byazt.wij.hp
    public void s() {
    }

    public int sz() {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar == null || this.jx == null) {
            return 0;
        }
        return TextUtils.equals(jxVar.getAdNetworkSlotId(), this.jx.l()) ? 1 : 0;
    }

    public int u() {
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null) {
            return jxVar.getInteractionType();
        }
        return -1;
    }

    public com.byazt.dq.jx v() {
        List<com.byazt.rt.jx> listHp;
        com.byazt.iqm.l lVar = this.f25948a;
        if ((lVar != null && !lVar.vq() && !com.byazt.di.l.l().lv()) || (listHp = this.jx.hp(true)) == null || listHp.size() == 0) {
            return null;
        }
        return com.byazt.zg.jl.hp(this.f25948a, listHp.get(0), false);
    }

    public int vv() {
        com.byazt.iqm.l lVar = this.f25948a;
        if (lVar != null) {
            return lVar.w();
        }
        return 0;
    }

    public Map<String, Object> xs() {
        com.byazt.rt.jx jxVar = this.f25950j;
        Map<String, Object> mediaExtraInfo = jxVar != null ? jxVar.getMediaExtraInfo() : null;
        if (mediaExtraInfo == null) {
            mediaExtraInfo = jx(this.f25956w);
        }
        com.byazt.rt.jx jxVar2 = this.f25950j;
        if (jxVar2 != null && jxVar2.getExtraMsg() != null) {
            mediaExtraInfo.putAll(this.f25950j.getExtraMsg());
        }
        if (this.f25948a.r() != null) {
            mediaExtraInfo.putAll(this.f25948a.r());
        }
        if (v.hp()) {
            String strHp = v.hp(com.byazt.zg.jl.hp(this.f25948a, this.f25950j, true));
            if (!TextUtils.isEmpty(strHp)) {
                mediaExtraInfo.put("get_show_ecpm_info", strHp);
            }
        }
        return mediaExtraInfo;
    }

    public boolean zy() {
        boolean zJx = ns.jx(com.byazt.di.l.getContext());
        boolean zL = ns.l(com.byazt.di.l.getContext());
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w) + "setting 下发是否为弱网执行：" + com.byazt.di.l.l().u() + "，当前网络环境：2G-type=" + zJx + ",3G-type=" + zL);
        if (com.byazt.di.l.l().u()) {
            return zJx || zL;
        }
        return false;
    }

    public static int l(String str) {
        if (!com.byazt.lyn.zy.hp().s(str)) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==--: 命中展示频次");
            return 840041;
        }
        if (com.byazt.lyn.zy.hp().jx(str)) {
            return 0;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, "--==--: 命中展示间隔");
        return 840042;
    }

    @Override // com.byazt.wij.hp
    public void hp(@Nullable List<com.byazt.rt.jx> list, @Nullable com.byazt.dq.hp hpVar) {
    }

    public void hp(com.byazt.iqm.l lVar) {
        com.byazt.ktq.l lVarHp = com.byazt.ktq.l.hp(this.f25954s, lVar, this);
        this.jx = lVarHp;
        com.byazt.iqm.l lVarCx = lVarHp.cx();
        this.f25948a = lVarCx;
        this.f25956w = lVarCx.sz();
        this.jx.dy().put("allow_show_close_btn", Boolean.valueOf(lVar.xs()));
        this.eb = this.jx.u();
    }

    private com.byazt.rt.jx jx(com.byazt.rt.jx jxVar) {
        LinkedList<com.byazt.rt.jx> linkedList = new LinkedList();
        com.byazt.ktq.l lVar = this.jx;
        if (lVar != null) {
            if (lVar.k() != null && this.jx.k().size() != 0) {
                linkedList.addAll(this.jx.k());
            }
            if (this.jx.jl() != null && this.jx.jl().size() != 0) {
                linkedList.addAll(this.jx.jl());
            }
            if (this.jx.gu() != null && this.jx.gu().size() != 0) {
                linkedList.addAll(this.jx.gu());
            }
        }
        com.byazt.rt.jx jxVar2 = null;
        if (linkedList.size() != 0 && jxVar != null) {
            double cpm = Double.MIN_NORMAL;
            for (com.byazt.rt.jx jxVar3 : linkedList) {
                if (jxVar3.getCpm() < jxVar.getCpm() && jxVar3.getCpm() > cpm) {
                    cpm = jxVar3.getCpm();
                    jxVar2 = jxVar3;
                }
            }
        }
        return jxVar2;
    }

    public HashMap<String, com.byazt.rt.jx> l(List<com.byazt.rt.jx> list) {
        HashMap<String, com.byazt.rt.jx> map = new HashMap<>();
        if (list != null && list.size() > 0) {
            for (com.byazt.rt.jx jxVar : list) {
                if (jxVar != null) {
                    map.put(jxVar.getAdNetworkSlotId(), jxVar);
                }
            }
        }
        return map;
    }

    public void hp(com.byazt.rt.jx jxVar) {
        if (com.byazt.di.l.l().kg()) {
            com.byazt.lsx.a.hp(jxVar, this.f25948a, xs.hp(), 2);
        }
    }

    @DungeonFlag
    public void hp(List<com.byazt.rt.jx> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.byazt.pj.hp.hp(this.f25948a, this.eb, list, this.jx.k());
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            j((com.byazt.rt.jx) obj);
        }
        if (this.jx.k().size() == 0) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.jx.k());
        com.byazt.rt.jx jxVarJx = jx(list);
        int size2 = arrayList2.size();
        while (i2 < size2) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            com.byazt.rt.jx jxVar = (com.byazt.rt.jx) obj2;
            Iterator<com.byazt.rt.jx> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    hp(jxVarJx, jxVar, 1);
                    break;
                }
                com.byazt.rt.jx next = it.next();
                if (next == null || jxVar == null || next != jxVar) {
                }
            }
        }
    }

    public void l(com.byazt.rt.jx jxVar) {
        com.byazt.iqm.l lVar = this.f25948a;
        int mediationRitReqType = jxVar.getMediationRitReqType(lVar != null ? lVar.hp() : null);
        jxVar.setMediationRitReqType(3);
        jxVar.setMediationRitReqTypeSrc(mediationRitReqType);
    }

    public List<com.byazt.tgw.e> l() {
        boolean z2;
        List<com.byazt.tgw.e> arrayList = new ArrayList<>();
        com.byazt.ktq.l lVar = this.jx;
        if (lVar == null || this.eb == null || lVar.e()) {
            return arrayList;
        }
        Map<Integer, List<com.byazt.tgw.e>> mapWv = this.eb.wv();
        ArrayList arrayList2 = new ArrayList();
        for (Integer num : mapWv.keySet()) {
            if (num != null) {
                arrayList2.add(num);
            }
        }
        com.byazt.qca.l.hp(arrayList2);
        int i2 = 0;
        if (arrayList2.size() > 0) {
            int i3 = 0;
            z2 = false;
            while (i2 < arrayList2.size()) {
                Integer num2 = (Integer) arrayList2.get(i2);
                if (num2 != null) {
                    int iIntValue = num2.intValue();
                    if (iIntValue == -100) {
                        i3 = 1;
                    }
                    if (iIntValue < -100) {
                        z2 = true;
                    }
                    if (mapWv.get(num2) != null) {
                        arrayList.addAll(mapWv.get(num2));
                    }
                }
                i2++;
            }
            i2 = i3;
        } else {
            z2 = false;
        }
        if (i2 == 0 && this.eb.lv() && !d.l(this.jx.k())) {
            Iterator<com.byazt.rt.jx> it = this.jx.k().iterator();
            while (it.hasNext()) {
                com.byazt.rt.jx next = it.next();
                if (this.eb != null && (next.isMultiBiddingAd() || next.isClientBiddingAd())) {
                    com.byazt.tgw.e eVarA = this.eb.a(next.getAdNetworkSlotId());
                    if (eVarA != null) {
                        arrayList.add(eVarA);
                    }
                }
            }
        }
        if (!z2) {
            List<com.byazt.tgw.e> listK = k();
            if (!d.hp(listK)) {
                arrayList.addAll(listK);
            }
        }
        Iterator<com.byazt.tgw.e> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                it2.remove();
            }
        }
        if (!this.eb.dy() && !this.eb.lv()) {
            if (j(arrayList)) {
                Collections.sort(arrayList, this.f25952l);
                return arrayList;
            }
            Collections.sort(arrayList, this.hp);
            return arrayList;
        }
        return w(arrayList);
    }

    private com.byazt.rt.jx jx(List<com.byazt.rt.jx> list) {
        com.byazt.rt.jx jxVar = null;
        if (list != null && list.size() != 0) {
            if (list.size() == 1) {
                return list.get(0);
            }
            double cpm = Double.MIN_NORMAL;
            for (com.byazt.rt.jx jxVar2 : list) {
                if (jxVar2.getCpm() > cpm) {
                    cpm = jxVar2.getCpm();
                    jxVar = jxVar2;
                }
            }
        }
        return jxVar;
    }

    public static Map<String, Object> jx(String str) {
        ec ecVar = new ec();
        ecVar.put(MediationConstant.KEY_GM_PRIME_RIT, str);
        return ecVar;
    }

    @DungeonFlag
    public void hp(com.byazt.rt.jx jxVar, com.byazt.rt.jx jxVar2, int i2) {
        if (jxVar2 == null || this.f25948a == null || i2 <= 0) {
            return;
        }
        if (TextUtils.equals(jxVar2.getAdnName(), MediationConstant.ADN_XIAOMI)) {
            HashMap map = new HashMap();
            map.put("ecpm", Long.valueOf(jxVar != null ? (long) jxVar.getCpm() : 0L));
            map.put(MediationConstant.KEY_REASON, "其他");
            map.put(ATBiddingNotice.ADN_ID, 1);
            jxVar2.bidLoseNotify(map);
            return;
        }
        if (this.f25948a.lv()) {
            HashMap map2 = new HashMap();
            map2.put(MediationConstant.BIDDING_LOSE_REASON, com.byazt.ktf.l.hp(i2));
            map2.put("bidding_lose_reason_NUM", Integer.valueOf(i2));
            if (TextUtils.equals(jxVar2.getAdnName(), "baidu")) {
                if (com.byazt.di.l.l().gd()) {
                    map2.put("ecpm", Integer.valueOf(jxVar != null ? (int) jxVar.getCpm() : 0));
                    map2.put(SplashAd.KEY_BIDFAIL_ADN, 10);
                    map2.put("ad_t", 7);
                    map2.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    map2.put("bid_t", 3);
                    map2.put(MediationConstant.KEY_REASON, 203);
                    map2.put(f.bh, 1);
                    map2.put("is_c", 2);
                } else if (com.byazt.di.l.l().yj()) {
                    map2.put("ecpm", Integer.valueOf(jxVar != null ? (int) jxVar.getCpm() : 0));
                    map2.put(SplashAd.KEY_BIDFAIL_ADN, 10);
                    map2.put("ad_t", 7);
                    map2.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    map2.put("bid_t", 4);
                    map2.put(MediationConstant.KEY_REASON, 203);
                    map2.put(f.bh, 1);
                    map2.put("is_c", 2);
                } else {
                    map2.put("ecpm", 0);
                    map2.put(SplashAd.KEY_BIDFAIL_ADN, 10);
                    map2.put("ad_t", 7);
                    map2.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    map2.put("bid_t", 4);
                    map2.put(MediationConstant.KEY_REASON, 203);
                    map2.put(f.bh, 1);
                    map2.put("is_c", 2);
                }
            } else if (TextUtils.equals(jxVar2.getAdnName(), MediationConstant.ADN_KS)) {
                if (com.byazt.di.l.l().tw()) {
                    map2.put("failureCode", 2);
                    map2.put("bidEcpm", Double.valueOf(jxVar != null ? jxVar.getCpm() : 0.0d));
                    map2.put("adType", 2);
                    map2.put(MediationConstant.KEY_ADN_NAME, "other");
                } else {
                    map2.put("failureCode", 0);
                    map2.put("bidEcpm", 0);
                    map2.put("adType", 2);
                    map2.put(MediationConstant.KEY_ADN_NAME, "other");
                }
            }
            jxVar2.bidLoseNotify(map2);
        }
    }

    private boolean j(List<com.byazt.tgw.e> list) {
        Iterator<com.byazt.tgw.e> it = list.iterator();
        while (it.hasNext()) {
            if (!TextUtils.isEmpty(it.next().cx())) {
                return true;
            }
        }
        return false;
    }

    private com.byazt.rt.jx hp(com.byazt.tgw.e eVar) {
        if (eVar == null) {
            return null;
        }
        String strVv = eVar.vv();
        String strJx = eVar.ud() != null ? eVar.ud().jx() : null;
        if (TextUtils.isEmpty(strVv)) {
            return null;
        }
        Iterator<com.byazt.rt.jx> it = this.jx.gu().iterator();
        while (it.hasNext()) {
            com.byazt.rt.jx next = it.next();
            if (next != null && strVv.equals(next.getAdNetworkSlotId())) {
                return next;
            }
        }
        Iterator<com.byazt.rt.jx> it2 = this.jx.jl().iterator();
        while (it2.hasNext()) {
            com.byazt.rt.jx next2 = it2.next();
            if (next2 != null && strVv.equals(next2.getAdNetworkSlotId())) {
                return next2;
            }
        }
        Iterator<com.byazt.rt.jx> it3 = this.jx.k().iterator();
        while (it3.hasNext()) {
            com.byazt.rt.jx next3 = it3.next();
            if (next3 != null) {
                if (next3.isServerBiddingAd() && !TextUtils.isEmpty(strJx) && !TextUtils.isEmpty(next3.getAid())) {
                    if (strVv.equals(next3.getAdNetworkSlotId()) && strJx.equals(next3.getAid())) {
                        return next3;
                    }
                } else if (strVv.equals(next3.getAdNetworkSlotId())) {
                    return next3;
                }
            }
        }
        return null;
    }

    public void hp(com.byazt.voc.l lVar) {
        this.zy = lVar;
    }

    public void hp(com.byazt.gu.l lVar) {
        this.f25951k = lVar;
    }
}
