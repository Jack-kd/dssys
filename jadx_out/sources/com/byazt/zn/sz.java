package com.byazt.zn;

import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz {
    public static void hp(final Uri uri, final com.byazt.jz.ud udVar) {
        if (udVar == null || !udVar.hp(uri)) {
            return;
        }
        try {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.zn.sz.1
                @Override // java.lang.Runnable
                public void run() throws JSONException, NumberFormatException {
                    udVar.l(uri);
                }
            });
        } catch (Exception unused) {
        }
    }

    public static void hp(final com.byazt.ikh.j jVar, final int i2, final boolean z2) {
        if (jVar == null) {
            return;
        }
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.zn.sz.2
            @Override // java.lang.Runnable
            public void run() {
                String userAgentString = jVar.getUserAgentString();
                if (TextUtils.isEmpty(userAgentString)) {
                    return;
                }
                StringBuilder sb = new StringBuilder(userAgentString);
                sb.append(" open_news open_news_u_s/");
                sb.append(i2);
                if (z2) {
                    sb.append(ServiceReference.DELIMITER);
                    sb.append(ky.s());
                }
                jVar.setUserAgentString(sb.toString());
            }
        });
    }
}
