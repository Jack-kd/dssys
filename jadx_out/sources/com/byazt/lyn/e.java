package com.byazt.lyn;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 45})
/* loaded from: classes3.dex */
public class e {
    public static final String hp = "TTMediationSDK_" + e.class.getSimpleName();
    public com.byazt.fgq.jx<q> jx;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, q> f22823l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 773})
    public static class hp {
        public static e hp = new e();
    }

    public static e hp() {
        return hp.hp;
    }

    public q l(String str) {
        if (this.jx == null) {
            return null;
        }
        Map<String, q> map = this.f22823l;
        q qVar = map != null ? map.get(str) : null;
        if (qVar != null) {
            return qVar;
        }
        q qVarQuery = this.jx.query(str);
        if (qVarQuery != null) {
            this.f22823l.put(qVarQuery.l(), qVarQuery);
        }
        return qVarQuery;
    }

    private e() {
        this.jx = new com.byazt.fgq.j(com.byazt.di.l.getContext());
        this.f22823l = new ConcurrentHashMap();
    }

    public void hp(String str, long j2) {
        if (this.jx != null) {
            Map<String, q> map = this.f22823l;
            q qVar = map != null ? map.get(str) : null;
            if (qVar != null) {
                qVar.hp(j2);
            }
            this.jx.hp(str, j2);
        }
    }

    public q l(String str, String str2) {
        q qVar = null;
        if (this.jx == null) {
            return null;
        }
        Map<String, q> map = this.f22823l;
        if (map != null) {
            qVar = map.get(str + "_" + str2);
        }
        if (qVar != null) {
            return qVar;
        }
        q qVarQuery = this.jx.query(str, str2);
        if (qVarQuery != null) {
            this.f22823l.put(qVarQuery.j(), qVarQuery);
        }
        return qVarQuery;
    }

    public void hp(String str, String str2, long j2) {
        q qVar;
        if (this.jx != null) {
            Map<String, q> map = this.f22823l;
            if (map != null) {
                qVar = map.get(str + "_" + str2);
            } else {
                qVar = null;
            }
            if (qVar != null) {
                qVar.hp(j2);
            }
            this.jx.hp(str, str2, j2);
        }
    }

    public void hp(String str) {
        if (this.jx != null) {
            Map<String, q> map = this.f22823l;
            if (map != null) {
                map.remove(str);
            }
            this.jx.delete(str);
        }
    }

    public void hp(String str, String str2) {
        if (this.jx != null) {
            Map<String, q> map = this.f22823l;
            if (map != null) {
                map.remove(str + "_" + str2);
            }
            this.jx.delete(str, str2);
        }
    }

    public void hp(q qVar) {
        if (this.jx == null || TextUtils.isEmpty(qVar.e())) {
            return;
        }
        Map<String, q> map = this.f22823l;
        if (map != null) {
            map.put(qVar.j(), qVar);
        }
        this.jx.l(qVar);
    }
}
