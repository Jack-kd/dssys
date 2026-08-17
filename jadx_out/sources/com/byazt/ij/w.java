package com.byazt.ij;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.ymw.dy;
import com.byazt.ymw.s;
import com.byazt.ymw.u;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 845, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {
    public static volatile w hp;

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f21122j = new AtomicBoolean(false);
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21123l;

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        try {
            String strJx = jx();
            if (l(strJx)) {
                jx(strJx);
            }
        } catch (Throwable th) {
            u.l("LocalDrawableResCacheManager", "processUpdate reszip failed：" + th.getMessage());
        }
    }

    public String j() throws NoSuchAlgorithmException {
        String strJx = jx();
        String str = this.f21123l;
        if (str != null && str.equalsIgnoreCase(strJx)) {
            return this.jx;
        }
        String strHp = com.byazt.qkc.jx.hp(strJx);
        this.jx = strHp;
        this.f21123l = strJx;
        return strHp;
    }

    public String jx() {
        String strJb = sz.l().jb();
        return TextUtils.isEmpty(strJb) ? "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/3f0fb79faf3171023734d003d2a64219-MjAyNjAxMTg.zip" : strJb;
    }

    public void l() {
        new com.byazt.wu.l(131072).hp(new Runnable() { // from class: com.byazt.ij.w.1
            @Override // java.lang.Runnable
            public void run() {
                w.this.w();
            }
        });
    }

    public static w hp() {
        if (hp == null) {
            synchronized (w.class) {
                try {
                    if (hp == null) {
                        hp = new w();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private boolean l(String str) {
        File[] fileArrListFiles;
        String strL = com.byazt.ymw.a.l(str);
        if (TextUtils.isEmpty(strL)) {
            return false;
        }
        File file = new File(v.hp(sz.getContext()), strL);
        return !file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0;
    }

    private void jx(final String str) {
        if (this.f21122j.get()) {
            return;
        }
        this.f21122j.set(true);
        com.byazt.uid.w.l(new eb("downloadZip") { // from class: com.byazt.ij.w.3
            @Override // java.lang.Runnable
            public void run() {
                w.this.j(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(final String str) {
        final String strL = com.byazt.ymw.a.l(str);
        if (TextUtils.isEmpty(strL)) {
            return;
        }
        com.byazt.ap.l lVarJ = com.byazt.cm.w.hp().l().j();
        lVarJ.hp(str);
        lVarJ.hp(v.hp(sz.getContext()).getAbsolutePath(), strL + ".temp");
        lVarJ.hp(new com.byazt.mnb.hp() { // from class: com.byazt.ij.w.4
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                w.this.f21122j.set(false);
                String strL2 = com.byazt.ymw.a.l(w.this.jx());
                if (TextUtils.isEmpty(strL2) || strL2.equalsIgnoreCase(strL)) {
                    if (!lVar.q() || lVar.s() == null || !lVar.s().exists()) {
                        u.l("LocalDrawableResCacheManager", "download reszip failed 1：" + str);
                        return;
                    }
                    try {
                        File fileHp = v.hp(sz.getContext());
                        lVar.s().getAbsolutePath();
                        File file = new File(fileHp.getAbsolutePath(), strL);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        dy.hp(lVar.s().getAbsolutePath(), file.getAbsolutePath());
                        File[] fileArrListFiles = fileHp.listFiles();
                        if (fileArrListFiles != null) {
                            for (File file2 : fileArrListFiles) {
                                if (!strL.equalsIgnoreCase(file2.getName()) || !file2.isDirectory()) {
                                    s.jx(file2);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        u.hp("LocalDrawableResCacheManager", "unzip reszip failed：", th);
                    }
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                w.this.f21122j.set(false);
                u.l("LocalDrawableResCacheManager", "download resources failed 2：" + str);
            }
        });
    }

    public void hp(String str) {
        try {
            String strJx = jx();
            if (TextUtils.isEmpty(str) || str.equalsIgnoreCase(strJx)) {
                return;
            }
            new com.byazt.wu.l(262144).hp(new Runnable() { // from class: com.byazt.ij.w.2
                @Override // java.lang.Runnable
                public void run() {
                    w.this.w();
                }
            });
        } catch (Throwable th) {
            u.l("LocalDrawableResCacheManager", "doUpdateWhenSetting reszip failed：" + th.getMessage());
        }
    }
}
