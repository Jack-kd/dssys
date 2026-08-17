package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.t;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class c extends d {

    /* renamed from: a, reason: collision with root package name */
    public Map f43057a;

    @Override // com.smartdigimkt.r4.d
    public final JSONObject b() {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME);
        try {
            jSONObjectA.put("app_id", SDKContext.getInstance().a());
            Map map = this.f43057a;
            if (map != null && !map.isEmpty()) {
                jSONObjectA.put("cached", new JSONObject(this.f43057a));
            }
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
            if (SDKContext.getInstance().i()) {
                jSONObjectA.put("is_test", 1);
            }
            com.smartdigimkt.h3.m.b().getClass();
            jSONObjectA.put("pil_offset", y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", t.a.f3021E, 0));
            try {
                JSONObject jSONObject = new JSONObject();
                com.smartdigimkt.r3.a.a(SDKContext.getInstance().d()).a(jSONObject);
                if (jSONObject.length() > 0) {
                    jSONObjectA.put(com.anythink.core.common.m.f.bj, jSONObject.toString());
                }
            } catch (Throwable unused) {
            }
            jSONObjectA.putOpt(com.anythink.core.common.m.f.bk, 1);
        } catch (Throwable unused2) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final int c() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME;
    }

    @Override // com.smartdigimkt.r4.d
    public final List d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i.ab.f2544a);
        return arrayList;
    }

    @Override // com.smartdigimkt.r4.d
    public final HttpReqEntity f() {
        return HttpReqEntity.create("app_strategy", SDKContext.getInstance().a());
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        SDKContext.getInstance().getClass();
        return "https://adx-strategy-api-cn.statisticslinks.com/sdk/app_strategy";
    }
}
