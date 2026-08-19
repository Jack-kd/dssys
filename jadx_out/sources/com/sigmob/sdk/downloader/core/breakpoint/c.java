package com.sigmob.sdk.downloader.core.breakpoint;

import com.sigmob.sdk.downloader.core.download.g;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    final int f37289a;

    /* renamed from: b, reason: collision with root package name */
    final File f37290b;

    /* renamed from: c, reason: collision with root package name */
    private final String f37291c;

    /* renamed from: d, reason: collision with root package name */
    private String f37292d;

    /* renamed from: e, reason: collision with root package name */
    private File f37293e;

    /* renamed from: f, reason: collision with root package name */
    private final g.a f37294f;

    /* renamed from: g, reason: collision with root package name */
    private final List<a> f37295g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    private final boolean f37296h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f37297i;

    public c(int i2, String str, File file, String str2) {
        this.f37289a = i2;
        this.f37291c = str;
        this.f37290b = file;
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) str2)) {
            this.f37294f = new g.a();
            this.f37296h = true;
        } else {
            this.f37294f = new g.a(str2);
            this.f37296h = false;
            this.f37293e = new File(file, str2);
        }
    }

    public int a() {
        return this.f37289a;
    }

    public a b(int i2) {
        return this.f37295g.get(i2);
    }

    public c c(int i2) {
        c cVar = new c(i2, this.f37291c, this.f37290b, this.f37294f.a(), this.f37296h);
        cVar.f37297i = this.f37297i;
        Iterator<a> it = this.f37295g.iterator();
        while (it.hasNext()) {
            cVar.f37295g.add(it.next().g());
        }
        return cVar;
    }

    public boolean d() {
        return this.f37296h;
    }

    public void e() {
        this.f37295g.clear();
        this.f37292d = null;
    }

    public void f() {
        this.f37295g.clear();
    }

    public int g() {
        return this.f37295g.size();
    }

    public File h() {
        return this.f37290b;
    }

    public long i() {
        Object[] array = this.f37295g.toArray();
        long jA = 0;
        if (array != null) {
            for (Object obj : array) {
                if (obj instanceof a) {
                    jA += ((a) obj).a();
                }
            }
        }
        return jA;
    }

    public long j() {
        if (b()) {
            return i();
        }
        Object[] array = this.f37295g.toArray();
        long jD = 0;
        if (array != null) {
            for (Object obj : array) {
                if (obj instanceof a) {
                    jD += ((a) obj).d();
                }
            }
        }
        return jD;
    }

    public String k() {
        return this.f37292d;
    }

    public String l() {
        return this.f37291c;
    }

    public String m() {
        return this.f37294f.a();
    }

    public g.a n() {
        return this.f37294f;
    }

    public File o() {
        String strA = this.f37294f.a();
        if (strA == null) {
            return null;
        }
        if (this.f37293e == null) {
            this.f37293e = new File(this.f37290b, strA);
        }
        return this.f37293e;
    }

    public c p() {
        c cVar = new c(this.f37289a, this.f37291c, this.f37290b, this.f37294f.a(), this.f37296h);
        cVar.f37297i = this.f37297i;
        Iterator<a> it = this.f37295g.iterator();
        while (it.hasNext()) {
            cVar.f37295g.add(it.next().g());
        }
        return cVar;
    }

    public String toString() {
        return "id[" + this.f37289a + "] url[" + this.f37291c + "] etag[" + this.f37292d + "] taskOnlyProvidedParentPath[" + this.f37296h + "] parent path[" + this.f37290b + "] filename[" + this.f37294f.a() + "] block(s):" + this.f37295g.toString();
    }

    public c(int i2, String str, File file, String str2, boolean z2) {
        this.f37289a = i2;
        this.f37291c = str;
        this.f37290b = file;
        this.f37294f = com.sigmob.sdk.downloader.core.c.a((CharSequence) str2) ? new g.a() : new g.a(str2);
        this.f37296h = z2;
    }

    public c a(int i2, String str) {
        c cVar = new c(i2, str, this.f37290b, this.f37294f.a(), this.f37296h);
        cVar.f37297i = this.f37297i;
        Iterator<a> it = this.f37295g.iterator();
        while (it.hasNext()) {
            cVar.f37295g.add(it.next().g());
        }
        return cVar;
    }

    public boolean b() {
        return this.f37297i;
    }

    public boolean c() {
        return this.f37295g.size() == 1;
    }

    public void a(a aVar) {
        this.f37295g.add(aVar);
    }

    public void a(c cVar) {
        this.f37295g.clear();
        this.f37295g.addAll(cVar.f37295g);
    }

    public void a(String str) {
        this.f37292d = str;
    }

    public void a(boolean z2) {
        this.f37297i = z2;
    }

    public boolean a(int i2) {
        return i2 == this.f37295g.size() - 1;
    }

    public boolean a(com.sigmob.sdk.downloader.f fVar) {
        if (!this.f37290b.equals(fVar.l()) || !this.f37291c.equals(fVar.i())) {
            return false;
        }
        String strD = fVar.d();
        if (strD != null && strD.equals(this.f37294f.a())) {
            return true;
        }
        if (this.f37296h && fVar.a()) {
            return strD == null || strD.equals(this.f37294f.a());
        }
        return false;
    }
}
