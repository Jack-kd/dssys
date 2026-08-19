package P1;

import N1.n;
import java.security.SecureRandom;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;

/* loaded from: classes5.dex */
public abstract class b extends org.eclipse.jetty.util.component.a implements n {

    /* renamed from: f, reason: collision with root package name */
    public static final R1.c f426f = R1.b.a(b.class);

    /* renamed from: b, reason: collision with root package name */
    public Random f427b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f428c;

    /* renamed from: d, reason: collision with root package name */
    public String f429d;

    /* renamed from: e, reason: collision with root package name */
    public long f430e = 100000;

    public void P() {
        Random random = this.f427b;
        if (random != null) {
            random.setSeed(((random.nextLong() ^ System.currentTimeMillis()) ^ hashCode()) ^ Runtime.getRuntime().freeMemory());
            return;
        }
        try {
            this.f427b = new SecureRandom();
        } catch (Exception e2) {
            f426f.c("Could not generate SecureRandom for session-id randomness", e2);
            this.f427b = new Random();
            this.f428c = true;
        }
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStart() {
        P();
    }

    @Override // N1.n
    public String y(HttpServletRequest httpServletRequest, long j2) {
        synchronized (this) {
            if (httpServletRequest != null) {
                try {
                    String requestedSessionId = httpServletRequest.getRequestedSessionId();
                    if (requestedSessionId != null) {
                        String strJ = J(requestedSessionId);
                        if (u(strJ)) {
                            return strJ;
                        }
                    }
                    String str = (String) httpServletRequest.getAttribute("org.eclipse.jetty.server.newSessionId");
                    if (str != null && u(str)) {
                        return str;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            String str2 = null;
            while (true) {
                if (str2 != null && str2.length() != 0 && !u(str2)) {
                    httpServletRequest.setAttribute("org.eclipse.jetty.server.newSessionId", str2);
                    return str2;
                }
                long jHashCode = this.f428c ? ((hashCode() ^ Runtime.getRuntime().freeMemory()) ^ this.f427b.nextInt()) ^ (httpServletRequest.hashCode() << 32) : this.f427b.nextLong();
                if (jHashCode < 0) {
                    jHashCode = -jHashCode;
                }
                long j3 = this.f430e;
                if (j3 > 0 && jHashCode % j3 == 1) {
                    f426f.i("Reseeding {}", this);
                    Random random = this.f427b;
                    if (random instanceof SecureRandom) {
                        SecureRandom secureRandom = (SecureRandom) random;
                        secureRandom.setSeed(secureRandom.generateSeed(8));
                    } else {
                        random.setSeed(((random.nextLong() ^ System.currentTimeMillis()) ^ httpServletRequest.hashCode()) ^ Runtime.getRuntime().freeMemory());
                    }
                }
                long jHashCode2 = this.f428c ? (httpServletRequest.hashCode() << 32) ^ ((hashCode() ^ Runtime.getRuntime().freeMemory()) ^ this.f427b.nextInt()) : this.f427b.nextLong();
                if (jHashCode2 < 0) {
                    jHashCode2 = -jHashCode2;
                }
                str2 = Long.toString(jHashCode, 36) + Long.toString(jHashCode2, 36);
                if (this.f429d != null) {
                    str2 = this.f429d + str2;
                }
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStop() {
    }
}
