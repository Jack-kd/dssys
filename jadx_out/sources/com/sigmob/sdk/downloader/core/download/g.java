package com.sigmob.sdk.downloader.core.download;

import android.net.ConnectivityManager;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.core.exception.i;
import com.sigmob.sdk.downloader.f;
import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    private static final String f37537b = "DownloadStrategy";

    /* renamed from: c, reason: collision with root package name */
    private static final long f37538c = 1048576;

    /* renamed from: d, reason: collision with root package name */
    private static final long f37539d = 5242880;

    /* renamed from: e, reason: collision with root package name */
    private static final long f37540e = 52428800;

    /* renamed from: f, reason: collision with root package name */
    private static final long f37541f = 104857600;

    /* renamed from: g, reason: collision with root package name */
    private static final Pattern f37542g = Pattern.compile(".*\\\\|/([^\\\\|/|?]*)\\??");

    /* renamed from: a, reason: collision with root package name */
    Boolean f37543a = null;

    /* renamed from: h, reason: collision with root package name */
    private ConnectivityManager f37544h = null;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private volatile String f37545a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f37546b = false;

        public a() {
        }

        public String a() {
            return this.f37545a;
        }

        public boolean b() {
            return this.f37546b;
        }

        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return true;
            }
            if (obj instanceof a) {
                return this.f37545a == null ? ((a) obj).f37545a == null : this.f37545a.equals(((a) obj).f37545a);
            }
            return false;
        }

        public int hashCode() {
            if (this.f37545a == null) {
                return 0;
            }
            return this.f37545a.hashCode();
        }

        public a(String str) {
            this.f37545a = str;
        }

        public void a(String str) {
            this.f37545a = str;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private a.InterfaceC0769a f37547a;

        /* renamed from: b, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.breakpoint.c f37548b;

        /* renamed from: c, reason: collision with root package name */
        private int f37549c;

        public b(a.InterfaceC0769a interfaceC0769a, int i2, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            this.f37547a = interfaceC0769a;
            this.f37548b = cVar;
            this.f37549c = i2;
        }

        public void a() throws IOException {
            com.sigmob.sdk.downloader.core.breakpoint.a aVarB = this.f37548b.b(this.f37549c);
            int iD = this.f37547a.d();
            com.sigmob.sdk.downloader.core.cause.b bVarA = com.sigmob.sdk.downloader.g.j().g().a(iD, aVarB.a() != 0, this.f37548b, this.f37547a.c(com.sigmob.sdk.downloader.core.c.f37368g));
            if (bVarA != null) {
                throw new com.sigmob.sdk.downloader.core.exception.f(bVarA);
            }
            if (com.sigmob.sdk.downloader.g.j().g().a(iD, aVarB.a() != 0)) {
                throw new i(iD, aVarB.a());
            }
        }
    }

    public int a(com.sigmob.sdk.downloader.f fVar, long j2) {
        if (fVar.u() != null) {
            return fVar.u().intValue();
        }
        if (j2 < 1048576) {
            return 1;
        }
        if (j2 < f37539d) {
            return 2;
        }
        if (j2 < f37540e) {
            return 3;
        }
        return j2 < f37541f ? 4 : 5;
    }

    public String b(String str, com.sigmob.sdk.downloader.f fVar) throws IOException {
        if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) str)) {
            return str;
        }
        String strI = fVar.i();
        Matcher matcher = f37542g.matcher(strI);
        String strA = null;
        while (matcher.find()) {
            strA = matcher.group(1);
        }
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) strA)) {
            strA = com.sigmob.sdk.downloader.core.c.a(strI);
        }
        if (strA != null) {
            return strA;
        }
        throw new IOException("Can't find valid filename.");
    }

    public long a() {
        return 10240L;
    }

    public void b() throws UnknownHostException {
        if (this.f37543a == null) {
            this.f37543a = Boolean.valueOf(com.sigmob.sdk.downloader.core.c.c(com.kuaishou.weapon.p0.g.f31160b));
        }
        if (this.f37543a.booleanValue()) {
            if (this.f37544h == null) {
                this.f37544h = (ConnectivityManager) com.sigmob.sdk.downloader.g.j().h().getSystemService("connectivity");
            }
            if (!com.sigmob.sdk.downloader.core.c.b(this.f37544h)) {
                throw new UnknownHostException("network is not available!");
            }
        }
    }

    public com.sigmob.sdk.downloader.core.cause.b a(int i2, boolean z2, com.sigmob.sdk.downloader.core.breakpoint.c cVar, String str) {
        String strK = cVar.k();
        if (i2 == 412) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_PRECONDITION_FAILED;
        }
        if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) strK) && !com.sigmob.sdk.downloader.core.c.a((CharSequence) str) && !str.equals(strK)) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_ETAG_CHANGED;
        }
        if (i2 == 201 && z2) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_CREATED_RANGE_NOT_FROM_0;
        }
        if (i2 == 205 && z2) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_RESET_RANGE_NOT_FROM_0;
        }
        return null;
    }

    public void b(com.sigmob.sdk.downloader.f fVar) throws IOException {
        if (this.f37543a == null) {
            this.f37543a = Boolean.valueOf(com.sigmob.sdk.downloader.core.c.c(com.kuaishou.weapon.p0.g.f31160b));
        }
        if (fVar.f()) {
            if (!this.f37543a.booleanValue()) {
                throw new IOException("required for access network state but don't have the permission of Manifest.permission.ACCESS_NETWORK_STATE, please declare this permission first on your AndroidManifest, so we can handle the case of downloading required wifi state.");
            }
            if (this.f37544h == null) {
                this.f37544h = (ConnectivityManager) com.sigmob.sdk.downloader.g.j().h().getSystemService("connectivity");
            }
            if (com.sigmob.sdk.downloader.core.c.a(this.f37544h)) {
                throw new com.sigmob.sdk.downloader.core.exception.d();
            }
        }
    }

    public b a(a.InterfaceC0769a interfaceC0769a, int i2, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        return new b(interfaceC0769a, i2, cVar);
    }

    public void a(com.sigmob.sdk.downloader.f fVar, j jVar) {
        long length;
        com.sigmob.sdk.downloader.core.breakpoint.c cVarE = jVar.e(fVar.c());
        if (cVarE == null) {
            cVarE = new com.sigmob.sdk.downloader.core.breakpoint.c(fVar.c(), fVar.i(), fVar.l(), fVar.d());
            if (com.sigmob.sdk.downloader.core.c.a(fVar.h())) {
                length = com.sigmob.sdk.downloader.core.c.c(fVar.h());
            } else {
                File fileM = fVar.m();
                if (fileM == null) {
                    com.sigmob.sdk.downloader.core.c.a(f37537b, "file is not ready on valid info for task on complete state " + fVar);
                    length = 0;
                } else {
                    length = fileM.length();
                }
            }
            long j2 = length;
            cVarE.a(new com.sigmob.sdk.downloader.core.breakpoint.a(0L, j2, j2));
        }
        f.c.a(fVar, cVarE);
    }

    public void a(String str, com.sigmob.sdk.downloader.f fVar) {
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) fVar.d())) {
            fVar.g().a(str);
        }
    }

    public void a(String str, com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) throws IOException {
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) fVar.d())) {
            String strB = b(str, fVar);
            if (com.sigmob.sdk.downloader.core.c.a((CharSequence) fVar.d())) {
                synchronized (fVar) {
                    try {
                        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) fVar.d())) {
                            fVar.g().a(strB);
                            cVar.n().a(strB);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public boolean a(int i2, boolean z2) {
        if (i2 == 206 || i2 == 200) {
            return i2 == 200 && z2;
        }
        return true;
    }

    public boolean a(com.sigmob.sdk.downloader.f fVar) {
        String strA = com.sigmob.sdk.downloader.g.j().c().a(fVar.i());
        if (strA == null) {
            return false;
        }
        fVar.g().a(strA);
        return true;
    }

    public boolean a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, long j2) {
        com.sigmob.sdk.downloader.core.breakpoint.g gVarC;
        com.sigmob.sdk.downloader.core.breakpoint.c cVarA;
        if (!fVar.a() || (cVarA = (gVarC = com.sigmob.sdk.downloader.g.j().c()).a(fVar, cVar)) == null) {
            return false;
        }
        gVarC.b(cVarA.a());
        if (cVarA.i() <= com.sigmob.sdk.downloader.g.j().g().a()) {
            return false;
        }
        if ((cVarA.k() != null && !cVarA.k().equals(cVar.k())) || cVarA.j() != j2 || cVarA.o() == null || !cVarA.o().exists()) {
            return false;
        }
        cVar.a(cVarA);
        com.sigmob.sdk.downloader.core.c.b(f37537b, "Reuse another same info: " + cVar);
        return true;
    }

    public boolean a(boolean z2) {
        if (com.sigmob.sdk.downloader.g.j().e().a()) {
            return z2;
        }
        return false;
    }
}
