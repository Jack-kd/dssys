package com.byazt.rz;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.anythink.core.common.m.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements Runnable {
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, String> f25434j = a.l();
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25435l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public int f25436a;

        /* renamed from: e, reason: collision with root package name */
        public boolean f25437e;
        public int eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f25438j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public int f25439l;

        /* renamed from: q, reason: collision with root package name */
        public String f25440q;

        /* renamed from: s, reason: collision with root package name */
        public int f25441s;

        /* renamed from: w, reason: collision with root package name */
        public String f25442w;

        public String toString() {
            try {
                return new JSONObject().put("package_name", this.hp).put("version_code", this.f25439l).put(f.f5775Y, this.f25438j).put("max_version", this.eb).put("min_version", this.f25436a).put("is_revert", this.f25437e).put(TKDownloadReason.KSAD_TK_MD5, this.f25442w).put("plugin_file", this.f25440q).toString();
            } catch (JSONException unused) {
                return "";
            }
        }
    }

    public s(Context context) {
        this.hp = context;
    }

    private String j() {
        Context context;
        if (TextUtils.isEmpty(this.f25435l) && (context = this.hp) != null) {
            try {
                this.jx = context.getPackageName();
                this.f25435l = this.hp.getPackageManager().getPackageInfo(this.jx, 0).versionName;
            } catch (Throwable unused) {
            }
        }
        return this.f25435l;
    }

    private JSONObject jx() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("app_id", this.f25434j.get("appid"));
        jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
        jSONObject2.put("sdk_version", "7.6.4.3");
        jSONObject2.put("plugin_update_network", "2");
        jSONObject.put("com.byted.pangle", jSONObject2);
        return jSONObject;
    }

    private JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("conn_type", com.byazt.vx.w.l(this.hp));
            jSONObject.put(bv.f48923x, 1);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("sdk_version", "7.6.4.3");
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            jSONObject.put("app_version", j());
            jSONObject.put("package_name", this.jx);
            jSONObject.put("vendor", Build.MANUFACTURER);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            String str = this.f25434j.get("appid");
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("app_id", str);
            jSONObject.put("req_sign", com.byazt.vx.j.hp(str != null ? str.concat(String.valueOf(jCurrentTimeMillis)).concat("7.6.4.3") : ""));
            jSONObject.put("channel", "main");
            jSONObject.put("imei", this.f25434j.get("imei"));
            jSONObject.put(n.f36449l, 0);
            jSONObject.put("device_abi", com.byazt.hu.l.hp());
            jSONObject.put("pl_update_type", com.byazt.vx.jx.l() ? 2 : 1);
            jSONObject.put("plugins", jx());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public void hp() throws Throwable {
        if (com.byazt.vx.w.hp(this.hp)) {
            run();
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        w.hp("plugin_download", "start run");
        String strHp = com.byazt.bg.jx.hp().hp(true, "https://api-access.pangolin-sdk-toutiao.com/api/ad/union/sdk/settings/plugins", com.byazt.vx.l.hp(l()).toString().getBytes());
        if (strHp == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(strHp);
            if (jSONObject.optInt("cypher") == 3) {
                String strL = com.byazt.vx.l.l(jSONObject.optString("message"));
                if (TextUtils.isEmpty(strL)) {
                    return;
                }
                jx.hp(this.hp).hp(hp(new JSONObject(strL).optJSONArray("plugins")));
            }
        } catch (JSONException e2) {
            w.hp("plugin_download", "failed:".concat(String.valueOf(e2)));
        }
    }

    private List<hp> hp(JSONArray jSONArray) {
        w.hp("plugin_download", "parse start");
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    hp hpVar = new hp();
                    hpVar.hp = jSONObjectOptJSONObject.optString("package_name");
                    hpVar.f25439l = jSONObjectOptJSONObject.optInt("version_code");
                    hpVar.jx = jSONObjectOptJSONObject.optString("download_url");
                    hpVar.f25438j = jSONObjectOptJSONObject.optString(f.f5775Y);
                    hpVar.f25436a = hp(jSONObjectOptJSONObject.optString("min_version"));
                    hpVar.eb = hp(jSONObjectOptJSONObject.optString("max_version"));
                    hpVar.f25441s = jSONObjectOptJSONObject.optInt("plugin_update_network");
                    arrayList.add(hpVar);
                    w.hp("plugin_download", "parse " + i2 + " : " + hpVar);
                }
            }
        }
        return arrayList;
    }

    private int hp(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return Integer.parseInt(str.replace(i.f2495E, ""));
            }
        } catch (NumberFormatException unused) {
        }
        return 0;
    }
}
