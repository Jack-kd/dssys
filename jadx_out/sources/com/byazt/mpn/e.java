package com.byazt.mpn;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.xci.mp;
import com.byazt.ymw.l;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 45})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class e implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public boolean f23191a;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "event_tag")
    public String f23192e;

    @com.byazt.cv.hp(hp = "pip_controller")
    public com.byazt.tm.l eb;

    @com.byazt.cv.hp(hp = "material_meta")
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "interaction_type")
    public int f23193j;

    @com.byazt.cv.hp(hp = "url")
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = g.f49337X)
    public Context f23194l;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_from_video_layout")
    public boolean f23195q;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "open_video_detail_page_direct")
    public boolean f23196s;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "is_open_web_page")
    public boolean f23197w;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, final Map<String, Object> map2, final com.byazt.rsz.hp hpVar) throws JSONException, NumberFormatException {
        if (this.f23197w) {
            return true;
        }
        if (this.f23191a) {
            hpVar.hp(map2, (com.byazt.ppg.hp) null);
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
        com.byazt.lf.k.hp().hp("landing_page", "native", 0, jSONObject);
        if (this.f23193j == 2) {
            boolean zHp = hp();
            if (zHp) {
                hpVar.hp(map2);
            } else {
                hpVar.hp(map2, (com.byazt.ppg.hp) null);
            }
            return zHp;
        }
        com.byazt.tm.l lVar = this.eb;
        if (lVar != null && new com.byazt.qn.l(lVar).hp(new HashMap())) {
            hpVar.hp(map2);
            return true;
        }
        Intent intent = new Intent(this.f23194l, com.byazt.rj.l.hp(this.f23196s, this.hp, this.f23195q, map2));
        if (!(this.f23194l instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("is_outer_click", true);
        intent.putExtra("event_tag", this.f23192e);
        mp mpVar = this.hp;
        if (mpVar != null) {
            intent.putExtra("get_phone_num_status", mpVar.eb());
        }
        if (map == null) {
            com.byazt.ymw.u.l("UChain_LP", "param == null");
            map = new HashMap<>();
        }
        map.putAll(map2);
        map.remove(g.f49337X);
        map.remove("activity_type");
        Object objRemove = map.remove("landing_page_source");
        ky.hp(map, this.hp);
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
        com.byazt.ymw.l.hp(this.f23194l, intent, new l.hp() { // from class: com.byazt.mpn.e.1
            @Override // com.byazt.ymw.l.hp
            public void hp() {
                hpVar.hp(map2);
                map2.put("is_open_web_page", Boolean.TRUE);
            }

            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) {
                hpVar.hp(map2, (com.byazt.ppg.hp) null);
                com.byazt.jz.n.j(e.this.hp.n(), mp.class);
            }
        });
        return true;
    }

    private boolean hp() {
        if (!com.byazt.ymw.vv.hp(this.jx)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(this.jx));
            if (!(this.f23194l instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.byazt.ymw.l.hp(this.f23194l, intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
