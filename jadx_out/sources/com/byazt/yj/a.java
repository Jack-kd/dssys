package com.byazt.yj;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.anythink.core.common.f.g;
import com.byazt.fub.zy;
import com.byazt.yj.w;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1283, 54})
/* loaded from: classes3.dex */
public class a {
    public static HashMap<String, String> eb;

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.nw.j f27950a;
    public JSONObject hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f27951j;
    public com.byazt.nw.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f27952l;

    /* renamed from: w, reason: collision with root package name */
    public jx f27953w;

    @com.byazt.kj.hp(hp = {0, 1, 1283, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        public float hp;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public float f27954l;

        public static hp hp(JSONObject jSONObject) {
            hp hpVar = new hp();
            if (jSONObject != null) {
                hpVar.hp = (float) jSONObject.optDouble("width");
                hpVar.f27954l = (float) jSONObject.optDouble("height");
                hpVar.jx = jSONObject.optBoolean("isLandscape");
            }
            return hpVar;
        }
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        eb = map;
        map.put(MediaFormat.KEY_SUBTITLE, "description");
        eb.put(n.f36449l, "source|app.app_name");
        eb.put("screenshot", "dynamic_creative.screenshot");
    }

    public a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.hp = jSONObject;
        this.f27952l = jSONObject2;
        this.jx = new com.byazt.nw.jx(jSONObject2);
        this.f27951j = hp.hp(jSONObject3);
        this.f27950a = com.byazt.nw.j.hp(jSONObject4);
    }

    private void l(com.byazt.nw.s sVar) {
        com.byazt.nw.jx jxVar;
        Object objHp;
        Object objHp2;
        Object objHp3;
        Object objHp4;
        if (sVar == null || (jxVar = this.jx) == null || (objHp = jxVar.hp("image.0.url")) == null) {
            return;
        }
        String strValueOf = String.valueOf(objHp);
        if (TextUtils.isEmpty(strValueOf) || (objHp2 = this.jx.hp(g.a.f3271h)) == null) {
            return;
        }
        String strValueOf2 = String.valueOf(objHp2);
        if (TextUtils.isEmpty(strValueOf2) || (objHp3 = this.jx.hp("description")) == null) {
            return;
        }
        String strValueOf3 = String.valueOf(objHp3);
        if (TextUtils.isEmpty(strValueOf3) || (objHp4 = this.jx.hp("icon")) == null) {
            return;
        }
        String strValueOf4 = String.valueOf(objHp4);
        if (TextUtils.isEmpty(strValueOf4)) {
            return;
        }
        Object objHp5 = this.jx.hp("app.app_name");
        Object objHp6 = this.jx.hp(n.f36449l);
        if (objHp5 == null && objHp6 == null) {
            return;
        }
        if (objHp5 == null) {
            objHp5 = objHp6;
        }
        String strValueOf5 = String.valueOf(objHp5);
        if (TextUtils.isEmpty(strValueOf5)) {
            return;
        }
        sVar.hp("imageUrl", strValueOf);
        sVar.hp(g.a.f3271h, strValueOf2);
        sVar.hp("description", strValueOf3);
        sVar.hp("icon", strValueOf4);
        sVar.hp("app_name", strValueOf5);
        sVar.hp(true);
    }

    public com.byazt.nw.s hp(double d2, int i2, double d3, String str, zy zyVar) throws JSONException, NoSuchMethodException, ClassNotFoundException, SecurityException {
        JSONObject jSONObject;
        this.jx.hp();
        try {
            jSONObject = new JSONObject(this.f27950a.f23839l);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        com.byazt.nw.s sVarHp = hp(j.hp(this.hp, jSONObject), (com.byazt.nw.s) null);
        hp(sVarHp);
        w wVar = new w(d2, i2, d3, str, zyVar);
        w.hp hpVar = new w.hp();
        hp hpVar2 = this.f27951j;
        hpVar.hp = hpVar2.hp;
        hpVar.f27970l = hpVar2.f27954l;
        hpVar.jx = 0.0f;
        wVar.hp(hpVar);
        wVar.hp(sVarHp, 0.0f, 0.0f);
        wVar.hp();
        com.byazt.nw.l lVar = wVar.hp;
        if (lVar.f23844j == 65536.0f) {
            return null;
        }
        return lVar.f23842a;
    }

    private void hp(com.byazt.nw.s sVar) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        int iHp;
        if (sVar == null) {
            return;
        }
        if (com.byazt.ui.hp.hp().jx() != null) {
            iHp = com.byazt.ui.hp.hp().jx().v();
        } else {
            iHp = com.byazt.sq.s.hp(com.byazt.wkx.j.getContext());
        }
        int iL = com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), iHp);
        hp hpVar = this.f27951j;
        float fMin = hpVar.jx ? hpVar.hp : Math.min(hpVar.hp, iL);
        if (this.f27951j.f27954l == 0.0f) {
            sVar.w(fMin);
            sVar.e().w().e(LiveConfigKey.AUTO);
            sVar.a(0.0f);
        } else {
            sVar.w(fMin);
            int iL2 = com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), com.byazt.sq.s.jx(com.byazt.wkx.j.getContext()));
            hp hpVar2 = this.f27951j;
            sVar.a(hpVar2.jx ? hpVar2.f27954l : Math.min(hpVar2.f27954l, iL2));
            sVar.e().w().e("fixed");
        }
    }

    public com.byazt.nw.s hp(JSONObject jSONObject, com.byazt.nw.s sVar) throws JSONException {
        int length;
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("type");
        if (TextUtils.equals(strOptString, "custom-component-vessel")) {
            int iOptInt = jSONObject.optInt("componentId");
            if (this.f27950a != null) {
                jx jxVar = new jx();
                this.f27953w = jxVar;
                JSONObject jSONObjectHp = jxVar.hp(this.f27950a.hp, iOptInt, jSONObject);
                if (jSONObjectHp != null) {
                    jSONObject = jSONObjectHp;
                }
            }
        }
        com.byazt.nw.s sVarHp = hp(jSONObject);
        sVarHp.hp(sVar);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray == null) {
            sVarHp.hp((List<com.byazt.nw.s>) null);
            return sVarHp;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i2);
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList();
                if (TextUtils.equals(strOptString, "tag-group")) {
                    length = sVarHp.e().w().wt();
                } else {
                    length = jSONArrayOptJSONArray2.length();
                }
                for (int i3 = 0; i3 < length; i3++) {
                    com.byazt.nw.s sVarHp2 = hp(jSONArrayOptJSONArray2.optJSONObject(i3), sVarHp);
                    if (com.byazt.wkx.j.hp() && "skip-with-time".equals(sVarHp.e().getType()) && !"transparent".equals(sVarHp.cx()) && !TextUtils.isEmpty(sVarHp.cx())) {
                        sVarHp2.jx(sVarHp.cx());
                    }
                    arrayList.add(sVarHp2);
                    arrayList3.add(sVarHp2);
                }
                arrayList2.add(arrayList3);
            }
        }
        if (arrayList.size() > 0) {
            sVarHp.hp(arrayList);
        }
        if (arrayList2.size() > 0) {
            sVarHp.l(arrayList2);
        }
        return sVarHp;
    }

    public com.byazt.nw.s hp(JSONObject jSONObject) throws JSONException {
        String strHp;
        JSONObject jSONObject2;
        String strOptString = jSONObject.optString("type");
        String strOptString2 = jSONObject.optString("id");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("values");
        q.hp(strOptString, jSONObjectOptJSONObject);
        JSONObject jSONObjectHp = q.hp(strOptString, q.hp(jSONObject.optJSONArray("sceneValues")), jSONObjectOptJSONObject);
        com.byazt.nw.s sVar = new com.byazt.nw.s();
        if (TextUtils.isEmpty(strOptString2)) {
            sVar.l(String.valueOf(sVar.hashCode()));
        } else {
            sVar.l(strOptString2);
        }
        if (jSONObjectOptJSONObject != null) {
            l(sVar);
            sVar.jx((float) jSONObjectOptJSONObject.optDouble("x"));
            sVar.j((float) jSONObjectOptJSONObject.optDouble("y"));
            sVar.w((float) jSONObjectOptJSONObject.optDouble("width"));
            sVar.a((float) jSONObjectOptJSONObject.optDouble("height"));
            sVar.eb(jSONObjectOptJSONObject.optInt("remainWidth"));
            com.byazt.nw.w wVar = new com.byazt.nw.w();
            wVar.hp(strOptString);
            wVar.l(jSONObjectOptJSONObject.optString("data"));
            wVar.jx(jSONObjectOptJSONObject.optString("filterData"));
            wVar.j(jSONObjectOptJSONObject.optString("dataExtraInfo"));
            com.byazt.nw.a aVarHp = com.byazt.nw.a.hp(jSONObjectOptJSONObject);
            wVar.hp(aVarHp);
            com.byazt.nw.a aVarHp2 = com.byazt.nw.a.hp(jSONObjectHp);
            if (aVarHp2 == null) {
                wVar.l(aVarHp);
            } else {
                wVar.l(aVarHp2);
            }
            hp(aVarHp);
            hp(aVarHp2);
            if (TextUtils.equals(strOptString, "video-image-budget") && (jSONObject2 = this.f27952l) != null) {
                hp(wVar, jSONObject2.optInt("image_mode"));
            }
            String type = wVar.getType();
            com.byazt.nw.a aVarW = wVar.w();
            if (eb.containsKey(type) && !aVarW.y()) {
                aVarW.sz(eb.get(type));
            }
            if (aVarW.y()) {
                strHp = wVar.l();
            } else {
                strHp = hp(wVar.l());
            }
            if (com.byazt.wkx.j.hp()) {
                if (TextUtils.equals(type, "star") || TextUtils.equals(type, "text_star")) {
                    strHp = hp("dynamic_creative.score_exact_i18n|");
                }
                if (TextUtils.equals(type, "score-count") || TextUtils.equals(type, "score-count-type-1") || TextUtils.equals(type, "score-count-type-2")) {
                    strHp = hp("dynamic_creative.comment_num_i18n|");
                }
                if ("root".equals(type) && aVarHp.i()) {
                    strHp = hp("image.0.url");
                }
            }
            if (!TextUtils.isEmpty(hp()) && (TextUtils.equals("logo-union", strOptString) || TextUtils.equals("logo", strOptString))) {
                wVar.l(strHp + "adx:" + hp());
            } else {
                wVar.l(strHp);
            }
            wVar.jx(hp(wVar.jx()));
            sVar.hp(wVar);
        }
        return sVar;
    }

    private void hp(com.byazt.nw.w wVar, int i2) throws JSONException {
        int iLastIndexOf;
        if (i2 != 5 && i2 != 15 && i2 != 50 && i2 != 154) {
            wVar.hp("image");
            String strHp = q.hp("image");
            com.byazt.nw.a aVarW = wVar.w();
            aVarW.sz(strHp);
            wVar.eb().sz(strHp);
            String strHp2 = q.hp("image", "clickArea");
            if (!TextUtils.isEmpty(strHp2)) {
                aVarW.v(strHp2);
                wVar.eb().v(strHp2);
            }
            JSONObject jSONObjectLy = aVarW.ly();
            if (jSONObjectLy != null) {
                aVarW.cx(jSONObjectLy.optString("imageLottieTosPath"));
                aVarW.jl(jSONObjectLy.optBoolean("animationsLoop"));
                aVarW.o(jSONObjectLy.optInt("lottieAppNameMaxLength"));
                aVarW.wv(jSONObjectLy.optInt("lottieAdDescMaxLength"));
                aVarW.d(jSONObjectLy.optInt("lottieAdTitleMaxLength"));
            }
            wVar.l(strHp);
            if (strHp != null && (iLastIndexOf = strHp.lastIndexOf(i.f2495E)) > 0) {
                String strSubstring = strHp.substring(0, iLastIndexOf);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("width", hp(strSubstring + ".width"));
                    jSONObject.put("height", hp(strSubstring + ".height"));
                } catch (JSONException unused) {
                }
                wVar.j(jSONObject.toString());
            }
            aVarW.tr();
            return;
        }
        wVar.hp("video");
        String strHp3 = q.hp("video");
        wVar.w().sz(strHp3);
        String strHp4 = q.hp("video", "clickArea");
        if (!TextUtils.isEmpty(strHp4)) {
            wVar.w().v(strHp4);
            wVar.eb().v(strHp4);
        }
        wVar.eb().sz(strHp3);
        wVar.l(strHp3);
        wVar.w().tn();
    }

    private String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : str.split("\\|")) {
            if (this.jx.l(str2)) {
                String strValueOf = String.valueOf(this.jx.hp(str2));
                if (!TextUtils.isEmpty(strValueOf)) {
                    return strValueOf;
                }
            }
        }
        return "";
    }

    private String hp() {
        com.byazt.nw.jx jxVar = this.jx;
        if (jxVar == null) {
            return "";
        }
        return String.valueOf(jxVar.hp("adx_name"));
    }

    private void hp(com.byazt.nw.a aVar) {
        if (aVar == null) {
            return;
        }
        String strHq = aVar.hq();
        if (com.byazt.wkx.j.hp()) {
            String strJ = com.byazt.sq.s.j(com.byazt.wkx.j.getContext());
            if ("zh".equals(strJ)) {
                strJ = "cn";
            }
            if (!TextUtils.isEmpty(strJ) && aVar.a() != null) {
                String strOptString = aVar.a().optString(strJ);
                if (!TextUtils.isEmpty(strOptString)) {
                    strHq = strOptString;
                }
            }
        }
        if (TextUtils.isEmpty(strHq)) {
            return;
        }
        int iIndexOf = strHq.indexOf("{{");
        int iIndexOf2 = strHq.indexOf("}}");
        if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf2 >= iIndexOf) {
            String strHp = hp(strHq.substring(iIndexOf + 2, iIndexOf2));
            StringBuilder sb = new StringBuilder(strHq.substring(0, iIndexOf));
            if (!TextUtils.isEmpty(strHp)) {
                sb.append(strHp);
            }
            sb.append(strHq.substring(iIndexOf2 + 2));
            aVar.jl(sb.toString());
            return;
        }
        aVar.jl(strHq);
    }
}
