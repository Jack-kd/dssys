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

@com.byazt.kj.hp(hp = {0, 1, 225, 94})
/* loaded from: classes3.dex */
public class eb extends l {
    public com.byazt.gpb.l hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.voc.jx f25911l;

    /* renamed from: u, reason: collision with root package name */
    public hp.InterfaceC0371hp f25912u;

    public eb(Context context) {
        super(context);
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
        if (this.hp == null || (listHp = hp(this.jx.hp(true), this.f25948a.b())) == null || listHp.size() <= 0) {
            return;
        }
        if (com.byazt.aw.l.l()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "返回给外部开发者的广告数量：sumList.size=" + listHp.size());
        }
        CopyOnWriteArrayList<com.byazt.rt.jx> copyOnWriteArrayList = new CopyOnWriteArrayList<>(this.jx.hp(true));
        for (com.byazt.rt.jx jxVar : listHp) {
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
        this.hp.hp(listHp);
    }

    public void hp(com.byazt.iqm.l lVar, @NonNull com.byazt.gpb.l lVar2) {
        hp(lVar);
        this.hp = lVar2;
        q();
    }

    @Override // com.byazt.toc.l
    public void jx() {
        super.jx();
        this.hp = null;
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(@NonNull com.byazt.dq.hp hpVar) {
        com.byazt.voc.jx jxVar;
        com.byazt.gpb.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(hpVar);
            if (this.gu != 0 || (jxVar = this.f25911l) == null) {
                return;
            }
            this.gu = 2;
            jxVar.hp(hpVar);
        }
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

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void hp(@Nullable List<com.byazt.rt.jx> list, @Nullable com.byazt.dq.hp hpVar) {
        super.hp(list, hpVar);
        if (!(this.hp instanceof com.byazt.gpb.w) || d.hp(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.byazt.rt.jx jxVar : list) {
            jxVar.setCallBack(new jx.hp() { // from class: com.byazt.toc.eb.1
                @Override // com.byazt.rt.jx.hp
                public void hp() {
                    eb.this.jl = true;
                }

                @Override // com.byazt.rt.jx.hp
                public void hp(com.byazt.rt.jx jxVar2) {
                    eb.this.hp(jxVar2, -1);
                }
            });
            arrayList.add(jxVar);
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
    public void hp(@Nullable String str) {
        com.byazt.voc.jx jxVar;
        if (this.gu != 0 || (jxVar = this.f25911l) == null) {
            return;
        }
        this.gu = 1;
        jxVar.hp(str);
    }

    public void hp(String str, com.byazt.gpb.l lVar) {
        if (this.gu != 1) {
            if (lVar != null) {
                lVar.hp(new com.byazt.dq.hp(10015, com.byazt.dq.hp.hp(10015)));
            }
        } else if (this.f25949e) {
            if (lVar != null) {
                lVar.hp(new com.byazt.dq.hp(40047, com.byazt.dq.hp.hp(40047)));
            }
        } else {
            this.f25949e = true;
            this.hp = lVar;
            hp.InterfaceC0371hp interfaceC0371hp = this.f25912u;
            if (interfaceC0371hp != null) {
                interfaceC0371hp.hp(str);
            }
        }
    }

    public void hp(com.byazt.iqm.l lVar, com.byazt.voc.jx jxVar) {
        hp(lVar);
        this.f25911l = jxVar;
        if (this.jx.u() != null && this.jx.u().v()) {
            this.f25912u = q();
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
        final ArrayList arrayList2 = new ArrayList();
        Iterator<com.byazt.rt.jx> it = list.iterator();
        while (it.hasNext() && arrayList2.size() < i2) {
            com.byazt.rt.jx next = it.next();
            next.setCallBack(new jx.hp() { // from class: com.byazt.toc.eb.2
                @Override // com.byazt.rt.jx.hp
                public void hp() {
                    eb.this.jl = true;
                    com.byazt.ktq.l lVar = eb.this.jx;
                    if (lVar != null) {
                        lVar.hp(arrayList);
                    }
                }

                @Override // com.byazt.rt.jx.hp
                public void hp(com.byazt.rt.jx jxVar) {
                    int i3 = 0;
                    while (i3 < arrayList2.size() && jxVar != arrayList2.get(i3)) {
                        i3++;
                    }
                    eb.this.hp(jxVar, i3);
                }
            });
            arrayList2.add(next);
            if (com.byazt.aw.l.l()) {
                com.byazt.aw.l.j(MediationConstant.TAG, "");
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w, "show") + "返回给开发者最终广告：slotId=" + next.getAdNetworkSlotId() + ",slotType:" + next.getAdNetworkSlotType() + ",cpm=" + next.getCpm() + ",广告类型：" + com.byazt.rt.hp.hp(next.getAdNetworkPlatformId()) + ",ImageMode=" + next.getImageMode() + ",showSort=" + next.getShowSort() + ",isExpressAd=" + next.isExpressAd());
            }
            it.remove();
        }
        hp(arrayList2);
        return arrayList2;
    }

    public void hp(com.byazt.rt.jx jxVar, int i2) {
        if (jxVar != null && jxVar.canAdReuse() && com.byazt.xob.hp.hp().j(this.f25956w, jxVar.getAdNetworkSlotId(), this.f25948a.w())) {
            com.byazt.xob.hp.hp().hp(jxVar.getAdNetworkSlotId(), this.f25948a, this.jx.dy(), i2 == 0, this.jx.lv(), this.jx.xh(), this.f25954s.get());
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
