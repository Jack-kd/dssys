package com.byazt.toc;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.rt.jx;
import com.byazt.tfn.hp;
import com.byazt.zg.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 225, 150})
/* loaded from: classes3.dex */
public class q extends l {
    public com.byazt.qjq.j hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.voc.jx f25957l;

    /* renamed from: u, reason: collision with root package name */
    public hp.InterfaceC0371hp f25958u;
    public boolean xs;

    public q(Context context) {
        super(context);
        this.xs = false;
    }

    private void j() {
        try {
            List<com.byazt.tgw.e> listL = l();
            if (listL == null || listL.size() <= 0) {
                return;
            }
            for (com.byazt.tgw.e eVar : listL) {
                if (eVar != null) {
                    String strVv = eVar.vv();
                    if (com.byazt.xob.hp.hp().j(this.f25956w, strVv, this.f25948a.w())) {
                        if (eVar.ec() == 100) {
                            hp(strVv, this.jx.gu());
                        } else if (eVar.ec() == 0) {
                            hp(strVv, this.jx.jl());
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void eb() {
        List<com.byazt.rt.jx> listHp;
        List<com.byazt.rt.jx> listHp2;
        if (this.hp == null || (listHp2 = hp((listHp = this.jx.hp(true)), this.f25948a.b())) == null || listHp2.size() <= 0) {
            return;
        }
        if (com.byazt.aw.l.l()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "返回给外部开发者的广告数量：sumList.size=" + listHp2.size());
        }
        CopyOnWriteArrayList<com.byazt.rt.jx> copyOnWriteArrayList = new CopyOnWriteArrayList<>(listHp);
        for (com.byazt.rt.jx jxVar : listHp2) {
            if (jxVar != null) {
                jxVar.setHasShown(true);
                if (jxVar.canAdReuse() && com.byazt.xob.hp.hp().j(this.f25956w, jxVar.getAdNetworkSlotId(), this.f25948a.w())) {
                    com.byazt.mey.a.hp(jxVar, this.f25956w, jxVar.getAdNetworkSlotId());
                    hp(copyOnWriteArrayList, jxVar);
                }
                hp(this.jx.gu(), jxVar);
                hp(this.jx.jl(), jxVar);
                hp(this.jx.zy(), jxVar);
                hp(this.jx.k(), jxVar);
            }
        }
        com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
        String str = this.f25956w;
        com.byazt.iqm.l lVar = this.f25948a;
        hpVarHp.hp(copyOnWriteArrayList, str, lVar, lVar.w(), null);
        this.hp.hp(listHp2);
    }

    @Override // com.byazt.toc.l
    public void jx() {
        this.hp = null;
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(@NonNull com.byazt.dq.hp hpVar) {
        com.byazt.voc.jx jxVar;
        com.byazt.qjq.j jVar = this.hp;
        if (jVar != null) {
            jVar.hp(hpVar);
            if (this.gu != 0 || (jxVar = this.f25957l) == null) {
                return;
            }
            this.gu = 2;
            jxVar.hp(hpVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(com.byazt.rt.jx jxVar) {
        com.byazt.tgw.l lVar;
        if (this.f25948a.vq() || jxVar == null || jxVar.getAdNetworkPlatformId() == 7 || (jxVar instanceof com.byazt.hb.l) || (lVar = this.eb) == null || lVar.v()) {
            return;
        }
        com.byazt.gp.j.hp().l(this.f25954s.get(), this.f25956w, this.f25948a.w());
    }

    public void hp(com.byazt.iqm.l lVar, @NonNull com.byazt.qjq.j jVar) {
        hp(lVar);
        this.hp = jVar;
        q();
    }

    private void jx(List<com.byazt.rt.jx> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        list.clear();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            com.byazt.rt.jx jxVar = (com.byazt.rt.jx) obj;
            if (jxVar != null && !jxVar.isHasShown() && jxVar.isReady(this.f25956w)) {
                list.add(jxVar);
            }
        }
    }

    private boolean l(String str, List<com.byazt.rt.jx> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        for (com.byazt.rt.jx jxVar : list) {
            if (jxVar != null && TextUtils.equals(str, jxVar.getAdNetworkSlotId())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void hp(@Nullable List<com.byazt.rt.jx> list, @Nullable com.byazt.dq.hp hpVar) {
        super.hp(list, hpVar);
        if (!(this.hp instanceof com.byazt.qjq.eb) || d.hp(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.byazt.rt.jx jxVar : list) {
            jxVar.setCallBack(new jx.hp() { // from class: com.byazt.toc.q.1
                @Override // com.byazt.rt.jx.hp
                public void hp() {
                    q.this.jl = true;
                }

                @Override // com.byazt.rt.jx.hp
                public void hp(com.byazt.rt.jx jxVar2) {
                    q.this.hp(jxVar2, false);
                }
            });
            arrayList.add(jxVar);
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void hp(@Nullable String str) {
        com.byazt.voc.jx jxVar;
        if (this.gu != 0 || (jxVar = this.f25957l) == null) {
            return;
        }
        this.gu = 1;
        jxVar.hp(str);
    }

    public void hp(String str, com.byazt.qjq.j jVar) {
        if (this.gu != 1) {
            if (jVar != null) {
                jVar.hp(new com.byazt.dq.hp(10015, com.byazt.dq.hp.hp(10015)));
            }
        } else if (this.f25949e) {
            if (jVar != null) {
                jVar.hp(new com.byazt.dq.hp(40047, com.byazt.dq.hp.hp(40047)));
            }
        } else {
            this.f25949e = true;
            this.hp = jVar;
            hp.InterfaceC0371hp interfaceC0371hp = this.f25958u;
            if (interfaceC0371hp != null) {
                interfaceC0371hp.hp(str);
            }
        }
    }

    public void hp(com.byazt.iqm.l lVar, com.byazt.voc.jx jxVar) {
        hp(lVar);
        this.f25957l = jxVar;
        if (this.jx.u() != null && this.jx.u().v()) {
            this.f25958u = q();
        } else if (jxVar != null) {
            jxVar.hp(new com.byazt.dq.hp(10014, com.byazt.dq.hp.hp(10014)));
        }
    }

    private List<com.byazt.rt.jx> hp(List<com.byazt.rt.jx> list, int i2) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        jx(list);
        j();
        final ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.byazt.rt.jx> it = list.iterator();
        while (it.hasNext() && arrayList2.size() < i2) {
            com.byazt.rt.jx next = it.next();
            arrayList2.add(next);
            if (com.byazt.aw.l.l()) {
                com.byazt.aw.l.j(MediationConstant.TAG, "");
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w, "show") + "返回给开发者最终广告：slotId=" + next.getAdNetworkSlotId() + ",slotType:" + next.getAdNetworkSlotType() + ",cpm=" + next.getCpm() + ",广告类型：" + com.byazt.rt.hp.hp(next.getAdNetworkPlatformId()) + ",ImageMode=" + next.getImageMode() + ",showSort=" + next.getShowSort() + ",isExpressAd=" + next.isExpressAd());
            }
            next.setCallBack(new jx.hp() { // from class: com.byazt.toc.q.2
                @Override // com.byazt.rt.jx.hp
                public void hp() {
                    q.this.jl = true;
                    com.byazt.ktq.l lVar = q.this.jx;
                    if (lVar != null) {
                        lVar.hp(arrayList);
                    }
                }

                @Override // com.byazt.rt.jx.hp
                public void hp(com.byazt.rt.jx jxVar) {
                    boolean z2;
                    com.byazt.gp.j jVarHp = com.byazt.gp.j.hp();
                    q qVar = q.this;
                    if (jVarHp.jx(qVar.f25956w, qVar.f25948a.w()) || q.this.xs) {
                        z2 = false;
                    } else {
                        z2 = true;
                        q.this.xs = true;
                    }
                    q.this.hp(jxVar, z2);
                    q.this.jx(jxVar);
                }
            });
            it.remove();
        }
        com.byazt.ano.hp hpVarHp = com.byazt.ano.hp.hp();
        com.byazt.iqm.l lVar = this.f25948a;
        hpVarHp.hp(lVar, com.byazt.ano.hp.hp(lVar, arrayList2, list));
        hp(arrayList2);
        return arrayList2;
    }

    public void hp(com.byazt.rt.jx jxVar, boolean z2) {
        if (jxVar != null && jxVar.canAdReuse() && com.byazt.xob.hp.hp().j(this.f25956w, jxVar.getAdNetworkSlotId(), this.f25948a.w())) {
            com.byazt.xob.hp.hp().hp(jxVar.getAdNetworkSlotId(), this.f25948a, this.jx.dy(), z2, this.jx.lv(), this.jx.xh(), this.f25954s.get());
        }
    }

    private void hp(CopyOnWriteArrayList<com.byazt.rt.jx> copyOnWriteArrayList, com.byazt.rt.jx jxVar) {
        Iterator<com.byazt.rt.jx> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            com.byazt.rt.jx next = it.next();
            if (next == jxVar && next != null) {
                copyOnWriteArrayList.remove(next);
            }
        }
    }

    private void hp(String str, List<com.byazt.rt.jx> list) {
        com.byazt.rt.jx jxVar;
        if (l(str, list) || com.byazt.xob.hp.hp().hp(str, this.f25948a, false) != 3) {
            return;
        }
        com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
        com.byazt.iqm.l lVar = this.f25948a;
        List<com.byazt.gp.eb> listHp = hpVarHp.hp(str, lVar, lVar.w());
        if (listHp == null || listHp.size() <= 0) {
            return;
        }
        for (com.byazt.gp.eb ebVar : listHp) {
            if (ebVar != null && (jxVar = ebVar.hp) != null && !jxVar.isHasShown() && ebVar.hp.isReady(this.f25956w)) {
                list.add(ebVar.hp);
                l(ebVar.hp);
            }
        }
    }
}
