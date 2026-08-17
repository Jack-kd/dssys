package ms.bz.bd.c.Pgl;

import ms.bz.bd.c.Pgl.pblz;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class pblx extends pblz.pgla {
    private static pblx hp;

    public static class pgla {
        private long hp;

        /* renamed from: l, reason: collision with root package name */
        private String f52001l;

        public final void hp(String str) {
            this.f52001l = str;
            this.hp = System.currentTimeMillis();
        }

        public final void l(String str, int i2) {
            pblx pblxVarHp = pblx.hp();
            if (pblxVarHp == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = this.hp;
            pblxVarHp.l(jCurrentTimeMillis - j2, j2, this.f52001l, str, i2);
        }

        public final void hp(String str, int i2) {
            pblx pblxVarHp = pblx.hp();
            if (pblxVarHp == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = this.hp;
            pblxVarHp.hp(jCurrentTimeMillis - j2, j2, this.f52001l, str, i2);
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(int i2, int i3, long j2, String str, Object obj) throws Throwable {
        if (i2 == 131073) {
            if (str == null || !hp(str)) {
                return null;
            }
            return (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b0f69c", new byte[]{92, 25});
        }
        if (i2 == 131074) {
            String[] strArr = (String[]) obj;
            if (str != null && strArr != null && strArr.length != 0) {
                hp(str, new JSONObject(strArr[0]), new JSONObject(strArr[1]), new JSONObject(strArr[2]));
            }
        }
        return null;
    }

    public abstract void hp(long j2, long j3, String str, String str2, int i2);

    public abstract void hp(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3);

    public abstract boolean hp(String str);

    public abstract void l(long j2, long j3, String str, String str2, int i2);

    public static synchronized pblx hp() {
        return hp;
    }

    public static synchronized void hp(pblx pblxVar) {
        hp = pblxVar;
    }
}
