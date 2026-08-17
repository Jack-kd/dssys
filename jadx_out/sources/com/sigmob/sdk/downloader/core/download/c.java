package com.sigmob.sdk.downloader.core.download;

import com.sigmob.sdk.downloader.core.connection.a;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37488a = "ConnectTrial";

    /* renamed from: i, reason: collision with root package name */
    private static final Pattern f37489i = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");

    /* renamed from: j, reason: collision with root package name */
    private static final Pattern f37490j = Pattern.compile("attachment;\\s*filename\\s*=\\s*(.*)");

    /* renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f37491b;

    /* renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f37492c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f37493d;

    /* renamed from: e, reason: collision with root package name */
    private long f37494e;

    /* renamed from: f, reason: collision with root package name */
    private String f37495f;

    /* renamed from: g, reason: collision with root package name */
    private String f37496g;

    /* renamed from: h, reason: collision with root package name */
    private int f37497h;

    public c(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        this.f37491b = fVar;
        this.f37492c = cVar;
    }

    private static String a(String str) throws IOException {
        String strGroup;
        if (str == null) {
            return null;
        }
        try {
            Matcher matcher = f37489i.matcher(str);
            if (matcher.find()) {
                strGroup = matcher.group(1);
            } else {
                Matcher matcher2 = f37490j.matcher(str);
                strGroup = matcher2.find() ? matcher2.group(1) : null;
            }
            if (strGroup != null && strGroup.contains("../")) {
                throw new com.sigmob.sdk.downloader.core.exception.a("The filename [" + strGroup + "] from the response is not allowable, because it contains '../', which can raise the directory traversal vulnerability");
            }
            return strGroup;
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    private static long c(String str) {
        if (str == null) {
            return -1L;
        }
        String[] strArrSplit = str.split(ServiceReference.DELIMITER);
        if (strArrSplit.length >= 2) {
            try {
                return Long.parseLong(strArrSplit[1]);
            } catch (NumberFormatException unused) {
                com.sigmob.sdk.downloader.core.c.a(f37488a, "parse instance length failed with " + str);
            }
        }
        return -1L;
    }

    private static long d(a.InterfaceC0769a interfaceC0769a) {
        long jC = c(interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37367f));
        if (jC != -1) {
            return jC;
        }
        if (!b(interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37369h))) {
            com.sigmob.sdk.downloader.core.c.a(f37488a, "Transfer-Encoding isn't chunked but there is no valid instance length found either!");
        }
        return -1L;
    }

    public long b() {
        return this.f37494e;
    }

    public String e() {
        return this.f37495f;
    }

    public String f() {
        return this.f37496g;
    }

    public int g() {
        return this.f37497h;
    }

    public boolean h() {
        return (this.f37492c.k() == null || this.f37492c.k().equals(this.f37495f)) ? false : true;
    }

    public void i() throws IOException {
        com.sigmob.sdk.downloader.core.connection.a aVarA = com.sigmob.sdk.downloader.g.j().d().a(this.f37491b.i());
        com.sigmob.sdk.downloader.c cVarA = com.sigmob.sdk.downloader.g.j().b().a();
        try {
            aVarA.a(com.sigmob.sdk.downloader.core.c.f37362a);
            Map<String, List<String>> mapB = this.f37491b.b();
            if (mapB != null) {
                com.sigmob.sdk.downloader.core.c.a(mapB, aVarA);
            }
            cVarA.a(this.f37491b, aVarA.c());
            a.InterfaceC0769a interfaceC0769aA = aVarA.a();
            cVarA.a(this.f37491b, interfaceC0769aA.d(), interfaceC0769aA.f());
            this.f37494e = com.sigmob.sdk.downloader.core.c.b(interfaceC0769aA.c(com.sigmob.sdk.downloader.core.c.f37366e));
            aVarA.b();
        } catch (Throwable th) {
            aVarA.b();
            throw th;
        }
    }

    private static String b(a.InterfaceC0769a interfaceC0769a) throws IOException {
        return a(interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37371j));
    }

    private static String c(a.InterfaceC0769a interfaceC0769a) {
        return interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37368g);
    }

    public void a() throws IOException {
        com.sigmob.sdk.downloader.g.j().g().b(this.f37491b);
        com.sigmob.sdk.downloader.g.j().g().b();
        com.sigmob.sdk.downloader.core.connection.a aVarA = com.sigmob.sdk.downloader.g.j().d().a(this.f37491b.i());
        try {
            if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) this.f37492c.k())) {
                aVarA.a(com.sigmob.sdk.downloader.core.c.f37364c, this.f37492c.k());
            }
            aVarA.a(com.sigmob.sdk.downloader.core.c.f37363b, "bytes=0-0");
            Map<String, List<String>> mapB = this.f37491b.b();
            if (mapB != null) {
                com.sigmob.sdk.downloader.core.c.a(mapB, aVarA);
            }
            com.sigmob.sdk.downloader.c cVarA = com.sigmob.sdk.downloader.g.j().b().a();
            cVarA.a(this.f37491b, aVarA.c());
            a.InterfaceC0769a interfaceC0769aA = aVarA.a();
            this.f37491b.a(interfaceC0769aA.g());
            com.sigmob.sdk.downloader.core.c.b(f37488a, "task[" + this.f37491b.c() + "] redirect location: " + this.f37491b.j());
            this.f37497h = interfaceC0769aA.d();
            this.f37493d = a(interfaceC0769aA);
            this.f37494e = d(interfaceC0769aA);
            this.f37495f = c(interfaceC0769aA);
            this.f37496g = b(interfaceC0769aA);
            Map<String, List<String>> mapF = interfaceC0769aA.f();
            if (mapF == null) {
                mapF = new HashMap<>();
            }
            cVarA.a(this.f37491b, this.f37497h, mapF);
            boolean zA = a(this.f37494e, interfaceC0769aA);
            aVarA.b();
            if (zA) {
                i();
            }
        } catch (Throwable th) {
            aVarA.b();
            throw th;
        }
    }

    public boolean d() {
        return this.f37494e == -1;
    }

    private static boolean b(String str) {
        return str != null && str.equals("chunked");
    }

    public boolean a(long j2, a.InterfaceC0769a interfaceC0769a) {
        String strC;
        if (j2 != -1) {
            return false;
        }
        String strC2 = interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37367f);
        return (strC2 == null || strC2.length() <= 0) && !b(interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37369h)) && (strC = interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37366e)) != null && strC.length() > 0;
    }

    public boolean c() {
        return this.f37493d;
    }

    private static boolean a(a.InterfaceC0769a interfaceC0769a) throws IOException {
        if (interfaceC0769a.d() == 206) {
            return true;
        }
        return "bytes".equals(interfaceC0769a.c(com.sigmob.sdk.downloader.core.c.f37370i));
    }
}
