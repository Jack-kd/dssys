package p;

import android.content.Context;
import android.os.Looper;
import com.baidu.oauth.sdkbqt.auth.C1121b;
import com.baidu.passbqt.http.g;
import com.baidu.passbqt.http.j;
import java.util.HashMap;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* renamed from: p.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1749a {

    /* renamed from: c, reason: collision with root package name */
    public boolean f52699c = true;

    /* renamed from: a, reason: collision with root package name */
    public g f52697a = g.a();

    /* renamed from: b, reason: collision with root package name */
    public Context f52698b = C1121b.b().getContext();

    public final j a(String str, d dVar, HashMap map, List list, String str2, int i2) {
        j jVar = new j();
        jVar.f11887a = str;
        jVar.f11890d = dVar;
        jVar.f11894h = map;
        jVar.f11888b = list;
        jVar.f11889c = str2;
        jVar.f11891e = i2;
        return jVar;
    }

    public void b(String str, d dVar, HashMap map, List list, String str2, int i2, c cVar) {
        cVar.a();
        if (i(cVar)) {
            this.f52697a.b(this.f52698b, a(str, dVar, map, list, str2, i2), new b(this, Looper.getMainLooper(), cVar.f(), cVar, str, dVar, map, list, str2, i2));
        }
    }

    public void c(String str, d dVar, List list, String str2, c cVar) {
        b(str, dVar, null, list, str2, 0, cVar);
    }

    public void d(String str, d dVar, c cVar) {
        c(str, dVar, null, null, cVar);
    }

    public final void f(c cVar, Throwable th, String str) {
        cVar.d(th, (th == null || !SSLPeerUnverifiedException.class.getSimpleName().equals(th.getClass().getSimpleName())) ? -201 : -203, str);
    }

    public final boolean i(c cVar) {
        Context context = this.f52698b;
        if (context == null) {
            cVar.d(null, -206, "SDK未初始化");
            cVar.e();
            return false;
        }
        if (o.g.h(context)) {
            return true;
        }
        cVar.d(null, -203, "网络异常");
        cVar.e();
        return false;
    }
}
