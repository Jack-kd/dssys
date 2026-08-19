package com.kwad.framework.filedownloader;

import com.kwad.framework.filedownloader.a;
import com.kwad.framework.filedownloader.event.DownloadServiceConnectChangedEvent;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class z extends e implements v {
    private final ArrayList<a.InterfaceC0580a> aAo = new ArrayList<>();

    @Override // com.kwad.framework.filedownloader.e
    public final void Bi() {
        w wVarBJ = r.BG().BJ();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "The downloader service is connected.", new Object[0]);
        }
        synchronized (this.aAo) {
            try {
                List<a.InterfaceC0580a> list = (List) this.aAo.clone();
                this.aAo.clear();
                ArrayList arrayList = new ArrayList(wVarBJ.BN());
                for (a.InterfaceC0580a interfaceC0580a : list) {
                    int iAR = interfaceC0580a.AR();
                    if (wVarBJ.cz(iAR)) {
                        interfaceC0580a.AP().Aw().AX();
                        if (!arrayList.contains(Integer.valueOf(iAR))) {
                            arrayList.add(Integer.valueOf(iAR));
                        }
                    } else {
                        interfaceC0580a.AV();
                    }
                }
                wVarBJ.w(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.kwad.framework.filedownloader.e
    public final void Bj() {
        if (Bk() != DownloadServiceConnectChangedEvent.ConnectStatus.lost) {
            if (h.Bn().size() > 0) {
                com.kwad.framework.filedownloader.f.d.d(this, "file download service has be unbound but the size of active tasks are not empty %d ", Integer.valueOf(h.Bn().size()));
                return;
            }
            return;
        }
        w wVarBJ = r.BG().BJ();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "lost the connection to the file download service, and current active task size is %d", Integer.valueOf(h.Bn().size()));
        }
        if (h.Bn().size() > 0) {
            synchronized (this.aAo) {
                try {
                    h.Bn().v(this.aAo);
                    ArrayList<a.InterfaceC0580a> arrayList = this.aAo;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        a.InterfaceC0580a interfaceC0580a = arrayList.get(i2);
                        i2++;
                        interfaceC0580a.free();
                    }
                    wVarBJ.BM();
                } catch (Throwable th) {
                    throw th;
                }
            }
            r.BG().BH();
        }
    }

    @Override // com.kwad.framework.filedownloader.v
    public final boolean d(a.InterfaceC0580a interfaceC0580a) {
        return !this.aAo.isEmpty() && this.aAo.contains(interfaceC0580a);
    }

    @Override // com.kwad.framework.filedownloader.v
    public final void e(a.InterfaceC0580a interfaceC0580a) {
        if (this.aAo.isEmpty()) {
            return;
        }
        synchronized (this.aAo) {
            this.aAo.remove(interfaceC0580a);
        }
    }

    @Override // com.kwad.framework.filedownloader.v
    public final boolean f(a.InterfaceC0580a interfaceC0580a) {
        r.BG();
        if (!r.BI()) {
            synchronized (this.aAo) {
                try {
                    r.BG();
                    if (!r.BI()) {
                        if (com.kwad.framework.filedownloader.f.d.aDr) {
                            com.kwad.framework.filedownloader.f.d.c(this, "Waiting for connecting with the downloader service... %d", Integer.valueOf(interfaceC0580a.AP().getId()));
                        }
                        n.By().aW(com.kwad.framework.filedownloader.f.c.Dx());
                        if (!this.aAo.contains(interfaceC0580a)) {
                            interfaceC0580a.free();
                            this.aAo.add(interfaceC0580a);
                        }
                        return true;
                    }
                } finally {
                }
            }
        }
        e(interfaceC0580a);
        return false;
    }
}
