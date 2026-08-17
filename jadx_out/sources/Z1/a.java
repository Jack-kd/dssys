package Z1;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public long f731a;

    /* renamed from: b, reason: collision with root package name */
    public String f732b;

    /* renamed from: c, reason: collision with root package name */
    public String f733c;

    /* renamed from: d, reason: collision with root package name */
    public int f734d;

    public a(String str) {
        this.f733c = str;
    }

    public void a(int i2) {
        this.f734d = i2;
    }

    public void b(long j2) {
        this.f731a = j2;
    }

    public void c(String str) {
        this.f732b = str;
    }

    public boolean d() {
        return this.f731a > System.currentTimeMillis();
    }

    public void e() {
        this.f731a = 0L;
    }
}
