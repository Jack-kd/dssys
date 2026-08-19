package com.byazt.ir;

import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 402, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s {
    public static com.byazt.gr.hp hp;

    public static void hp() throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File file = new File(w.eb(), "temp_pkg_info.json");
                long length = file.length();
                Long lValueOf = Long.valueOf(length);
                if (length > 0 && file.exists() && file.isFile()) {
                    byte[] bArr = new byte[lValueOf.intValue()];
                    fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        com.byazt.gr.hp hpVarHp = com.byazt.gr.hp.hp(new JSONObject(new String(bArr, "utf-8")));
                        if (hpVarHp != null) {
                            hp = hpVarHp;
                        }
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            u.hp("Version", "version init error", th);
                            if (fileInputStream != null) {
                                fileInputStream.close();
                                return;
                            }
                            return;
                        } catch (Throwable th3) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th3;
                        }
                    }
                }
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
            } catch (IOException unused2) {
            }
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
        }
    }

    public static void j() {
        jx.l(w.eb(), l(), "temp_pkg_info.json");
        hp = null;
    }

    public static void jx() throws IOException {
        jx.hp(w.eb(), l(), "temp_pkg_info.json");
    }

    public static synchronized com.byazt.gr.hp l() {
        return hp;
    }

    public static boolean l(com.byazt.gr.hp hpVar) {
        return jx.jx(l(), hpVar);
    }

    public static synchronized void hp(com.byazt.gr.hp hpVar) {
        if (hpVar != null) {
            if (hpVar.a()) {
                hp = hpVar;
            }
        }
    }

    public static boolean hp(String str) {
        return jx.hp(l(), str);
    }
}
