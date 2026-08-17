package com.kwad.framework.filedownloader.services;

import com.kwad.framework.filedownloader.a.c;
import com.kwad.framework.filedownloader.e.b;
import com.kwad.framework.filedownloader.f.c;

/* loaded from: classes4.dex */
public final class c {
    private final b aCV;

    public interface a {
        c.b Cg();
    }

    public static class b {
        c.InterfaceC0586c aCW;
        Integer aCX;
        c.e aCY;
        c.b aCZ;
        a aDa;
        c.a aDb;
        c.d aDc;

        public final b a(c.b bVar) {
            this.aCZ = bVar;
            return this;
        }

        public final b cZ(int i2) {
            this.aCX = Integer.MAX_VALUE;
            return this;
        }

        public final String toString() {
            return com.kwad.framework.filedownloader.f.f.c("component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]", this.aCW, this.aCX, this.aCY, this.aCZ, this.aDb);
        }

        public final b a(a aVar) {
            this.aDa = aVar;
            return this;
        }
    }

    public c() {
        this.aCV = null;
    }

    private static c.d Di() {
        return new com.kwad.framework.filedownloader.services.b();
    }

    private static int Dj() {
        return com.kwad.framework.filedownloader.f.e.Dz().aDw;
    }

    private static c.e Dk() {
        return new b.a();
    }

    private static c.b Dl() {
        return new c.b();
    }

    private static c.a Dm() {
        return new com.kwad.framework.filedownloader.a.a();
    }

    public final int Cd() {
        b bVar = this.aCV;
        if (bVar == null) {
            return Dj();
        }
        Integer num = bVar.aCX;
        if (num == null) {
            return Dj();
        }
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d", num);
        }
        return com.kwad.framework.filedownloader.f.e.dd(num.intValue());
    }

    public final com.kwad.framework.filedownloader.b.a Dd() {
        c.InterfaceC0586c interfaceC0586c;
        b bVar = this.aCV;
        if (bVar == null || (interfaceC0586c = bVar.aCW) == null) {
            return new com.kwad.framework.filedownloader.b.c();
        }
        com.kwad.framework.filedownloader.b.a aVarDy = interfaceC0586c.Dy();
        return aVarDy != null ? aVarDy : new com.kwad.framework.filedownloader.b.c();
    }

    public final c.e De() {
        b bVar = this.aCV;
        if (bVar == null) {
            return Dk();
        }
        c.e eVar = bVar.aCY;
        if (eVar == null) {
            return Dk();
        }
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "initial FileDownloader manager with the customize output stream: %s", eVar);
        }
        return eVar;
    }

    public final c.b Df() {
        c.b bVarCg;
        b bVar = this.aCV;
        if (bVar == null) {
            return Dl();
        }
        a aVar = bVar.aDa;
        return (aVar == null || (bVarCg = aVar.Cg()) == null) ? Dl() : bVarCg;
    }

    public final c.a Dg() {
        b bVar = this.aCV;
        if (bVar == null) {
            return Dm();
        }
        c.a aVar = bVar.aDb;
        if (aVar == null) {
            return Dm();
        }
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "initial FileDownloader manager with the customize connection count adapter: %s", aVar);
        }
        return aVar;
    }

    public final c.d Dh() {
        b bVar = this.aCV;
        if (bVar == null) {
            return Di();
        }
        c.d dVar = bVar.aDc;
        if (dVar == null) {
            return Di();
        }
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "initial FileDownloader manager with the customize id generator: %s", dVar);
        }
        return dVar;
    }

    public c(b bVar) {
        this.aCV = bVar;
    }
}
