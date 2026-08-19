package com.smartdigimkt.f;

import android.text.TextUtils;
import com.anythink.core.common.d.t;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.smartdigimkt.c5.a0;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class l extends com.smartdigimkt.r4.d {

    /* renamed from: a, reason: collision with root package name */
    public final String f40147a;

    /* renamed from: b, reason: collision with root package name */
    public final String f40148b;

    public l(String str, String str2) {
        this.f40147a = str;
        this.f40148b = str2;
    }

    @Override // com.smartdigimkt.r4.d
    public final String a() {
        return this.f40148b;
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME);
        try {
            jSONObjectA.put("app_id", this.f40147a);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(String.valueOf(66), "UA_6.5.77");
                jSONObject.put(String.valueOf(67), "UA_6.5.77");
                jSONObject.put(String.valueOf(35), "UA_6.5.77");
                jSONObjectA.put("nw_ver", jSONObject);
            } catch (Throwable unused) {
            }
            if (SDKContext.getInstance().d() != null) {
                String strG = SDKContext.getInstance().g();
                if (!TextUtils.isEmpty(strG)) {
                    jSONObjectA.put("sy_id", strG);
                }
                String strC = SDKContext.getInstance().c();
                if (TextUtils.isEmpty(strC)) {
                    SDKContext sDKContext = SDKContext.getInstance();
                    String strH = SDKContext.getInstance().h();
                    sDKContext.f44135x = strH;
                    y.a(sDKContext.f44114c, t.b.f3063f, t.a.f3019C, strH);
                    jSONObjectA.put("bk_id", SDKContext.getInstance().h());
                } else {
                    jSONObjectA.put("bk_id", strC);
                }
                jSONObjectA.put("deny", com.smartdigimkt.c5.h.q(SDKContext.getInstance().d()));
                if (SDKContext.getInstance().i()) {
                    jSONObjectA.put("is_test", 1);
                }
            }
            jSONObjectA.putOpt(com.anythink.core.common.m.f.bk, 1);
            if (!TextUtils.isEmpty("")) {
                jSONObjectA.put(com.anythink.core.common.m.f.bp, "");
            }
        } catch (JSONException unused2) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final int c() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME;
    }

    @Override // com.smartdigimkt.r4.d
    public final Map e() {
        return super.e();
    }

    @Override // com.smartdigimkt.r4.d
    public final HttpReqEntity f() {
        return HttpReqEntity.create("get_plugin", this.f40147a);
    }

    @Override // com.smartdigimkt.r4.d
    public final byte[] h() {
        return super.h();
    }

    @Override // com.smartdigimkt.r4.d
    public final String i() {
        try {
            HashMap map = new HashMap();
            String strB = com.smartdigimkt.c5.d.b(b().toString());
            String strB2 = com.smartdigimkt.c5.d.b(com.smartdigimkt.l4.a.a(MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME, (List) null).toString());
            HashMap map2 = u.a().f40175d;
            map.put("cp", strB);
            map.put("cp2", strB2);
            u.a().getClass();
            String strB3 = u.b(map2);
            if (!TextUtils.isEmpty(strB3)) {
                map.put("cp3", com.smartdigimkt.c5.d.e(strB3));
            }
            ArrayList arrayList = new ArrayList(map.size());
            arrayList.addAll(map.keySet());
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                String str = (String) obj;
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(str);
                sb.append("=");
                sb.append(map.get(str));
            }
            map.put(com.anythink.core.common.m.f.f5775Y, com.smartdigimkt.c5.i.a(this.f40148b + sb.toString()));
            return new JSONObject(map).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        return a0.a("kwwsv=22gvs0dsl0fq1phwulfvolqnv1frp2dsl2frqyhuvlrq2sj");
    }
}
