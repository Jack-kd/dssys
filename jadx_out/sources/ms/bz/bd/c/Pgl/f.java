package ms.bz.bd.c.Pgl;

import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
final class f extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        int iHp;
        o1 o1VarHp = o1.hp(pblw.hp().l());
        o1VarHp.getClass();
        try {
            synchronized (o1VarHp) {
                iHp = o1VarHp.hp();
            }
        } catch (Exception unused) {
            iHp = -1;
        }
        return "" + iHp;
    }
}
