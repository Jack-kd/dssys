package com.byazt.xci;

import android.text.TextUtils;
import com.anythink.core.common.f.s;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1361})
/* loaded from: classes3.dex */
public class df {
    public com.byazt.tw.j hp;
    public com.byazt.tw.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.tw.j f27225l;

    public df() {
    }

    public static boolean a(mp mpVar) {
        return mpVar != null && mpVar.qe() == 1 && com.byazt.jz.d.w() && mpVar.eq() == 1 && u(mpVar) != null;
    }

    public static int e(mp mpVar) {
        if (ec(mpVar) == null) {
            return TTAdConstant.VIDEO_INFO_CODE;
        }
        if (TextUtils.isEmpty(hp(mpVar))) {
            return TTAdConstant.VIDEO_URL_CODE;
        }
        if (TextUtils.isEmpty(l(mpVar))) {
            return TTAdConstant.VIDEO_COVER_URL_CODE;
        }
        return 200;
    }

    public static double eb(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return 0.0d;
        }
        if (com.byazt.we.hp.hp(mpVar)) {
            int iL = ms.l(mpVar);
            com.byazt.jt.l lVarDb = mpVar.db();
            if (lVarDb != null && lVarDb.sz() == 9) {
                iL *= 2;
            }
            return iL;
        }
        if (com.byazt.dnb.jl.hp(mpVar)) {
            return ((int) xs(mpVar).a()) * (xs(mpVar).eb() + 1);
        }
        com.byazt.tw.j jVar = dfVarEc.hp;
        if (jVar == null) {
            return 0.0d;
        }
        return jVar.getVideo_duration();
    }

    private static df ec(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.me();
    }

    public static boolean gu(mp mpVar) {
        com.byazt.tw.j jVar;
        df dfVarEc = ec(mpVar);
        return (dfVarEc == null || (jVar = dfVarEc.hp) == null || jVar.getFallbackEndCardJudge() != 1) ? false : true;
    }

    public static int j(mp mpVar) {
        com.byazt.tw.j jVar;
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null || (jVar = dfVarEc.hp) == null) {
            return 0;
        }
        return jVar.getCover_width();
    }

    public static boolean jl(mp mpVar) {
        df dfVarEc = ec(mpVar);
        return (dfVarEc == null || dfVarEc.jx == null) ? false : true;
    }

    public static int jx(mp mpVar) {
        com.byazt.tw.j jVar;
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null || (jVar = dfVarEc.hp) == null) {
            return 0;
        }
        return jVar.getCover_height();
    }

    public static com.byazt.tw.j k(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return null;
        }
        com.byazt.tw.j jVar = new com.byazt.tw.j();
        com.byazt.tw.j jVar2 = dfVarEc.hp;
        if (jVar2 != null) {
            jVar.setCover_height(jVar2.getCover_height());
            jVar.setCover_width(dfVarEc.hp.getCover_width());
            jVar.setResolution(dfVarEc.hp.getResolution());
            jVar.setSize(dfVarEc.hp.getSize());
            jVar.setVideo_duration(dfVarEc.hp.getVideo_duration());
            jVar.setCover_url(dfVarEc.hp.getCover_url());
            jVar.setVideo_url(dfVarEc.hp.getVideo_url());
            jVar.setEndcard(dfVarEc.hp.getEndcard());
            jVar.setFileHash(dfVarEc.hp.getFileHash());
            jVar.setFallbackEndCardJudge(dfVarEc.hp.getFallbackEndCardJudge());
            jVar.setVideoPreloadSize(dfVarEc.hp.getVideoPreloadSize());
            jVar.setRewardVideoCachedType(dfVarEc.hp.getRewardVideoCachedType());
            jVar.setExecuteCachedType(dfVarEc.hp.getExecuteCachedType());
            jVar.setPlay_speed_ratio(dfVarEc.hp.getPlay_speed_ratio());
            jVar.setStart(dfVarEc.hp.getStart());
        }
        if (com.byazt.we.hp.hp(mpVar)) {
            jVar.setCover_url(ms.s(mpVar));
            jVar.setVideo_url(ms.eb(mpVar));
            jVar.setFileHash(com.byazt.qm.hp.hp(ms.eb(mpVar)));
            jVar.setSize(-1L);
            jVar.setVideo_duration(ms.l(mpVar));
            jVar.setVideoPreloadSize(0);
            jVar.setRewardVideoCachedType(1);
        }
        if (com.byazt.dnb.jl.hp(mpVar)) {
            jVar.setVideo_url(dfVarEc.jx.w());
            jVar.setRewardVideoCachedType(0);
            jVar.setVideoPreloadSize(0);
            jVar.setFileHash(dfVarEc.jx.l());
            jVar.setSize(dfVarEc.jx.jx());
            jVar.setStart(dfVarEc.jx.j());
            jVar.setVideo_duration(dfVarEc.jx.a() * (dfVarEc.jx.eb() + 1));
        }
        return jVar;
    }

    public static String l(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return "";
        }
        if (com.byazt.we.hp.hp(mpVar)) {
            return ms.s(mpVar);
        }
        com.byazt.tw.j jVar = dfVarEc.hp;
        return jVar == null ? "" : jVar.getCover_url();
    }

    public static String q(mp mpVar) {
        com.byazt.tw.j jVar;
        df dfVarEc = ec(mpVar);
        return (dfVarEc == null || (jVar = dfVarEc.hp) == null) ? "" : jVar.getEndcard();
    }

    public static String s(mp mpVar) {
        df dfVarEc = ec(mpVar);
        return dfVarEc == null ? "" : com.byazt.we.hp.hp(mpVar) ? com.byazt.qm.hp.hp(ms.eb(mpVar)) : com.byazt.dnb.jl.hp(mpVar) ? xs(mpVar).l() : dfVarEc.hp.getFileHash();
    }

    public static com.byazt.tw.j u(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return null;
        }
        return dfVarEc.f27225l;
    }

    public static com.byazt.tw.j v(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return null;
        }
        com.byazt.tw.j jVar = dfVarEc.hp;
        if (jVar != null) {
            return jVar;
        }
        if (com.byazt.dnb.jl.hp(mpVar) && hd.l(mpVar) == 3) {
            return jVar;
        }
        if (!com.byazt.dnb.jl.hp(mpVar)) {
            return dfVarEc.hp;
        }
        com.byazt.tw.j jVar2 = new com.byazt.tw.j();
        if (com.byazt.dnb.jl.hp(mpVar)) {
            jVar2.setVideo_url(dfVarEc.jx.w());
            jVar2.setRewardVideoCachedType(0);
            jVar2.setVideoPreloadSize(0);
            jVar2.setFileHash(dfVarEc.jx.l());
            jVar2.setSize(dfVarEc.jx.jx());
            jVar2.setVideo_duration(dfVarEc.jx.a() * (dfVarEc.jx.eb() + 1));
        }
        dfVarEc.hp = jVar2;
        return jVar2;
    }

    public static com.byazt.tw.a vv(mp mpVar) {
        df dfVarMe;
        com.byazt.tw.a aVarHp = hp(4, mpVar);
        aVarHp.setAudio(true);
        if (mpVar != null && (dfVarMe = mpVar.me()) != null) {
            com.byazt.um.w currentVideoInfo = aVarHp.getCurrentVideoInfo();
            com.byazt.tw.hp hpVar = dfVarMe.jx;
            if (hpVar != null && currentVideoInfo != null) {
                currentVideoInfo.setVideo_url(hpVar.w());
                currentVideoInfo.setRewardVideoCachedType(0);
                currentVideoInfo.setVideoPreloadSize(0);
                currentVideoInfo.setFileHash(dfVarMe.jx.l());
                currentVideoInfo.setSize(dfVarMe.jx.jx());
                currentVideoInfo.setStart(dfVarMe.jx.j());
                currentVideoInfo.setVideo_duration(dfVarMe.jx.a() * (dfVarMe.jx.eb() + 1));
            }
        }
        return aVarHp;
    }

    public static int[] w(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        if (mpVar.hy() == 166 && ms.hp(mpVar)) {
            return new int[]{ms.jl(mpVar), ms.zy(mpVar)};
        }
        com.byazt.tw.j jVarU = u(mpVar);
        if (a(mpVar) && jVarU != null) {
            return jVarU.getWidthAndHeight();
        }
        com.byazt.tw.j jVarV = v(mpVar);
        if (jVarV != null) {
            return jVarV.getWidthAndHeight();
        }
        return null;
    }

    public static com.byazt.tw.hp xs(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return null;
        }
        return dfVarEc.jx;
    }

    public static boolean zy(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return false;
        }
        return dfVarEc.hp.isExecCallbackWhenFail();
    }

    public void hp(JSONObject jSONObject) {
        try {
            com.byazt.tw.j jVar = this.hp;
            if (jVar != null) {
                jSONObject.put("video", jVar.toJsonObj());
            }
        } catch (JSONException unused) {
        }
        try {
            com.byazt.tw.j jVar2 = this.f27225l;
            if (jVar2 != null) {
                jSONObject.put("h265_video", jVar2.toJsonObj());
            }
        } catch (JSONException unused2) {
        }
        try {
            com.byazt.tw.hp hpVar = this.jx;
            if (hpVar != null) {
                jSONObject.put(MediaFormat.KEY_AUDIO, hpVar.hp());
            }
        } catch (JSONException unused3) {
        }
    }

    public df(JSONObject jSONObject) {
        df dfVar;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("video");
        if (jSONObjectOptJSONObject != null) {
            com.byazt.tw.j jVar = new com.byazt.tw.j();
            jVar.setCover_height(jSONObjectOptJSONObject.optInt("cover_height"));
            jVar.setCover_width(jSONObjectOptJSONObject.optInt("cover_width"));
            jVar.setResolution(jSONObjectOptJSONObject.optString(bv.f48925z));
            str4 = "cover_width";
            jVar.setSize(jSONObjectOptJSONObject.optLong("size"));
            jVar.setVideo_duration(jSONObjectOptJSONObject.optDouble("video_duration"));
            jVar.setCover_url(jSONObjectOptJSONObject.optString("cover_url"));
            jVar.setVideo_url(jSONObjectOptJSONObject.optString(s.a.f3400b));
            jVar.setEndcard(jSONObjectOptJSONObject.optString("endcard"));
            jVar.setFileHash(jSONObjectOptJSONObject.optString("file_hash"));
            str = "endcard";
            str2 = s.a.f3400b;
            jVar.setPlay_speed_ratio((float) jSONObjectOptJSONObject.optDouble("play_speed_ratio", -1.0d));
            jVar.setFallbackEndCardJudge(jSONObjectOptJSONObject.optInt("fallback_endcard_judge", 0));
            jVar.setVideoPreloadSize(jSONObjectOptJSONObject.optInt("video_preload_size", 307200));
            str5 = "reward_video_cached_type";
            jVar.setRewardVideoCachedType(jSONObjectOptJSONObject.optInt(str5, 0));
            jVar.setExecuteCachedType(jSONObjectOptJSONObject.optInt("execute_cached_type", 0));
            str3 = bv.f48925z;
            jVar.setStart(jSONObjectOptJSONObject.optDouble("start", -1.0d));
            dfVar = this;
            dfVar.hp = jVar;
        } else {
            dfVar = this;
            str = "endcard";
            str2 = s.a.f3400b;
            str3 = bv.f48925z;
            str4 = "cover_width";
            str5 = "reward_video_cached_type";
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("h265_video");
        if (jSONObjectOptJSONObject2 != null) {
            com.byazt.tw.j jVar2 = new com.byazt.tw.j();
            jVar2.setCover_height(jSONObjectOptJSONObject2.optInt("cover_height"));
            jVar2.setCover_width(jSONObjectOptJSONObject2.optInt(str4));
            jVar2.setResolution(jSONObjectOptJSONObject2.optString(str3));
            jVar2.setSize(jSONObjectOptJSONObject2.optLong("size"));
            jVar2.setVideo_duration(jSONObjectOptJSONObject2.optDouble("video_duration"));
            jVar2.setCover_url(jSONObjectOptJSONObject2.optString("cover_url"));
            jVar2.setVideo_url(jSONObjectOptJSONObject2.optString(str2));
            jVar2.setEndcard(jSONObjectOptJSONObject2.optString(str));
            jVar2.setFileHash(jSONObjectOptJSONObject2.optString("file_hash"));
            jVar2.setPlay_speed_ratio((float) jSONObjectOptJSONObject2.optDouble("play_speed_ratio", -1.0d));
            jVar2.setFallbackEndCardJudge(jSONObjectOptJSONObject2.optInt("fallback_endcard_judge", 0));
            jVar2.setVideoPreloadSize(jSONObjectOptJSONObject2.optInt("video_preload_size", 307200));
            jVar2.setRewardVideoCachedType(jSONObjectOptJSONObject2.optInt(str5, 0));
            jVar2.setExecuteCachedType(jSONObjectOptJSONObject2.optInt("execute_cached_type", 0));
            jVar2.setStart(jSONObjectOptJSONObject2.optDouble("start", -1.0d));
            dfVar.f27225l = jVar2;
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(MediaFormat.KEY_AUDIO);
        if (jSONObjectOptJSONObject3 != null) {
            com.byazt.tw.hp hpVar = new com.byazt.tw.hp();
            hpVar.l(jSONObjectOptJSONObject3.optString("audio_url"));
            hpVar.hp(jSONObjectOptJSONObject3.optInt("reward_audio_cached_type", Integer.MIN_VALUE));
            hpVar.l(jSONObjectOptJSONObject3.optLong("audio_preload_size", -2147483648L));
            hpVar.hp(jSONObjectOptJSONObject3.optLong("size", -2147483648L));
            hpVar.hp(jSONObjectOptJSONObject3.optString("file_hash"));
            hpVar.l(jSONObjectOptJSONObject3.optDouble("audio_duration", -2.147483648E9d));
            hpVar.hp(jSONObjectOptJSONObject3.optDouble("start", -1.0d));
            hpVar.l(jSONObjectOptJSONObject3.optInt("repeat_count", 0));
            dfVar.jx = hpVar;
        }
    }

    public void hp(com.byazt.tw.j jVar) {
        this.hp = jVar;
    }

    public static String hp(mp mpVar) {
        df dfVarEc = ec(mpVar);
        if (dfVarEc == null) {
            return "";
        }
        if (com.byazt.we.hp.hp(mpVar)) {
            return ms.eb(mpVar);
        }
        if (com.byazt.dnb.jl.hp(mpVar)) {
            return xs(mpVar).w();
        }
        com.byazt.tw.j jVar = dfVarEc.hp;
        if (jVar == null) {
            return "";
        }
        return jVar.getVideo_url();
    }

    public static com.byazt.tw.a hp(int i2, mp mpVar) {
        String rewardFullCacheDir;
        if (mpVar.qe() == 1 && !com.byazt.jz.d.w()) {
            mpVar.rv(0);
        }
        if (com.byazt.dnb.jl.hp(mpVar)) {
            mpVar.rv(0);
        }
        if (i2 == 1) {
            rewardFullCacheDir = com.byazt.dnb.gu.hp(mpVar.qe()).getRewardFullCacheDir();
        } else if (i2 == 2) {
            rewardFullCacheDir = com.byazt.dnb.gu.hp(mpVar.qe()).getBrandCacheDir();
        } else if (i2 == 3) {
            rewardFullCacheDir = com.byazt.dnb.gu.hp(mpVar.qe()).getSplashCacheDir();
        } else if (i2 != 4) {
            rewardFullCacheDir = "";
        } else {
            rewardFullCacheDir = com.byazt.dnb.gu.hp(mpVar.qe()).getOtherCacheDir();
        }
        com.byazt.tw.a aVar = new com.byazt.tw.a(rewardFullCacheDir, k(mpVar), u(mpVar), mpVar.qe(), mpVar.eq());
        aVar.setVideoSkipResult(mpVar.yu());
        return aVar;
    }
}
