package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.t;
import com.anythink.core.e.m;
import com.baidu.mobads.sdk.internal.aw;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.SDMAdxSetting;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class e extends d {

    /* renamed from: a, reason: collision with root package name */
    public final String f43058a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.a5.e f43059b;

    /* renamed from: c, reason: collision with root package name */
    public final String f43060c;

    /* renamed from: d, reason: collision with root package name */
    public final String f43061d;

    /* renamed from: e, reason: collision with root package name */
    public final String f43062e;

    public e(String str, com.smartdigimkt.a5.e eVar, List list) {
        this.f43061d = "";
        this.f43062e = "";
        this.f43058a = str;
        this.f43059b = eVar;
        try {
            JSONArray jSONArray = new JSONArray();
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    jSONArray.put((JSONObject) it.next());
                }
            }
            this.f43060c = com.smartdigimkt.c5.d.a(jSONArray.toString().getBytes());
            this.f43061d = com.smartdigimkt.c5.d.a(eVar.f39408B.getBytes());
            JSONObject jSONObject = new JSONObject();
            try {
                com.smartdigimkt.r3.a.a(SDKContext.getInstance().d()).a(jSONObject);
            } catch (Throwable unused) {
            }
            this.f43062e = com.smartdigimkt.c5.d.a(jSONObject.toString().getBytes());
        } catch (Throwable unused2) {
        }
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject b() {
        JSONObject jSONObject;
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_EXIT);
        com.smartdigimkt.a5.e eVar = this.f43059b;
        String str = eVar != null ? eVar.f39415e : "";
        try {
            jSONObjectA.put("app_id", SDKContext.getInstance().a());
            jSONObjectA.put(com.anythink.core.common.m.f.bn, str);
            jSONObjectA.put("session_id", SDKContext.getInstance().b(str));
            String strG = SDKContext.getInstance().g();
            if (!TextUtils.isEmpty(strG)) {
                jSONObjectA.put("sy_id", strG);
            }
            String strC = SDKContext.getInstance().c();
            if (TextUtils.isEmpty(strC)) {
                String strH = SDKContext.getInstance().h();
                SDKContext sDKContext = SDKContext.getInstance();
                sDKContext.f44135x = strH;
                y.a(sDKContext.f44114c, t.b.f3063f, t.a.f3019C, strH);
                jSONObjectA.put("bk_id", strH);
            } else {
                jSONObjectA.put("bk_id", strC);
            }
            jSONObjectA.put("deny", com.smartdigimkt.c5.h.q(SDKContext.getInstance().d()));
            com.smartdigimkt.e3.a.a().getClass();
            jSONObjectA.put("misk_spt", -1);
            com.smartdigimkt.e3.a.a().getClass();
            jSONObjectA.put("misk_pt_det", "");
            com.smartdigimkt.l4.a.a(jSONObjectA);
            com.smartdigimkt.a5.e eVar2 = this.f43059b;
            if (eVar2 != null && (jSONObject = eVar2.f39434x) != null) {
                jSONObjectA.put(m.a.aa, jSONObject);
            }
            if (SDMAdxSetting.getInstance().isAdxNetworkMode(str)) {
                jSONObjectA.put(com.anythink.core.common.m.f.bh, 1);
            }
            boolean z2 = false;
            try {
                com.smartdigimkt.h4.a aVar = SDKContext.getInstance().f44127p;
                if (aVar != null) {
                    z2 = aVar.f40590b;
                }
            } catch (Throwable unused) {
            }
            com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
            jSONObjectA.put("coppa", (aVarA.f39346H == 2 && z2) ? 1 : 2);
            jSONObjectA.put(GlobalSetting.CCPA, aVarA.f39345G == 3 ? 1 : 2);
            jSONObjectA.put("bid_ver", 1);
            com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
            if (bVarE != null) {
                bVarE.fillRequestDataForDl(jSONObjectA);
            }
        } catch (Throwable unused2) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final int c() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_EXIT;
    }

    @Override // com.smartdigimkt.r4.d
    public final List d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.ab.f2544a);
        return arrayList;
    }

    @Override // com.smartdigimkt.r4.d
    public final HttpReqEntity f() {
        return HttpReqEntity.create("bid");
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject g() {
        return com.smartdigimkt.l4.a.a(MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_EXIT, d());
    }

    @Override // com.smartdigimkt.r4.d
    public final String i() throws JSONException {
        String string = b().toString();
        String string2 = g().toString();
        HashMap map = new HashMap();
        String strB = com.smartdigimkt.c5.d.b(string);
        String strB2 = com.smartdigimkt.c5.d.b(string2);
        map.put("p", strB);
        map.put(com.anythink.core.common.m.f.f5774X, strB2);
        map.put(m.a.f8934j, this.f43060c);
        map.put("request_id", this.f43058a);
        com.smartdigimkt.a5.e eVar = this.f43059b;
        int i2 = eVar != null ? eVar.f39407A : 0;
        if (i2 > 0) {
            map.put("hb_size", Integer.valueOf(i2));
        }
        map.put(m.a.f8917S, this.f43061d);
        if (SDKContext.getInstance().f44129r.f40273b != null) {
            map.put(com.anythink.core.c.a.a.f1875c, com.smartdigimkt.c5.d.b(SDKContext.getInstance().f44129r.f40273b.toString()));
        }
        if (SDKContext.getInstance().j() && SDKContext.getInstance().f44103B) {
            map.put(aw.f11060a, 1);
        }
        if (!TextUtils.isEmpty(this.f43062e)) {
            map.put(com.anythink.core.common.m.f.bj, this.f43062e);
        }
        Set<String> setKeySet = map.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : setKeySet) {
                jSONObject.put(str, map.get(str));
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError unused2) {
            System.gc();
            return null;
        }
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        com.smartdigimkt.n3.a aVar = aVarA != null ? aVarA.f39344F : null;
        String str = aVar != null ? aVar.f42161b : "";
        return TextUtils.isEmpty(str) ? "https://adx-bj.statisticslinks.com/bid" : str;
    }
}
