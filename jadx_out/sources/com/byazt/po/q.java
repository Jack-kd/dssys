package com.byazt.po;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.mp;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 212, 150})
/* loaded from: classes3.dex */
public class q {

    @com.byazt.kj.hp(hp = {0, 1, 212, 3})
    public static class hp extends com.byazt.uid.eb {
        public s hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f24466j;
        public mp jx;

        /* renamed from: l, reason: collision with root package name */
        public com.byazt.hy.l f24467l;

        private hp(s sVar, boolean z2) throws JSONException {
            JSONObject jSONObjectJ;
            mp mpVar;
            super("LogTask");
            this.hp = sVar;
            this.f24466j = z2;
            if (sVar == null || sVar.j() == null || (jSONObjectJ = this.hp.j()) == null) {
                return;
            }
            String strOptString = jSONObjectJ.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            try {
                JSONObject jSONObjectOptJSONObject = new JSONObject(strOptString).optJSONObject("open_ad_sdk_download_extra");
                com.byazt.hy.l lVarHp = com.byazt.hy.l.hp(jSONObjectOptJSONObject);
                this.f24467l = lVarHp;
                if (lVarHp == null) {
                    return;
                }
                lVarHp.hp(sVar.l());
                this.f24467l.l(this.hp.jx());
                this.jx = this.f24467l.hp;
                JSONObject jSONObjectW = sVar.w();
                if (jSONObjectW != null && (mpVar = this.jx) != null && !hp(jSONObjectW, mpVar.q_())) {
                    this.jx.b(jSONObjectW.toString());
                    this.jx.cx(String.valueOf(jSONObjectW.optLong("creative_id")));
                    JSONObject jSONObjectIj = this.jx.ij();
                    jSONObjectOptJSONObject.put("material_meta", jSONObjectIj);
                    com.byazt.hy.l lVarHp2 = com.byazt.hy.l.hp(jSONObjectOptJSONObject);
                    if (lVarHp2 == null) {
                        return;
                    }
                    this.f24467l = lVarHp2;
                    lVarHp2.l(sVar.jx());
                    this.hp = s.hp().hp(sVar.l()).l(sVar.jx()).hp(jSONObjectIj).l(jSONObjectJ);
                    this.jx = this.f24467l.hp;
                }
            } catch (Exception unused) {
            }
        }

        private Context getContext() {
            return sz.getContext();
        }

        public static hp hp(s sVar, boolean z2) {
            return new hp(sVar, z2);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                s sVar = this.hp;
                if (sVar == null) {
                    return;
                }
                String strL = sVar.l();
                com.byazt.hy.l lVar = this.f24467l;
                if (lVar != null && !TextUtils.isEmpty(lVar.f20986l)) {
                    strL = this.f24467l.f20986l;
                }
                if (!com.byazt.hy.jx.hp(strL, this.hp.jx(), this.jx, 0) && this.f24467l != null && this.jx != null && !TextUtils.isEmpty(this.hp.l()) && !TextUtils.isEmpty(this.hp.jx())) {
                    JSONObject jSONObjectHp = q.hp(this.hp.j());
                    String str = this.f24467l.f20986l;
                    if (hp(this.hp.l()) && !"click".equals(this.hp.jx())) {
                        jSONObjectHp.remove("open_ad_sdk_download_extra");
                        jSONObjectHp.putOpt("obm_convert", com.byazt.xci.sz.jx(this.jx));
                        com.byazt.jdb.j.l(this.jx, str, this.hp.jx(), jSONObjectHp);
                    }
                }
            } catch (Throwable unused) {
            }
        }

        private boolean hp(JSONObject jSONObject, JSONObject jSONObject2) {
            if (jSONObject != null && jSONObject2 != null) {
                long jOptLong = jSONObject.optLong("ad_id");
                long jOptLong2 = jSONObject2.optLong("ad_id");
                String strOptString = jSONObject.optString("req_id");
                String strOptString2 = jSONObject2.optString("req_id");
                long jOptLong3 = jSONObject.optLong("creative_id");
                long jOptLong4 = jSONObject2.optLong("creative_id");
                String strOptString3 = jSONObject.optString("origin_req_id");
                String strOptString4 = jSONObject2.optString("origin_req_id");
                if (jOptLong != 0 && jOptLong == jOptLong2 && jOptLong3 != 0 && jOptLong3 == jOptLong4) {
                    return (TextUtils.isEmpty(strOptString3) || TextUtils.isEmpty(strOptString4)) ? TextUtils.equals(strOptString, strOptString2) : TextUtils.equals(strOptString3, strOptString4);
                }
            }
            return false;
        }

        private boolean hp(String str) {
            return this.f24466j || q.jx(str);
        }
    }

    public static JSONObject hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        try {
            return new JSONObject(strOptString);
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return com.byazt.ih.l.AD_TAG_FEED.equals(str) || "draw_ad".equals(str) || "draw_ad_landingpage".equals(str) || com.byazt.ih.l.AD_TAG_BANNER.equals(str) || "banner_call".equals(str) || "banner_ad_landingpage".equals(str) || "feed_call".equals(str) || "embeded_ad_landingpage".equals(str) || "interaction".equals(str) || "interaction_call".equals(str) || "interaction_landingpage".equals(str) || com.byazt.ih.l.AD_TAG_EXPRESS_BANNER.equals(str) || "splash_ad".equals(str) || "fullscreen_interstitial_ad".equals(str) || "splash_ad_landingpage".equals(str) || "rewarded_video".equals(str) || "rewarded_video_landingpage".equals(str) || "openad_sdk_download_complete_tag".equals(str) || "fullscreen_interstitial_ad_landingpage".equals(str) || "stream".equals(str);
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("open_ad_sdk_download_extra");
    }
}
