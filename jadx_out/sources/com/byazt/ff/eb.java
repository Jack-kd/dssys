package com.byazt.ff;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.po.v;
import com.byazt.ymw.e;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 94})
/* loaded from: classes2.dex */
public class eb implements j {
    public jx hp;

    public eb(jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.ff.j
    public boolean hp(final com.byazt.hy.hp hpVar) {
        if (!this.hp.jx()) {
            return false;
        }
        long j2 = this.hp.j();
        final com.byazt.gu.l lVarHp = v.hp();
        if (lVarHp == null || !hp(1440L, this.hp.eb())) {
            return false;
        }
        e.hp().postDelayed(new Runnable() { // from class: com.byazt.ff.eb.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                HashMap map = new HashMap();
                map.put("app_name", hpVar.hp());
                map.put("app_icon_url", hpVar.l());
                map.put("event_id", Integer.valueOf(hpVar.j()));
                map.put("package_name", hpVar.jx());
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt(f.a.f3244d, hpVar.s());
                    jSONObject.putOpt("log_extra", hpVar.w());
                    jSONObject.putOpt("tag", hpVar.eb());
                    jSONObject.putOpt("download_url", hpVar.e());
                    jSONObject.putOpt("save_path", hpVar.q());
                } catch (Exception unused) {
                }
                boolean zL = ky.l(hpVar.jx());
                map.put("event_token", com.byazt.ymw.hp.l(jSONObject.toString()));
                lVarHp.hp(zL ? 102 : 101, map);
            }
        }, j2 * 1000);
        return true;
    }

    @Override // com.byazt.ff.j
    public boolean l(com.byazt.hy.hp hpVar) {
        return false;
    }

    public boolean hp(long j2, int i2) throws NumberFormatException {
        try {
            Long lValueOf = -1L;
            try {
                lValueOf = Long.valueOf(j2 * 60000);
            } catch (Exception e2) {
                e2.getMessage();
                i2 = -1;
            }
            if (lValueOf.longValue() >= 0 && i2 >= 0 && lValueOf.longValue() != 0 && i2 != 0) {
                String strHp = hp();
                StringBuilder sb = new StringBuilder();
                long jCurrentTimeMillis = System.currentTimeMillis();
                boolean z2 = true;
                if (TextUtils.isEmpty(strHp)) {
                    sb.append(jCurrentTimeMillis);
                    hp(sb.toString());
                    return true;
                }
                String[] strArrSplit = strHp.split("_");
                int length = strArrSplit.length;
                if (length < i2) {
                    Long.parseLong(strArrSplit[length - 1]);
                    for (String str : strArrSplit) {
                        sb.append(str);
                        sb.append("_");
                    }
                    sb.append(jCurrentTimeMillis);
                    hp(sb.toString());
                    return true;
                }
                int i3 = length - i2;
                if (jCurrentTimeMillis - Long.parseLong(strArrSplit[i3]) <= lValueOf.longValue()) {
                    z2 = false;
                }
                for (int i4 = i3; i4 < length; i4++) {
                    String str2 = strArrSplit[i4];
                    if (i4 != i3 && !TextUtils.isEmpty(str2)) {
                        sb.append(str2);
                        sb.append("_");
                    }
                }
                sb.append(jCurrentTimeMillis);
                hp(sb.toString());
                return z2;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static String hp() {
        return com.byazt.jz.l.hp().get("notification_b", "");
    }

    public static void hp(String str) {
        com.byazt.jz.l.hp().put("notification_b", str);
    }
}
