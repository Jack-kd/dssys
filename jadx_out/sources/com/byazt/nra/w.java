package com.byazt.nra;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.xci.xs;
import com.byazt.ymw.u;
import com.byazt.yrp.q;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {
    private String l(q qVar, Map<String, Object> map) throws JSONException {
        if (qVar == null) {
            return "";
        }
        try {
            return com.byazt.yx.jx.hp(Uri.parse("sslocal://webcast_room"), hp(qVar, map)).toString();
        } catch (Throwable unused) {
            u.l(com.byazt.bc.jx.TAG, "link: null");
            return "";
        }
    }

    @Override // com.byazt.nra.j
    public boolean a() {
        return l() == 2;
    }

    @Override // com.byazt.nra.j
    public boolean a_(mp mpVar) {
        return hp((q) mpVar) && this.hp != null;
    }

    @Override // com.byazt.nra.j
    public String eb() {
        if (this.hp == null) {
            return null;
        }
        try {
            Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(3).hp(Object.class).hp(0, 4).l());
            if (objApply instanceof String) {
                return (String) objApply;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.nra.j
    public int hp(Context context, mp mpVar, Map<String, Object> map) {
        return -1;
    }

    @Override // com.byazt.nra.j
    public void j() {
    }

    @Override // com.byazt.nra.hp
    public boolean r_() {
        return true;
    }

    @Override // com.byazt.nra.j
    public JSONObject s() {
        return this.jx;
    }

    @Override // com.byazt.nra.j
    public int w() {
        boolean zBooleanValue = false;
        if (this.hp != null) {
            try {
                Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(3).hp(Object.class).hp(0, 3).l());
                if (objApply instanceof Boolean) {
                    zBooleanValue = ((Boolean) objApply).booleanValue();
                }
            } catch (Throwable unused) {
            }
        }
        return zBooleanValue ? 2 : 1;
    }

    @Override // com.byazt.nra.j
    public int hp(com.byazt.cp.l lVar, boolean z2) {
        return 0;
    }

    @Override // com.byazt.nra.j
    public void hp(com.byazt.tn.j jVar) {
    }

    @Override // com.byazt.nra.j
    public void hp(String str, boolean z2) {
    }

    @Override // com.byazt.nra.j
    public int hp(Context context, q qVar, Map<String, Object> map) {
        String str;
        int i2;
        int i3;
        if (context == null || qVar == null || !hp(qVar)) {
            return -1;
        }
        if (map != null) {
            str = (String) map.get("event_tag");
        } else {
            str = "";
        }
        String str2 = str;
        int iW = qVar.w();
        int iIntValue = 1;
        if (!a()) {
            hp(com.byazt.rj.jx.hp(qVar, map), str2, iW, 1, iW == 7 ? 1 : 2);
            return 1;
        }
        if (this.hp != null) {
            Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(0).hp(Integer.class).hp(0, l(qVar, map)).l());
            iIntValue = objApply != null ? ((Integer) objApply).intValue() : 0;
            if (iIntValue == 0) {
                if (hp(qVar, 0)) {
                    int iL = l(qVar);
                    if (iL == 0) {
                        try {
                            new com.byazt.jf.hp().hp(str2).hp(context, map, qVar);
                            i2 = iL;
                        } catch (Exception unused) {
                        }
                    } else {
                        i3 = iL;
                    }
                } else {
                    i3 = 0;
                }
                i2 = i3;
            } else {
                i3 = 3;
                i2 = i3;
            }
        } else {
            i2 = 1;
        }
        hp(com.byazt.rj.jx.hp(qVar, map), str2, iW, iW, i2);
        return iIntValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str, mp mpVar, long j2) {
        try {
            if (this.hp == null) {
                return;
            }
            Map<String, String> mapHp = hp(mpVar, (Map<String, Object>) null);
            Map<String, String> mapHp2 = com.byazt.we.hp.hp(sz.getContext());
            mapHp2.put("room_id", mapHp.get("room_id"));
            mapHp2.put("anchor_id", mapHp.get("owner_open_id"));
            mapHp2.put("enter_from_merge", mapHp.get("enter_from_merge"));
            mapHp2.put("enter_method", mapHp.get("enter_method"));
            mapHp2.put("action_type", "click");
            mapHp2.put("request_id", mapHp.get("request_id"));
            StringBuilder sb = new StringBuilder();
            sb.append(j2);
            mapHp2.put("duration", sb.toString());
            mapHp2.put("is_other_channel", "union_ad");
            mapHp2.put("IESLiveEffectAdTrackExtraServiceKey", mapHp.get("IESLiveEffectAdTrackExtraServiceKey"));
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : mapHp2.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            this.hp.apply(com.byazt.wi.j.hp().hp(4).hp(Void.class).hp(0, str).hp(1, jSONObject).l());
        } catch (Throwable th) {
            if (u.jx()) {
                u.hp("TTInnerLiveHelper", "Throwable : ", th);
            }
        }
    }

    public Map<String, String> hp(q qVar, Map<String, Object> map) throws JSONException {
        HashMap map2 = new HashMap();
        if (qVar != null) {
            map2.put("room_id", qVar.e());
            if (this.hp != null) {
                int iJl = ky.jl(com.byazt.rj.jx.hp(qVar, map));
                String str = (String) this.hp.apply(com.byazt.wi.j.hp().hp(1).hp(String.class).hp(0, Integer.valueOf(iJl)).l());
                String str2 = (String) this.hp.apply(com.byazt.wi.j.hp().hp(2).hp(String.class).hp(0, Integer.valueOf(iJl)).hp(1, Boolean.valueOf(com.byazt.we.hp.hp(com.byazt.rj.jx.hp(qVar, map)))).l());
                map2.put("enter_from_merge", str);
                map2.put("enter_method", str2);
            }
            map2.put(f.bU, "aweme");
            map2.put("is_other_channel", "union_ad");
            String strHp = hp(qVar, qVar.jl(), map);
            if (!TextUtils.isEmpty(strHp)) {
                map2.put("ecom_live_params", strHp);
            }
            xs xsVarK = qVar.k();
            if (xsVarK != null && !TextUtils.isEmpty(xsVarK.l())) {
                try {
                    Uri uri = Uri.parse(xsVarK.l());
                    JSONObject jSONObject = new JSONObject(uri.getQueryParameter("ad_data_params"));
                    String strOptString = jSONObject.optString("log_extra");
                    JSONObject jSONObject2 = new JSONObject();
                    if (!TextUtils.isEmpty(strOptString)) {
                        JSONObject jSONObject3 = new JSONObject(strOptString);
                        jSONObject3.put("ad_event_aid", jSONObject.optString("aid"));
                        jSONObject3.put("ad_event_source", com.byazt.yx.jx.hp(uri, n.f36449l));
                        jSONObject3.put("ad_event_gd_label", com.byazt.yx.jx.hp(uri, "gd_label"));
                        jSONObject3.put("ad_event_union_user_id", com.byazt.yx.jx.hp(uri, "union_user_id"));
                        jSONObject3.put("ad_event_app_siteid", s.u().ns());
                        jSONObject3.put("ad_event_live_type", "1");
                        map2.put("log_extra", jSONObject3.toString());
                        jSONObject2.put("log_extra", jSONObject3.toString());
                    }
                    String strOptString2 = jSONObject.optString("cid");
                    jSONObject2.put("creativeID", strOptString2);
                    map2.put("creative_id", strOptString2);
                    map2.put("IESLiveEffectAdTrackExtraServiceKey", jSONObject2.toString());
                    String strHp2 = com.byazt.yx.jx.hp(uri, "owner_open_id");
                    if (TextUtils.isEmpty(strHp2)) {
                        strHp2 = com.byazt.yx.jx.hp(uri, "user_id");
                    }
                    map2.put("owner_open_id", strHp2);
                    String strHp3 = com.byazt.yx.jx.hp(uri, "pangle_live_room_data");
                    if (!TextUtils.isEmpty(strHp3)) {
                        map2.put("pangle_live_room_data", strHp3);
                    }
                    map2.put("request_id", com.byazt.yx.jx.hp(uri, "request_id"));
                } catch (Exception unused) {
                }
            }
        }
        return map2;
    }

    @Override // com.byazt.nra.j
    public int l() {
        if (this.hp != null) {
            try {
                Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(3).hp(Object.class).hp(0, 1).l());
                if (objApply instanceof Integer) {
                    return ((Integer) objApply).intValue();
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    @Override // com.byazt.nra.j
    public int l(mp mpVar) {
        if (this.hp != null) {
            long jHp = hp(mpVar);
            if (jHp == 0) {
                return 1;
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putLong("room_id", jHp);
                Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(3).hp(Object.class).hp(0, 2).hp(1, bundle).l());
                if (objApply instanceof Integer) {
                    return ((Integer) objApply).intValue();
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    @Override // com.byazt.nra.hp, com.byazt.nra.j
    public void hp(final String str, final mp mpVar, final long j2) {
        com.byazt.dnb.s.l(new Runnable() { // from class: com.byazt.nra.w.1
            @Override // java.lang.Runnable
            public void run() {
                w.this.l(str, mpVar, j2);
            }
        });
    }

    @Override // com.byazt.nra.j
    public int hp(q qVar, jx jxVar, String str, Map<String, Object> map) {
        Object objApply;
        if (qVar == null || TextUtils.isEmpty(qVar.t_()) || this.hp == null) {
            return -1;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("schema", qVar.t_());
            objApply = this.hp.apply(com.byazt.wi.j.hp().hp(3).hp(Object.class).hp(0, 5).hp(1, bundle).l());
        } catch (Throwable unused) {
        }
        if (objApply == null) {
            return 4;
        }
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return -1;
    }

    @Override // com.byazt.nra.j
    public int hp(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("schema", str);
            Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(3).hp(Object.class).hp(0, 6).hp(1, bundle).l());
            if (objApply instanceof Integer) {
                return ((Integer) objApply).intValue();
            }
        } catch (Throwable unused) {
        }
        return 0;
    }
}
