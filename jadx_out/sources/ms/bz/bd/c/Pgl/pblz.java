package ms.bz.bd.c.Pgl;

import android.util.SparseArray;
import com.umeng.analytics.pro.ek;

/* loaded from: classes5.dex */
public final class pblz {
    public static final /* synthetic */ int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    private static final SparseArray<pgla> f52002l = new SparseArray<>();

    public static abstract class pgla {
        public Object hp(int i2, int i3, long j2, String str, Object obj) throws Throwable {
            return hp(j2, str, obj);
        }

        public Object hp(long j2, String str, Object obj) throws Throwable {
            return null;
        }
    }

    public static Object hp(int i2, int i3, long j2, String str, Object obj) {
        pgla pglaVar = f52002l.get(i2);
        if (pglaVar == null) {
            throw new RuntimeException(String.format((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "2dd903", new byte[]{44, 118, 87, 78, 0, 32, com.sigmob.sdk.archives.tar.e.f35446L, 5, 112, 109, 99, 111, 4, ek.f49293k, 6, 42, 39, 68, 57, 96, 39}), Integer.valueOf(i2)));
        }
        try {
            return pglaVar.hp(i2, i3, j2, str, obj);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public static void hp(int i2, pgla pglaVar) {
        SparseArray<pgla> sparseArray = f52002l;
        pgla pglaVar2 = sparseArray.get(i2);
        if (pglaVar2 != null) {
            throw new RuntimeException(String.format((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "775ccf", new byte[]{99, 38, 6, 31, 93, 117, 116, 20, 97, com.sigmob.sdk.archives.tar.e.f35448N, 40, 117, 84, 18, 91, com.sigmob.sdk.archives.tar.e.f35452R, 39, 2, 97, 33, 104}), pglaVar2.toString()));
        }
        sparseArray.put(i2, pglaVar);
    }
}
