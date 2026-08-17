package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.t;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.SDMAdxSetting;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class l extends d {

    /* renamed from: a, reason: collision with root package name */
    public final String f43076a;

    /* renamed from: b, reason: collision with root package name */
    public Map f43077b;

    public l(String str) {
        this.f43076a = str;
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject b() {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED);
        try {
            jSONObjectA.put("app_id", SDKContext.getInstance().a());
            jSONObjectA.put(com.anythink.core.common.m.f.bn, this.f43076a);
            jSONObjectA.put("session_id", SDKContext.getInstance().b(this.f43076a));
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
            Map map = this.f43077b;
            if (map != null && !map.isEmpty()) {
                jSONObjectA.put("cached", new JSONObject(this.f43077b));
            }
            if (SDKContext.getInstance().f44129r.f40273b != null) {
                jSONObjectA.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.EXCLUDE_OFFER, SDKContext.getInstance().f44129r.f40273b);
            }
            jSONObjectA.put("exclude_myofferid", new JSONArray());
            jSONObjectA.put("deny", com.smartdigimkt.c5.h.q(SDKContext.getInstance().d()));
            if (SDKContext.getInstance().i()) {
                SDKContext.getInstance().f44102A.fillRequestParam(jSONObjectA);
            }
            jSONObjectA.put("is_mo", 1);
            if (SDMAdxSetting.getInstance().isAdxNetworkMode(this.f43076a)) {
                jSONObjectA.put(com.anythink.core.common.m.f.bh, 1);
            }
        } catch (Throwable unused) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final int c() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED;
    }

    @Override // com.smartdigimkt.r4.d
    public final List d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.ab.f2544a);
        return arrayList;
    }

    @Override // com.smartdigimkt.r4.d
    public final HttpReqEntity f() {
        return HttpReqEntity.create("placement_strategy", this.f43076a);
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        String str = (aVarA == null || TextUtils.isEmpty(aVarA.f39372f0)) ? "" : aVarA.f39372f0;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        SDKContext.getInstance().getClass();
        return "https://adx-strategy-api-cn.statisticslinks.com/sdk/pl_strategy";
    }
}
