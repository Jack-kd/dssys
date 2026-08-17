package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.util.HashMap;
import ms.bz.bd.c.Pgl.pblz;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
final class w0 extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object hp(long j2, String str, Object obj) throws Throwable {
        String string;
        Context contextL = pblw.hp().l();
        ApplicationInfo applicationInfo = contextL.getPackageManager().getApplicationInfo(contextL.getPackageName(), 0);
        String str2 = applicationInfo.sourceDir;
        if (str2 == null) {
            str2 = applicationInfo.publicSourceDir;
        }
        HashMap mapHp = pblc.hp(str2);
        String string2 = "";
        String str3 = (mapHp == null || !mapHp.containsKey(1903654775)) ? "" : (String) mapHp.get(1903654775);
        if (str3 != null && str3.length() > 0) {
            JSONObject jSONObject = new JSONObject(str3);
            try {
                string = jSONObject.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d62080", new byte[]{com.sigmob.sdk.archives.tar.e.f35452R, com.sigmob.sdk.archives.tar.e.f35443I, 85, 69, 56, com.sigmob.sdk.archives.tar.e.f35444J, 106, 18, 109, com.sigmob.sdk.archives.tar.e.f35454T, 74, com.sigmob.sdk.archives.tar.e.f35449O, 73, 69, 9, 41, 98, 27}));
            } catch (JSONException unused) {
                string = "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a3328e", new byte[]{43}));
            try {
                string2 = jSONObject.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3030a1", new byte[]{com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35449O, com.sigmob.sdk.archives.tar.e.f35450P, 65, 95, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35447M, 46, 96, 117, 43, 62, 68}));
            } catch (JSONException unused2) {
            }
            sb.append(string2);
            string2 = sb.toString();
        }
        return string2.length() == 0 ? (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8825d1", new byte[]{7, com.sigmob.sdk.archives.tar.e.f35447M, 79, 68}) : string2;
    }
}
