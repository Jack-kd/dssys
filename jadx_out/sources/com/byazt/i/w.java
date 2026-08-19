package com.byazt.i;

import com.anythink.core.common.f.g;
import com.byazt.y.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public int f21006a;

    /* renamed from: e, reason: collision with root package name */
    public String f21007e;
    public String eb;
    public long gu;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21008j;
    public String jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public l f21009k;

    /* renamed from: l, reason: collision with root package name */
    public hp f21010l;

    /* renamed from: q, reason: collision with root package name */
    public int f21011q;

    /* renamed from: s, reason: collision with root package name */
    public String f21012s;

    /* renamed from: v, reason: collision with root package name */
    public String f21013v;

    /* renamed from: w, reason: collision with root package name */
    public int f21014w = 15;
    public String zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 8})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f21015a;

        /* renamed from: e, reason: collision with root package name */
        public String f21016e;
        public List<C0269hp> eb;
        public String gu;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public long f21017j;
        public String jl;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public String f21018l;

        /* renamed from: q, reason: collision with root package name */
        public String f21019q;

        /* renamed from: s, reason: collision with root package name */
        public String f21020s;

        /* renamed from: w, reason: collision with root package name */
        public String f21021w;

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 839})
        /* renamed from: com.byazt.i.w$hp$hp, reason: collision with other inner class name */
        public static class C0269hp {
            public String hp;

            /* renamed from: l, reason: collision with root package name */
            public String f21022l;

            public void hp(String str) {
                this.hp = str;
            }

            public void l(String str) {
                this.f21022l = str;
            }
        }

        public void a(String str) {
            this.f21019q = str;
        }

        public void eb(String str) {
            this.f21016e = str;
        }

        public void hp(String str) {
            this.hp = str;
        }

        public void j(String str) {
            this.f21015a = str;
        }

        public void jx(String str) {
            this.f21021w = str;
        }

        public void l(String str) {
            this.f21018l = str;
        }

        public void q(String str) {
            this.jl = str;
        }

        public void s(String str) {
            this.gu = str;
        }

        public void w(String str) {
            this.f21020s = str;
        }

        public void hp(long j2) {
            this.jx = j2;
        }

        public void l(long j2) {
            this.f21017j = j2;
        }

        public void hp(List<C0269hp> list) {
            this.eb = list;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public static class l {
        public int hp;

        /* renamed from: l, reason: collision with root package name */
        public String f21023l;

        public void hp(int i2) {
            this.hp = i2;
        }

        public void hp(String str) {
            this.f21023l = str;
        }
    }

    public static w eb(String str) throws JSONException {
        w wVar = new w();
        try {
            JSONObject jSONObject = new JSONObject(str);
            hp hpVarHp = hp(jSONObject);
            l lVarL = l(jSONObject);
            wVar.hp(hpVarHp);
            wVar.hp(lVarL);
            wVar.hp(jSONObject.optInt("show_auth", 0) == 1);
            wVar.hp(jSONObject.optInt("download_permit"));
            wVar.l(jSONObject.optInt("appstore_permit"));
            wVar.jx(jSONObject.optInt("market_online_status", 15));
            wVar.j(jSONObject.optInt("hijack_permit"));
            wVar.hp(jSONObject.optString("package_name"));
            wVar.l(jSONObject.optString("hijack_url"));
            wVar.w(jSONObject.optInt("code"));
            wVar.jx(jSONObject.optString("message"));
            wVar.hp(jSONObject.optLong("request_duration", 0L));
            wVar.j(jSONObject.optString("back_web_url"));
            wVar.w(jSONObject.optString("hw_app_id"));
            wVar.a(jSONObject.optString(MeishuOpenDeepLinkActivity.KEY_DEEP_LINK));
            return wVar;
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "ComplianceResult fromJson");
            return wVar;
        }
    }

    public void a(String str) {
        this.zy = str;
    }

    public void hp(boolean z2) {
        this.hp = z2;
    }

    public void j(int i2) {
        this.f21006a = i2;
    }

    public void jx(int i2) {
        this.f21014w = i2;
    }

    public void l(int i2) {
        this.f21008j = i2;
    }

    public String toString() {
        return hp(this);
    }

    public void w(int i2) {
        this.f21011q = i2;
    }

    public void hp(hp hpVar) {
        this.f21010l = hpVar;
    }

    public void j(String str) {
        this.f21013v = str;
    }

    public void jx(String str) {
        this.f21007e = str;
    }

    public void l(String str) {
        this.f21012s = str;
    }

    public void w(String str) {
        this.jl = str;
    }

    private static JSONArray jx(hp hpVar) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        List<hp.C0269hp> list = hpVar.eb;
        if (list != null && list.size() > 0) {
            for (hp.C0269hp c0269hp : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("permission_name", c0269hp.hp);
                jSONObject.putOpt("permission_desc", c0269hp.f21022l);
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    public void hp(int i2) {
        this.jx = i2;
    }

    public String l() {
        return this.zy;
    }

    private static JSONObject l(hp hpVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (hpVar != null) {
            jSONObject.putOpt("app_name", hpVar.hp);
            jSONObject.putOpt(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, hpVar.f21018l);
            jSONObject.putOpt("update_time", Long.valueOf(hpVar.jx));
            jSONObject.putOpt("size", Long.valueOf(hpVar.f21017j));
            jSONObject.putOpt("developer_name", hpVar.f21021w);
            jSONObject.putOpt("policy_url", hpVar.f21019q);
            jSONObject.putOpt(g.a.f3279p, hpVar.f21016e);
            jSONObject.putOpt("download_url", hpVar.gu);
            jSONObject.putOpt("permissions", jx(hpVar));
            jSONObject.putOpt("permission_classify_url", hpVar.f21020s);
            jSONObject.putOpt("desc_url", hpVar.jl);
        }
        return jSONObject;
    }

    public void hp(String str) {
        this.eb = str;
    }

    public int hp() {
        return this.f21011q;
    }

    public void hp(long j2) {
        this.gu = j2;
    }

    public void hp(l lVar) {
        this.f21009k = lVar;
    }

    public static String hp(w wVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("show_auth", Integer.valueOf(wVar.hp ? 1 : 0));
            jSONObject.putOpt("download_permit", Integer.valueOf(wVar.jx));
            jSONObject.putOpt("appstore_permit", Integer.valueOf(wVar.f21008j));
            jSONObject.putOpt("market_online_status", Integer.valueOf(wVar.f21014w));
            jSONObject.putOpt("hijack_permit", Integer.valueOf(wVar.f21006a));
            jSONObject.putOpt("package_name", wVar.eb);
            jSONObject.putOpt("hijack_url", wVar.f21012s);
            jSONObject.putOpt("code", Integer.valueOf(wVar.f21011q));
            jSONObject.putOpt("message", wVar.f21007e);
            jSONObject.putOpt("request_duration", Long.valueOf(wVar.gu));
            jSONObject.putOpt("auth_info", l(wVar.f21010l));
            jSONObject.putOpt("status", l(wVar.f21009k));
            jSONObject.putOpt("back_web_url", wVar.f21013v);
            jSONObject.putOpt("hw_app_id", wVar.jl);
            jSONObject.putOpt(MeishuOpenDeepLinkActivity.KEY_DEEP_LINK, wVar.zy);
        } catch (JSONException e2) {
            com.byazt.u.jx.hp().hp(e2, "ComplianceResult toJson");
        }
        return jSONObject.toString();
    }

    private static l l(JSONObject jSONObject) throws JSONException {
        l lVar = new l();
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("status");
            if (jSONObjectOptJSONObject == null) {
                return lVar;
            }
            lVar.hp(jSONObjectOptJSONObject.optInt("status"));
            lVar.hp(jSONObjectOptJSONObject.optString("message"));
            return lVar;
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "ComplianceResult getStatus");
            return lVar;
        }
    }

    private static JSONObject l(l lVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (lVar != null) {
            jSONObject.putOpt("status", Integer.valueOf(lVar.hp));
            jSONObject.putOpt("message", lVar.f21023l);
        }
        return jSONObject;
    }

    private static hp hp(JSONObject jSONObject) throws JSONException {
        hp hpVar = new hp();
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("auth_info");
            if (jSONObjectOptJSONObject != null) {
                hpVar.hp(jSONObjectOptJSONObject.optString("app_name"));
                hpVar.l(jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME));
                hpVar.hp(zy.hp(jSONObjectOptJSONObject, "update_time"));
                hpVar.l(zy.hp(jSONObjectOptJSONObject, "size"));
                hpVar.jx(jSONObjectOptJSONObject.optString("developer_name"));
                hpVar.j(jSONObjectOptJSONObject.optString("package_name"));
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("permissions");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList = new ArrayList();
                    hp(jSONArrayOptJSONArray, arrayList);
                    hpVar.hp(arrayList);
                }
                hpVar.w(jSONObjectOptJSONObject.optString("permission_classify_url"));
                hpVar.a(jSONObjectOptJSONObject.optString("policy_url"));
                hpVar.eb(jSONObjectOptJSONObject.optString(g.a.f3279p));
                hpVar.s(jSONObjectOptJSONObject.optString("download_url"));
                hpVar.q(jSONObjectOptJSONObject.optString("desc_url"));
            }
            return hpVar;
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "ComplianceResult getAuthInfo");
            return hpVar;
        }
    }

    private static void hp(JSONArray jSONArray, List<hp.C0269hp> list) {
        if (jSONArray == null || list == null) {
            return;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                hp.C0269hp c0269hp = new hp.C0269hp();
                c0269hp.hp(jSONObjectOptJSONObject.optString("permission_name"));
                c0269hp.l(jSONObjectOptJSONObject.optString("permission_desc"));
                list.add(c0269hp);
            }
        }
    }
}
