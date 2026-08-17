package ms.bz.bd.c.Pgl;

import android.content.Context;
import com.umeng.analytics.pro.ek;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class a2 {
    private final Context hp;

    /* renamed from: j, reason: collision with root package name */
    private Method f51955j;
    private Object jx;

    /* renamed from: l, reason: collision with root package name */
    private Class f51956l;

    public a2(Context context) throws ClassNotFoundException {
        this.hp = context;
        try {
            Class<?> cls = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "849b3c", new byte[]{42, 57, 71, com.sigmob.sdk.archives.tar.e.f35453S, ek.f49293k, 122, 63, 7, com.sigmob.sdk.archives.tar.e.f35454T, 59, 45, com.sigmob.sdk.archives.tar.e.f35452R, 67, 18, 66, 125, com.sigmob.sdk.archives.tar.e.f35448N, 5, 100, 124, 0, com.sigmob.sdk.archives.tar.e.f35444J, 122, 4, 3, 98, com.sigmob.sdk.archives.tar.e.f35444J, 17, 109, 32, 0, 59, 90, 26}));
            this.f51956l = cls;
            this.jx = cls.newInstance();
        } catch (Exception unused) {
        }
        try {
            this.f51955j = this.f51956l.getMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d5c332", new byte[]{114, com.sigmob.sdk.archives.tar.e.f35444J, 4, 104, 45, 12, 67}), Context.class);
        } catch (Exception unused2) {
        }
    }

    public final String hp() {
        Context context = this.hp;
        Method method = this.f51955j;
        Object obj = this.jx;
        if (obj == null || method == null) {
            return null;
        }
        try {
            return (String) method.invoke(obj, context);
        } catch (Exception unused) {
            return null;
        }
    }
}
