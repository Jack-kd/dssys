package com.byazt.y;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.core.common.f.f;
import com.byazt.b.DownloadMarketInterceptor;
import com.byazt.b.ec;
import com.byazt.dg.AdDownloadController;
import com.byazt.q.JumpKllkActivity;
import com.byazt.rx.BaseConstants;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yy.DownloadController;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointCategory;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.umeng.analytics.pro.bv;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static final String hp = "s";

    private static void a(final Context context, final com.byazt.w.w wVar, final String str) {
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.y.s.6
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                JSONObject jSONObjectQ = com.byazt.t.jl.q();
                final JSONObject jSONObject = new JSONObject();
                try {
                    String strOptString = jSONObjectQ.optString("s");
                    String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("bw"), strOptString);
                    String strHp2 = com.byazt.wm.jx.hp(jSONObjectQ.optString("bx"), strOptString);
                    String strHp3 = com.byazt.wm.jx.hp(jSONObjectQ.optString("by"), strOptString);
                    Uri.Builder builder = new Uri.Builder();
                    builder.scheme("https").authority(strHp).appendPath(strHp2).appendQueryParameter(strHp3, str);
                    com.byazt.t.jl.j().hp("GET", builder.build().toString(), null, new ec() { // from class: com.byazt.y.s.6.1
                        @Override // com.byazt.b.ec
                        public void hp(String str2) throws JSONException {
                            if (!TextUtils.isEmpty(str2)) {
                                String strJx = s.jx(str2);
                                if (!TextUtils.isEmpty(strJx)) {
                                    String strJ = s.j(strJx);
                                    if (!TextUtils.isEmpty(strJ)) {
                                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                        s.l(context, wVar, str, strJ);
                                        return;
                                    }
                                }
                            }
                            com.byazt.j.hp.hp(s.hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
                            s.l(wVar, jSONObject, 10, 9, BaseConstants.MARKET_PREFIX + str);
                        }

                        @Override // com.byazt.b.ec
                        public void hp(Throwable th) throws JSONException {
                            com.byazt.j.hp.hp(s.hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
                            zy.hp(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                            s.l(wVar, jSONObject, 11, 9, BaseConstants.MARKET_PREFIX + str);
                        }
                    });
                } catch (Exception unused) {
                    s.l(wVar, jSONObject, 4, 9, BaseConstants.MARKET_PREFIX + str);
                }
            }
        });
    }

    private static void eb(Context context, com.byazt.w.w wVar, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.hp(str, wVar.hp);
        } catch (Exception unused) {
            com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
            l(wVar, jSONObject, 13, 10, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static com.byazt.w.eb j(@NonNull Context context, @NonNull String str) {
        try {
            Uri uri = Uri.parse("https://www.samsungapps.com/appquery/appDetail.as?appId=" + str);
            Intent intent = new Intent();
            intent.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
            intent.setData(uri);
            if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return new com.byazt.w.eb(5);
        } catch (Exception unused) {
            return new com.byazt.w.eb(6, 14);
        }
    }

    private static void jx(Context context, com.byazt.w.w wVar, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            hp(context, str, wVar.hp);
        } catch (Exception unused) {
            com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
            l(wVar, jSONObject, 14, 11, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static void q(Context context, com.byazt.w.w wVar, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.hp(str, wVar.hp, BaseConstants.VIVO_MARKET_NEED_COMMENT);
        } catch (Exception unused) {
            com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
            l(wVar, jSONObject, 9, 8, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static void s(final Context context, final com.byazt.w.w wVar, final String str) {
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.y.s.7
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                JSONObject jSONObjectQ = com.byazt.t.jl.q();
                String strOptString = jSONObjectQ.optString("s");
                final JSONObject jSONObject = new JSONObject();
                String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("x"), strOptString);
                JSONObject jSONObject2 = new JSONObject();
                zy.hp(jSONObject2, bv.aI, "v");
                zy.hp(jSONObject2, "p", str);
                byte[] bytes = jSONObject2.toString().getBytes();
                com.byazt.t.jl.j().hp(strHp, com.byazt.t.jl.vv().hp(bytes, bytes.length), "application/octet-stream;tt-data=a", 0, new ec() { // from class: com.byazt.y.s.7.1
                    @Override // com.byazt.b.ec
                    public void hp(String str2) throws JSONException {
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        s.l(context, str, str2, wVar, jSONObject);
                    }

                    @Override // com.byazt.b.ec
                    public void hp(Throwable th) throws JSONException {
                        com.byazt.j.hp.hp(s.hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
                        zy.hp(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                        s.l(wVar, jSONObject, 7, 5, BaseConstants.MARKET_PREFIX + str);
                    }
                });
            }
        });
    }

    private static void w(final Context context, final com.byazt.w.w wVar, final String str) {
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.y.s.5
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                com.byazt.j.hp.hp(s.hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObjectQ = com.byazt.t.jl.q();
                    Thread.sleep(jSONObjectQ.optInt("m2_delay_millis", 1000));
                    com.byazt.e.hp.hp().hp(context, true);
                    com.byazt.e.l lVar = new com.byazt.e.l();
                    lVar.hp = 1;
                    lVar.f19386l = 0;
                    String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("v"), jSONObjectQ.optString("s"));
                    lVar.jx = String.format(strHp, str);
                    com.byazt.e.hp.hp().hp(lVar, (com.byazt.e.j) null);
                    com.byazt.e.hp.hp().l();
                    s.l(wVar, jSONObject, -1, 2, String.format(strHp, str));
                } catch (Throwable unused) {
                    s.l(wVar, jSONObject, 1, 2, BaseConstants.MARKET_PREFIX + str);
                }
            }
        });
    }

    private static com.byazt.w.eb l(Context context, com.byazt.w.w wVar, String str) throws JSONException {
        Intent intent = new Intent(context, (Class<?>) JumpKllkActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("p", str);
        intent.putExtra("id", wVar.hp);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        JSONObject jSONObject = new JSONObject();
        try {
            context.startActivity(intent);
            return new com.byazt.w.eb(7, "am_kllk2");
        } catch (Throwable unused) {
            l(wVar, jSONObject, 1, 3, BaseConstants.MARKET_PREFIX + str);
            return hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
    }

    public static com.byazt.w.eb hp(Context context, Uri uri) {
        Intent intent;
        if (!com.byazt.wm.w.jx() && (context == null || uri == null)) {
            return new com.byazt.w.eb(6, 12);
        }
        try {
            String strE = com.byazt.wm.w.e();
            if (com.byazt.wm.w.xs() && (TextUtils.isEmpty(strE) || !zy.w(context, strE))) {
                strE = "com.huawei.appmarket";
                Uri.Builder builderBuildUpon = uri.buildUpon();
                builderBuildUpon.scheme("market");
                intent = new Intent("android.intent.action.VIEW", builderBuildUpon.build());
            } else {
                intent = new Intent("android.intent.action.VIEW", uri);
            }
            if (!zy.hp(context, intent)) {
                return new com.byazt.w.eb(6, 13);
            }
            if (zy.w(context, strE) && !com.byazt.wm.w.eb()) {
                intent.setPackage(strE);
            }
            if (com.byazt.jb.hp.jx().hp("fix_jump_market")) {
                if (!(context instanceof Activity)) {
                    intent.addFlags(335544320);
                }
            } else if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            if (com.byazt.jb.hp.jx().l("test_jump_market_failed") == 1) {
                com.byazt.u.jx.hp().hp(false, "jump market error");
                return new com.byazt.w.eb(6, 25);
            }
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return new com.byazt.w.eb(5);
        } catch (Exception unused) {
            return new com.byazt.w.eb(6, 14);
        }
    }

    public static boolean jx(@NonNull Activity activity, Uri uri) throws JSONException {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        String strE = com.byazt.wm.w.e();
        if (zy.w(com.byazt.t.jl.getContext(), strE)) {
            intent.setPackage(strE);
        }
        if (!zy.hp(com.byazt.t.jl.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "start HM2");
            return false;
        }
    }

    private static com.byazt.w.eb j(Context context, com.byazt.w.w wVar, String str) throws JSONException {
        Intent intent = new Intent(context, (Class<?>) JumpKllkActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("dl", true);
        intent.putExtra("p", str);
        intent.putExtra("id", wVar.hp);
        if (Build.VERSION.SDK_INT >= 29) {
            intent.putExtra("bk", BaseConstants.KLLK_PROMOTION_HEYTAP_PKG_INFO);
        } else if (zy.w(context, BaseConstants.KLLK_PROMOTION_NORMAL_PKG_INFO)) {
            intent.putExtra("bk", BaseConstants.KLLK_PROMOTION_NORMAL_PKG_INFO);
        } else if (zy.w(context, BaseConstants.KLLK_PROMOTION_COLOROS_PKG_INFO)) {
            intent.putExtra("bk", BaseConstants.KLLK_PROMOTION_COLOROS_PKG_INFO);
        } else {
            return hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        JSONObject jSONObject = new JSONObject();
        try {
            context.startActivity(intent);
            return new com.byazt.w.eb(7, "am_kllk3");
        } catch (Throwable unused) {
            l(wVar, jSONObject, 1, 3, BaseConstants.MARKET_PREFIX + str);
            return hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Context context, String str, String str2, @NonNull com.byazt.w.w wVar, @NonNull JSONObject jSONObject) throws JSONException {
        zy.hp(jSONObject, "ttdownloader_type", (Object) 5);
        try {
            String strHp = com.byazt.wm.jx.hp(new JSONObject(str2).optString("a"));
            if (!TextUtils.isEmpty(strHp)) {
                TTDelegateActivity.hp(str, wVar.hp, strHp, jSONObject);
                return;
            }
            com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
            l(wVar, jSONObject, 5, 5, BaseConstants.MARKET_PREFIX + str);
        } catch (Exception unused) {
            com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
            l(wVar, jSONObject, 6, 5, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static boolean jx(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String jx(String str) {
        String strGroup;
        Matcher matcher = Pattern.compile("<input[\\s\\S]*>\\n").matcher(str);
        if (matcher.find()) {
            strGroup = matcher.group();
        } else {
            strGroup = "";
        }
        if (!strGroup.equals(null) && strGroup.length() > 0) {
            for (String str2 : strGroup.split("\\n")) {
                if (str2.startsWith("<input")) {
                    for (String str3 : str2.split("\\s")) {
                        if (str3.startsWith(f.a.f3244d)) {
                            return str3.substring(7, str3.length() - 1);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static boolean l(@NonNull Activity activity, Uri uri) throws JSONException {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        String strE = com.byazt.wm.w.e();
        if (zy.w(com.byazt.t.jl.getContext(), strE)) {
            intent.setPackage(strE);
        }
        if (!zy.hp(com.byazt.t.jl.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "start HM1");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j(String str) {
        List<String> pathSegments = Uri.parse(str).getPathSegments();
        if (pathSegments.size() > 0) {
            return pathSegments.get(pathSegments.size() - 1);
        }
        return null;
    }

    public static com.byazt.w.eb hp(final Context context, Uri uri, com.byazt.w.w wVar) {
        com.byazt.zv.l lVar;
        if (context != null && com.byazt.j.e.hp(uri)) {
            try {
                final Intent intent = new Intent("android.intent.action.VIEW", uri);
                if (!zy.hp(context, intent)) {
                    return new com.byazt.w.eb(6, 13);
                }
                String strE = com.byazt.wm.w.e();
                if (zy.w(context, strE)) {
                    intent.setPackage(strE);
                }
                intent.addFlags(335544320);
                if (com.byazt.jb.hp.jx().l("test_jump_market_failed") == 1 && "local_test".equals(com.byazt.t.jl.e().jx)) {
                    com.byazt.u.jx.hp().hp(false, "jump market error");
                    return new com.byazt.w.eb(6, 25);
                }
                intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
                long jOptLong = com.byazt.t.jl.q().optLong("market_jump_delay", 1000L);
                if (jOptLong > 0 && wVar != null && (lVar = wVar.f26874w) != null && !lVar.fi()) {
                    com.byazt.l.s.hp().l().post(new Runnable() { // from class: com.byazt.y.s.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.byazt.t.jl.jx().hp(8, com.byazt.t.jl.getContext(), null, "浏览器跳转失败，正在前往应用商店", null, 0);
                        }
                    });
                }
                com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.y.s.2
                    @Override // java.lang.Runnable
                    public void run() {
                        context.startActivity(intent);
                    }
                }, jOptLong);
                return new com.byazt.w.eb(5);
            } catch (Exception unused) {
                return new com.byazt.w.eb(6, 14);
            }
        }
        return new com.byazt.w.eb(6, 12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(com.byazt.w.w wVar, JSONObject jSONObject, int i2, int i3, String str) throws JSONException {
        zy.hp(jSONObject, "error_code", Integer.valueOf(i2));
        zy.hp(jSONObject, "ttdownloader_type", Integer.valueOf(i3));
        zy.hp(jSONObject, "rmu", str);
        zy.hp(jSONObject, com.byazt.wm.w.e(), Integer.valueOf(zy.l(com.byazt.t.jl.getContext(), com.byazt.wm.w.e())));
        com.byazt.r.hp.hp().l("am_result", jSONObject, wVar);
    }

    public static com.byazt.w.eb l(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return new com.byazt.w.eb(4, 11);
        }
        if (context == null) {
            context = com.byazt.t.jl.getContext();
        }
        Intent intentEb = zy.eb(context, str);
        if (intentEb == null) {
            return new com.byazt.w.eb(4, 22);
        }
        intentEb.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        try {
            context.startActivity(intentEb);
            return new com.byazt.w.eb(3);
        } catch (Exception unused) {
            return new com.byazt.w.eb(4, 23);
        }
    }

    public static com.byazt.w.eb l(String str, com.byazt.zv.hp hpVar) {
        if (TextUtils.isEmpty(str)) {
            return new com.byazt.w.eb(2, 21);
        }
        Context context = com.byazt.t.jl.getContext();
        String packageName = hpVar.n().getPackageName();
        if (!TextUtils.isEmpty(packageName)) {
            jl.hp().hp(hp, "tryOpenByUrl", "获取到跳转中转Activity的intent");
            Intent intentHp = hp(context, hpVar, packageName, 2, str);
            if (intentHp != null) {
                com.byazt.w.eb ebVarHp = hp(context, intentHp, hpVar, true, str);
                if (ebVarHp.getType() == 1) {
                    return ebVarHp;
                }
            }
        }
        Uri uri = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        if (com.byazt.jb.hp.jx().hp("fix_app_link_flag")) {
            intent.addFlags(67108864);
        }
        return hp(context, intent, hpVar, false, str);
    }

    public static com.byazt.w.eb hp(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (com.byazt.wm.w.eb() && zy.w(context, "com.sec.android.app.samsungapps")) {
                return j(context, str);
            }
            return hp(context, com.byazt.pp.hp.hp(context, str));
        }
        return new com.byazt.w.eb(6, 11);
    }

    public static com.byazt.w.eb hp(Context context, com.byazt.w.w wVar, String str) throws JSONException {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (com.byazt.wm.w.eb() && zy.w(context, "com.sec.android.app.samsungapps")) {
                return j(context, str);
            }
            if (wVar.f26873l.isAd() && wVar.f26872j.enableAM()) {
                JSONArray jSONArrayOptJSONArray = com.byazt.t.jl.q().optJSONArray("am_plans");
                if (com.byazt.wm.w.w() && com.byazt.wm.hp.hp(jSONArrayOptJSONArray, "am_3")) {
                    return l(context, wVar, str);
                }
                if (com.byazt.wm.w.a() && com.byazt.wm.hp.hp(jSONArrayOptJSONArray, "am_2")) {
                    w(context, wVar, str);
                    return new com.byazt.w.eb(7, "am_m2");
                }
                if (com.byazt.wm.w.j() && com.byazt.wm.hp.hp(jSONArrayOptJSONArray, "am_5")) {
                    s(context, wVar, str);
                    return new com.byazt.w.eb(7, "am_v1");
                }
                if (com.byazt.wm.w.w() && com.byazt.wm.hp.hp(jSONArrayOptJSONArray, "am_7")) {
                    DownloadController downloadController = wVar.f26872j;
                    if ((downloadController instanceof AdDownloadController) && ((AdDownloadController) downloadController).enableOppoAutoDownload()) {
                        return j(context, wVar, str);
                    }
                }
                if (com.byazt.wm.w.j() && com.byazt.wm.hp.hp(jSONArrayOptJSONArray, "am_8") && zy.hp(zy.jx(context, "com.bbk.appstore"), BaseConstants.VIVO_V2_REQUIRED_MARKET_VERSION) >= 0) {
                    q(context, wVar, str);
                    return new com.byazt.w.eb(7, "am_v2");
                }
                if ((com.byazt.wm.w.hp() || com.byazt.wm.w.l()) && com.byazt.wm.hp.hp(jSONArrayOptJSONArray, "am_9")) {
                    a(context, wVar, str);
                    return new com.byazt.w.eb(7, "am_hr");
                }
                if ((com.byazt.wm.w.hp() || com.byazt.wm.w.l()) && com.byazt.wm.hp.hp(jSONArrayOptJSONArray, "am_10")) {
                    eb(context, wVar, str);
                    return new com.byazt.w.eb(7, "am_hr2");
                }
                DownloadController downloadController2 = wVar.f26872j;
                if ((downloadController2 instanceof AdDownloadController) && ((AdDownloadController) downloadController2).enableOppoAutoDownload() && ((AdDownloadController) wVar.f26872j).getDownloadMarketInterceptor() != null && wVar.f26873l.getDownloadSettings().optInt("is_use_obm_convert", 0) == 1) {
                    jx(context, wVar, str);
                    return new com.byazt.w.eb(7, "am_kllk4");
                }
                return hp(context, com.byazt.pp.hp.hp(context, str));
            }
            return hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
        return new com.byazt.w.eb(6, 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Context context, @NonNull com.byazt.w.w wVar, @NonNull String str, @NonNull String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.l(str, wVar.hp, str2);
        } catch (Exception unused) {
            com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVar, true);
            l(wVar, jSONObject, 12, 9, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static void l(@NonNull Activity activity, String str, long j2, String str2) {
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectQ = com.byazt.t.jl.q();
        String strOptString = jSONObjectQ.optString("s");
        String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("bz"), strOptString);
        String strHp2 = com.byazt.wm.jx.hp(jSONObjectQ.optString("ca"), strOptString);
        String strHp3 = com.byazt.wm.jx.hp(jSONObjectQ.optString("cb"), strOptString);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(BaseConstants.MARKET_SCHEME_HW_HONOR).authority("com.huawei.appmarket");
        if (!TextUtils.isEmpty(strHp)) {
            builder.appendQueryParameter(strHp, str2);
        }
        if (!TextUtils.isEmpty(strHp2) && !TextUtils.isEmpty(strHp3)) {
            builder.appendQueryParameter(strHp2, strHp3);
        }
        if (l(activity, builder.build())) {
            l(wVarW, jSONObject, -1, 9, BaseConstants.MARKET_PREFIX + str);
            com.byazt.j.hp.hp("am_hr", jSONObject, wVarW, true);
            return;
        }
        l(wVarW, jSONObject, 2, 9, BaseConstants.MARKET_PREFIX + str);
        com.byazt.j.hp.hp(hp((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
    }

    public static boolean hp(Context context, com.byazt.w.w wVar, String str, JSONObject jSONObject, boolean z2, int i2) throws JSONException {
        zy.hp(jSONObject, "download_scene", Integer.valueOf(wVar.sz()));
        wVar.f26872j.getMarketStatusChangeListener();
        com.byazt.r.hp.hp().l("market_click_open", jSONObject, wVar);
        com.byazt.w.eb ebVarHp = hp(context, Uri.parse(str));
        String strHp = zy.hp(ebVarHp.l(), PointCategory.OPEN_MARKET);
        int type = ebVarHp.getType();
        if (type == 5) {
            com.byazt.j.hp.hp(strHp, jSONObject, wVar, true);
        } else {
            if (type == 6) {
                zy.hp(jSONObject, "error_code", Integer.valueOf(ebVarHp.hp()));
                zy.hp(jSONObject, "download_scene", Integer.valueOf(wVar.sz()));
                com.byazt.r.hp.hp().l("market_open_failed", jSONObject, wVar);
                return false;
            }
            if (type != 7) {
                return false;
            }
        }
        if (z2) {
            com.byazt.r.hp.hp().hp(wVar.hp, i2);
        }
        return true;
    }

    public static void hp(Context context, String str, long j2, boolean z2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        try {
            JSONObject jSONObjectQ = com.byazt.t.jl.q();
            String strOptString = jSONObjectQ.optString("s");
            String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("aa"), strOptString);
            String strHp2 = com.byazt.wm.jx.hp(jSONObjectQ.optString("ac"), strOptString);
            String strHp3 = com.byazt.wm.jx.hp(jSONObjectQ.optString("af"), strOptString);
            boolean zHp = com.byazt.wm.hp.hp(jSONObjectQ, context, strHp2);
            StringBuilder sb = new StringBuilder(String.format(strHp, str, strHp3, strHp2));
            Intent intent = new Intent("android.intent.action.VIEW");
            String strE = com.byazt.wm.w.e();
            if (zy.w(context, strE)) {
                intent.setPackage(strE);
            }
            if (z2) {
                sb.append(com.byazt.wm.jx.hp(jSONObjectQ.optString("ae"), strOptString));
            } else {
                intent.addFlags(335544320);
            }
            zy.hp(jSONObject, "mf", Boolean.valueOf(zHp));
            zy.hp(jSONObject, "if", Boolean.valueOf(z2));
            intent.setData(Uri.parse(sb.toString()));
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            com.byazt.j.hp.hp("am_kllk2", jSONObject, wVarW, true);
            if (zHp) {
                l(wVarW, jSONObject, -1, 3, sb.toString());
            } else {
                l(wVarW, jSONObject, 3, 3, sb.toString());
            }
        } catch (Exception unused) {
            com.byazt.j.hp.hp(hp(com.byazt.t.jl.getContext(), Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
            l(wVarW, jSONObject, 2, 3, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static void hp(final Context context, String str, long j2, String str2, boolean z2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        try {
            JSONObject jSONObjectQ = com.byazt.t.jl.q();
            String strOptString = jSONObjectQ.optString("s");
            String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("br"), strOptString);
            String strHp2 = com.byazt.wm.jx.hp(jSONObjectQ.optString("bs_1"), strOptString);
            String strHp3 = com.byazt.wm.jx.hp(jSONObjectQ.optString("bs_2"), strOptString);
            String strHp4 = com.byazt.wm.jx.hp(jSONObjectQ.optString("bs_3"), strOptString);
            String strHp5 = com.byazt.wm.jx.hp(jSONObjectQ.optString("bt"), strOptString);
            String strHp6 = com.byazt.wm.jx.hp(jSONObjectQ.optString("bu"), strOptString);
            StringBuilder sb = new StringBuilder(String.format("https://", new Object[0]));
            sb.append(strHp);
            sb.append(strHp2);
            sb.append(strHp3);
            sb.append(strHp4);
            sb.append(strHp5);
            sb.append(strHp6);
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.setPackage(str2);
            if (z2) {
                sb.append("pkg=" + str);
                sb.append("&dl=true");
            } else {
                intent.addFlags(335544320);
            }
            zy.hp(jSONObject, "dl", Boolean.valueOf(z2));
            intent.setData(Uri.parse(sb.toString()));
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            long jOptLong = com.byazt.t.jl.q().optLong("oppo_browser_jump_delay", 1000L);
            if (jOptLong > 0) {
                com.byazt.l.s.hp().l().post(new Runnable() { // from class: com.byazt.y.s.3
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.t.jl.jx().hp(12, com.byazt.t.jl.getContext(), null, "正在前往浏览器下载", null, 0);
                    }
                });
            }
            com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.y.s.4
                @Override // java.lang.Runnable
                public void run() {
                    context.startActivity(intent);
                }
            }, jOptLong);
            com.byazt.zv.l lVar = wVarW.f26874w;
            if (lVar != null) {
                lVar.ns(true);
            }
            com.byazt.j.hp.hp("am_kllk3", jSONObject, wVarW, true);
            l(wVarW, jSONObject, -1, 7, sb.toString());
        } catch (Exception unused) {
            com.byazt.zv.l lVar2 = wVarW.f26874w;
            if (lVar2 != null) {
                lVar2.ns(false);
            }
            com.byazt.j.hp.hp(hp(com.byazt.t.jl.getContext(), Uri.parse(BaseConstants.MARKET_PREFIX + str), wVarW), wVarW, true);
            l(wVarW, jSONObject, 2, 7, BaseConstants.MARKET_PREFIX + str);
        }
    }

    private static boolean hp(@NonNull Activity activity, @NonNull String str, @NonNull HashMap<String, String> map) throws JSONException {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(BaseConstants.MARKET_PREFIX + str));
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        intent.putExtra("param", map);
        String strE = com.byazt.wm.w.e();
        if (zy.w(com.byazt.t.jl.getContext(), strE)) {
            intent.setPackage(strE);
        }
        if (!zy.hp(com.byazt.t.jl.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "start v1");
            return false;
        }
    }

    public static void hp(@NonNull Activity activity, String str, long j2, String str2, String str3) {
        JSONObject jSONObject;
        int i2;
        try {
            jSONObject = new JSONObject(str3);
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
        }
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        try {
            JSONObject jSONObjectQ = com.byazt.t.jl.q();
            boolean zHp = com.byazt.wm.hp.hp(jSONObjectQ, activity, com.byazt.wm.jx.hp(jSONObjectQ.optString("bg"), jSONObjectQ.optString("s")));
            HashMap<String, String> mapL = zy.l(new JSONObject(str2));
            if (!zHp || mapL.isEmpty() || !hp(activity, str, mapL)) {
                if (zHp) {
                    i2 = mapL.isEmpty() ? 1 : 2;
                } else {
                    i2 = 3;
                }
                l(wVarW, jSONObject, i2, 5, BaseConstants.MARKET_PREFIX + str);
                com.byazt.j.hp.hp(hp((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
                return;
            }
            l(wVarW, jSONObject, -1, 5, BaseConstants.MARKET_PREFIX + str);
            com.byazt.j.hp.hp("am_v1", jSONObject, wVarW, true);
        } catch (Exception unused2) {
            com.byazt.j.hp.hp(hp(com.byazt.t.jl.getContext(), Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
            l(wVarW, jSONObject, 4, 5, BaseConstants.MARKET_PREFIX + str);
        }
    }

    public static void hp(@NonNull Activity activity, String str, long j2, String str2) {
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectQ = com.byazt.t.jl.q();
        String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("bv"), jSONObjectQ.optString("s"));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("market").authority(BaseConstants.MARKET_URI_AUTHORITY_DETAIL).appendQueryParameter("id", str);
        if (!TextUtils.isEmpty(strHp)) {
            builder.appendQueryParameter(strHp, str2);
        }
        if (hp(activity, builder.build())) {
            l(wVarW, jSONObject, -1, 8, BaseConstants.MARKET_PREFIX + str);
            com.byazt.j.hp.hp("am_v2", jSONObject, wVarW, true);
            return;
        }
        l(wVarW, jSONObject, 2, 8, BaseConstants.MARKET_PREFIX + str);
        com.byazt.j.hp.hp(hp((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
    }

    public static boolean hp(@NonNull Activity activity, Uri uri) throws JSONException {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        String strE = com.byazt.wm.w.e();
        if (zy.w(com.byazt.t.jl.getContext(), strE)) {
            intent.setPackage(strE);
        }
        if (!zy.hp(com.byazt.t.jl.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "start v2");
            return false;
        }
    }

    public static com.byazt.w.eb hp(Context context, String str, com.byazt.zv.hp hpVar) {
        Intent intentHp = hp(context, hpVar, str, 1, (String) null);
        if (intentHp != null) {
            jl.hp().hp(hp, "tryOpenByPackage", "成功构造了跳转中转Activity的intent");
            com.byazt.w.eb ebVarHp = hp(intentHp, true, context, str, hpVar);
            if (ebVarHp.getType() == 3) {
                return ebVarHp;
            }
        }
        Intent intentEb = zy.eb(context, str);
        if (intentEb == null) {
            return new com.byazt.w.eb(4, 22);
        }
        return hp(intentEb, false, context, str, hpVar);
    }

    private static com.byazt.w.eb hp(Intent intent, boolean z2, Context context, String str, com.byazt.zv.hp hpVar) {
        if (Build.VERSION.SDK_INT >= 26 && com.byazt.t.jl.q().optInt("open_package_mode") == 1 && com.byazt.t.jl.jl() != null && com.byazt.t.jl.jl().hp() && hpVar.xs() && !z2) {
            TTDelegateActivity.l(str, hpVar);
            return new com.byazt.w.eb(3);
        }
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        try {
            context.startActivity(intent);
            return new com.byazt.w.eb(3);
        } catch (Exception e2) {
            if (z2) {
                jl.hp().l(hp, "realTryOpenByPackage", "调起中转Activity出现异常，可能是没接转化SDK，回退普通调起" + e2.getMessage());
                return new com.byazt.w.eb(8, 23);
            }
            jl.hp().l(hp, "realTryOpenByPackage", "包名调起失败了，抛出异常" + e2.getMessage());
            return new com.byazt.w.eb(4, 23);
        }
    }

    public static com.byazt.w.eb hp(String str, com.byazt.zv.hp hpVar) {
        return hp(com.byazt.t.jl.getContext(), str, hpVar);
    }

    private static com.byazt.w.eb hp(Context context, Intent intent, com.byazt.zv.hp hpVar, boolean z2, String str) {
        if (context == null) {
            context = com.byazt.t.jl.getContext();
        }
        if (zy.l(context, intent)) {
            if (com.byazt.t.jl.q().optInt("open_url_mode") == 0 && com.byazt.t.jl.jl() != null && com.byazt.t.jl.jl().hp() && Build.VERSION.SDK_INT >= 26 && hpVar.xs() && !z2) {
                TTDelegateActivity.hp(str, hpVar);
                return new com.byazt.w.eb(1);
            }
            try {
                context.startActivity(intent);
                return new com.byazt.w.eb(1);
            } catch (Exception e2) {
                if (z2) {
                    jl.hp().l(hp, "realTryOpenByUrl", "商店直投注入clickId优化url调起场景，抛出异常，没接转化SDK，回退普通调起" + e2.getMessage());
                    return new com.byazt.w.eb(9);
                }
                jl.hp().l(hp, "realTryOpenByUrl", "url调起失败了，抛出异常" + e2.getMessage());
                return new com.byazt.w.eb(2);
            }
        }
        return new com.byazt.w.eb(2, 24);
    }

    public static com.byazt.w.eb hp(@NonNull com.byazt.zv.l lVar, String str, String str2) {
        com.byazt.w.eb ebVarL = l(str, lVar);
        return (com.byazt.j.a.hp(lVar) && ebVarL.getType() == 2) ? hp(str2, lVar) : ebVarL;
    }

    public static void hp(@NonNull Activity activity, String str, long j2) {
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectQ = com.byazt.t.jl.q();
        String strOptString = jSONObjectQ.optString("s");
        String strHp = com.byazt.wm.jx.hp(jSONObjectQ.optString("ca"), strOptString);
        String strHp2 = com.byazt.wm.jx.hp(jSONObjectQ.optString(com.umeng.ccg.a.f49747a), strOptString);
        StringBuilder sb = new StringBuilder(BaseConstants.MARKET_PREFIX);
        if (!TextUtils.isEmpty(strHp) && !TextUtils.isEmpty(strHp2)) {
            sb.append(str);
            sb.append("&");
            sb.append(strHp);
            sb.append("=");
            sb.append(strHp2);
        }
        if (jx(activity, Uri.parse(sb.toString()))) {
            l(wVarW, jSONObject, -1, 10, BaseConstants.MARKET_PREFIX + str);
            com.byazt.j.hp.hp("am_hr2", jSONObject, wVarW, true);
            return;
        }
        l(wVarW, jSONObject, 2, 10, BaseConstants.MARKET_PREFIX + str);
        com.byazt.j.hp.hp(hp((Context) activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
    }

    public static void hp(@NonNull Context context, String str, long j2) {
        com.byazt.w.w wVarW = com.byazt.w.a.hp().w(j2);
        JSONObject jSONObject = new JSONObject();
        DownloadController downloadController = wVarW.f26872j;
        if (downloadController instanceof AdDownloadController) {
            boolean zEnableOppoAutoDownload = ((AdDownloadController) downloadController).enableOppoAutoDownload();
            HashMap map = new HashMap();
            map.put("is_button", Boolean.valueOf(zEnableOppoAutoDownload));
            zy.hp(jSONObject, "is_button", Boolean.valueOf(zEnableOppoAutoDownload));
            DownloadMarketInterceptor downloadMarketInterceptor = ((AdDownloadController) wVarW.f26872j).getDownloadMarketInterceptor();
            if (downloadMarketInterceptor != null) {
                Map<String, Object> mapInterceptObmMarket = downloadMarketInterceptor.interceptObmMarket(map);
                if (mapInterceptObmMarket != null && mapInterceptObmMarket.get("convert_result") != null && Boolean.parseBoolean(mapInterceptObmMarket.get("convert_result").toString())) {
                    l(wVarW, jSONObject, -1, 11, BaseConstants.MARKET_PREFIX + str);
                    com.byazt.j.hp.hp("am_kllk4", jSONObject, wVarW, true);
                    return;
                }
                l(wVarW, jSONObject, 15, 11, BaseConstants.MARKET_PREFIX + str);
                com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
                return;
            }
            l(wVarW, jSONObject, 15, 11, BaseConstants.MARKET_PREFIX + str);
            com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
            return;
        }
        l(wVarW, jSONObject, 15, 11, BaseConstants.MARKET_PREFIX + str);
        com.byazt.j.hp.hp(hp(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), wVarW, true);
    }

    private static Intent hp(Context context, com.byazt.zv.hp hpVar, String str, int i2, String str2) {
        if (!hpVar.jx() || hpVar.cx() == null || hpVar.cx().getDownloadMode() != 2 || hpVar.n() == null || w.hp(hpVar).hp("app_link_market_open_add_info", 0) != 1) {
            return null;
        }
        String strJx = com.byazt.t.q.jx(hpVar.n());
        String strJ = com.byazt.t.q.j(hpVar.n());
        Intent intent = new Intent();
        intent.setClassName(str, AdBaseConstants.MARKET_OPEN_BRIDGE_ACTIVITY);
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        if (TextUtils.isEmpty(strJx) || resolveInfoResolveActivity == null) {
            return null;
        }
        intent.putExtra("click_id", strJx);
        if (!(context instanceof Activity)) {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (!TextUtils.isEmpty(strJ)) {
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_EXTRA, strJ);
        }
        if (i2 == 2 && !TextUtils.isEmpty(str2)) {
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str2);
        }
        return intent;
    }
}
