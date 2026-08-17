package com.byazt.wf;

import android.content.Context;
import android.os.StatFs;
import android.text.TextUtils;
import androidx.core.view.PointerIconCompat;
import com.byazt.ymw.dy;
import com.byazt.ze.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 416, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public Context hp;

    public w(Context context) {
        this.hp = context.getApplicationContext();
    }

    public void hp(j jVar, eb ebVar) {
        final j jVar2;
        final eb ebVar2;
        File file;
        final String strL;
        final File file2;
        if (jVar != null && !TextUtils.isEmpty(jVar.hp())) {
            if (this.hp == null) {
                hp(ebVar, jVar, 1002, "Context is null");
                return;
            }
            String strHp = jVar.hp();
            final String strJx = s.hp().jx(strHp);
            if (TextUtils.isEmpty(strJx)) {
                hp(ebVar, jVar, 1003, "Invalid cache path");
                return;
            }
            if (!hp(this.hp)) {
                hp(ebVar, jVar, 1004, "Insufficient disk space");
                return;
            }
            try {
                file = new File(com.byazt.rz.l.l(this.hp), "tt_lottie_temp");
                if (!file.exists()) {
                    file.mkdirs();
                }
                strL = com.byazt.ymw.a.l(strHp);
                file2 = new File(file, strL);
                jVar2 = jVar;
                ebVar2 = ebVar;
            } catch (Exception e2) {
                e = e2;
                jVar2 = jVar;
                ebVar2 = ebVar;
            }
            try {
                com.byazt.ze.l.hp(strHp, file, strL, new l.hp() { // from class: com.byazt.wf.w.1
                    @Override // com.byazt.ze.l.hp
                    public void hp(com.byazt.ap.j jVar3, com.byazt.oyr.l lVar) {
                        w.this.hp(jVar2, file2, strJx, strL, ebVar2);
                    }

                    @Override // com.byazt.ze.l.hp
                    public void hp(com.byazt.ap.j jVar3, IOException iOException) {
                        w.this.hp(ebVar2, jVar2, 1005, iOException != null ? iOException.getMessage() : "Unknown error");
                        w.this.hp(file2);
                    }
                });
                return;
            } catch (Exception e3) {
                e = e3;
                com.byazt.ze.a.hp("Download zip failed: " + e.getMessage(), e);
                hp(ebVar2, jVar2, 1005, e.getMessage());
                return;
            }
        }
        hp(ebVar, jVar, 1001, "Invalid zip config");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(j jVar, File file, String str, String str2, eb ebVar) {
        try {
            if (!file.exists()) {
                hp(ebVar, jVar, 1006, "Downloaded file not found");
                return;
            }
            if (!TextUtils.isEmpty(jVar.l()) && !TextUtils.equals(com.byazt.ymw.a.hp(file), jVar.l())) {
                hp(file);
                hp(ebVar, jVar, 1007, "MD5 verification failed");
                return;
            }
            File file2 = new File(str);
            if (file2.exists()) {
                com.byazt.ymw.s.jx(file2);
            }
            if (!file2.exists()) {
                file2.mkdirs();
            }
            dy.hp(file.getAbsolutePath(), file2.getAbsolutePath());
            s.hp().hp(jVar.hp());
            hp(file);
            hp(ebVar, jVar);
        } catch (Exception e2) {
            com.byazt.ze.a.hp("Handle download success failed: " + e2.getMessage(), e2);
            hp(file);
            hp(ebVar, jVar, PointerIconCompat.TYPE_TEXT, e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        file.delete();
    }

    private boolean hp(Context context) {
        try {
            File fileL = com.byazt.rz.l.l(context);
            if (fileL == null) {
                return false;
            }
            StatFs statFs = new StatFs(fileL.getPath());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong() >= 10485760;
        } catch (Exception unused) {
            return true;
        }
    }

    private void hp(eb ebVar, j jVar) {
        if (ebVar != null) {
            ebVar.hp(jVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(eb ebVar, j jVar, int i2, String str) {
        if (ebVar != null) {
            ebVar.hp(jVar, i2, str);
        }
    }
}
