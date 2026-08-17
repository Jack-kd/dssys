package com.byazt.sr;

import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.dnb.jl;
import com.byazt.jz.sz;
import com.byazt.pc.eb;
import com.byazt.um.e;
import com.byazt.xci.df;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.zn.ky;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 21, 34})
/* loaded from: classes3.dex */
public abstract class l<V> extends com.byazt.esb.hp<V> {
    public com.byazt.pc.l hp;

    public interface hp<V> {
        void hp(V v2);
    }

    public l(com.byazt.pc.l lVar) {
        this.hp = lVar;
    }

    public abstract void hp(com.byazt.jt.l lVar, List<mp> list, hp<V> hpVar);

    public abstract void hp(com.byazt.jt.l lVar, List<mp> list, V v2);

    @Override // com.byazt.esb.hp
    public boolean hp(com.byazt.jt.l lVar, List<mp> list) {
        return true;
    }

    @Override // com.byazt.esb.hp
    public void hp(com.byazt.jt.l lVar, int i2, String str, com.byazt.xci.l lVar2) {
        lVar2.hp(i2);
        com.byazt.xci.l.hp(lVar2);
    }

    @Override // com.byazt.esb.hp
    public void hp(int i2, com.byazt.xci.hp hpVar, com.byazt.xci.l lVar, f fVar, com.byazt.jt.l lVar2, com.byazt.pc.w<V> wVar, eb ebVar) {
        if (hpVar.l() == null || hpVar.l().isEmpty()) {
            if (ebVar != null) {
                ebVar.hp(-3);
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (hpVar.l().size() > 1) {
            if (s.hp(i2).hp("mix_ad", new s.l.hp().hp(lVar2).hp(hpVar.l().get(0)).hp())) {
                com.byazt.jz.hp.hp(hpVar.l());
                arrayList.add(hpVar.l().get(0));
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
            mp mpVar = (mp) obj;
            if (mpVar.qb()) {
                if (mpVar.xe() <= 0) {
                    mpVar.w((System.currentTimeMillis() + 10500000) / 1000);
                }
                mpVar.yr(102);
                hp(i2, lVar2, mpVar);
            }
        }
        if (arrayList.isEmpty()) {
            if (ebVar != null) {
                ebVar.hp(-4);
            }
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("start_time", fVar.f27274q);
            bundle.putBoolean("is_second_page_ad", fVar.xs > 0);
            hp(i2, arrayList, lVar2, wVar, bundle, ebVar);
        }
    }

    @Override // com.byazt.esb.hp
    public void hp(final int i2, final List<mp> list, final com.byazt.jt.l lVar, final com.byazt.pc.w<V> wVar, final Bundle bundle, final eb ebVar) {
        boolean z2 = bundle.getBoolean(PointParamKey.IS_CACHE, false);
        Iterator<mp> it = list.iterator();
        while (it.hasNext()) {
            it.next().e(z2);
        }
        hp(lVar, list, (hp) new hp<V>() { // from class: com.byazt.sr.l.1
            @Override // com.byazt.sr.l.hp
            public void hp(V v2) {
                com.byazt.pc.jx jxVarHp = l.this.hp(i2, lVar, (com.byazt.jt.l) v2, (List<mp>) list, bundle, (com.byazt.pc.w<com.byazt.jt.l>) wVar);
                eb ebVar2 = ebVar;
                if (ebVar2 != null) {
                    ebVar2.hp(jxVarHp);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.pc.jx hp(final int i2, final com.byazt.jt.l lVar, final V v2, final List<mp> list, Bundle bundle, final com.byazt.pc.w<V> wVar) {
        final long j2 = bundle.getLong("start_time");
        final boolean z2 = bundle.getBoolean(PointParamKey.IS_CACHE);
        final boolean z3 = bundle.getBoolean("is_second_page_ad", false);
        Iterator<mp> it = list.iterator();
        while (it.hasNext()) {
            it.next().xm().l();
        }
        final mp mpVar = list.get(0);
        return new com.byazt.pc.jx() { // from class: com.byazt.sr.l.2
            public final AtomicBoolean gu = new AtomicBoolean(false);

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.byazt.pc.jx
            public void hp() {
                if (!z3) {
                    l.this.hp(lVar, (List<mp>) list, (List) v2);
                }
                com.byazt.jdb.j.l(mpVar, ky.l(i2), j2);
                com.byazt.pc.w wVar2 = wVar;
                if (wVar2 != null) {
                    wVar2.hp(v2, z2, mpVar);
                }
            }

            @Override // com.byazt.pc.jx
            public void jx() {
                if (this.gu.compareAndSet(false, true)) {
                    l.this.hp(z2, lVar, list);
                }
            }

            @Override // com.byazt.pc.jx
            public void l() {
            }
        };
    }

    public void hp(boolean z2, com.byazt.jt.l lVar, List<mp> list) {
        if (z2) {
            com.byazt.pc.l lVar2 = this.hp;
            if (lVar2 != null) {
                lVar2.l().l(lVar, list);
                return;
            }
            return;
        }
        com.byazt.pc.l lVar3 = this.hp;
        if (lVar3 != null) {
            lVar3.l().hp(lVar, list);
        }
    }

    @Override // com.byazt.esb.hp
    public void hp(final int i2, com.byazt.jt.l lVar, final mp mpVar) {
        com.byazt.dnb.s.hp(new com.byazt.uid.eb("preloadResOnMetaCreated") { // from class: com.byazt.sr.l.3
            @Override // java.lang.Runnable
            public void run() {
                if ((!mp.hp(mpVar) || jl.hp(mpVar)) && !TextUtils.isEmpty(df.hp(mpVar))) {
                    if (sz.l().j(String.valueOf(ky.zy(mpVar))) && sz.l().lr()) {
                        if (df.v(mpVar) != null) {
                            df.v(mpVar).setRewardVideoCachedType(1);
                        }
                        if (df.u(mpVar) != null) {
                            df.u(mpVar).setRewardVideoCachedType(1);
                        }
                        com.byazt.tw.a aVarHp = df.hp(4, mpVar);
                        aVarHp.putExtra("material_meta", mpVar);
                        aVarHp.putExtra("ad_slot", Integer.valueOf(i2));
                        com.byazt.cwe.jx.hp(aVarHp, (e.hp) null);
                    }
                }
            }
        });
    }
}
