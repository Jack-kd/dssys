package com.byazt.ff;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jkd.gu;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.byazt.xci.xs;
import com.byazt.ymw.hq;
import com.byazt.ymw.u;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.byazt.zn.w;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.bo;
import java.io.File;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 150})
/* loaded from: classes2.dex */
public class q {
    public static void j() {
        if (com.byazt.jz.s.u().xh() != null) {
            com.byazt.jz.s.u().xh().apply(com.byazt.wi.j.hp().hp(20).hp(Void.class).l());
        } else {
            u.l("TTDownload-Util", "下载SDK 初始化失败 ， bridge = null ！！！");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(mp mpVar, String str) {
        if (mpVar == null) {
            return;
        }
        ky.hp(sz.getContext(), str);
    }

    private static void l(final mp mpVar, final String str) {
        final com.byazt.zn.hp hpVarJx;
        if (hp(mpVar) || (hpVarJx = com.byazt.jz.s.u().jx()) == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        hpVarJx.hp(new hp.jx() { // from class: com.byazt.ff.q.1
            @Override // com.byazt.zn.hp.jx, com.byazt.zn.hp.InterfaceC0436hp
            public void hp() {
                if (!xh.hp()) {
                    com.byazt.zn.hp hpVar = hpVarJx;
                    if (hpVar != null) {
                        hpVar.jx();
                        return;
                    }
                    return;
                }
                if (!com.byazt.tn.l.l(str)) {
                    q.l(mpVar, jCurrentTimeMillis, hpVarJx, str);
                }
                com.byazt.zn.hp hpVar2 = hpVarJx;
                if (hpVar2 != null) {
                    hpVar2.jx();
                }
            }
        });
    }

    public static String jx() {
        try {
            Function<SparseArray<Object>, Object> functionXh = com.byazt.jz.s.u().xh();
            if (functionXh != null) {
                functionXh.apply(com.byazt.wi.j.hp().hp(1).hp(String.class).l());
            }
        } catch (Exception unused) {
        }
        return bo.f30891e;
    }

    public static void hp(String str, mp mpVar) {
        boolean zEb;
        try {
            if (sz.getContext() != null && !TextUtils.isEmpty(str) && (zEb = com.byazt.xci.sz.eb(mpVar))) {
                xs xsVarK = mpVar.k();
                if (xsVarK != null && !TextUtils.isEmpty(xsVarK.l())) {
                    u.l("TTDownload-Util", "含有deepLink");
                    if (com.byazt.xci.sz.j(mpVar) != 0) {
                        u.l("TTDownload-Util", "deepLink过滤 DownConfig.getDownConfigAutoOpen(materialMeta) " + com.byazt.xci.sz.j(mpVar));
                        return;
                    }
                }
                if (zEb) {
                    if (com.byazt.tn.l.l(str)) {
                        u.l("TTDownload-Util", "该app已被激活 pkgName ".concat(String.valueOf(str)));
                    } else if (!com.byazt.xci.sz.s(mpVar)) {
                        l(mpVar, str);
                    } else {
                        hp(sz.getContext(), mpVar, str);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final com.byazt.zn.hp hpVar, final mp mpVar, String str, String str2, final String str3) {
        if (hpVar != null && ky.l(str3)) {
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            String strJ = mpVar.j();
            com.byazt.zn.w.hp(sz.getContext(), strJ, str, str2, "立即打开", "退出", new w.hp() { // from class: com.byazt.ff.q.3
                @Override // com.byazt.zn.w.hp
                public void hp() {
                    q.jx(mpVar, str3);
                    com.byazt.zn.hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.jx();
                    }
                }

                @Override // com.byazt.zn.w.hp
                public void jx() {
                    com.byazt.zn.hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.jx();
                    }
                }

                @Override // com.byazt.zn.w.hp
                public void l() {
                    com.byazt.zn.hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.jx();
                    }
                }
            });
        }
    }

    public static boolean l() {
        return com.byazt.sii.w.hp().hp(sz.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(mp mpVar, long j2, com.byazt.zn.hp hpVar, String str) {
        String strJx;
        String str2;
        if (mpVar == null) {
            return;
        }
        if (System.currentTimeMillis() - j2 >= com.byazt.xci.sz.q(mpVar) * 1000) {
            if (mpVar.v() != null) {
                strJx = mpVar.v().jx();
            } else {
                strJx = "";
            }
            if (TextUtils.isEmpty(strJx)) {
                str2 = "应用安装完成，是否立即打开 ？";
            } else {
                str2 = "安装完成，是否立即打开 ？";
            }
            l(hpVar, mpVar, strJx, str2, str);
            return;
        }
        jx(mpVar, str);
    }

    public static String hp(mp mpVar, boolean z2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("background", z2);
            if (mpVar != null) {
                jSONObject.put("reqId", mpVar.ns());
                jSONObject.put("cid", mpVar.j());
                jSONObject.put("rit", ky.hp(mpVar, ""));
            }
            Context context = sz.getContext();
            if (context == null) {
                jSONObject.put("message", "context is null");
                k.hp().hp("dl_path_empty", jSONObject, (Throwable) null);
                return "";
            }
            File fileL = com.byazt.tn.l.l(context);
            if (fileL == null) {
                jSONObject.put("message", "file is null");
                k.hp().hp("dl_path_empty", jSONObject, (Throwable) null);
                return "";
            }
            if (!fileL.exists() && !fileL.mkdirs()) {
                jSONObject.put("message", "mkdirs failed");
                k.hp().hp("dl_path_empty", jSONObject, (Throwable) null);
            }
            return fileL.exists() ? fileL.getAbsolutePath() : "";
        } catch (Throwable th) {
            try {
                jSONObject.put("message", "path:".concat(""));
            } catch (JSONException unused) {
            }
            k.hp().hp("dl_path_empty", jSONObject, th);
            return "";
        }
    }

    private static void hp(Context context, final mp mpVar, final String str) {
        String strJx;
        String str2;
        if (context == null || mpVar == null || hp(mpVar)) {
            return;
        }
        if (mpVar.v() != null) {
            strJx = mpVar.v().jx();
        } else {
            strJx = "";
        }
        final String str3 = strJx;
        if (TextUtils.isEmpty(str3)) {
            str2 = "应用安装完成，是否立即打开 ？";
        } else {
            str2 = "安装完成，是否立即打开 ？";
        }
        final String str4 = str2;
        final com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        if (hpVarJx == null) {
            return;
        }
        hpVarJx.hp(new hp.jx() { // from class: com.byazt.ff.q.2
            @Override // com.byazt.zn.hp.jx, com.byazt.zn.hp.InterfaceC0436hp
            public void hp() {
                try {
                    if (!xh.hp()) {
                        com.byazt.zn.hp hpVar = hpVarJx;
                        if (hpVar != null) {
                            hpVar.jx();
                            return;
                        }
                        return;
                    }
                    if (!com.byazt.tn.l.l(str)) {
                        q.l(hpVarJx, mpVar, str3, str4, str);
                    }
                    com.byazt.zn.hp hpVar2 = hpVarJx;
                    if (hpVar2 != null) {
                        hpVar2.jx();
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private static boolean hp(mp mpVar) {
        if (mpVar == null || !hp(hp())) {
            return false;
        }
        int iQ = mpVar.q();
        String strB = mpVar.b();
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        if ((TextUtils.isEmpty(strB) || iQ != 4) && !jxVarHp.get("is_landing_page_open_market", false)) {
            return false;
        }
        jxVarHp.put("is_landing_page_open_market", false);
        return true;
    }

    public static JSONObject hp() {
        gu guVarL = sz.l();
        if (guVarL != null && guVarL.t() != null) {
            return guVarL.t();
        }
        return new JSONObject();
    }

    private static boolean hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optInt("enable_open_app_dialog") == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String hp(boolean r4) {
        /*
            r0 = 0
            r1 = 0
            if (r4 == 0) goto L21
            boolean r4 = l()     // Catch: java.lang.Throwable -> L6a
            if (r4 != 0) goto L21
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L6a
            android.content.Context r2 = com.byazt.jz.sz.getContext()     // Catch: java.lang.Throwable -> L6a
            java.io.File r2 = com.byazt.ymw.eb.l(r2, r0, r1)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = android.os.Environment.DIRECTORY_DOWNLOADS     // Catch: java.lang.Throwable -> L6a
            r4.<init>(r2, r3)     // Catch: java.lang.Throwable -> L6a
            r4.mkdirs()     // Catch: java.lang.Throwable -> L6a
            java.lang.String r4 = r4.getPath()     // Catch: java.lang.Throwable -> L6a
            goto L22
        L21:
            r4 = r1
        L22:
            boolean r2 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L6a
            if (r2 == 0) goto L60
            java.lang.String r2 = com.byazt.dnb.j.hp()     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = "mounted"
            boolean r2 = r3.equals(r2)     // Catch: java.lang.Throwable -> L6a
            if (r2 == 0) goto L44
            android.content.Context r2 = com.byazt.jz.sz.getContext()     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = android.os.Environment.DIRECTORY_DOWNLOADS     // Catch: java.lang.Throwable -> L6a
            java.io.File r2 = com.byazt.ymw.eb.hp(r2, r3, r0, r1)     // Catch: java.lang.Throwable -> L6a
            if (r2 == 0) goto L44
            java.lang.String r4 = r2.getPath()     // Catch: java.lang.Throwable -> L6a
        L44:
            boolean r2 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L6a
            if (r2 == 0) goto L60
            android.content.Context r4 = com.byazt.jz.sz.getContext()     // Catch: java.lang.Throwable -> L6a
            java.io.File r4 = com.byazt.ymw.eb.hp(r4, r0, r1)     // Catch: java.lang.Throwable -> L6a
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L6a
            java.lang.String r2 = android.os.Environment.DIRECTORY_DOWNLOADS     // Catch: java.lang.Throwable -> L6a
            r0.<init>(r4, r2)     // Catch: java.lang.Throwable -> L6a
            r0.mkdirs()     // Catch: java.lang.Throwable -> L6a
            java.lang.String r4 = r0.getPath()     // Catch: java.lang.Throwable -> L6a
        L60:
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L6a
            if (r0 != 0) goto L6a
            com.byazt.zn.q.hp()     // Catch: java.lang.Throwable -> L6a
            return r4
        L6a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ff.q.hp(boolean):java.lang.String");
    }

    public static void hp(Runnable runnable, com.byazt.yrp.eb ebVar) {
        if (ebVar == null || runnable == null) {
            return;
        }
        if (com.byazt.xci.sz.a(ebVar.u_())) {
            com.byazt.dnb.s.hp((Runnable) new com.byazt.uid.eb("tt_download_toast") { // from class: com.byazt.ff.q.4
                @Override // java.lang.Runnable
                public void run() {
                    hq.hp(sz.getContext(), "即将跳转到应用商店...", 1);
                }
            });
            vv.a().postDelayed(runnable, 500L);
        } else {
            com.byazt.dnb.s.hp(runnable);
        }
    }
}
