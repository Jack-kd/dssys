package ms.bz.bd.c.Pgl;

import android.content.Context;
import com.bytedance.framwork.core.sdkmonitor.SDKMonitor;
import com.bytedance.framwork.core.sdkmonitor.SDKMonitorUtils;
import com.umeng.analytics.pro.ek;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class t1 extends pblx {
    private SDKMonitor hp;

    public class pgla implements SDKMonitor.IGetExtendParams {
        final /* synthetic */ JSONObject hp;

        /* renamed from: l, reason: collision with root package name */
        final /* synthetic */ String f52017l;

        public pgla(JSONObject jSONObject, String str) {
            this.hp = jSONObject;
            this.f52017l = str;
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final void hp(long j2, long j3, String str, String str2, int i2) {
        SDKMonitor sDKMonitor = this.hp;
        if (sDKMonitor == null) {
            return;
        }
        sDKMonitor.monitorSLA(j2, j3, str, (String) null, str2, i2, (JSONObject) null);
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final void l(long j2, long j3, String str, String str2, int i2) {
        SDKMonitor sDKMonitor = this.hp;
        if (sDKMonitor == null) {
            return;
        }
        sDKMonitor.monitorApiError(j2, j3, str, (String) null, str2, i2, (JSONObject) null);
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final void hp(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) throws JSONException {
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ae2695", new byte[]{67, 107, com.anythink.core.common.s.a.c.f7561b, 80, 2, 35, 112, 97, 117, 99, 126, 115, 109, 77, 1, ek.f49295m, 99, 74, 98, 97, 117, 117, 1, 81, 3, com.sigmob.sdk.archives.tar.e.f35442H, 116, 77, 96, 99, 126, 102, com.sigmob.sdk.archives.tar.e.f35450P, 71, 70, 111, 47, 9, 35});
        if (this.hp == null) {
            return;
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d00de2", new byte[]{102, com.sigmob.sdk.archives.tar.e.f35449O, 81, 6, com.sigmob.sdk.archives.tar.e.f35451Q, 38, 98, 31, 96, 57, 112}), str);
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "800341", new byte[]{42, com.sigmob.sdk.archives.tar.e.f35445K, 87, 66, 12, 41, 41, 8}), jSONObject);
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "46afe4", new byte[]{40, com.sigmob.sdk.archives.tar.e.f35443I, 6, 0, com.sigmob.sdk.archives.tar.e.f35451Q, 32}), jSONObject2);
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5e2280", new byte[]{40, 104, 70, 99, 31, com.sigmob.sdk.archives.tar.e.f35445K, 36}), jSONObject3);
            com.byazt.ymw.u.l((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6d9a69", new byte[]{10, 67, 126, com.sigmob.sdk.archives.tar.e.f35446L, 58, 11, 22}), jSONObject4.toString());
        } catch (JSONException unused) {
        }
        if (jSONObject.length() > 0 || jSONObject2.length() > 0) {
            this.hp.monitorEvent(str, jSONObject, jSONObject2, jSONObject3);
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final boolean hp(String str) throws JSONException {
        JSONObject jSONObject;
        String str2;
        String string;
        ArrayList arrayList;
        ArrayList arrayList2;
        Context contextL = pblw.hp().l();
        String string2 = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "23a8ce", new byte[]{com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35446L, 31});
            }
        } else {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return false;
        }
        try {
            string = jSONObject.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "161b00", new byte[]{com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35442H, 73, 41, ek.f49294l, 46, com.sigmob.sdk.archives.tar.e.f35448N}));
            try {
                string2 = jSONObject.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e491c2", new byte[]{124, 57, 89, 81, 99, 36, 111, 17}));
                arrayList = new ArrayList();
                arrayList2 = new ArrayList();
                JSONArray jSONArray = jSONObject.getJSONArray((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "093055", new byte[]{34, com.sigmob.sdk.archives.tar.e.f35446L, 78, 66, 3, 37, 6, 42, 78, 115}));
                JSONArray jSONArray2 = jSONObject.getJSONArray((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "480bf5", new byte[]{com.sigmob.sdk.archives.tar.e.f35449O, 63, com.sigmob.sdk.archives.tar.e.f35451Q, 25, 75, com.sigmob.sdk.archives.tar.e.f35448N, 2, 43, 77, 33}));
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.getString(i2));
                }
                for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                    arrayList2.add(jSONArray2.getString(i3));
                }
            } catch (JSONException unused2) {
                str2 = string2;
                string2 = string;
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "88dec8", new byte[]{58, 63, 26, 46, 85});
                string = string2;
                string2 = str2;
                jSONObject.remove((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "337f1a", new byte[]{33, 62, 74, 20, 7, 113, 5, 32, 74, 37}));
                jSONObject.remove((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d578b5", new byte[]{com.sigmob.sdk.archives.tar.e.f35454T, com.sigmob.sdk.archives.tar.e.f35444J, 84, 67, 79, com.sigmob.sdk.archives.tar.e.f35448N, 82, 38, 74, 123}));
                SDKMonitorUtils.initMonitor(contextL, string, jSONObject, new pgla(jSONObject, string2));
                this.hp = SDKMonitorUtils.getInstance(string);
                return true;
            }
        } catch (JSONException unused3) {
            str2 = null;
        }
        if (arrayList.size() <= 0 || arrayList2.size() <= 0) {
            return false;
        }
        SDKMonitorUtils.setConfigUrl(string, arrayList);
        SDKMonitorUtils.setDefaultReportUrl(string, arrayList2);
        jSONObject.remove((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "337f1a", new byte[]{33, 62, 74, 20, 7, 113, 5, 32, 74, 37}));
        jSONObject.remove((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d578b5", new byte[]{com.sigmob.sdk.archives.tar.e.f35454T, com.sigmob.sdk.archives.tar.e.f35444J, 84, 67, 79, com.sigmob.sdk.archives.tar.e.f35448N, 82, 38, 74, 123}));
        SDKMonitorUtils.initMonitor(contextL, string, jSONObject, new pgla(jSONObject, string2));
        this.hp = SDKMonitorUtils.getInstance(string);
        return true;
    }
}
