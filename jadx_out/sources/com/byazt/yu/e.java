package com.byazt.yu;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 45})
/* loaded from: classes3.dex */
public class e extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final Context f28283w;

    public e(Context context) {
        super(true, false);
        this.f28283w = context;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException {
        String str;
        int iEb = com.byazt.gt.hp.eb();
        switch (iEb) {
            case 120:
                str = "ldpi";
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA /* 240 */:
                str = "hdpi";
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN /* 280 */:
            case 300:
            case MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME /* 320 */:
                str = "xhdpi";
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO /* 340 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL /* 360 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL /* 400 */:
            case 420:
            case 440:
            case 480:
                str = "xxhdpi";
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUX_NONBLOCK_READ /* 560 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK /* 640 */:
                str = "xxxhdpi";
                break;
            default:
                str = "mdpi";
                break;
        }
        jSONObject.put("density_dpi", iEb);
        jSONObject.put("display_density", str);
        jSONObject.put(bv.f48925z, com.byazt.gt.hp.s() + "x" + com.byazt.gt.hp.q());
        return true;
    }
}
