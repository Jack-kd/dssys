package N1;

import javax.servlet.SessionCookieConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/* loaded from: classes5.dex */
public interface o extends org.eclipse.jetty.util.component.f {
    boolean C();

    org.eclipse.jetty.http.f E(HttpSession httpSession, String str, boolean z2);

    String I();

    HttpSession d(String str);

    void e(HttpSession httpSession);

    void g(P1.g gVar);

    SessionCookieConfig n();

    boolean q(HttpSession httpSession);

    org.eclipse.jetty.http.f w(HttpSession httpSession, boolean z2);

    HttpSession x(HttpServletRequest httpServletRequest);
}
