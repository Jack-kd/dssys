package com.kwad.library.solder.lib;

import com.kwad.library.solder.lib.a.a;
import com.kwad.library.solder.lib.a.e;
import com.kwad.library.solder.lib.ext.PluginError;

/* loaded from: classes4.dex */
public class b<P extends com.kwad.library.solder.lib.a.a, R extends com.kwad.library.solder.lib.a.e<P>> implements com.kwad.library.solder.lib.ext.b<P, R> {
    com.kwad.library.solder.lib.ext.b<P, R> aEf;
    com.kwad.library.solder.lib.ext.b<P, R> aEg;

    public b(com.kwad.library.solder.lib.ext.b<P, R> bVar, com.kwad.library.solder.lib.ext.b<P, R> bVar2) {
        this.aEf = bVar;
        this.aEg = bVar2;
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public final void a(R r2, P p2) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.a((com.kwad.library.solder.lib.ext.b<P, R>) r2, (R) p2);
        }
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public final void b(R r2) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.b(r2);
        }
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public final void c(R r2) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.c(r2);
        }
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public final void d(R r2) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.d(r2);
        }
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public final void e(R r2) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.e(r2);
        }
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public final void f(R r2) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.f(r2);
        }
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public void a(R r2, PluginError pluginError) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.a((com.kwad.library.solder.lib.ext.b<P, R>) r2, pluginError);
        }
        com.kwad.library.solder.lib.ext.b<P, R> bVar2 = this.aEg;
        if (bVar2 != null) {
            bVar2.a((com.kwad.library.solder.lib.ext.b<P, R>) r2, pluginError);
        }
    }

    @Override // com.kwad.library.solder.lib.ext.b
    public final void a(R r2) {
        com.kwad.library.solder.lib.ext.b<P, R> bVar = this.aEf;
        if (bVar != null) {
            bVar.a(r2);
        }
    }
}
