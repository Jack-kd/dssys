package com.byazt.ri;

import com.byazt.hq.o;
import com.byazt.jz.s;
import com.byazt.uhg.k;
import com.byazt.uhg.q;
import com.byazt.uhg.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2091, 38})
/* loaded from: classes3.dex */
public class j {
    public static Map<String, Object> hp;

    @com.byazt.kj.hp(hp = {0, 1, 2091, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp implements q {
        private k l(q.hp hpVar) {
            try {
                Field field = hpVar.getClass().getDeclaredFields()[0];
                field.setAccessible(true);
                Object obj = field.get(hpVar);
                Field declaredField = obj.getClass().getDeclaredField("request");
                declaredField.setAccessible(true);
                o oVar = (o) declaredField.get(obj);
                declaredField.set(obj, oVar.a().hp(String.valueOf(hpVar.hp().l().eb().l("b4oil169.fn.bytedance.net").hp("http").l())).l("case-id", (String) j.hp.get("case_id")).hp());
                return hpVar.hp();
            } catch (Throwable unused) {
                return hpVar.hp();
            }
        }

        @Override // com.byazt.uhg.q
        public u hp(q.hp hpVar) throws IOException {
            k kVarHp = hpVar.hp();
            String string = kVarHp.l().toString();
            if (string.contains("/api/ad/union/mediation/config") || string.contains("/api/ad/union/mediation/exchange")) {
                kVarHp = l(hpVar);
            }
            return hpVar.hp(kVarHp);
        }
    }

    public static void hp(Map map) {
        hp = map;
    }

    public static boolean hp() {
        return s.u().rz();
    }
}
