package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 94})
/* loaded from: classes3.dex */
public class eb {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public List<String> f27260l;

    public eb(Map<String, Object> map) {
        this.hp = "";
        this.f27260l = new ArrayList();
        try {
            this.hp = (String) map.get("auto_test_param");
            String str = (String) map.get("auto_test_hosts");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            this.f27260l = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                this.f27260l.add(jSONArray.optString(i2));
            }
        } catch (Exception unused) {
        }
    }

    public String hp() {
        return this.hp;
    }

    public List<String> l() {
        return this.f27260l;
    }
}
