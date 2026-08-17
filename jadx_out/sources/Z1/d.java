package Z1;

/* loaded from: classes5.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public String f738a;

    /* renamed from: b, reason: collision with root package name */
    public int f739b;

    /* renamed from: c, reason: collision with root package name */
    public long f740c = System.currentTimeMillis() + 86400000;

    public d(String str, int i2) {
        this.f738a = str;
        this.f739b = i2;
    }

    public String toString() {
        return "ValueData{value='" + this.f738a + "', code=" + this.f739b + ", expired=" + this.f740c + '}';
    }
}
