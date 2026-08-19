package I0;

import J0.c;
import java.net.MalformedURLException;
import java.net.URL;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes3.dex */
public class b implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public String f159b;

    /* renamed from: c, reason: collision with root package name */
    public long f160c;

    /* renamed from: d, reason: collision with root package name */
    public float f161d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f162e;

    public b(String str, float f2, boolean z2) {
        this.f159b = str;
        this.f161d = f2;
        this.f162e = z2;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b bVar) {
        return this.f159b.compareTo(bVar.f159b);
    }

    public long b() {
        return this.f160c;
    }

    public float c() {
        return this.f161d;
    }

    public String d() {
        return this.f159b;
    }

    public boolean e() {
        return this.f162e;
    }

    public String f() {
        String str = this.f159b;
        return str == null ? "error.ts" : c.a(str).concat(".ts");
    }

    public String g(String str) {
        if (this.f159b == null) {
            return null;
        }
        try {
            URL url = new URL(str);
            if (this.f159b.startsWith("http")) {
                return this.f159b;
            }
            if (this.f159b.startsWith("//")) {
                return "http:".concat(this.f159b);
            }
            if (!this.f159b.startsWith(ServiceReference.DELIMITER)) {
                return str.concat(this.f159b);
            }
            return url.getProtocol() + "://" + url.getHost() + this.f159b;
        } catch (MalformedURLException unused) {
            return null;
        }
    }

    public void h(long j2) {
        this.f160c = j2;
    }

    public String toString() {
        return this.f159b + " (" + this.f161d + "sec)";
    }
}
