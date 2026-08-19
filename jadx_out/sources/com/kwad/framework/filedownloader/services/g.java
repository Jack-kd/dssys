package com.kwad.framework.filedownloader.services;

import android.text.TextUtils;
import com.kwad.framework.filedownloader.download.DownloadLaunchRunnable;
import com.kwad.framework.filedownloader.y;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
final class g implements y {
    private final h aDg = new h(com.kwad.framework.filedownloader.download.b.Ca().Cd());

    private static com.kwad.framework.filedownloader.b.a Dp() {
        return com.kwad.framework.filedownloader.download.b.Ca().Cc();
    }

    private boolean da(int i2) {
        return a(Dp().cC(i2));
    }

    public final boolean B(String str, String str2) {
        return da(com.kwad.framework.filedownloader.f.f.D(str, str2));
    }

    public final void CH() {
        Dp().clear();
    }

    public final void Dq() {
        List<Integer> listDt = this.aDg.Dt();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "pause all tasks %d", Integer.valueOf(listDt.size()));
        }
        Iterator<Integer> it = listDt.iterator();
        while (it.hasNext()) {
            cv(it.next().intValue());
        }
    }

    @Override // com.kwad.framework.filedownloader.y
    public final boolean a(com.kwad.framework.filedownloader.d.c cVar) {
        if (cVar == null) {
            return false;
        }
        boolean zDc = this.aDg.dc(cVar.getId());
        if (com.kwad.framework.filedownloader.d.d.cX(cVar.AH())) {
            return zDc;
        }
        if (zDc) {
            return true;
        }
        com.kwad.framework.filedownloader.f.d.a(this, "%d status is[%s](not finish) & but not in the pool", Integer.valueOf(cVar.getId()), Byte.valueOf(cVar.AH()));
        return false;
    }

    public final synchronized void b(String str, String str2, boolean z2, int i2, int i3, int i4, boolean z3, com.kwad.framework.filedownloader.d.b bVar, boolean z4) {
        com.kwad.framework.filedownloader.d.c cVar;
        List<com.kwad.framework.filedownloader.d.a> listCD;
        try {
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "request start the task with url(%s) path(%s) isDirectory(%B)", str, str2, Boolean.valueOf(z2));
            }
            int iG = com.kwad.framework.filedownloader.f.f.g(str, str2, z2);
            com.kwad.framework.filedownloader.b.a aVarDp = Dp();
            com.kwad.framework.filedownloader.d.c cVarCC = aVarDp.cC(iG);
            boolean z5 = true;
            if (z2 || cVarCC != null) {
                cVar = cVarCC;
                listCD = null;
            } else {
                int iG2 = com.kwad.framework.filedownloader.f.f.g(str, com.kwad.framework.filedownloader.f.f.co(str2), true);
                com.kwad.framework.filedownloader.d.c cVarCC2 = aVarDp.cC(iG2);
                if (cVarCC2 == null || !str2.equals(cVarCC2.getTargetFilePath())) {
                    listCD = null;
                } else {
                    if (com.kwad.framework.filedownloader.f.d.aDr) {
                        com.kwad.framework.filedownloader.f.d.c(this, "task[%d] find model by dirCaseId[%d]", Integer.valueOf(iG), Integer.valueOf(iG2));
                    }
                    listCD = aVarDp.cD(iG2);
                }
                cVar = cVarCC2;
            }
            if (com.kwad.framework.filedownloader.f.c.a(iG, cVar, (y) this, true)) {
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(this, "has already started download %d", Integer.valueOf(iG));
                }
                return;
            }
            String targetFilePath = cVar != null ? cVar.getTargetFilePath() : com.kwad.framework.filedownloader.f.f.a(str2, z2, (String) null);
            if (com.kwad.framework.filedownloader.f.c.a(iG, targetFilePath, z3, true)) {
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(this, "has already completed downloading %d", Integer.valueOf(iG));
                }
                return;
            }
            if (com.kwad.framework.filedownloader.f.c.a(iG, cVar != null ? cVar.CX() : 0L, cVar != null ? cVar.Cp() : com.kwad.framework.filedownloader.f.f.cm(targetFilePath), targetFilePath, this)) {
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(this, "there is an another task with the same target-file-path %d %s", Integer.valueOf(iG), targetFilePath);
                    if (cVar != null) {
                        aVarDp.cF(iG);
                        aVarDp.cE(iG);
                    }
                }
                return;
            }
            if (cVar == null || !(cVar.AH() == -2 || cVar.AH() == -1 || cVar.AH() == 1 || cVar.AH() == 6 || cVar.AH() == 2)) {
                if (cVar == null) {
                    cVar = new com.kwad.framework.filedownloader.d.c();
                }
                cVar.setUrl(str);
                cVar.d(str2, z2);
                cVar.setId(iG);
                cVar.af(0L);
                cVar.ah(0L);
                cVar.d((byte) 1);
                cVar.cV(1);
            } else if (cVar.getId() != iG) {
                aVarDp.cF(cVar.getId());
                aVarDp.cE(cVar.getId());
                cVar.setId(iG);
                cVar.d(str2, z2);
                if (listCD != null) {
                    for (com.kwad.framework.filedownloader.d.a aVar : listCD) {
                        aVar.setId(iG);
                        aVarDp.a(aVar);
                    }
                }
            } else if (TextUtils.equals(str, cVar.getUrl())) {
                z5 = false;
            } else {
                cVar.setUrl(str);
            }
            if (z5) {
                aVarDp.b(cVar);
            }
            this.aDg.a(new DownloadLaunchRunnable.a().e(cVar).b(bVar).a(this).f(Integer.valueOf(i3)).g(Integer.valueOf(i2)).b(Boolean.valueOf(z3)).c(Boolean.valueOf(z4)).h(Integer.valueOf(i4)).Cq());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean cP(int i2) {
        return this.aDg.cP(i2);
    }

    public final long cR(int i2) {
        com.kwad.framework.filedownloader.d.c cVarCC = Dp().cC(i2);
        if (cVarCC == null) {
            return 0L;
        }
        return cVarCC.getTotal();
    }

    public final boolean cv(int i2) {
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "request pause the task %d", Integer.valueOf(i2));
        }
        com.kwad.framework.filedownloader.d.c cVarCC = Dp().cC(i2);
        if (cVarCC == null) {
            return false;
        }
        cVarCC.d((byte) -2);
        this.aDg.cancel(i2);
        return true;
    }

    public final byte cw(int i2) {
        com.kwad.framework.filedownloader.d.c cVarCC = Dp().cC(i2);
        if (cVarCC == null) {
            return (byte) 0;
        }
        return cVarCC.AH();
    }

    public final boolean cx(int i2) {
        if (i2 == 0) {
            com.kwad.framework.filedownloader.f.d.d(this, "The task[%d] id is invalid, can't clear it.", Integer.valueOf(i2));
            return false;
        }
        if (da(i2)) {
            com.kwad.framework.filedownloader.f.d.d(this, "The task[%d] is downloading, can't clear it.", Integer.valueOf(i2));
            return false;
        }
        com.kwad.framework.filedownloader.b.a aVarDp = Dp();
        aVarDp.cF(i2);
        aVarDp.cE(i2);
        return true;
    }

    public final long db(int i2) {
        com.kwad.framework.filedownloader.b.a aVarDp = Dp();
        com.kwad.framework.filedownloader.d.c cVarCC = aVarDp.cC(i2);
        if (cVarCC == null) {
            return 0L;
        }
        int iDa = cVarCC.Da();
        if (iDa <= 1) {
            return cVarCC.CX();
        }
        List<com.kwad.framework.filedownloader.d.a> listCD = aVarDp.cD(i2);
        if (listCD == null || listCD.size() != iDa) {
            return 0L;
        }
        return com.kwad.framework.filedownloader.d.a.y(listCD);
    }

    public final boolean isIdle() {
        return this.aDg.Ds() <= 0;
    }

    @Override // com.kwad.framework.filedownloader.y
    public final int p(String str, int i2) {
        return this.aDg.p(str, i2);
    }
}
