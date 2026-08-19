package com.byazt.pc;

import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.sr.a;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1176, 38})
/* loaded from: classes3.dex */
public class j<T> extends l {

    /* renamed from: l, reason: collision with root package name */
    public final long f24313l;

    public interface hp {
        void hp(boolean z2);
    }

    public j(int i2) {
        super(i2);
        this.f24313l = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.byazt.jt.l lVar, w<T> wVar, f fVar) {
        long jCurrentTimeMillis;
        final s.j jVarGu = hp().gu();
        final a.hp hpVarHp = com.byazt.sr.a.hp(lVar.j(), jVarGu);
        final com.byazt.rh.j jVar = new com.byazt.rh.j(wVar, hp(), this.hp, lVar.j());
        jVar.hp();
        hp(lVar, wVar, fVar, jVar);
        lVar.j();
        final int iHp = hpVarHp.hp(jVarGu.w(), jVarGu);
        if (iHp < 0) {
            lVar.j();
            jVar.hp(false);
            return;
        }
        if (iHp > 0) {
            jCurrentTimeMillis = System.currentTimeMillis() - (iHp * 60000);
            lVar.j();
        } else {
            jCurrentTimeMillis = 0;
        }
        hp(lVar, wVar, fVar.eb == 2, jVar, jCurrentTimeMillis, new hp() { // from class: com.byazt.pc.j.11
            @Override // com.byazt.pc.j.hp
            public void hp(boolean z2) {
                lVar.j();
                jVar.hp(z2);
                if (z2) {
                    a.hp hpVar = hpVarHp;
                    int i2 = j.this.hp;
                    com.byazt.jt.l lVar2 = lVar;
                    s.j jVar2 = jVarGu;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iHp);
                    hpVar.hp(i2, lVar2, jVar2, "backup_cache", sb.toString());
                }
            }
        });
    }

    private void eb(com.byazt.jt.l lVar, w<T> wVar, f fVar) throws NumberFormatException {
        double d2;
        s.j jVarGu = hp().gu();
        a.hp hpVarHp = com.byazt.sr.a.hp(lVar.j(), jVarGu);
        if (jVarGu.l() > 0) {
            lVar.j();
            try {
                d2 = Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", lVar.lv()));
            } catch (Exception unused) {
                d2 = 0.0d;
            }
            if (d2 > 0.0d && d2 < jVarGu.l()) {
                lVar.j();
                hp(lVar, (w) wVar, fVar, true, 0L, "device_score", String.valueOf(d2));
                return;
            }
        }
        if (jVarGu.jx() > 0) {
            lVar.j();
            int iJx = vv.jx(sz.getContext());
            if (iJx == 2 ? (jVarGu.jx() & 1) != 0 : !(iJx == 3 ? (2 & jVarGu.jx()) == 0 : iJx == 4 ? (jVarGu.jx() & 16) == 0 : iJx == 5 ? (4 & jVarGu.jx()) == 0 : iJx != 6 || (jVarGu.jx() & 8) == 0)) {
                lVar.j();
                hp(lVar, (w) wVar, fVar, true, 0L, "net_type", String.valueOf(iJx));
                return;
            }
        }
        if (jVarGu.j() > 0) {
            lVar.j();
            int iHp = hpVarHp.hp(jVarGu.j(), jVarGu);
            if (iHp > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - (iHp * 60000);
                lVar.j();
                hp(lVar, (w) wVar, fVar, true, jCurrentTimeMillis, "good_cache", String.valueOf(iHp));
                return;
            } else if (iHp == 0) {
                lVar.j();
                hp(lVar, (w) wVar, fVar, true, 0L, "behavior_score", String.valueOf(iHp));
                return;
            }
        }
        lVar.j();
        hp(lVar, (w) wVar, fVar, false, 0L, "", "");
    }

    private void j(com.byazt.jt.l lVar, w<T> wVar, f fVar) {
        hp(lVar, wVar, fVar, (com.byazt.rh.l) null);
    }

    private void jx(com.byazt.jt.l lVar, w<T> wVar, f fVar) {
        final com.byazt.rh.jx jxVar = new com.byazt.rh.jx(wVar, hp());
        hp(lVar, wVar, fVar, jxVar);
        hp(lVar, wVar, fVar.eb == 2, jxVar, 0L, new hp() { // from class: com.byazt.pc.j.9
            @Override // com.byazt.pc.j.hp
            public void hp(boolean z2) {
                if (z2) {
                    return;
                }
                jxVar.hp(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.jt.l lVar, f fVar, w<T> wVar) throws NumberFormatException {
        if (lVar == null) {
            return;
        }
        int iJx = jx();
        if (fVar.sz) {
            iJx = 0;
        }
        int i2 = s.hp(this.hp).hp("load_only_online", new s.l.hp().hp(lVar).hp()) ? 0 : iJx;
        lVar.j();
        if (i2 == 0) {
            j(lVar, wVar, fVar);
            return;
        }
        if (i2 == 1) {
            hp(lVar, wVar, fVar);
            return;
        }
        if (i2 == 2) {
            l(lVar, wVar, fVar);
            return;
        }
        if (i2 == 3) {
            jx(lVar, wVar, fVar);
            return;
        }
        if (i2 == 4) {
            w(lVar, wVar, fVar);
        } else if (i2 == 5) {
            eb(lVar, wVar, fVar);
        } else {
            u.l("cache_tag", "仅实时：走到了兜底逻辑，预期不会走到！！！");
            j(lVar, wVar, fVar);
        }
    }

    private void w(com.byazt.jt.l lVar, final w<T> wVar, f fVar) {
        hp(lVar, wVar, fVar.eb == 2, (com.byazt.rh.l) null, 0L, new hp() { // from class: com.byazt.pc.j.10
            @Override // com.byazt.pc.j.hp
            public void hp(boolean z2) {
                if (z2) {
                    return;
                }
                wVar.hp(-3, "no cache");
            }
        });
    }

    private int jx() {
        if (hp() == null) {
            return com.byazt.pc.hp.hp(this.hp);
        }
        if (hp().q() >= 0 && hp().q() <= 5) {
            return hp().q();
        }
        return com.byazt.pc.hp.hp(this.hp);
    }

    public void hp(final com.byazt.jt.l lVar, final f fVar, final w<T> wVar) {
        com.byazt.dnb.s.w(new Runnable() { // from class: com.byazt.pc.j.1
            @Override // java.lang.Runnable
            public void run() throws NumberFormatException {
                j.this.l(lVar, fVar, new a(wVar));
            }
        });
    }

    private void hp(final com.byazt.jt.l lVar, final w<T> wVar, final f fVar) {
        final com.byazt.rh.hp hpVar = new com.byazt.rh.hp(wVar, hp()) { // from class: com.byazt.pc.j.6
            @Override // com.byazt.rh.hp
            public void hp() {
                j.this.hp(lVar, wVar, fVar, this);
            }
        };
        hp(lVar, wVar, fVar.eb == 2, hpVar, 0L, new hp() { // from class: com.byazt.pc.j.7
            @Override // com.byazt.pc.j.hp
            public void hp(boolean z2) {
                if (z2) {
                    return;
                }
                hpVar.hp(false);
            }
        });
    }

    private void hp(final com.byazt.jt.l lVar, final w<T> wVar, final f fVar, boolean z2, long j2, final String str, final String str2) {
        final s.j jVarGu = hp().gu();
        final a.hp hpVarHp = com.byazt.sr.a.hp(lVar.j(), jVarGu);
        if (z2) {
            lVar.j();
            final com.byazt.rh.hp hpVar = new com.byazt.rh.hp(wVar, hp()) { // from class: com.byazt.pc.j.12
                @Override // com.byazt.rh.hp
                public void hp() {
                    lVar.j();
                    j.this.a(lVar, wVar, fVar);
                }
            };
            hp(lVar, wVar, fVar.eb == 2, hpVar, j2, new hp() { // from class: com.byazt.pc.j.13
                @Override // com.byazt.pc.j.hp
                public void hp(boolean z3) {
                    lVar.j();
                    if (z3) {
                        hpVarHp.hp(j.this.hp, lVar, jVarGu, str, str2);
                    } else {
                        hpVar.hp(false);
                    }
                }
            });
        } else {
            lVar.j();
            a(lVar, wVar, fVar);
        }
    }

    private void l(com.byazt.jt.l lVar, w<T> wVar, f fVar) {
        final com.byazt.rh.j jVar = new com.byazt.rh.j(wVar, hp(), this.hp, lVar.j());
        jVar.hp();
        hp(lVar, wVar, fVar, jVar);
        hp(lVar, wVar, fVar.eb == 2, jVar, 0L, new hp() { // from class: com.byazt.pc.j.8
            @Override // com.byazt.pc.j.hp
            public void hp(boolean z2) {
                jVar.hp(true);
            }
        });
    }

    private void hp(final com.byazt.jt.l lVar, final w<T> wVar, final boolean z2, final com.byazt.rh.l lVar2, long j2, final hp hpVar) {
        List<mp> listHp;
        lVar.j();
        if (!TextUtils.isEmpty(lVar.n())) {
            hpVar.hp(false);
            lVar.j();
            return;
        }
        if (hp(z2) == null) {
            u.l("cache_tag", "广告类型 " + this.hp + " ---缓存请求结束--- rit: " + lVar.j() + " 无配置");
            hpVar.hp(false);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iMin = Math.min(s.hp(this.hp).jl(), lVar.jl());
        double dU = s.hp(this.hp).u();
        if (l() != null) {
            l().l(lVar.j());
            listHp = l().hp(lVar.j(), j2, iMin, dU);
        } else {
            listHp = null;
        }
        if (listHp != null && !listHp.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (mp mpVar : listHp) {
                if (hp(mpVar)) {
                    arrayList.add(mpVar);
                }
            }
            if (arrayList.isEmpty()) {
                hpVar.hp(false);
                return;
            }
            if (!hp(z2).hp(lVar, arrayList)) {
                hpVar.hp(false);
                return;
            }
            lVar.j();
            arrayList.size();
            com.byazt.yek.hp hpVar2 = new com.byazt.yek.hp(this.hp);
            hpVar2.hp(jCurrentTimeMillis);
            hpVar2.l(System.currentTimeMillis());
            hpVar2.hp(arrayList, new com.byazt.yek.a() { // from class: com.byazt.pc.j.2
                @Override // com.byazt.yek.a
                public void hp(List<mp> list) {
                    j.this.hp(list, lVar, z2, lVar2, wVar, hpVar);
                }

                @Override // com.byazt.yek.a
                public void jx(List<mp> list) {
                    Iterator<mp> it = list.iterator();
                    while (it.hasNext()) {
                        j.this.l().hp(lVar.j(), it.next());
                    }
                }

                @Override // com.byazt.yek.a
                public void l(List<mp> list) {
                    lVar.j();
                    list.size();
                    if (list.isEmpty()) {
                        hpVar.hp(false);
                    } else {
                        j.this.hp(list, lVar, z2, lVar2, wVar, hpVar);
                    }
                }
            });
            return;
        }
        hpVar.hp(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.jt.l lVar, final w<T> wVar, final f fVar, final com.byazt.rh.l lVar2) {
        lVar.j();
        sz.hp().hp(lVar, fVar, this.hp, new cx.l() { // from class: com.byazt.pc.j.3
            @Override // com.byazt.jz.cx.l
            public void hp(int i2, String str, com.byazt.xci.l lVar3) {
                lVar.j();
                if (j.this.hp(fVar.eb == 2) != null) {
                    j.this.hp(fVar.eb == 2).hp(lVar, i2, str, lVar3);
                }
                com.byazt.rh.l lVar4 = lVar2;
                if (lVar4 != null) {
                    lVar4.hp(i2, str);
                    return;
                }
                w wVar2 = wVar;
                if (wVar2 != null) {
                    wVar2.hp(i2, str);
                }
            }

            @Override // com.byazt.jz.cx.l
            public void hp(final com.byazt.xci.hp hpVar, final com.byazt.xci.l lVar3) {
                lVar.j();
                com.byazt.esb.hp hpVarHp = j.this.hp(fVar.eb == 2);
                if (hpVarHp == null) {
                    return;
                }
                hpVarHp.hp(j.this.hp, hpVar, lVar3, fVar, lVar, wVar, new eb() { // from class: com.byazt.pc.j.3.1
                    @Override // com.byazt.pc.eb
                    public void hp(jx jxVar) {
                        lVar.j();
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        if (!j.this.hp(j.this.hp(lVar, hpVar, lVar2))) {
                            if (jxVar != null) {
                                com.byazt.rh.l lVar4 = lVar2;
                                if (lVar4 == null) {
                                    jxVar.hp();
                                } else {
                                    lVar4.hp(jxVar);
                                }
                            }
                            com.byazt.rh.l lVar5 = lVar2;
                            if (lVar5 != null) {
                                lVar5.jx();
                                return;
                            }
                            return;
                        }
                        lVar.j();
                        if (jxVar != null) {
                            jxVar.jx();
                        }
                        AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                        com.byazt.rh.l lVar6 = lVar2;
                        if (lVar6 != null) {
                            lVar6.l(-3, com.byazt.jz.eb.hp(-3));
                            lVar2.jx();
                        } else {
                            w wVar2 = wVar;
                            if (wVar2 != null) {
                                wVar2.hp(-3, com.byazt.jz.eb.hp(-3));
                            }
                        }
                    }

                    @Override // com.byazt.pc.eb
                    public void hp(int i2) {
                        w wVar2 = wVar;
                        if (wVar2 != null) {
                            wVar2.hp(i2, com.byazt.jz.eb.hp(i2));
                        }
                        lVar3.hp(i2);
                        com.byazt.xci.l.hp(lVar3);
                        com.byazt.rh.l lVar4 = lVar2;
                        if (lVar4 != null) {
                            lVar4.jx();
                        }
                    }
                });
            }
        });
    }

    public void hp(final com.byazt.jt.l lVar, final f fVar) {
        if (lVar == null) {
            return;
        }
        lVar.sz();
        if (!com.byazt.zls.j.hp(lVar.ns())) {
            lVar.sz();
            return;
        }
        if (s.hp(this.hp).hp("forbid_preload", new s.l.hp().hp(lVar).hp())) {
            lVar.sz();
            lVar.j();
            return;
        }
        if (jx() == 0) {
            lVar.sz();
            return;
        }
        if (!l().hp(lVar.j())) {
            lVar.sz();
            return;
        }
        if (!TextUtils.isEmpty(lVar.n())) {
            lVar.sz();
            if (hp(fVar.eb == 2) != null) {
                hp(fVar.eb == 2).hp(lVar);
                return;
            }
            return;
        }
        com.byazt.dnb.s.w(new Runnable() { // from class: com.byazt.pc.j.4
            @Override // java.lang.Runnable
            public void run() {
                lVar.sz();
                j.this.hp(lVar, (w) null, fVar, (com.byazt.rh.l) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final List<mp> list, final com.byazt.jt.l lVar, boolean z2, final com.byazt.rh.l lVar2, w<T> wVar, final hp hpVar) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_playAgain", false);
        bundle.putBoolean(PointParamKey.IS_CACHE, true);
        bundle.putLong("start_time", this.f24313l);
        hp(z2).hp(this.hp, list, lVar, wVar, bundle, new eb() { // from class: com.byazt.pc.j.5
            @Override // com.byazt.pc.eb
            public void hp(int i2) {
            }

            @Override // com.byazt.pc.eb
            public void hp(jx jxVar) {
                com.byazt.rh.l lVar3 = lVar2;
                if (lVar3 != null) {
                    lVar3.l(jxVar);
                    lVar2.hp(true);
                    list.size();
                    lVar.j();
                } else {
                    jxVar.hp();
                    list.size();
                    lVar.j();
                }
                hpVar.hp(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public s.l hp(com.byazt.jt.l lVar, com.byazt.xci.hp hpVar, com.byazt.rh.l lVar2) {
        s.l.hp hpVarHp = new s.l.hp().hp(lVar).hp(lVar2 != null && lVar2.j());
        mp mpVarHp = hp(hpVar);
        if (mpVarHp != null) {
            hpVarHp.hp(mpVarHp);
        }
        return hpVarHp.hp();
    }

    private mp hp(com.byazt.xci.hp hpVar) {
        if (hpVar == null || hpVar.l() == null || hpVar.l().isEmpty()) {
            return null;
        }
        return hpVar.l().get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(s.l lVar) {
        return s.hp(this.hp).hp("forbid_realtime", lVar);
    }
}
