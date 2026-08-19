package com.byazt.yx;

import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_PATH_INFO, 30})
/* loaded from: classes3.dex */
public class jx {
    public static String hp(Uri uri, String str) {
        return (uri == null || !uri.isHierarchical() || str == null) ? "" : uri.getQueryParameter(str);
    }

    public static Uri hp(Uri uri, Map<String, String> map) {
        if (uri == null || map == null || map.size() <= 0) {
            return uri;
        }
        try {
            Uri.Builder builderBuildUpon = uri.buildUpon();
            for (String str : map.keySet()) {
                if (!TextUtils.isEmpty(str)) {
                    builderBuildUpon.appendQueryParameter(str, map.get(str));
                }
            }
            return builderBuildUpon.build();
        } catch (Exception unused) {
            return uri;
        }
    }
}
