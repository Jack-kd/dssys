package com.byazt.tfn;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.pj.j;
import com.byazt.tfn.hp;
import com.byazt.zg.d;
import com.byazt.zg.hq;
import com.byazt.zg.vv;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 842, 34})
/* loaded from: classes3.dex */
public class l implements hp, com.byazt.kq.hp {

    /* renamed from: a, reason: collision with root package name */
    public String f25777a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.rn.hp f25778e;
    public com.byazt.iqm.l eb;
    public Map<Integer, List<com.byazt.tgw.e>> hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.ktq.l f25779j;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ktq.hp f25780l;

    /* renamed from: q, reason: collision with root package name */
    public Handler f25781q;

    /* renamed from: s, reason: collision with root package name */
    public List<Integer> f25782s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.tgw.l f25783w;
    public final List<com.byazt.tgw.e> jx = new CopyOnWriteArrayList();
    public boolean gu = false;

    public l() {
        Looper looperL = com.byazt.aw.w.l();
        if (looperL != null) {
            this.f25781q = new Handler(looperL) { // from class: com.byazt.tfn.l.1
                @Override // android.os.Handler
                public void handleMessage(Message message) throws JSONException {
                    l.this.hp(message);
                }
            };
        } else {
            com.byazt.aw.w.hp();
            this.f25781q = new Handler(com.byazt.aw.w.l()) { // from class: com.byazt.tfn.l.2
                @Override // android.os.Handler
                public void handleMessage(Message message) throws JSONException {
                    l.this.hp(message);
                }
            };
        }
    }

    private void j(int i2) {
        if (this.f25779j.j() || w()) {
            com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "已经触发过成功、失败回调...");
            return;
        }
        if (this.f25779j.e()) {
            com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "已经触发过destroy操作...");
            return;
        }
        if (l()) {
            return;
        }
        if (i2 >= this.f25782s.size()) {
            com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "第 " + i2 + " 层没有广告可以请求...");
            return;
        }
        Integer num = this.f25782s.get(i2);
        int iIntValue = num.intValue();
        if (this.f25780l.jx(iIntValue)) {
            jx(i2 + 1);
            return;
        }
        if (com.byazt.mey.eb.l(iIntValue) && this.f25780l.l() == -1) {
            com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "开启serverBidding exchange 请求....");
            hp(this.hp.get(num));
            hp(i2);
            return;
        }
        this.f25780l.l(iIntValue);
        hp(iIntValue, i2);
        if (com.byazt.mey.eb.jx(iIntValue) || com.byazt.mey.eb.l(iIntValue)) {
            com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "第 " + i2 + "层 ClientBidding,ServerBidding 广告，levelSort：" + iIntValue + "，同时请求下一层广告...");
            jx(i2 + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(int i2) {
        if (i2 < 0) {
            return;
        }
        if (!com.byazt.mey.eb.hp(i2, this.f25782s)) {
            j(i2);
            return;
        }
        int iZx = this.f25783w.zx();
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "the " + i2 + " level is first level normal ad and ParallelNum:" + iZx);
        for (int i3 = 0; i3 < iZx; i3++) {
            j(i2 + i3);
        }
    }

    public boolean w() {
        if (this.f25779j.w()) {
            return (this.gu && com.byazt.ge.hp.hp(this.f25783w)) ? false : true;
        }
        return false;
    }

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.pj.j jVarHp = com.byazt.pj.w.hp();
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        ((com.byazt.pj.a) jVarHp).hp(this.f25779j.ms(), jElapsedRealtime, this.eb, this.f25783w, new j.hp() { // from class: com.byazt.tfn.l.3
            @Override // com.byazt.pj.j.hp
            public void hp(com.byazt.pj.l lVar) throws JSONException {
                Map<Integer, List<com.byazt.tgw.e>> map = l.this.hp;
                List<com.byazt.tgw.e> list = map != null ? map.get(0) : null;
                l lVar2 = l.this;
                lVar2.hp(lVar2.eb, list, lVar, jElapsedRealtime);
            }
        });
    }

    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        this.f25779j = lVarHp;
        lVarHp.hp(this.f25781q);
        this.f25780l = this.f25779j.xs();
        this.f25783w = this.f25779j.u();
        com.byazt.iqm.l lVarCx = this.f25779j.cx();
        this.eb = lVarCx;
        this.f25777a = lVarCx.sz();
        this.hp = this.f25783w.wv();
        ArrayList arrayList = new ArrayList();
        this.f25782s = arrayList;
        arrayList.addAll(this.hp.keySet());
        com.byazt.qca.l.hp(this.f25782s);
        this.f25780l.hp(this.f25782s);
        this.f25780l.eb(this.f25783w.di());
        List<com.byazt.tgw.e> listHp = com.byazt.mey.eb.hp(this.f25783w.rz());
        List<com.byazt.tgw.e> listL = com.byazt.mey.eb.l(this.f25783w.rz());
        this.f25780l.s(listHp == null ? 0 : listHp.size());
        this.f25780l.q(listL == null ? 0 : listL.size());
        Handler handler = this.f25781q;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(6, this.f25783w.kg());
        }
        if (!this.f25779j.di()) {
            com.byazt.lsx.a.hp(this.eb, this.f25783w.nd(), !this.f25779j.o(), this.f25779j.xh().hp, 0, (Map<String, Object>) null);
        }
        if (this.f25783w.v()) {
            interfaceC0371hp.hp(interfaceC0371hp.hp());
        } else {
            if (com.byazt.aw.l.l()) {
                com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "开始加载广告 num:" + this.f25783w.di());
            }
            jx(0);
        }
        com.byazt.bcj.l.hp(com.byazt.di.l.l()).hp(1);
    }

    public boolean l() {
        return l(null, 3);
    }

    private void jx(com.byazt.tgw.e eVar, int i2) {
        int i3;
        if (eVar == null || this.f25781q == null) {
            return;
        }
        if (eVar.r()) {
            i3 = 1;
        } else if (eVar.lv() || eVar.pu()) {
            i3 = 2;
        } else {
            i3 = eVar.dy() ? 3 : 4;
        }
        if (eVar.xh()) {
            this.f25781q.removeMessages(i3, vv.hp(i2));
        } else {
            this.f25781q.removeMessages(i3);
        }
    }

    public boolean l(com.byazt.tgw.e eVar, int i2) {
        if (this.f25779j.j() || w()) {
            return true;
        }
        if (this.f25780l.w()) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "触发总超时或全部代码位响应结束.....totalTimeout：" + this.f25780l.w() + "  allWtfFinish:" + this.f25780l.s());
            if (d.hp(this.f25779j.gu()) && d.hp(this.f25779j.jl()) && d.hp(this.f25779j.k())) {
                if (com.byazt.ge.hp.l(this.f25783w)) {
                    com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "总加载时间超时.......isCallback:true");
                    if (com.byazt.ge.hp.hp(this.f25779j, this.f25782s, this.hp)) {
                        jx();
                        return true;
                    }
                }
                this.gu = true;
                hp(new com.byazt.dq.hp(10003, com.byazt.dq.hp.hp(10003)));
            } else {
                jx();
            }
            return true;
        }
        if (this.f25780l.s()) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "全部广告完成响应...");
            if (d.hp(this.f25779j.gu()) && d.hp(this.f25779j.jl()) && d.hp(this.f25779j.k())) {
                hp(new com.byazt.dq.hp(20005, com.byazt.dq.hp.hp(20005)));
            } else {
                jx();
            }
            return true;
        }
        if (this.f25779j.vv()) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "p层广告已经满足返回条件...");
            jx();
            return true;
        }
        if (!(this.f25783w.dy() && this.f25780l.jx()) && this.f25783w.dy()) {
            return false;
        }
        if (eVar == null) {
            if (this.f25779j.ec() && this.f25779j.n()) {
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "p层&普通层广告 已经满足返回条件 V1 .........");
                jx();
                return true;
            }
            if (!this.f25779j.sz() || !this.f25780l.q() || !this.f25780l.e() || !this.f25779j.ns()) {
                return false;
            }
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "p层&普通&Bidding层广告 已经满足返回条件 V2 .........");
            jx();
            return true;
        }
        if (this.f25779j.ec() && this.f25779j.n()) {
            Iterator<com.byazt.rt.jx> it = this.f25779j.jl().iterator();
            while (it.hasNext()) {
                com.byazt.rt.jx next = it.next();
                com.byazt.zj.hp hpVarHp = com.byazt.zj.j.hp(this.f25783w);
                com.byazt.ktq.l lVar = this.f25779j;
                Map<Integer, List<com.byazt.tgw.e>> map = this.hp;
                if (hpVarHp.hp(lVar, next, map == null ? null : map.get(Integer.valueOf(com.byazt.mey.eb.hp(this.f25783w, next))))) {
                    com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "p层&普通层广告 已经满足返回条件 V3 .........");
                    jx();
                    return true;
                }
            }
            return false;
        }
        if (!this.f25779j.sz() || !this.f25780l.q() || !this.f25780l.e() || !this.f25779j.ns()) {
            return false;
        }
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "p层&普通&Bidding层广告 已经满足返回条件 V4 .........");
        jx();
        return true;
    }

    public void jx() {
        this.gu = false;
        this.f25779j.s();
    }

    private void jx(List<com.byazt.rt.jx> list) {
        if (list == null) {
            return;
        }
        for (com.byazt.rt.jx jxVar : list) {
            if (jxVar != null) {
                com.byazt.gp.j.hp().hp(this.f25777a, new com.byazt.gp.eb(jxVar, this.f25779j.nu(), this.eb));
            }
        }
    }

    public void j() {
        this.f25779j.q();
    }

    private void hp(int i2, int i3) {
        long jAs;
        Handler handler;
        Map<Integer, List<com.byazt.tgw.e>> map = this.hp;
        if (map == null) {
            return;
        }
        final List<com.byazt.tgw.e> list = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder();
        sb.append(com.byazt.aw.j.hp(this.f25783w));
        sb.append("loadLevelWaterFall start...执行当前加载层级 ：");
        sb.append(i3);
        sb.append(" levelSort:");
        sb.append(i2);
        sb.append("  waterFallConfig.size:");
        sb.append(list == null ? 0 : list.size());
        com.byazt.aw.l.l(MediationConstant.TAG, sb.toString());
        if (d.hp(list)) {
            return;
        }
        this.f25780l.hp(i2, list.size());
        if (com.byazt.mey.eb.jx(i2)) {
            jAs = this.f25783w.cx();
        } else {
            jAs = this.f25783w.as();
        }
        Message messageObtain = Message.obtain();
        if (com.byazt.mey.eb.hp(i2)) {
            messageObtain.what = 1;
        } else if (com.byazt.mey.eb.jx(i2)) {
            messageObtain.what = 2;
        } else if (com.byazt.mey.eb.l(i2)) {
            messageObtain.what = 3;
        } else {
            messageObtain.what = 4;
            messageObtain.obj = vv.hp(i2);
        }
        messageObtain.arg1 = i2;
        Handler handler2 = this.f25781q;
        if (handler2 != null) {
            handler2.sendMessageDelayed(messageObtain, jAs);
        }
        long jMs = this.f25783w.ms();
        if (jMs != 0 && (handler = this.f25781q) != null) {
            handler.removeMessages(5);
            this.f25781q.sendEmptyMessageDelayed(5, jMs);
        }
        for (final int i4 = 0; i4 < list.size(); i4++) {
            try {
                com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.tfn.l.4
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.hp((com.byazt.tgw.e) list.get(i4), list.size());
                    }
                });
                if (this.f25779j.o()) {
                    this.f25779j.ud();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public int l(int i2) {
        int iIndexOf;
        List<Integer> list = this.f25782s;
        if (list == null || (iIndexOf = list.indexOf(Integer.valueOf(i2))) == -1) {
            return -1;
        }
        return iIndexOf + 1;
    }

    private void l(List<com.byazt.rt.jx> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        String adNetworkSlotId = list.get(0).getAdNetworkSlotId();
        if (list.get(0).canAdReuse() && com.byazt.xob.hp.hp().w(this.f25777a, adNetworkSlotId, this.eb.w()) == 1) {
            ArrayList arrayList = new ArrayList();
            for (com.byazt.rt.jx jxVar : list) {
                if (jxVar != null) {
                    arrayList.add(new com.byazt.gp.eb(jxVar, 0L, this.eb));
                }
            }
            if (arrayList.size() > 0) {
                com.byazt.rt.jx jxVar2 = ((com.byazt.gp.eb) arrayList.get(0)).hp;
                com.byazt.aw.l.l(MediationConstant.TAG, "--==-- 广告复用:广告缓存成功 -------" + jxVar2.getAdNetWorkName() + ", adType: " + com.byazt.rt.hp.hp(jxVar2.getAdType(), jxVar2.getSubAdType()) + ", adnSlotId: " + jxVar2.getAdNetworkSlotId() + ", ad个数: " + arrayList.size());
                com.byazt.xob.hp.hp().hp(adNetworkSlotId, (List<com.byazt.gp.eb>) arrayList, false);
            }
        }
    }

    public void hp(com.byazt.tgw.e eVar, int i2) {
        l lVar;
        if (eVar == null || this.eb == null) {
            lVar = this;
        } else {
            lVar = this;
            lVar.hp(eVar.vv(), eVar.v(), eVar.u(), com.byazt.rt.hp.hp(this.eb.ec(), eVar.a()), 0, "广告请求中");
        }
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.f25783w) + "开始 某一层级的waterFallConfig请求 WaterFallConfig:" + eVar.toString());
        com.byazt.xl.l lVarHp = com.byazt.xl.l.hp(eVar, this);
        lVarHp.jx(1);
        lVarHp.l(1);
        lVarHp.hp(i2);
        lVarHp.hp(!lVar.f25779j.o());
        lVarHp.hp(SystemClock.elapsedRealtime());
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.byazt.ah.l());
        arrayList.add(new com.byazt.ah.eb());
        arrayList.add(new com.byazt.ah.j());
        arrayList.add(new com.byazt.ah.a());
        arrayList.add(new com.byazt.ah.jx());
        new com.byazt.ah.w(arrayList).hp(lVar.f25779j, lVarHp);
    }

    public void hp(final List<com.byazt.tgw.e> list) {
        final Context context = this.f25779j.getContext();
        if (context != null) {
            com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.tfn.l.5
                @Override // java.lang.Runnable
                public void run() {
                    l lVar = l.this;
                    lVar.hp(context, lVar.eb, list, !l.this.f25779j.o());
                }
            });
        }
    }

    public void hp(final int i2) {
        com.byazt.rn.hp hpVarHp = com.byazt.rn.w.hp(this.f25783w);
        this.f25778e = hpVarHp;
        Handler handler = this.f25781q;
        com.byazt.tgw.l lVar = this.f25783w;
        hpVarHp.hp(handler, lVar, new com.byazt.rn.l(lVar, new Runnable() { // from class: com.byazt.tfn.l.6
            @Override // java.lang.Runnable
            public void run() {
                l.this.jx(i2 + 1);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Message message) throws JSONException {
        int i2 = message.arg1;
        switch (message.what) {
            case 1:
            case 4:
                StringBuilder sb = new StringBuilder();
                sb.append(com.byazt.aw.j.hp(this.f25783w));
                sb.append(message.what == 1 ? "P层" : "普通层");
                sb.append("广告触发层超时.........levelSort:");
                sb.append(i2);
                com.byazt.aw.l.j(MediationConstant.TAG, sb.toString());
                com.byazt.ktq.l lVar = this.f25779j;
                if (lVar != null) {
                    com.byazt.owd.a.hp(lVar.jx(), "t_out_" + this.f25779j.hp().incrementAndGet(), this.f25779j.r());
                }
                this.f25780l.j(i2);
                if (l()) {
                    return;
                }
                jx(l(i2));
                return;
            case 2:
                com.byazt.ktq.l lVar2 = this.f25779j;
                if (lVar2 != null) {
                    com.byazt.owd.a.hp(lVar2.jx(), "cb_t_out" + this.f25779j.hp().incrementAndGet(), this.f25779j.r());
                    break;
                }
                break;
            case 3:
                break;
            case 5:
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "触发最小层超时.........levelSort:" + i2);
                l();
                return;
            case 6:
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "触发总超时.........");
                com.byazt.ktq.l lVar3 = this.f25779j;
                if (lVar3 != null) {
                    com.byazt.owd.a.hp(lVar3.jx(), "total_t_out" + this.f25779j.hp().incrementAndGet(), this.f25779j.r());
                }
                this.f25780l.j();
                this.f25779j.xh().f25862a = true;
                l();
                return;
            default:
                return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.byazt.aw.j.hp(this.f25783w));
        sb2.append(message.what == 2 ? "ClientBidding层" : "ServerBidding层层");
        sb2.append("广告触发层超时.........levelSort:");
        sb2.append(i2);
        com.byazt.aw.l.j(MediationConstant.TAG, sb2.toString());
        this.f25780l.j(i2);
        l();
    }

    @Override // com.byazt.kq.hp
    public void hp(List<com.byazt.rt.jx> list, com.byazt.tgw.e eVar) throws NumberFormatException {
        if (d.hp(list) || eVar == null) {
            return;
        }
        hp(list, this.f25783w);
        hp(eVar.vv(), eVar.v(), eVar.u(), com.byazt.rt.hp.hp(eVar.zy(), eVar.a()), 0, "广告加载成功");
        com.byazt.qca.jx.hp(this.f25777a, eVar, !d.l(list) ? list.get(0) : null);
        l(list);
        int iHp = com.byazt.mey.eb.hp(this.f25783w, eVar);
        if (eVar.xh() && com.byazt.ok.hp.hp(this.f25780l, this.jx, eVar.vv())) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "返回的普通广告被server Bidding过滤了......slotId:" + eVar.vv());
            this.f25779j.zy().addAll(list);
            return;
        }
        com.byazt.mey.hp.hp(this.f25779j, list, false);
        this.f25780l.hp(iHp, eVar.vv());
        if (this.f25779j.o()) {
            jx(list);
        }
        if (this.f25780l.w()) {
            hp((List<com.byazt.rt.jx>) null, new com.byazt.dq.hp(10012, "load ad timeout !!!"));
        } else {
            hp(list, (com.byazt.dq.hp) null);
        }
        this.f25779j.l(list);
        if (this.f25779j.eb() && !this.f25779j.o() && !this.f25779j.di()) {
            this.f25779j.j(eVar);
        }
        if (l(eVar, 1) || this.f25780l.a(iHp) != 0 || eVar.ky()) {
            return;
        }
        int iL = l(iHp);
        jx(eVar, iHp);
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "onAdLoaded levelSort: " + iHp + " 广告全部响应结束&不满足返回条件，直接请求下一层广告 nextIdx：" + iL);
        jx(iL);
    }

    @Override // com.byazt.kq.hp
    public void hp(com.byazt.dq.hp hpVar, com.byazt.tgw.e eVar) {
        l lVar;
        if (eVar == null) {
            return;
        }
        hp((List<com.byazt.rt.jx>) null, hpVar);
        if (hpVar != null) {
            lVar = this;
            lVar.hp(eVar.vv(), eVar.xs(), eVar.u(), com.byazt.rt.hp.hp(eVar.zy(), eVar.a()), hpVar.jx, hpVar.f19237j);
        } else {
            lVar = this;
        }
        com.byazt.qca.jx.hp(hpVar, eVar);
        if (eVar.xh() && com.byazt.ok.hp.hp(lVar.f25780l, lVar.jx, eVar.vv())) {
            return;
        }
        int iHp = com.byazt.mey.eb.hp(lVar.f25783w, eVar);
        lVar.f25780l.hp(iHp, eVar.vv());
        if (l(eVar, 2) || lVar.f25780l.w(iHp) || lVar.f25780l.a(iHp) != 0 || eVar.ky()) {
            return;
        }
        int iL = l(iHp);
        jx(eVar, iHp);
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.f25783w) + "onAdFailed levelSort " + iHp + " 广告全部响应结束&不满足返回条件，直接请求下一层广告 nextIdx：" + iL);
        jx(iL);
    }

    @Override // com.byazt.kq.hp
    public void hp() {
        com.byazt.aw.l.l(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "onAdVideoCache.....");
        j();
    }

    public void hp(com.byazt.dq.hp hpVar) {
        this.f25779j.hp(hpVar);
    }

    public void hp(List<com.byazt.rt.jx> list, com.byazt.dq.hp hpVar) {
        this.f25779j.hp(list, hpVar);
    }

    public void hp(Context context, final com.byazt.iqm.l lVar, final List<com.byazt.tgw.e> list, boolean z2) {
        com.byazt.pj.j jVarHp = com.byazt.pj.w.hp();
        if (jVarHp != null) {
            this.f25780l.hp(0);
            this.f25779j.xh().f25863j = true;
            final com.byazt.pj.jx jxVar = new com.byazt.pj.jx();
            jxVar.hp = lVar;
            jxVar.f24412l = list;
            jxVar.f24411j = this.f25783w;
            jxVar.f24410a = z2;
            jxVar.eb = SystemClock.elapsedRealtime();
            jxVar.f24413s = this.f25779j;
            jxVar.f24414w = lVar != null ? lVar.jx() : 1;
            jVarHp.hp(this.f25779j.b(), context, jxVar, new j.hp() { // from class: com.byazt.tfn.l.7
                @Override // com.byazt.pj.j.hp
                public void hp(com.byazt.pj.l lVar2) throws JSONException {
                    l.this.hp(lVar, (List<com.byazt.tgw.e>) list, lVar2, jxVar.eb);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.iqm.l lVar, List<com.byazt.tgw.e> list, com.byazt.pj.l lVar2, long j2) throws JSONException {
        com.byazt.rn.hp hpVar;
        if (this.f25779j != null && lVar2 != null && !TextUtils.isEmpty(lVar2.f24417j)) {
            this.f25779j.xh().hp = lVar2.f24417j;
        }
        com.byazt.tgw.l lVar3 = this.f25783w;
        if (lVar3 != null && lVar2 != null) {
            lVar3.s().put("price_source", Integer.valueOf(lVar2.zy));
        }
        if (lVar2 != null) {
            com.byazt.lsx.a.hp(lVar, lVar2, this.f25780l.w() ? 1 : 0);
            com.byazt.ktq.l lVar4 = this.f25779j;
            if (lVar4 != null) {
                com.byazt.owd.a.hp(lVar4.jx(), "ret_sb", this.f25779j.r());
            }
        }
        if (lVar2 != null && !d.hp(lVar2.f24419l)) {
            this.f25780l.hp(1);
            if (this.f25779j.j() || this.f25779j.w()) {
                return;
            }
            this.jx.clear();
            this.jx.addAll(lVar2.f24419l);
            Handler handler = this.f25781q;
            if (handler != null) {
                handler.removeMessages(1);
                this.f25781q.removeMessages(4);
                this.f25781q.removeMessages(5);
            }
            hq.hp(lVar2.f24419l);
            this.hp = com.byazt.mey.eb.hp(lVar2.f24419l, this.f25783w.k());
            ArrayList arrayList = new ArrayList();
            this.f25782s = arrayList;
            arrayList.addAll(this.hp.keySet());
            com.byazt.qca.l.hp(this.f25782s);
            this.f25780l.hp(this.f25782s);
            this.f25780l.hp(lVar2.f24419l, com.byazt.mey.eb.hp(this.f25783w.rz()), com.byazt.mey.eb.jx(this.f25783w.rz()));
            com.byazt.ok.hp.hp(this.f25783w, this.f25779j, lVar2.f24419l);
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "serverBidding响应回来..........开始从头开始请求waterFallConfig  代码位总数量：" + lVar2.f24419l.size());
            jx(0);
            l();
        } else {
            this.f25780l.hp(2);
            if (this.f25779j.j() || this.f25779j.w()) {
                return;
            }
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25783w) + "serverBidding响应失败了.......... ");
            this.f25780l.l(0);
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    com.byazt.tgw.e eVar = list.get(i2);
                    this.f25780l.hp(com.byazt.mey.eb.hp(this.f25783w, eVar), eVar.vv());
                }
            }
            if (!l() && (hpVar = this.f25778e) != null) {
                hpVar.hp();
            }
        }
        if (lVar2 != null) {
            com.byazt.owd.a.hp(lVar2.gu, "0-req", j2);
        }
        if (this.f25783w != null && lVar2 != null) {
            com.byazt.ney.l.j().hp(lVar2.jl, lVar2.f24418k, this.f25783w.ky(), this.f25783w.r());
        }
        if (lVar2 == null || !lVar2.jx) {
            return;
        }
        com.byazt.bcj.l.hp(com.byazt.di.l.l()).hp().hp(1);
    }

    public void hp(List<com.byazt.rt.jx> list, com.byazt.tgw.l lVar) {
        com.byazt.ney.j.hp(list, lVar);
        com.byazt.xoi.hp.hp(list, lVar);
    }

    public void hp(String str, String str2, String str3, String str4, int i2, String str5) {
        com.byazt.dq.l lVar = this.f25779j.d().get(str);
        if (lVar == null) {
            lVar = new com.byazt.dq.l();
        }
        lVar.l(str).jx(str2).j(str3).hp(i2).w(str5).hp(str4);
        this.f25779j.d().put(str, lVar);
    }
}
