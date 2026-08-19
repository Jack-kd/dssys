package com.byazt.bc;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.byazt.ik.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.live.base.api.ILiveHostContextParam;
import com.bytedance.android.live.base.api.ILiveInitCallback;
import com.bytedance.android.live.base.api.IOuterLiveService;
import com.bytedance.android.openliveplugin.LivePluginHelper;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 34})
/* loaded from: classes2.dex */
public class l {
    public static boolean hp(Context context, String str, ILiveHostContextParam.Builder builder, ILiveInitCallback iLiveInitCallback, boolean z2) throws JSONException {
        try {
            LivePluginHelper.initLive((Application) context, str, builder, iLiveInitCallback, z2);
            return true;
        } catch (Throwable th) {
            a.hp(th);
            jx.reportException("initLivePlugin", th);
            return false;
        }
    }

    public static boolean hp() {
        try {
            LivePluginHelper.initLiveCommerce();
            return true;
        } catch (Exception e2) {
            a.hp(e2);
            jx.reportException("initLiveCommerce", e2);
            return false;
        }
    }

    public static boolean hp(Context context, Bundle bundle) throws JSONException {
        if (context != null && bundle != null && bundle.containsKey("room_id")) {
            long j2 = bundle.getLong("room_id");
            try {
                IOuterLiveService liveRoomService = LivePluginHelper.getLiveRoomService();
                if (liveRoomService == null) {
                    return false;
                }
                liveRoomService.enterLiveRoom(context, j2, bundle);
                return true;
            } catch (Throwable th) {
                a.hp(th);
                jx.reportException("openLive", th);
            }
        }
        return false;
    }

    public static boolean hp(Context context, Uri uri) throws JSONException {
        if (context != null && uri != null) {
            try {
                IOuterLiveService liveRoomService = LivePluginHelper.getLiveRoomService();
                if (liveRoomService != null) {
                    return liveRoomService.handleSchema(context, uri);
                }
                return false;
            } catch (Throwable th) {
                a.hp(th);
                jx.reportException("handleScheme", th);
            }
        }
        return false;
    }
}
