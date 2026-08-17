package com.byazt.rk;

import android.text.TextUtils;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.pg.ns;
import com.byazt.tb.eb;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static String hp;

    /* renamed from: l, reason: collision with root package name */
    public static AtomicBoolean f25227l = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public static String f25228w = "tt_csj_node_line_app_exit";
    public static AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public static hp.l f25226j = new hp.l() { // from class: com.byazt.rk.w.1
        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
            if (s.u().nu()) {
                return;
            }
            w.hp(w.hp);
        }

        @Override // com.byazt.zn.hp.l
        public void onAppExit() {
            if (s.u().nu()) {
                return;
            }
            w.l(w.hp, 1);
        }

        @Override // com.byazt.zn.hp.l
        public void onAppForeground() {
            int i2;
            if (s.u().nu()) {
                return;
            }
            if (w.jx.get()) {
                w.jx.set(false);
                i2 = 1;
            } else {
                i2 = 2;
            }
            w.hp(w.hp, i2);
        }

        @Override // com.byazt.zn.hp.l
        public void onAppStart() {
            if (s.u().nu()) {
                return;
            }
            w.hp(2);
        }
    };

    public static void hp(int i2) {
        if (f25227l.get()) {
            return;
        }
        if (TextUtils.isEmpty(hp)) {
            hp = jx();
        }
        com.byazt.kt.a aVarHp = hp();
        aVarHp.l(hp, com.byazt.el.hp.j());
        aVarHp.hp(hp, new eb());
        hp(hp, i2 == 1 ? com.byazt.mb.jx.jx().hp() : System.currentTimeMillis(), i2);
        if (i2 == 1) {
            if (s.u().jx().l()) {
                hp(hp);
            } else {
                hp(hp, 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String jx() {
        /*
            java.lang.String r0 = "m_d_s"
            java.lang.Object r0 = com.byazt.ym.j.getService(r0)
            com.byazt.pg.ns r0 = (com.byazt.pg.ns) r0
            if (r0 == 0) goto L28
            r1 = 2
            java.lang.Object r2 = r0.getData(r1)
            boolean r3 = r2 instanceof java.lang.String
            if (r3 == 0) goto L1c
            java.lang.String r2 = (java.lang.String) r2
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L1c
            goto L29
        L1c:
            java.util.UUID r2 = java.util.UUID.randomUUID()
            java.lang.String r2 = r2.toString()
            r0.setData(r1, r2)
            goto L29
        L28:
            r2 = 0
        L29:
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto L38
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r0 = r0.toString()
            return r0
        L38:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rk.w.jx():java.lang.String");
    }

    public static void l(String str, int i2) {
        com.byazt.kt.a aVarHp = hp();
        if (aVarHp != null) {
            com.byazt.gy.s sVar = new com.byazt.gy.s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            aVarHp.hp(str, com.byazt.np.a.END, sVar);
        }
        f25227l.set(false);
        String string = UUID.randomUUID().toString();
        hp = string;
        jx(string);
    }

    private static void jx(String str) {
        ns nsVar = (ns) com.byazt.ym.j.getService("m_d_s");
        if (nsVar != null) {
            nsVar.setData(2, str);
        }
    }

    public static void l() {
        if (sz.l().qd()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("l_type", "app");
                jSONObject.putOpt("type", "end");
                jSONObject.putOpt("ts", Long.valueOf(System.currentTimeMillis()));
                jSONObject.putOpt(n.f36449l, 2);
                l(com.byazt.el.hp.j()).put(com.byazt.hwo.hp.hp("app") + hp, jSONObject.toString());
            } catch (Throwable unused) {
            }
        }
        l(hp, 2);
    }

    public static void hp(String str, long j2, int i2) {
        f25227l.set(true);
        if (i2 == 2) {
            jx.set(true);
        }
        com.byazt.kt.a aVarHp = hp();
        if (aVarHp != null) {
            com.byazt.gy.s sVar = new com.byazt.gy.s(j2);
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            aVarHp.hp(str, com.byazt.np.a.STARTED, sVar);
        }
    }

    public static com.byazt.ctq.jx l(String str) {
        return com.byazt.ry.j.hp(str, f25228w);
    }

    public static void hp(String str, int i2) {
        com.byazt.kt.a aVarHp = hp();
        if (aVarHp != null) {
            com.byazt.gy.s sVar = new com.byazt.gy.s(System.currentTimeMillis());
            sVar.hp(n.f36449l, Integer.valueOf(i2));
            aVarHp.hp(str, com.byazt.np.a.FOREGROUNDED, sVar);
        }
    }

    public static void hp(String str) {
        com.byazt.kt.a aVarHp = hp();
        if (aVarHp != null) {
            aVarHp.hp(str, com.byazt.np.a.BACKGROUNDED);
        }
    }

    public static com.byazt.kt.a hp() {
        return (com.byazt.kt.a) com.byazt.gy.w.hp(4);
    }
}
