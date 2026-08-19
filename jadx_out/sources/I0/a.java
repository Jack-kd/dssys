package I0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public String f148a;

    /* renamed from: b, reason: collision with root package name */
    public String f149b;

    /* renamed from: c, reason: collision with root package name */
    public String f150c;

    /* renamed from: d, reason: collision with root package name */
    public String f151d;

    /* renamed from: e, reason: collision with root package name */
    public long f152e;

    /* renamed from: f, reason: collision with root package name */
    public long f153f;

    /* renamed from: g, reason: collision with root package name */
    public List f154g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public String f155h;

    /* renamed from: i, reason: collision with root package name */
    public String f156i;

    /* renamed from: j, reason: collision with root package name */
    public String f157j;

    /* renamed from: k, reason: collision with root package name */
    public String f158k;

    public void a(b bVar) {
        this.f154g.add(bVar);
    }

    public String b() {
        return this.f148a;
    }

    public long c() {
        this.f152e = 0L;
        Iterator it = this.f154g.iterator();
        while (it.hasNext()) {
            this.f152e += ((b) it.next()).b();
        }
        return this.f152e;
    }

    public String d() {
        return this.f156i;
    }

    public String e() {
        return this.f155h;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f148a;
        return str != null && str.equals(aVar.f148a);
    }

    public String f() {
        return this.f158k;
    }

    public String g() {
        return this.f157j;
    }

    public String h() {
        return this.f150c;
    }

    public List i() {
        return this.f154g;
    }

    public void j(String str) {
        this.f148a = str;
    }

    public void k(String str) {
        this.f151d = str;
    }

    public void l(String str) {
        this.f156i = str;
    }

    public void m(String str) {
        this.f155h = str;
    }

    public void n(String str) {
        this.f149b = str;
    }

    public void o(String str) {
        this.f158k = str;
    }

    public void p(String str) {
        this.f157j = str;
    }

    public void q(String str) {
        this.f150c = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("basePath: " + this.f148a);
        sb.append("\nm3u8FilePath: " + this.f149b);
        sb.append("\ndirFilePath: " + this.f151d);
        sb.append("\nfileSize: " + c());
        sb.append("\ntotalTime: " + this.f153f);
        Iterator it = this.f154g.iterator();
        while (it.hasNext()) {
            sb.append("\nts: " + ((b) it.next()));
        }
        return sb.toString();
    }
}
