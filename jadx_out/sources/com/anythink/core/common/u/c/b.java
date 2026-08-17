package com.anythink.core.common.u.c;

import android.text.TextUtils;
import com.anythink.core.common.d;
import com.anythink.core.common.d.s;
import com.anythink.core.common.e;
import com.anythink.core.common.f;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.c;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.o;
import com.anythink.core.common.p;
import com.anythink.core.common.q;
import com.anythink.core.common.t;
import com.anythink.core.common.v;
import com.anythink.core.common.v.ai;
import com.anythink.core.e.m;
import java.util.List;

/* loaded from: classes2.dex */
public final class b {
    private static o a(int i2, bx bxVar, by byVar, long j2) {
        n nVar;
        String strAQ;
        m mVarA;
        List<String> listT;
        f fVarA;
        List<c> listA;
        ad adVarY;
        a(i2, byVar, false);
        if (i2 == 4) {
            ad adVarY2 = byVar != null ? byVar.Y() : null;
            if (adVarY2 != null) {
                com.anythink.core.c.d.c.a(adVarY2, true, adVarY2.getSortPrice(), true, false, byVar);
            }
            if ((bxVar instanceof n) && (mVarA = com.anythink.core.e.o.a(s.b().g()).a((strAQ = (nVar = (n) bxVar).aQ()))) != null && (listT = mVarA.T()) != null && listT.size() != 0 && (fVarA = nVar.a()) != null && (listA = fVarA.e().a(strAQ)) != null) {
                for (c cVar : listA) {
                    if (cVar != null && cVar.c() == 0) {
                        n nVarI = cVar.i();
                        by unitGroupInfo = cVar.e().getUnitGroupInfo();
                        boolean zR = (!ai.b(unitGroupInfo) || unitGroupInfo.Y() == null) ? false : unitGroupInfo.Y().r();
                        if (listT.contains(String.valueOf(unitGroupInfo.n())) && !TextUtils.equals(nVar.y(), nVarI.y()) && (adVarY = unitGroupInfo.Y()) != null) {
                            com.anythink.core.c.d.c.a(adVarY, false, com.anythink.core.common.v.o.a(byVar), nVar.K() == 1, zR, unitGroupInfo);
                        }
                    }
                }
            }
        }
        if (i2 == 4) {
            if (bxVar instanceof n) {
                if (byVar != null) {
                    n nVar2 = (n) bxVar;
                    com.anythink.core.d.a.a().a(nVar2, byVar);
                    if (byVar.X() && byVar.aK() > 0.0d) {
                        nVar2.e(byVar.aK());
                    }
                }
                n nVar3 = (n) bxVar;
                if (nVar3.j() == 2) {
                    v.a().a(bxVar.aQ(), nVar3.b());
                }
                d.a().a(bxVar.aQ(), bxVar.aR(), nVar3.N());
            }
            com.anythink.core.d.b.a().a(bxVar, byVar);
        }
        if (i2 == 6 && (bxVar instanceof n)) {
            d.a().b(bxVar.aQ(), bxVar.aR(), ((n) bxVar).N());
        }
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p());
        o oVar = new o();
        oVar.f4349a = i2;
        oVar.f4350b = bxVar;
        oVar.f4351c = j2 > 0 ? j2 : System.currentTimeMillis();
        q.a(s.b().g()).a(i2, oVar, bVarB);
        if (4 == i2 && (bxVar instanceof n)) {
            p.a();
            p.a((n) bxVar);
        }
        return oVar;
    }

    private static void b(int i2, bx bxVar) {
        if (4 == i2 && (bxVar instanceof n)) {
            p.a();
            p.a((n) bxVar);
        }
    }

    private static void b(int i2, bx bxVar, by byVar) {
        if (i2 == 4) {
            if (bxVar instanceof n) {
                if (byVar != null) {
                    n nVar = (n) bxVar;
                    com.anythink.core.d.a.a().a(nVar, byVar);
                    if (byVar.X() && byVar.aK() > 0.0d) {
                        nVar.e(byVar.aK());
                    }
                }
                n nVar2 = (n) bxVar;
                if (nVar2.j() == 2) {
                    v.a().a(bxVar.aQ(), nVar2.b());
                }
                d.a().a(bxVar.aQ(), bxVar.aR(), nVar2.N());
            }
            com.anythink.core.d.b.a().a(bxVar, byVar);
        }
    }

    public static void a(int i2, by byVar, boolean z2) {
        if (byVar != null) {
            int iN = byVar.n();
            if (z2) {
                if (iN == 79 || (iN == 50 && byVar.bo() == 1)) {
                    a(i2, byVar);
                    return;
                }
                return;
            }
            if (iN == 79) {
                return;
            }
            if (iN == 50 && byVar.bo() == 1) {
                return;
            }
            a(i2, byVar);
        }
    }

    private static void a(int i2, by byVar) {
        if (i2 == 13) {
            ad adVarY = byVar != null ? byVar.Y() : null;
            if (adVarY != null) {
                com.anythink.core.c.d.c.a(adVarY, byVar, 1);
            }
        }
    }

    private static void a(int i2, bx bxVar, by byVar) {
        n nVar;
        String strAQ;
        m mVarA;
        List<String> listT;
        f fVarA;
        List<c> listA;
        ad adVarY;
        if (i2 == 4) {
            ad adVarY2 = byVar != null ? byVar.Y() : null;
            if (adVarY2 != null) {
                com.anythink.core.c.d.c.a(adVarY2, true, adVarY2.getSortPrice(), true, false, byVar);
            }
            if (!(bxVar instanceof n) || (mVarA = com.anythink.core.e.o.a(s.b().g()).a((strAQ = (nVar = (n) bxVar).aQ()))) == null || (listT = mVarA.T()) == null || listT.size() == 0 || (fVarA = nVar.a()) == null || (listA = fVarA.e().a(strAQ)) == null) {
                return;
            }
            for (c cVar : listA) {
                if (cVar != null && cVar.c() == 0) {
                    n nVarI = cVar.i();
                    by unitGroupInfo = cVar.e().getUnitGroupInfo();
                    boolean zR = (!ai.b(unitGroupInfo) || unitGroupInfo.Y() == null) ? false : unitGroupInfo.Y().r();
                    if (listT.contains(String.valueOf(unitGroupInfo.n())) && !TextUtils.equals(nVar.y(), nVarI.y()) && (adVarY = unitGroupInfo.Y()) != null) {
                        com.anythink.core.c.d.c.a(adVarY, false, com.anythink.core.common.v.o.a(byVar), nVar.K() == 1, zR, unitGroupInfo);
                    }
                }
            }
        }
    }

    public static void a(int i2, bx bxVar) {
        if (bxVar instanceof n) {
            if (i2 == 4) {
                n nVar = (n) bxVar;
                nVar.n();
                t.a().a(bxVar.aQ(), bxVar.aR(), nVar.N());
            } else if (i2 == 6) {
                ((n) bxVar).o();
            } else if (i2 == 10) {
                n nVar2 = (n) bxVar;
                e.a(bxVar.aG(), e.f3093c, nVar2);
                if (bxVar != null) {
                    com.anythink.core.common.u.f.b(nVar2);
                }
                com.anythink.core.common.u.f.b(nVar2, 1);
            } else if (i2 == 21) {
                s.b().S();
            }
            com.anythink.core.common.u.d.a().a(i2, (n) bxVar);
        }
    }

    private static void a(n nVar, by byVar) {
        List<String> listT;
        f fVarA;
        List<c> listA;
        ad adVarY;
        String strAQ = nVar.aQ();
        m mVarA = com.anythink.core.e.o.a(s.b().g()).a(strAQ);
        if (mVarA == null || (listT = mVarA.T()) == null || listT.size() == 0 || (fVarA = nVar.a()) == null || (listA = fVarA.e().a(strAQ)) == null) {
            return;
        }
        for (c cVar : listA) {
            if (cVar != null && cVar.c() == 0) {
                n nVarI = cVar.i();
                by unitGroupInfo = cVar.e().getUnitGroupInfo();
                boolean zR = (!ai.b(unitGroupInfo) || unitGroupInfo.Y() == null) ? false : unitGroupInfo.Y().r();
                if (listT.contains(String.valueOf(unitGroupInfo.n())) && !TextUtils.equals(nVar.y(), nVarI.y()) && (adVarY = unitGroupInfo.Y()) != null) {
                    com.anythink.core.c.d.c.a(adVarY, false, com.anythink.core.common.v.o.a(byVar), nVar.K() == 1, zR, unitGroupInfo);
                }
            }
        }
    }

    private static void a(bx bxVar) {
        if (bxVar instanceof n) {
            com.anythink.core.common.u.f.b((n) bxVar);
        }
    }
}
