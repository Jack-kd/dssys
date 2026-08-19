package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver;
import com.volcengine.mobsecBiz.metasec.ml.PglMSManager;
import com.volcengine.mobsecBiz.metasec.ml.PglMSManagerUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class q0 {
    public static final /* synthetic */ int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    private static volatile boolean f52005l = false;
    private static final ConcurrentHashMap jx = new ConcurrentHashMap();

    /* renamed from: j, reason: collision with root package name */
    private static CopyOnWriteArraySet f52004j = new CopyOnWriteArraySet();

    public interface pgla {
        Map<String, String> getFeatureHash(String str, byte[] bArr);

        String getToken();

        void report(String str);

        void setBDDeviceID(String str);

        void setCollectMode(int i2);

        void setDeviceID(String str);

        void setInstallID(String str);
    }

    public static synchronized void hp(String str) {
        if (pblw.hp().l() != null) {
            pblv pblvVar = (pblv) jx.get(str);
            if (l(str) != null && pblvVar != null) {
                f52004j.addAll(pblvVar.f51999p);
                PglMSManager pglMSManager = PglMSManagerUtils.get(str);
                if (pglMSManager != null) {
                    pglMSManager.report((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a5b45d", new byte[]{79, 62, 31, 73, 30, com.sigmob.sdk.archives.tar.e.f35450P, 112, 17, 35, 107, 98, 35}));
                }
            }
        }
    }

    public static void jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1959d3", new byte[]{47, com.sigmob.sdk.archives.tar.e.f35447M, 116, 72, 75, 43, 32, 12, 66, 96, 46, com.sigmob.sdk.archives.tar.e.f35444J, 85, 69, 27, com.sigmob.sdk.archives.tar.e.f35442H, 61, 19, 97, com.sigmob.sdk.archives.tar.e.f35454T, 96, 118, 11, 0, 27});
        Iterator it = f52004j.iterator();
        while (it.hasNext()) {
            ((PglITokenObserver) it.next()).onTokenLoaded(str);
        }
    }

    public static synchronized p0 l(String str) {
        if (str == null) {
            throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7aeae5", new byte[]{39, 115, 6, 60, 126, 98, 57, 85, 39, 37, 102, 97, 19, 85, 73, 39, 32}));
        }
        if (!f52005l) {
            return null;
        }
        int i2 = pblz.hp;
        Object objA = com.volcengine.mobsecBiz.matrix.pgla.a(67108866, 0, 0L, str, null);
        if (objA == null) {
            return null;
        }
        pblv pblvVar = (pblv) jx.get(str);
        if (pblvVar == null) {
            return null;
        }
        return new p0(pblvVar, pblw.hp().l(), ((Long) objA).longValue());
    }

    public static synchronized boolean hp(Context context, pblv pblvVar) {
        try {
            if (context == null) {
                throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d7affd", new byte[]{118, 58, 28, 6, 92, 107, 115, 86, com.sigmob.sdk.archives.tar.e.f35445K, 57, 96, 57, 22, 82, 87, 124, 115, 86, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35447M, 59, 7, 30, 85}));
            }
            if (pblvVar == null) {
                throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c97d00", new byte[]{113, com.sigmob.sdk.archives.tar.e.f35446L, 74, 22, 6, 32, 32, 27, 105, 33, 126, 63, 4, 30, 0, com.sigmob.sdk.archives.tar.e.f35445K, 32, 26, 99, 116, 124, 46, 72, 28}));
            }
            String str = pblvVar.f51984a;
            String str2 = (str == null || str.length() <= 0) ? pblvVar.f51990g : pblvVar.f51984a;
            if (str2 == null || str2.length() <= 0) {
                throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "2b4a0b", new byte[]{34, 112, 87, 60, 43, com.sigmob.sdk.archives.tar.e.f35447M, 60, 86, 118, 37, 99, 98, 66, 85, 28, 112, 37}));
            }
            if (!f52005l) {
                synchronized (q0.class) {
                    try {
                        if (!f52005l) {
                            hp(context);
                            f52005l = true;
                        }
                    } finally {
                    }
                }
            }
            if (jx.containsKey(str2)) {
                return false;
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(pblv.a(pblvVar.f51984a));
            jSONArray.put(pblv.a(pblvVar.f51991h));
            jSONArray.put(pblv.a(pblvVar.f51990g));
            jSONArray.put(pblv.a(pblvVar.f51992i));
            jSONArray.put(pblv.a(s1.hp()));
            jSONArray.put(pblv.a(pblvVar.f51985b));
            jSONArray.put(pblv.a(pblvVar.f51986c));
            jSONArray.put(pblv.a(pblvVar.f51987d));
            jSONArray.put(pblv.a(pblvVar.f51988e));
            jSONArray.put(pblv.a(pblvVar.f51989f));
            jSONArray.put(String.valueOf(pblvVar.f51994k));
            jSONArray.put(String.valueOf(pblvVar.f51995l));
            jSONArray.put(String.valueOf(pblvVar.f51996m));
            JSONArray jSONArray2 = new JSONArray();
            for (Map.Entry<String, String> entry : pblvVar.f51997n.entrySet()) {
                if (!TextUtils.isEmpty(entry.getKey())) {
                    jSONArray2.put(pblv.a(entry.getKey()));
                    jSONArray2.put(pblv.a(entry.getValue()));
                }
            }
            jSONArray.put(jSONArray2);
            JSONArray jSONArray3 = new JSONArray();
            for (Map.Entry entry2 : pblvVar.f51998o.entrySet()) {
                if (!TextUtils.isEmpty((CharSequence) entry2.getKey())) {
                    if (((String) entry2.getKey()).equals("kOA1") && TextUtils.equals((CharSequence) entry2.getValue(), "1")) {
                        d1.hp = false;
                        d1.f51957l = pblvVar.f51993j;
                    }
                    jSONArray3.put(pblv.a(entry2.getKey()));
                    jSONArray3.put(pblv.a(entry2.getValue()));
                }
            }
            jSONArray.put(jSONArray3);
            String string = jSONArray.toString();
            int i2 = pblz.hp;
            if (!((Boolean) com.volcengine.mobsecBiz.matrix.pgla.a(67108865, 0, 0L, string, null)).booleanValue()) {
                return false;
            }
            jx.put(str2, pblvVar);
            r1.hp(context).hp();
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void hp(Context context) {
        if (!f52005l) {
            Context applicationContext = context.getApplicationContext();
            pblw.hp().hp(applicationContext);
            h1.hp(applicationContext);
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7b2a7d", new byte[]{104, 109, 82});
            pblz.hp(16777218, new k());
            pblz.hp(16777217, new v());
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "db641c", new byte[]{59, 109, 65});
            pblz.hp(16777219, new g0());
            pblz.hp(16777221, new j0());
            pblz.hp(16777222, new k0());
            pblz.hp(16777223, new l0());
            pblz.hp(16777224, new m0());
            pblz.hp(16777225, new n0());
            pblz.hp(16777226, new o0());
            pblz.hp(16777228, new a());
            pblz.hp(InputDeviceCompat.SOURCE_JOYSTICK, new b());
            pblz.hp(16777233, new c());
            pblz.hp(16777235, new d());
            pblz.hp(16777238, new e());
            pblz.hp(16777239, new f());
            pblz.hp(16777241, new g());
            pblz.hp(16777242, new h());
            pblz.hp(16777243, new i());
            pblz.hp(16777244, new j());
            pblz.hp(16777245, new l());
            pblz.hp(16777246, new m());
            pblz.hp(16777247, new n());
            pblz.hp(16777248, new o());
            pblz.hp(16777249, new p());
            pblz.hp(16777250, new q());
            pblz.hp(16777251, new r());
            pblz.hp(16777240, new s());
            pblz.hp(16777252, new t());
            pblz.hp(16777253, new u());
            pblz.hp(16777254, new w());
            pblz.hp(16777255, new x());
            pblz.hp(16777256, new y());
            pblz.hp(16777257, new z());
            pblz.hp(16777317, new a0());
            pblz.hp(16777318, new b0());
            pblz.hp(16777261, new c0());
            pblz.hp(16777266, new d0());
            pblz.hp(16777319, new e0());
            pblz.hp(16777259, new f0());
            pblz.hp(16777262, new h0());
            pblz.hp(33554435, new i0());
            y0.hp();
            z0.hp();
            com.volcengine.mobsecBiz.matrix.pgla.a(16777219, 0, 0L, null, applicationContext);
            f52005l = true;
        }
    }
}
