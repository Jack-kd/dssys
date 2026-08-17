package com.byazt.dj;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Looper;
import android.os.Process;
import com.byazt.kw.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1136, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static JSONObject hp(boolean z2) throws JSONException {
        StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("thread_number", 1);
        jSONObject.put("mainStackFromTrace", k.hp(stackTrace));
        return jSONObject;
    }

    public static String hp(Context context, int i2) {
        ActivityManager.ProcessErrorStateInfo processErrorStateInfoHp = com.byazt.kw.hp.hp(context, i2);
        if (processErrorStateInfoHp == null || Process.myPid() != processErrorStateInfoHp.pid) {
            return null;
        }
        return l.hp(processErrorStateInfoHp);
    }
}
