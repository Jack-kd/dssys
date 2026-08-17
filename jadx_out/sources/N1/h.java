package N1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* loaded from: classes5.dex */
public interface h extends org.eclipse.jetty.util.component.f, org.eclipse.jetty.util.component.d {
    void a(m mVar);

    @Override // org.eclipse.jetty.util.component.d
    void destroy();

    void l(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse);
}
