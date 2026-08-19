package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.os.Build;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes5.dex */
public final class d1 {
    public static volatile boolean hp = true;
    private static volatile d1 jx;

    /* renamed from: l, reason: collision with root package name */
    public static String f51957l;

    /* renamed from: j, reason: collision with root package name */
    private pblk f51958j;

    /* renamed from: w, reason: collision with root package name */
    private String f51959w = null;

    public class pgla implements pblk.pblb {
        public pgla() {
        }

        @Override // ms.bz.bd.c.Pgl.pblk.pblb
        public final void hp(String str) {
            d1.this.f51959w = str;
        }
    }

    private d1(Context context) {
        try {
            this.f51958j = new pblk(new pgla());
            if (!hp || Build.VERSION.SDK_INT > 32) {
                return;
            }
            this.f51958j.hp(context);
        } catch (Throwable unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ed8ed0", new byte[]{123, 115, 72});
        }
    }

    public final String hp() {
        String str = f51957l;
        return str != null ? str : this.f51959w;
    }

    public static d1 hp(Context context) {
        if (jx == null) {
            synchronized (d1.class) {
                try {
                    if (jx == null) {
                        jx = new d1(context);
                    }
                } finally {
                }
            }
        }
        return jx;
    }
}
