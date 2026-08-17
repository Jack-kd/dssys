package ms.bz.bd.c.Pgl;

import android.content.Context;

/* loaded from: classes5.dex */
public final class pblw {
    private static final pblw hp = new pblw();

    /* renamed from: l, reason: collision with root package name */
    private Context f52000l;

    public static pblw hp() {
        return hp;
    }

    public final Context l() {
        return this.f52000l;
    }

    public final void hp(Context context) {
        this.f52000l = context != null ? context.getApplicationContext() : null;
    }
}
