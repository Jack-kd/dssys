package ms.bz.bd.c.Pgl;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import com.umeng.analytics.pro.ek;
import java.lang.reflect.Method;
import java.util.List;
import ms.bz.bd.c.Pgl.pblz;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
final class g0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        Context contextL = pblw.hp().l();
        JSONArray jSONArray = new JSONArray();
        AccessibilityManager accessibilityManager = (AccessibilityManager) contextL.getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "749202", new byte[]{39, com.sigmob.sdk.archives.tar.e.f35447M, 73, 67, 28, com.sigmob.sdk.archives.tar.e.f35448N, 61, 23, 97, 110, 47, 34, com.sigmob.sdk.archives.tar.e.f35451Q}));
        if (accessibilityManager != null) {
            List<AccessibilityServiceInfo> list = null;
            try {
                Method declaredMethod = accessibilityManager.getClass().getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f0d767", new byte[]{112, com.sigmob.sdk.archives.tar.e.f35449O, 3, 106, 7, com.sigmob.sdk.archives.tar.e.f35445K, 113, ek.f49296n, 57, 107, 114, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35448N, com.anythink.core.common.s.a.c.f7561b, 10, 37, 118, 2, 60, 101, 126, 62, 30, 87, ek.f49296n, 19, 96, 3, 35, 110, 116, com.sigmob.sdk.archives.tar.e.f35449O, 59, 74, 26, com.sigmob.sdk.archives.tar.e.f35446L}), null);
                if (declaredMethod != null) {
                    list = (List) declaredMethod.invoke(accessibilityManager, null);
                }
            } catch (Throwable unused) {
            }
            if (list == null || list.size() == 0) {
                return jSONArray.toString();
            }
            for (AccessibilityServiceInfo accessibilityServiceInfo : list) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "81fdfa", new byte[]{44, 37}), accessibilityServiceInfo.eventTypes);
                    jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ee32ad", new byte[]{125, 99}), accessibilityServiceInfo.getId());
                    jSONArray.put(jSONObject);
                } catch (Throwable unused2) {
                }
            }
        }
        return jSONArray.toString();
    }
}
