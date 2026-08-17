package ms.bz.bd.c.Pgl;

import android.os.Build;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class pblg {
    public static String hp() {
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap mapL = l();
            for (String str : mapL.keySet()) {
                jSONObject.put(str, mapL.get(str));
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9dc4d3", new byte[]{com.sigmob.sdk.archives.tar.e.f35445K, 123});
        }
    }

    private static HashMap l() {
        HashMap map = new HashMap();
        map.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "095628", new byte[]{112}), Build.MODEL);
        map.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b34d78", new byte[]{33}), Build.BRAND);
        map.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "801fc8", new byte[]{122}), Build.BOARD);
        map.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6ad0a4", new byte[]{115}), Build.VERSION.RELEASE);
        map.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cb7a40", new byte[]{39}), Build.DISPLAY);
        map.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "211242", new byte[]{117}), Build.HARDWARE);
        map.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8606d7", new byte[]{126}), Build.FINGERPRINT);
        return map;
    }
}
