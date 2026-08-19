package com.smartdigimkt.w0;

import android.net.Uri;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f44768a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.z0.i f44769b;

    /* renamed from: c, reason: collision with root package name */
    public final g f44770c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.a1.d f44771d;

    /* renamed from: e, reason: collision with root package name */
    public final com.smartdigimkt.o0.h f44772e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f44773f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f44774g;

    /* renamed from: h, reason: collision with root package name */
    public long f44775h;

    /* renamed from: i, reason: collision with root package name */
    public com.smartdigimkt.z0.k f44776i;

    /* renamed from: j, reason: collision with root package name */
    public long f44777j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ i f44778k;

    public f(i iVar, Uri uri, com.smartdigimkt.z0.i iVar2, g gVar, com.smartdigimkt.a1.d dVar) {
        this.f44778k = iVar;
        uri.getClass();
        this.f44768a = uri;
        iVar2.getClass();
        this.f44769b = iVar2;
        gVar.getClass();
        this.f44770c = gVar;
        this.f44771d = dVar;
        this.f44772e = new com.smartdigimkt.o0.h();
        this.f44774g = true;
        this.f44777j = -1L;
    }

    public final void a() throws Throwable {
        com.smartdigimkt.o0.b bVar;
        int iA = 0;
        while (iA == 0 && !this.f44773f) {
            try {
                long j2 = this.f44772e.f42199a;
                com.smartdigimkt.z0.k kVar = new com.smartdigimkt.z0.k(this.f44768a, j2, this.f44778k.f44806g);
                this.f44776i = kVar;
                long jA = this.f44769b.a(kVar);
                this.f44777j = jA;
                if (jA != -1) {
                    this.f44777j = jA + j2;
                }
                com.smartdigimkt.z0.i iVar = this.f44769b;
                bVar = new com.smartdigimkt.o0.b(iVar, j2, this.f44777j);
                try {
                    g gVar = this.f44770c;
                    iVar.a();
                    com.smartdigimkt.o0.d dVarA = gVar.a(bVar);
                    if (this.f44774g) {
                        dVarA.a(j2, this.f44775h);
                        this.f44774g = false;
                    }
                    while (iA == 0 && !this.f44773f) {
                        com.smartdigimkt.a1.d dVar = this.f44771d;
                        synchronized (dVar) {
                            while (!dVar.f39268a) {
                                dVar.wait();
                            }
                        }
                        iA = dVarA.a(bVar, this.f44772e);
                        long j3 = bVar.f42191d;
                        if (j3 > this.f44778k.f44807h + j2) {
                            this.f44771d.a();
                            i iVar2 = this.f44778k;
                            iVar2.f44813n.post(iVar2.f44812m);
                            j2 = j3;
                        }
                    }
                    if (iA == 1) {
                        iA = 0;
                    } else {
                        this.f44772e.f42199a = bVar.f42191d;
                        long j4 = this.f44776i.f45375b;
                    }
                    com.smartdigimkt.z0.i iVar3 = this.f44769b;
                    int i2 = com.smartdigimkt.a1.t.f39303a;
                    if (iVar3 != null) {
                        try {
                            iVar3.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (iA != 1 && bVar != null) {
                        this.f44772e.f42199a = bVar.f42191d;
                        long j5 = this.f44776i.f45375b;
                    }
                    com.smartdigimkt.z0.i iVar4 = this.f44769b;
                    int i3 = com.smartdigimkt.a1.t.f39303a;
                    if (iVar4 != null) {
                        try {
                            iVar4.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bVar = null;
            }
        }
    }
}
