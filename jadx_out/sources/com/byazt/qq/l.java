package com.byazt.qq;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.lf.k;
import com.byazt.ymw.l;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.zp.jx {
    public final com.byazt.yrp.jx hp = new com.byazt.yrp.jx();

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, final Map<String, Object> map2, final com.byazt.rsz.hp hpVar) throws JSONException, NumberFormatException {
        com.byazt.rj.jx.hp(this.hp, hpVar.jx(), map, map2);
        if (this.hp.gu()) {
            return true;
        }
        if (this.hp.jl()) {
            hpVar.l(map2, null);
            return true;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(n.f36450m, this.hp.w_());
            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.hp.w()));
            jSONObject.putOpt("req_id", this.hp.ns());
            jSONObject.putOpt("uchain", Boolean.TRUE);
        } catch (JSONException unused) {
        }
        k.hp().hp("landing_page", "native", 0, jSONObject);
        if (this.hp.q() == 2) {
            boolean zHp = hp();
            if (zHp) {
                com.byazt.rj.jx.hp(map2, com.byazt.ex.jx.jx);
                hpVar.l(map2);
            } else {
                hpVar.l(map2, null);
            }
            return zHp;
        }
        if (this.hp.zy() != null && new com.byazt.qn.l(this.hp.zy()).hp(new HashMap())) {
            com.byazt.rj.jx.hp(map2, com.byazt.ex.jx.jx);
            hpVar.l(map2);
            return true;
        }
        Intent intent = new Intent(this.hp.getContext(), com.byazt.rj.l.hp(this.hp.u(), com.byazt.rj.jx.hp(this.hp, map2), this.hp.xs(), map2));
        if (!(this.hp.getContext() instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("is_outer_click", true);
        intent.putExtra("get_phone_num_status", this.hp.eb());
        intent.putExtra("event_tag", this.hp.k());
        if (map == null) {
            u.l("UChain_LP", "param == null");
            map = new HashMap<>();
        }
        map.putAll(map2);
        map.remove(g.f49337X);
        Object objRemove = map.remove("landing_page_source");
        ky.hp(map, com.byazt.rj.jx.hp(this.hp, map2));
        int i2 = -1;
        if (objRemove != null && !TextUtils.isEmpty(objRemove.toString())) {
            try {
                i2 = Integer.parseInt(objRemove.toString());
            } catch (Exception unused2) {
            }
        }
        intent.putExtra("landing_page_source", i2);
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && !"log_extra".equals(key)) {
                intent.putExtra(key, value.toString());
            }
        }
        intent.putExtra("web_dl_factors", com.byazt.rj.jx.l(map2));
        com.byazt.ymw.l.hp(this.hp.getContext(), intent, new l.hp() { // from class: com.byazt.qq.l.1
            @Override // com.byazt.ymw.l.hp
            public void hp() {
                com.byazt.rj.jx.hp((Map<String, Object>) map2, com.byazt.ex.jx.jx);
                hpVar.l(map2);
                map2.put("is_open_web_page", Boolean.TRUE);
            }

            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) {
                hpVar.l(map2, null);
            }
        });
        return true;
    }

    private boolean hp() {
        if (!vv.hp(this.hp.v())) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(this.hp.v()));
            if (!(this.hp.getContext() instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.byazt.ymw.l.hp(this.hp.getContext(), intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
