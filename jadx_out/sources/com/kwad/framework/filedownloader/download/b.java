package com.kwad.framework.filedownloader.download;

import com.kwad.framework.filedownloader.a.c;
import com.kwad.framework.filedownloader.b.a;
import com.kwad.framework.filedownloader.f.c;
import com.kwad.framework.filedownloader.services.c;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes4.dex */
public final class b {
    private com.kwad.framework.filedownloader.services.c aAZ;
    private c.a aBa;
    private c.b aBb;
    private c.e aBc;
    private volatile com.kwad.framework.filedownloader.b.a aBd;
    private c.d aBe;

    public static final class a {
        private static final b aBf = new b();
    }

    public static b Ca() {
        return a.aBf;
    }

    private c.a Cf() {
        c.a aVar = this.aBa;
        if (aVar != null) {
            return aVar;
        }
        synchronized (this) {
            try {
                if (this.aBa == null) {
                    this.aBa = Ci().Dg();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.aBa;
    }

    private c.b Cg() {
        c.b bVar = this.aBb;
        if (bVar != null) {
            return bVar;
        }
        synchronized (this) {
            try {
                if (this.aBb == null) {
                    this.aBb = Ci().Df();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.aBb;
    }

    private c.e Ch() {
        c.e eVar = this.aBc;
        if (eVar != null) {
            return eVar;
        }
        synchronized (this) {
            try {
                if (this.aBc == null) {
                    this.aBc = Ci().De();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.aBc;
    }

    private com.kwad.framework.filedownloader.services.c Ci() {
        com.kwad.framework.filedownloader.services.c cVar = this.aAZ;
        if (cVar != null) {
            return cVar;
        }
        synchronized (this) {
            try {
                if (this.aAZ == null) {
                    this.aAZ = new com.kwad.framework.filedownloader.services.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.aAZ;
    }

    public final c.d Cb() {
        c.d dVar = this.aBe;
        if (dVar != null) {
            return dVar;
        }
        synchronized (this) {
            try {
                if (this.aBe == null) {
                    this.aBe = Ci().Dh();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.aBe;
    }

    public final synchronized com.kwad.framework.filedownloader.b.a Cc() {
        if (this.aBd != null) {
            return this.aBd;
        }
        this.aBd = Ci().Dd();
        a(this.aBd.BR());
        return this.aBd;
    }

    public final int Cd() {
        return Ci().Cd();
    }

    public final boolean Ce() {
        Ch();
        return true;
    }

    public final void a(c.b bVar) {
        synchronized (this) {
            this.aAZ = new com.kwad.framework.filedownloader.services.c(bVar);
            this.aBb = null;
            this.aBc = null;
            this.aBd = null;
            this.aBe = null;
        }
    }

    public final void b(c.b bVar) {
        synchronized (this) {
            this.aAZ = new com.kwad.framework.filedownloader.services.c(bVar);
        }
    }

    public final com.kwad.framework.filedownloader.a.b ca(String str) {
        try {
            return Cg().bX(str);
        } catch (Throwable unused) {
            c.b bVar = new c.b();
            this.aBb = bVar;
            return bVar.bX(str);
        }
    }

    public final com.kwad.framework.filedownloader.e.a b(File file) {
        return Ch().c(file);
    }

    public final int a(int i2, String str, String str2, long j2) {
        return Cf().ab(j2);
    }

    private static void a(a.InterfaceC0581a interfaceC0581a) throws Throwable {
        long j2;
        com.kwad.framework.filedownloader.d.c next;
        Iterator<com.kwad.framework.filedownloader.d.c> it;
        String targetFilePath;
        Iterator<com.kwad.framework.filedownloader.d.c> it2 = interfaceC0581a.iterator();
        c.d dVarCb = Ca().Cb();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        while (it2.hasNext()) {
            try {
                next = it2.next();
                it = it2;
                if (next.AH() == 3 || next.AH() == 2 || next.AH() == -1 || (next.AH() == 1 && next.CX() > 0)) {
                    next.d((byte) -2);
                }
                targetFilePath = next.getTargetFilePath();
            } catch (Throwable th) {
                th = th;
                j2 = jCurrentTimeMillis;
            }
            try {
                if (targetFilePath == null) {
                    j2 = jCurrentTimeMillis;
                } else {
                    File file = new File(targetFilePath);
                    if (next.AH() == -2) {
                        j2 = jCurrentTimeMillis;
                        if (com.kwad.framework.filedownloader.f.f.a(next.getId(), next, next.getPath(), null)) {
                            File file2 = new File(next.Cp());
                            if (!file2.exists() && file.exists()) {
                                boolean zRenameTo = file.renameTo(file2);
                                if (com.kwad.framework.filedownloader.f.d.aDr) {
                                    com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, "resume from the old no-temp-file architecture [%B], [%s]->[%s]", Boolean.valueOf(zRenameTo), file.getPath(), file2.getPath());
                                }
                            }
                        }
                    } else {
                        j2 = jCurrentTimeMillis;
                    }
                    if ((next.AH() != 1 || next.CX() > 0) && com.kwad.framework.filedownloader.f.f.b(next.getId(), next) && !file.exists()) {
                        int id = next.getId();
                        int iF = dVarCb.f(next.getUrl(), next.getPath(), next.AB());
                        if (iF != id) {
                            if (com.kwad.framework.filedownloader.f.d.aDr) {
                                com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, "the id is changed on restoring from db: old[%d] -> new[%d]", Integer.valueOf(id), Integer.valueOf(iF));
                            }
                            next.setId(iF);
                            interfaceC0581a.a(id, next);
                            j5++;
                        }
                        interfaceC0581a.c(next);
                        j3++;
                    }
                    it2 = it;
                    jCurrentTimeMillis = j2;
                }
                it.remove();
                j4++;
                it2 = it;
                jCurrentTimeMillis = j2;
            } catch (Throwable th2) {
                th = th2;
                com.kwad.framework.filedownloader.f.f.ba(com.kwad.framework.filedownloader.f.c.Dx());
                interfaceC0581a.BS();
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d", Long.valueOf(j3), Long.valueOf(j4), Long.valueOf(j5), Long.valueOf(System.currentTimeMillis() - j2));
                }
                throw th;
            }
        }
        long j6 = jCurrentTimeMillis;
        com.kwad.framework.filedownloader.f.f.ba(com.kwad.framework.filedownloader.f.c.Dx());
        interfaceC0581a.BS();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d", Long.valueOf(j3), Long.valueOf(j4), Long.valueOf(j5), Long.valueOf(System.currentTimeMillis() - j6));
        }
    }
}
