package com.byazt.ah;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.ah.hp;
import com.byazt.lyn.k;
import com.byazt.tgw.e;
import com.byazt.tgw.q;
import com.byazt.zg.d;
import com.byazt.zg.wv;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 688, 30})
/* loaded from: classes2.dex */
public class jx implements com.byazt.ewl.l, hp {
    public long eb;
    public com.byazt.xl.l hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.iqm.l f18002j;
    public q jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ktq.l f18003l;

    /* renamed from: s, reason: collision with root package name */
    public long f18004s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.ewl.hp f18005w = null;

    /* renamed from: a, reason: collision with root package name */
    public volatile long f18001a = -1;

    @Override // com.byazt.ewl.l
    public void nativeDislikeClick(com.byazt.rt.jx jxVar, String str) {
        if (jxVar == null || jxVar.getAdType() != 5) {
            return;
        }
        com.byazt.lsx.a.hp(jxVar, this.f18002j, str);
    }

    @Override // com.byazt.ewl.l
    public void notifyLoadFail(com.byazt.dq.hp hpVar) throws JSONException {
        hp(hpVar, true);
    }

    @Override // com.byazt.ewl.l
    public void notifyLoadSuccess(List<com.byazt.rt.jx> list) throws JSONException {
        jx jxVar;
        String str;
        if (list == null) {
            return;
        }
        long jCurrentTimeMillis = -1;
        if (this.f18001a == -1) {
            this.f18001a = SystemClock.elapsedRealtime();
        }
        this.eb = System.currentTimeMillis() - this.f18004s;
        for (com.byazt.rt.jx jxVar2 : list) {
            com.byazt.iqm.l lVar = this.f18002j;
            com.byazt.xl.l lVar2 = this.hp;
            com.byazt.mey.jx.hp(jxVar2, lVar, lVar2, this.jx, lVar2 != null ? hp(lVar2.zy()) : "");
        }
        List<com.byazt.rt.jx> listHp = hp(list);
        if (listHp.size() == 0) {
            hp(new com.byazt.dq.hp(50100, com.byazt.dq.hp.hp(50100)), false);
            return;
        }
        if (this.hp != null) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (xs.hp(this.hp.s())) {
                String strL = xs.l();
                jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                str = strL;
            } else {
                str = null;
            }
            long j2 = jCurrentTimeMillis;
            int i2 = list.size() > 0 ? 20000 : 820001;
            if (this.hp.hp() || this.hp.b()) {
                for (com.byazt.rt.jx jxVar3 : list) {
                    if (jxVar3 != null) {
                        hp(i2, jxVar3, 1, str, j2);
                    }
                }
                jxVar = this;
            } else {
                jxVar = this;
                jxVar.hp(i2, listHp.get(0), listHp.size(), str, j2);
            }
            if (jxVar.hp.cx() && !d.l(list)) {
                com.byazt.lsx.a.hp(list.get(0), jxVar.f18002j, jxVar.hp.s(), jxVar.eb);
                com.byazt.ktq.l lVar3 = jxVar.f18003l;
                if (lVar3 != null) {
                    com.byazt.owd.a.hp(lVar3.jx(), jxVar.f18003l.l(jxVar.hp.s()), jxVar.f18003l.r());
                }
            }
        } else {
            jxVar = this;
        }
        jxVar.f18003l = null;
        l(listHp);
        if (jxVar.hp.s() != null) {
            if ((jxVar.hp.s().zy() == 10 && jxVar.hp.s().a() == 1) || (jxVar.hp.s().zy() == 7 && jxVar.hp.s().a() == 8)) {
                notifyVideoCache(listHp, null);
            }
        }
    }

    @Override // com.byazt.ewl.l
    public void notifyVideoCache(final List<com.byazt.rt.jx> list, com.byazt.dq.hp hpVar) {
        if (list != null) {
            for (com.byazt.rt.jx jxVar : list) {
                if (jxVar != null) {
                    jxVar.setCacheSuccess(true);
                    com.byazt.iqm.l lVar = this.f18002j;
                    com.byazt.xl.l lVar2 = this.hp;
                    com.byazt.mey.jx.hp(jxVar, lVar, lVar2, this.jx, lVar2 != null ? hp(lVar2.zy()) : "");
                    hp(jxVar);
                }
            }
        }
        if (hpVar != null && hpVar.hp == 30010 && com.byazt.ee.hp.hp()) {
            com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.ah.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    if (jx.this.hp != null && jx.this.hp.cx()) {
                        com.byazt.lsx.a.hp(!d.l(list) ? (com.byazt.rt.jx) list.get(0) : null, jx.this.f18002j, jx.this.hp.s());
                    }
                    jx.this.hp();
                }
            }, 1000L);
            return;
        }
        com.byazt.xl.l lVar3 = this.hp;
        if (lVar3 != null && lVar3.cx()) {
            com.byazt.lsx.a.hp(!d.l(list) ? list.get(0) : null, this.f18002j, this.hp.s());
        }
        hp();
    }

    private List<com.byazt.rt.jx> hp(List<com.byazt.rt.jx> list) throws JSONException {
        List<com.byazt.rt.jx> list2;
        String strL;
        long jCurrentTimeMillis;
        ArrayList arrayList = new ArrayList();
        if (d.hp(list)) {
            list2 = list;
        } else {
            list2 = list;
            arrayList.addAll(list2);
        }
        if (this.hp != null && !d.l(list2) && (this.hp.hp() || this.hp.b())) {
            for (com.byazt.rt.jx jxVar : list2) {
                wv.hp(jxVar, this.hp.s(), this.f18002j, true);
                double dM = this.f18002j.m();
                if (dM > 0.0d && dM > jxVar.getCpm()) {
                    arrayList.remove(jxVar);
                    String strValueOf = String.valueOf(jxVar.getCpm());
                    String levelTag = jxVar.getLevelTag();
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (xs.hp(this.hp.s())) {
                        strL = xs.l();
                        jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                    } else {
                        strL = null;
                        jCurrentTimeMillis = -1;
                    }
                    String str = strL;
                    long j2 = jCurrentTimeMillis;
                    com.byazt.dq.hp hpVar = new com.byazt.dq.hp(50100, com.byazt.dq.hp.hp(50100));
                    hpVar.hp("is_dex_adapter", Integer.valueOf(this.hp.xh() ? 1 : 0));
                    com.byazt.lsx.a.hp(hpVar, this.f18002j, this.hp.s(), this.hp.jx(), this.hp.eb(), this.hp.a(), hp(this.hp.zy()), this.eb, strValueOf, levelTag, str, j2);
                    com.byazt.ktq.l lVar = this.f18003l;
                    if (lVar != null) {
                        com.byazt.owd.a.hp(lVar.jx(), this.f18003l.jx(jxVar), this.f18003l.r());
                    }
                }
            }
        }
        return arrayList;
    }

    private void l(List<com.byazt.rt.jx> list) {
        com.byazt.xl.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(list, lVar.s());
        }
        hp(new Runnable() { // from class: com.byazt.ah.jx.2
            @Override // java.lang.Runnable
            public void run() {
                if (jx.this.hp != null) {
                    com.byazt.wgi.jx.jx(jx.this.hp.zy(), jx.this.hp.l(), jx.this.hp.jl());
                }
            }
        });
    }

    private void hp(com.byazt.dq.hp hpVar, boolean z2) throws JSONException {
        long jCurrentTimeMillis;
        String str;
        com.byazt.dq.hp hpVar2;
        this.eb = System.currentTimeMillis() - this.f18004s;
        com.byazt.xl.l lVar = this.hp;
        if (lVar != null && lVar.s() != null) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (xs.hp(this.hp.s())) {
                String strL = xs.l();
                jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                str = strL;
            } else {
                jCurrentTimeMillis = -1;
                str = null;
            }
            long j2 = jCurrentTimeMillis;
            if (!this.hp.cx() && z2) {
                hpVar.hp("is_dex_adapter", Integer.valueOf(this.hp.xh() ? 1 : 0));
                com.byazt.lsx.a.hp(hpVar, this.f18002j, this.hp.s(), this.hp.jx(), this.hp.eb(), this.hp.a(), hp(this.hp.zy()), this.eb, (String) null, (String) null, str, j2);
                hpVar2 = hpVar;
            } else {
                hpVar2 = hpVar;
                com.byazt.lsx.a.hp(hpVar2, this.f18002j, this.hp.s(), this.hp.jx(), this.hp.eb(), this.hp.a(), hp(this.hp.zy()), this.eb);
            }
            e eVarS = this.hp.s();
            com.byazt.ktq.l lVar2 = this.f18003l;
            if (lVar2 != null) {
                com.byazt.owd.a.hp(lVar2.jx(), this.f18003l.jx(eVarS), this.f18003l.r());
            }
            this.f18003l = null;
            if (hpVar2 != null) {
                if (this.f18002j != null) {
                    if (com.byazt.rt.l.f25372l) {
                        StringBuilder sb = new StringBuilder();
                        com.byazt.iqm.l lVar3 = this.f18002j;
                        sb.append(com.byazt.aw.j.hp(lVar3 != null ? lVar3.sz() : "", "fill_fail"));
                        sb.append("AdNetWorkName[");
                        sb.append(eVarS.v());
                        sb.append("] AdUnitId[");
                        sb.append(eVarS.vv());
                        sb.append("] AdType[");
                        sb.append(com.byazt.rt.hp.hp(this.f18002j.ec(), eVarS.a(), eVarS));
                        sb.append("] 请求失败 (loadSort=");
                        sb.append(eVarS.o());
                        sb.append(",showSort=");
                        sb.append(eVarS.d());
                        sb.append("),error=");
                        sb.append(hpVar2.jx);
                        sb.append(",msg=");
                        sb.append(hpVar2.f19237j);
                        com.byazt.aw.l.j(MediationConstant.TAG, sb.toString());
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        com.byazt.iqm.l lVar4 = this.f18002j;
                        sb2.append(com.byazt.aw.j.hp(lVar4 != null ? lVar4.sz() : "", "fill_fail"));
                        sb2.append("AdNetWorkName[");
                        sb2.append(eVarS.v());
                        sb2.append("] AdType[");
                        sb2.append(com.byazt.rt.hp.hp(this.f18002j.ec(), eVarS.a(), eVarS));
                        sb2.append("] 请求失败 error=");
                        sb2.append(hpVar2.jx);
                        sb2.append(",msg=");
                        sb2.append(hpVar2.f19237j);
                        com.byazt.aw.l.j(MediationConstant.TAG, sb2.toString());
                    }
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(hpVar2.jx);
                String string = sb3.toString();
                String strHp = com.byazt.ee.hp.hp(this.hp.s().v(), hpVar2.f19237j);
                k kVarHp = k.hp();
                com.byazt.iqm.l lVar5 = this.f18002j;
                if (kVarHp.hp(lVar5 == null ? null : lVar5.sz(), this.hp.s().xs())) {
                    k kVarHp2 = k.hp();
                    com.byazt.iqm.l lVar6 = this.f18002j;
                    kVarHp2.hp(lVar6 != null ? lVar6.sz() : null, this.hp.s().v(), this.hp.s().vv(), com.byazt.ee.hp.hp(this.hp.s().v(), string, strHp));
                } else {
                    com.byazt.lyn.jx.hp().hp(this.hp.s().v(), this.hp.s().vv(), com.byazt.ee.hp.hp(this.hp.s().v(), string, strHp));
                }
            }
        }
        hp(hpVar);
    }

    private void hp(com.byazt.dq.hp hpVar) {
        com.byazt.xl.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(hpVar, lVar.s());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        com.byazt.xl.l lVar = this.hp;
        if (lVar != null) {
            lVar.q();
        }
    }

    private void hp(Runnable runnable) {
        com.byazt.aw.w.hp(runnable);
    }

    @Override // com.byazt.ah.hp
    public void hp(hp.InterfaceC0186hp interfaceC0186hp) throws JSONException {
        if (interfaceC0186hp == null) {
            return;
        }
        this.f18004s = System.currentTimeMillis();
        this.hp = interfaceC0186hp.hp();
        com.byazt.ktq.l lVarL = interfaceC0186hp.l();
        this.f18002j = lVarL.cx();
        this.jx = lVarL.xh();
        this.f18003l = lVarL;
        if (lVarL.getContext() == null) {
            com.byazt.dq.hp hpVar = new com.byazt.dq.hp("request adn context is null");
            hp(this.hp, lVarL, hpVar, "");
            notifyLoadFail(hpVar);
        } else {
            if (this.hp != null) {
                hp(lVarL);
                return;
            }
            com.byazt.dq.hp hpVar2 = new com.byazt.dq.hp("request adn waterfall request is null");
            hp(this.hp, lVarL, hpVar2, "");
            notifyLoadFail(hpVar2);
        }
    }

    private void hp(com.byazt.xl.l lVar, com.byazt.ktq.l lVar2, com.byazt.dq.hp hpVar, String str) throws JSONException {
        if (lVar == null || lVar2 == null || lVar.s() == null) {
            return;
        }
        e eVarS = lVar.s();
        String strHp = TextUtils.isEmpty(str) ? com.byazt.xob.hp.hp().hp(eVarS.vv()) : str;
        if (!eVarS.dy()) {
            com.byazt.lsx.a.hp(eVarS, this.f18002j, strHp, lVar.w(), lVar.eb() == 4 ? 3 : 0, lVar.jx(), lVar.eb(), lVar.a(), hpVar, lVar.j(), lVar2.xh().f25865w, false, SystemClock.elapsedRealtime() - lVar2.r());
            com.byazt.owd.a.hp(lVar2.jx(), lVar2.hp(eVarS), lVar2.r());
        } else if (eVarS.ud() != null) {
            com.byazt.lsx.a.hp(eVarS, this.f18002j, strHp);
            com.byazt.owd.a.hp(lVar2.jx(), lVar2.hp(eVarS), lVar2.r());
        }
    }

    private void hp(com.byazt.rt.jx jxVar) {
        com.byazt.xl.l lVar;
        if (this.f18002j == null || (lVar = this.hp) == null || lVar.s() == null) {
            return;
        }
        e eVarS = this.hp.s();
        if (!this.hp.cx() && jxVar != null) {
            com.byazt.lsx.a.hp(this.f18002j, jxVar, this.hp.s());
        }
        if (com.byazt.rt.l.f25372l) {
            com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f18002j.sz(), "fill") + "AdNetWorkName[" + eVarS.v() + "] AdUnitId[" + eVarS.vv() + "] AdType[" + com.byazt.rt.hp.hp(this.f18002j.ec(), eVarS.a(), eVarS) + "] 视频缓存成功 (loadSort=" + eVarS.o() + ",showSort=" + eVarS.d() + ")");
            return;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f18002j.sz(), "fill") + "AdNetWorkName[" + eVarS.v() + "] AdType[" + com.byazt.rt.hp.hp(this.f18002j.ec(), eVarS.a(), eVarS) + "] 视频缓存成功 ");
    }

    private void hp(int i2, com.byazt.rt.jx jxVar, int i3, String str, long j2) throws JSONException {
        com.byazt.xl.l lVar;
        if (this.f18002j == null || (lVar = this.hp) == null || lVar.s() == null) {
            return;
        }
        e eVarS = this.hp.s();
        String str2 = i2 == 20000 ? "load success" : "请求成功，但无广告可用";
        q qVar = this.jx;
        int i4 = (qVar == null || !qVar.f25862a) ? 0 : 1;
        if (!this.hp.cx() && jxVar != null) {
            com.byazt.lsx.a.hp(jxVar, i2, str2, this.eb, this.f18002j, this.hp.jx(), i3, i4, str, j2, this.f18001a != -1 ? SystemClock.elapsedRealtime() - this.f18001a : -1L);
            com.byazt.ktq.l lVar2 = this.f18003l;
            if (lVar2 != null) {
                com.byazt.owd.a.hp(lVar2.jx(), this.f18003l.l(jxVar), this.f18003l.r());
            }
        }
        if (com.byazt.rt.l.f25372l) {
            com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f18002j.sz(), "fill") + "AdNetWorkName[" + eVarS.v() + "] AdUnitId[" + eVarS.vv() + "] AdType[" + com.byazt.rt.hp.hp(this.f18002j.ec(), eVarS.a(), eVarS) + "] 请求成功 (loadSort=" + eVarS.o() + ",showSort=" + eVarS.d() + ")");
            return;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f18002j.sz(), "fill") + "AdNetWorkName[" + eVarS.v() + "] AdType[" + com.byazt.rt.hp.hp(this.f18002j.ec(), eVarS.a(), eVarS) + "] 请求成功");
    }

    private void hp(com.byazt.ktq.l lVar) throws JSONException {
        com.byazt.xl.l lVar2;
        com.byazt.xl.l lVar3 = this.hp;
        lVar3.hp(com.byazt.mey.jx.hp(this.f18002j, lVar3));
        this.hp.l(lVar.u().ky());
        if (!this.hp.e()) {
            if (this.hp.gu()) {
                this.f18005w = com.byazt.vne.j.hp(this.hp, this);
            } else if (com.byazt.qca.jx.hp(this.hp.s())) {
                this.f18005w = new com.byazt.vne.jx(this);
            }
        } else {
            Context context = com.byazt.di.l.getContext();
            com.byazt.xl.l lVar4 = this.hp;
            com.byazt.fct.l.hp(context, lVar4 != null ? lVar4.zy() : "");
            if (com.byazt.uhd.hp.hp(this.hp.zy()) == null) {
                com.byazt.lsx.a.hp("", lVar.v(), this.f18002j, this.hp.s(), new com.byazt.dq.hp(49014, "创建自定义广告对象 configuration is null"));
            } else {
                com.byazt.tgw.hp hpVarHp = com.byazt.dl.jx.hp().hp(this.hp.zy());
                if (hpVarHp == null) {
                    com.byazt.lsx.a.hp("", (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, "创建自定义广告对象 adNetworkConfValue is null"));
                } else if (hpVarHp.j() == null) {
                    com.byazt.lsx.a.hp("", (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, "创建自定义广告对象 getGMCustomConfig is null"));
                } else {
                    com.byazt.qy.hp hpVarHp2 = hpVarHp.j().hp(this.hp.o(), this.hp.v());
                    if (hpVarHp2 == null) {
                        com.byazt.lsx.a.hp("", (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, "创建自定义广告对象 adConfig is null"));
                    } else if (com.byazt.mey.jx.hp(hpVarHp2)) {
                        this.f18005w = com.byazt.vne.j.hp(hpVarHp2.hp(), this.hp, this);
                    } else {
                        com.byazt.lsx.a.hp("", (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, "创建自定义广告对象 check className false className is " + hpVarHp2.hp()));
                    }
                }
            }
        }
        com.byazt.ewl.hp hpVar = this.f18005w;
        if (hpVar != null) {
            String sdkVersion = hpVar.getSdkVersion(this.hp.zy());
            if (!TextUtils.isEmpty(sdkVersion) && (lVar2 = this.hp) != null && !TextUtils.isEmpty(lVar2.jl()) && !this.hp.e()) {
                com.byazt.xob.hp.hp().j(this.hp.jl(), sdkVersion);
            }
            hp(this.hp, lVar, null, sdkVersion);
            com.byazt.ewl.hp hpVar2 = this.f18005w;
            Context context2 = lVar.getContext();
            com.byazt.xl.l lVar5 = this.hp;
            com.byazt.iqm.l lVar6 = this.f18002j;
            hpVar2.adnStartLoad(context2, lVar5, lVar6, com.byazt.mey.jx.hp(lVar5, lVar6, lVar.dy()));
            if (this.hp.e()) {
                return;
            }
            com.byazt.xob.hp.hp().hp(this.hp.l(), this.hp.jl(), this.hp.s(), this.hp.jx());
            return;
        }
        com.byazt.aw.l.j(MediationConstant.TAG, "**********【重要】" + this.hp.zy() + "创建失败，请检查adapter是否接入 **********");
        com.byazt.lsx.a.hp(this.hp.s(), this.f18002j, this.hp.eb(), this.hp.a());
        hp(this.hp, lVar, new com.byazt.dq.hp("create adn loader fail"), "");
        notifyLoadFail(new com.byazt.dq.hp("create adn loader fail"));
    }

    private String hp(String str) {
        com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(str);
        if (jVarHp != null) {
            return jVarHp.getNetworkSdkVersion();
        }
        return null;
    }
}
