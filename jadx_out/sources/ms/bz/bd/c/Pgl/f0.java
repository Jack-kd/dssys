package ms.bz.bd.c.Pgl;

import ms.bz.bd.c.Pgl.pblz;
import org.json.JSONObject;

/* loaded from: classes5.dex */
final class f0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        JSONObject jSONObjectJx;
        try {
            q1 q1VarHp = q1.hp();
            return (!q1VarHp.j() || (jSONObjectJx = q1VarHp.jx()) == null) ? "" : jSONObjectJx.toString();
        } catch (Exception unused) {
            return "";
        }
    }
}
