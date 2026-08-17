package N1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/* loaded from: classes5.dex */
public interface n extends org.eclipse.jetty.util.component.f {
    void A(HttpSession httpSession);

    void G(HttpSession httpSession);

    String J(String str);

    String o(String str, HttpServletRequest httpServletRequest);

    void p(String str);

    boolean u(String str);

    String y(HttpServletRequest httpServletRequest, long j2);
}
