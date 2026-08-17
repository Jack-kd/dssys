package com.byazt.yx;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import com.byazt.jkd.q;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.nra.eb;
import com.byazt.nra.j;
import com.byazt.nra.w;
import com.byazt.xci.as;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_PATH_INFO, 34})
/* loaded from: classes3.dex */
public class l {
    public final j hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_PATH_INFO, 123})
    public static final class hp {
        public static final l hp = new l();
    }

    public static final l hp() {
        return hp.hp;
    }

    public int a() {
        return com.byazt.lca.j.hp().jx();
    }

    public String eb() {
        return this.hp.eb();
    }

    public void j() {
        this.hp.j();
    }

    public int jx() {
        return this.hp.l();
    }

    public boolean l(mp mpVar) {
        if (mpVar == null || TextUtils.isEmpty(mpVar.e())) {
            return false;
        }
        return hp(mpVar.e(), mpVar.w());
    }

    public long q() {
        return this.hp.jx();
    }

    public JSONObject s() {
        return this.hp.s();
    }

    public int w() {
        return this.hp.w();
    }

    private l() {
        if (!q.hp()) {
            this.hp = new com.byazt.nra.l();
            return;
        }
        if (d.eb) {
            this.hp = new eb();
        } else if (d.s()) {
            this.hp = new w();
        } else {
            this.hp = new com.byazt.nra.l();
        }
    }

    public boolean a(mp mpVar) {
        return mpVar != null && mpVar.jd() == 2;
    }

    public void hp(Function<SparseArray<Object>, Object> function) {
        this.hp.hp(function);
    }

    public void j(final mp mpVar) {
        if (mpVar == null) {
            return;
        }
        w(mpVar);
        if (TextUtils.isEmpty(mpVar.e())) {
            return;
        }
        int iJx = com.byazt.lca.j.hp().jx() + 1;
        if (iJx > 100) {
            iJx = 100;
        }
        com.byazt.lca.j.hp().hp(iJx);
        final int iJx2 = jx();
        final int iW = w();
        final long jElapsedRealtime = SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime();
        if (mpVar.w() == 1 && mpVar.qd() == 1) {
            com.byazt.lf.l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.yx.l.1
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(n.f36450m, mpVar.w_());
                        jSONObject.put("live_sdk_status", iJx2);
                        jSONObject.put("live_auth_status", iW);
                        jSONObject.put("app_start_time", jElapsedRealtime);
                        jSONObject.put("is_web", mpVar.s_());
                    } catch (Throwable unused) {
                    }
                    return com.byazt.jlb.l.l().hp("saas_miss").l(jSONObject.toString());
                }
            }, "saas_miss", true);
        }
    }

    public int jx(mp mpVar) {
        if (sz.l().jv()) {
            return this.hp.l(mpVar);
        }
        return 0;
    }

    public void w(mp mpVar) {
        this.hp.jx(mpVar);
    }

    public int hp(Context context, com.byazt.yrp.q qVar, Map<String, Object> map) {
        if (context == null || qVar == null) {
            return 5;
        }
        return this.hp.hp(context, qVar, map);
    }

    public void l() {
        this.hp.hp();
    }

    public void hp(String str, boolean z2) {
        this.hp.hp(str, z2);
    }

    public int hp(com.byazt.yrp.q qVar, com.byazt.nra.jx jxVar, String str, Map<String, Object> map) {
        return this.hp.hp(qVar, jxVar, str, map);
    }

    public int hp(Context context, mp mpVar, Map<String, Object> map) {
        return this.hp.hp(context, mpVar, map);
    }

    public boolean hp(mp mpVar) {
        return this.hp.a_(mpVar);
    }

    public void hp(String str, mp mpVar, long j2) {
        this.hp.hp(str, mpVar, j2);
    }

    public boolean hp(String str, int i2) {
        return this.hp.hp(str, i2);
    }

    public void hp(View view, as asVar, Map<String, Object> map, Map<String, Object> map2) {
        Object tag;
        if (view == null || asVar == null || (tag = view.getTag(67108864)) == null || !(tag instanceof Integer)) {
            return;
        }
        int iIntValue = ((Integer) tag).intValue();
        int i2 = iIntValue & 255;
        int i3 = (iIntValue & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8;
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        if (i2 == 101 && !asVar.jx()) {
            i2 = 102;
        }
        map.put("live_saas_param_interaction_type", Integer.valueOf(i2));
        map2.put("click_saas_area", Integer.valueOf(i3));
    }

    public int hp(String str) {
        return this.hp.hp(str);
    }

    public int hp(com.byazt.cp.l lVar, boolean z2) {
        return this.hp.hp(lVar, z2);
    }

    public void hp(com.byazt.tn.j jVar) {
        this.hp.hp(jVar);
    }
}
