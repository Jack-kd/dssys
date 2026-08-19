package com.byazt.i;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.anythink.core.common.f.g;
import com.byazt.b.ec;
import com.byazt.kc.AbsServerManager;
import com.byazt.t.jl;
import com.byazt.y.jx;
import com.byazt.y.zy;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 34})
/* loaded from: classes.dex */
public class l {
    public SoftReference<Activity> hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 123})
    public static class hp {
        public static l hp = new l();
    }

    public void l(long j2) {
        com.byazt.t.w wVarHp = com.byazt.l.s.hp().hp(com.byazt.w.a.hp().w(j2).f26873l.getDownloadUrl());
        if (wVarHp != null) {
            wVarHp.hp(true, true);
        } else {
            eb.hp(11, j2);
            com.byazt.u.jx.hp().l("startDownload handler null");
        }
    }

    private l() {
    }

    public static l hp() {
        return hp.hp;
    }

    public void hp(long j2) {
        TTDelegateActivity.hp(j2);
    }

    public boolean hp(DownloadModel downloadModel) {
        if (!downloadModel.isAd() || jl.q().optInt("ad_lp_show_app_dialog") == 0) {
            return false;
        }
        String webUrl = downloadModel.getDeepLink() == null ? null : downloadModel.getDeepLink().getWebUrl();
        return (TextUtils.isEmpty(webUrl) || Pattern.compile(jl.q().optString("ad_allow_web_url_regex", ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+")).matcher(webUrl).matches()) ? false : true;
    }

    public boolean hp(@NonNull com.byazt.w.w wVar) throws JSONException {
        long jHp;
        final long j2;
        if (!TextUtils.isEmpty(wVar.f26873l.getLogExtra())) {
            try {
                jHp = zy.hp(new JSONObject(wVar.f26873l.getLogExtra()), "convert_id");
            } catch (Exception unused) {
                jHp = 0;
            }
            if (jHp <= 0) {
                eb.hp(3, wVar);
            }
            j2 = jHp;
        } else {
            eb.hp(9, wVar);
            com.byazt.u.jx.hp().hp("requestAppInfo getLogExtra null");
            j2 = 0;
        }
        final long j3 = wVar.hp;
        com.byazt.w.l lVarHp = jx.hp().hp(j2, j3);
        if (lVarHp != null) {
            j.hp().hp(lVarHp.hp(), j3, lVarHp.f26865j);
            hp(lVarHp.hp());
            eb.hp("lp_app_dialog_try_show", wVar);
            return true;
        }
        StringBuilder sb = new StringBuilder();
        if (j2 > 0) {
            sb.append("convert_id=");
            sb.append(j2);
        }
        if (!TextUtils.isEmpty(wVar.f26873l.getPackageName())) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append("package_name=");
            sb.append(wVar.f26873l.getPackageName());
        }
        if (sb.length() <= 0) {
            eb.hp(6, wVar);
            return false;
        }
        com.byazt.y.jx.hp((jx.hp<String, R>) new jx.hp<String, Boolean>() { // from class: com.byazt.i.l.2
            @Override // com.byazt.y.jx.hp
            public Boolean hp(String str) {
                final boolean[] zArr = {false};
                jl.j().hp("GET", str, new HashMap(), new ec() { // from class: com.byazt.i.l.2.1
                    @Override // com.byazt.b.ec
                    public void hp(String str2) {
                        boolean[] zArr2 = zArr;
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        zArr2[0] = l.this.hp(j2, j3, str2);
                    }

                    @Override // com.byazt.b.ec
                    public void hp(Throwable th) throws JSONException {
                        eb.hp(2, j3);
                        zArr[0] = false;
                    }
                });
                return Boolean.valueOf(zArr[0]);
            }
        }, "https://apps.oceanengine.com/customer/api/app/pkg_info?" + sb.toString()).hp(new jx.hp<Boolean, Object>() { // from class: com.byazt.i.l.1
            @Override // com.byazt.y.jx.hp
            public Object hp(Boolean bool) {
                if (!bool.booleanValue()) {
                    l.this.l(j3);
                    return null;
                }
                l.this.hp(com.byazt.w.l.hp(j2, j3));
                eb.l("lp_app_dialog_try_show", j3);
                return null;
            }
        }).hp();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(long j2, long j3, String str) throws JSONException {
        long j4;
        Exception exc;
        JSONObject jSONObjectOptJSONObject;
        try {
            jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(AbsServerManager.PACKAGE_QUERY_BINDER);
        } catch (Exception e2) {
            e = e2;
            j4 = j3;
        }
        try {
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() != 0) {
                com.byazt.w.l lVar = new com.byazt.w.l();
                lVar.hp = j2;
                lVar.f26866l = j3;
                lVar.f26865j = jSONObjectOptJSONObject.optString(g.a.f3279p);
                lVar.f26869w = jSONObjectOptJSONObject.optString("app_name");
                lVar.jx = jSONObjectOptJSONObject.optString("package_name");
                lVar.f26864a = jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
                lVar.eb = jSONObjectOptJSONObject.optString("developer_name");
                lVar.f26867q = jSONObjectOptJSONObject.optString("policy_url");
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("permissions");
                if (jSONArrayOptJSONArray != null) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        try {
                            JSONObject jSONObject = (JSONObject) jSONArrayOptJSONArray.get(i2);
                            lVar.f26868s.add(new Pair<>(jSONObject.optString("permission_name"), jSONObject.optString("permission_desc")));
                        } catch (Exception e3) {
                            exc = e3;
                            j4 = j3;
                            com.byazt.u.jx.hp().hp(exc, "AdLpComplianceManager parseResponse");
                            eb.hp(7, j4);
                            return false;
                        }
                    }
                }
                jx.hp().hp(lVar);
                j.hp().hp(lVar.hp(), j3, lVar.f26865j);
                return true;
            }
            eb.hp(7, j3);
            return false;
        } catch (Exception e4) {
            e = e4;
            exc = e;
            com.byazt.u.jx.hp().hp(exc, "AdLpComplianceManager parseResponse");
            eb.hp(7, j4);
            return false;
        }
    }

    public void hp(Activity activity) {
        this.hp = new SoftReference<>(activity);
    }
}
