package com.byazt.u;

import android.text.TextUtils;
import android.util.Log;
import com.byazt.t.jl;
import com.byazt.wm.a;
import com.byazt.y.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.hi.hp {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF, 219})
    public static class hp {
        public static jx hp = new jx();
    }

    public static jx hp() {
        return hp.hp;
    }

    public void l(String str) throws JSONException {
        l(true, str);
    }

    @Override // com.byazt.hi.hp
    public void hp(Throwable th, String str) throws JSONException {
        hp(true, th, str);
    }

    public void l(boolean z2, String str) throws JSONException {
        if (l()) {
            return;
        }
        if (z2) {
            l(new RuntimeException(str));
        }
        JSONObject jSONObject = new JSONObject();
        zy.hp(jSONObject, "msg", str);
        zy.hp(jSONObject, "stack", hp(new Throwable()));
        jl.s();
    }

    public void hp(boolean z2, Throwable th, String str) throws JSONException {
        if (l()) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        if (z2) {
            l(th);
        }
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            str = th.getMessage();
        }
        zy.hp(jSONObject, "msg", str);
        zy.hp(jSONObject, "stack", Log.getStackTraceString(th));
        jl.s();
    }

    private void l(Throwable th) {
        if (a.l(jl.getContext())) {
            throw new com.byazt.u.hp(th);
        }
    }

    private boolean l() {
        return jl.q().optInt("enable_monitor", 1) != 1;
    }

    public void hp(String str) throws JSONException {
        hp(true, str);
    }

    public void hp(boolean z2, String str) throws JSONException {
        if (l()) {
            return;
        }
        if (z2) {
            l(new RuntimeException(str));
        }
        JSONObject jSONObject = new JSONObject();
        zy.hp(jSONObject, "msg", str);
        zy.hp(jSONObject, "stack", hp(new Throwable()));
        jl.s();
    }

    public static String hp(Throwable th) {
        try {
            return Log.getStackTraceString(th);
        } catch (Exception unused) {
            return null;
        }
    }
}
