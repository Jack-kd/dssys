package L1;

import java.util.Locale;

/* loaded from: classes5.dex */
public class f extends org.eclipse.jetty.util.h {

    /* renamed from: p, reason: collision with root package name */
    public d f227p;

    /* renamed from: q, reason: collision with root package name */
    public String f228q;

    public f(String str, Locale locale) {
        super(str, locale);
    }

    public synchronized d g(long j2) {
        String strA = super.a(j2);
        if (strA == this.f228q) {
            return this.f227p;
        }
        this.f228q = strA;
        h hVar = new h(strA);
        this.f227p = hVar;
        return hVar;
    }
}
