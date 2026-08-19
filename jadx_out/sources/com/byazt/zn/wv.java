package com.byazt.zn;

import android.util.SparseArray;
import com.byazt.jt.l;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE})
/* loaded from: classes3.dex */
public class wv {
    public static com.byazt.jt.l hp(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            l.hp hpVar = new l.hp(str2);
            hpVar.hp(jSONObject.optString("mAdId", ""));
            hpVar.l(jSONObject.optString("mCreativeId", ""));
            hpVar.jx(jSONObject.optString("mExt", ""));
            hpVar.j(jSONObject.optString("mCodeId", ""));
            hpVar.q(jSONObject.optString("mUserData"));
            hpVar.hp(jSONObject.optBoolean("mIsAutoPlay", true));
            int iOptInt = jSONObject.optInt("mImgAcceptedWidth", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
            hpVar.l(jSONObject.optInt("mImgAcceptedHeight", MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME));
            hpVar.hp(iOptInt);
            double dOptDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double dOptDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            hpVar.l(Double.valueOf(dOptDouble).floatValue());
            hpVar.hp(Double.valueOf(dOptDouble2).floatValue());
            hpVar.l(jSONObject.optBoolean("mSupportDeepLink", true));
            hpVar.jx(jSONObject.optInt("mAdCount", 1));
            hpVar.w(jSONObject.optString("mMediaExtra", ""));
            hpVar.a(jSONObject.optString("mUserID", ""));
            hpVar.j(jSONObject.optInt("mOrientation", 2));
            hpVar.eb(jSONObject.optInt("mAdType", 0));
            hpVar.w(jSONObject.optInt("mNativeAdType"));
            hpVar.hp(ky.k(jSONObject.optString("mExternalABVid", "")));
            hpVar.a(jSONObject.optInt("mAdLoadSeq", 0));
            hpVar.eb(jSONObject.optString("mPrimeRit", ""));
            hpVar.s(jSONObject.optString("mBidAdm"));
            hpVar.s(jSONObject.optInt("mRewardAmount", 0));
            hpVar.e(jSONObject.optString("mRewardName", ""));
            return hpVar.hp();
        } catch (Exception unused) {
            return null;
        }
    }

    public static final l.hp l(com.byazt.jt.l lVar) {
        return new l.hp(lVar);
    }

    public static JSONObject hp(com.byazt.jt.l lVar, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mAdId", lVar.hp());
            jSONObject.put("mCreativeId", lVar.l());
            jSONObject.put("mExt", lVar.jx());
            jSONObject.put("mCodeId", str);
            jSONObject.put("mUserData", lVar.ns());
            jSONObject.put("mIsAutoPlay", lVar.w());
            jSONObject.put("mImgAcceptedWidth", lVar.a());
            jSONObject.put("mImgAcceptedHeight", lVar.eb());
            jSONObject.put("mExpressViewAcceptedWidth", lVar.s());
            jSONObject.put("mExpressViewAcceptedHeight", lVar.q());
            jSONObject.put("mSupportDeepLink", lVar.e());
            jSONObject.put("mSupportRenderControl", lVar.gu());
            if (com.byazt.jz.d.f21856j >= 5900) {
                jSONObject.put("mSupportIconStyle", lVar.o());
            }
            jSONObject.put("mAdCount", lVar.jl());
            jSONObject.put("mMediaExtra", lVar.zy());
            jSONObject.put("mUserID", lVar.k());
            jSONObject.put("mOrientation", lVar.v());
            jSONObject.put("mAdType", lVar.sz());
            jSONObject.put("mNativeAdType", lVar.u());
            jSONObject.put("mExternalABVid", ky.hp(lVar.xs()));
            jSONObject.put("mAdLoadSeq", lVar.vv());
            jSONObject.put("mPrimeRit", lVar.ec());
            jSONObject.put("mBidAdm", lVar.n());
            jSONObject.put("mRewardAmount", lVar.di());
            jSONObject.put("mRewardName", lVar.b());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject hp(com.byazt.jt.l lVar) {
        return hp(lVar, lVar.j());
    }

    public static com.byazt.jt.l hp(int i2, String str, float f2, float f3, mp mpVar) {
        return hp(mpVar == null ? null : mpVar.xq()).j(str).eb(i2).l(f3).hp(f2).hp();
    }

    public static com.byazt.jt.l hp(int i2, String str) {
        return hp(str).eb(i2).hp();
    }

    public static com.byazt.jt.l hp(int i2, PluginValueSet pluginValueSet) {
        com.byazt.jt.l lVar = new com.byazt.jt.l(pluginValueSet != null ? pluginValueSet.sparseArray() : new SparseArray<>(), com.byazt.el.hp.l());
        l.hp hpVar = new l.hp(lVar);
        float fS = lVar.s();
        float fQ = lVar.q();
        if (fS <= 0.0f) {
            fS = xh.j(com.byazt.jz.sz.getContext(), lVar.a());
            fQ = xh.j(com.byazt.jz.sz.getContext(), lVar.eb());
        }
        if (fS > 0.0f || fQ > 0.0f) {
            int iJ = xh.j(com.byazt.jz.sz.getContext(), xh.w(com.byazt.jz.sz.getContext()));
            int iJ2 = xh.j(com.byazt.jz.sz.getContext(), xh.j(com.byazt.jz.sz.getContext()));
            int iMax = Math.max(iJ, iJ2);
            int iMin = Math.min(iJ, iJ2);
            if (fS > fQ) {
                if (iJ2 > 0 && fS > iMax * 1.3d) {
                    fS = iMax;
                    fQ = iMin;
                }
            } else if (iJ > 0 && fQ > iMax * 1.3d) {
                fS = iMin;
                fQ = iMax;
            }
        }
        hpVar.hp(fS).l(fQ);
        return new com.byazt.xci.jx(l(hpVar.hp()).eb(i2).hp());
    }

    private static final l.hp hp(String str) {
        return new l.hp(str).jx(1).l(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME).hp(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK).l(true).a("defaultUser").j(2).hp(true);
    }

    public static boolean hp(JSONObject jSONObject, String str, boolean z2) {
        if (jSONObject.has(str)) {
            return jSONObject.optBoolean(str, z2);
        }
        return ((Boolean) com.byazt.jz.sz.l().hp(str, (String) Boolean.valueOf(z2))).booleanValue();
    }

    public static long hp(JSONObject jSONObject, String str, long j2) {
        if (jSONObject.has(str)) {
            return jSONObject.optLong(str, j2);
        }
        return ((Long) com.byazt.jz.sz.l().hp(str, (String) Long.valueOf(j2))).longValue();
    }

    public static int hp(JSONObject jSONObject, String str, int i2) {
        if (jSONObject.has(str)) {
            return jSONObject.optInt(str, i2);
        }
        return ((Integer) com.byazt.jz.sz.l().hp(str, (String) Integer.valueOf(i2))).intValue();
    }
}
