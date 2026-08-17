package com.byazt.gz;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.byazt.pg.dy;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AVPH_DNS_PARSE, 28})
/* loaded from: classes2.dex */
public class hp implements dy {
    @SuppressLint({"[ByDesign12.1]UsingRuntimeExec"})
    private String hp(String str) throws IOException {
        BufferedReader bufferedReader;
        Throwable th;
        Process processExec;
        try {
            processExec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 1024);
                try {
                    String line = bufferedReader.readLine();
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                        u.hp("SystemPropAdb", "Exception while closing InputStream", e2);
                    }
                    try {
                        processExec.destroy();
                    } catch (Throwable unused) {
                    }
                    return line;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        u.hp("SystemPropAdb", "Unable to read sysprop ".concat(String.valueOf(str)), th);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                u.hp("SystemPropAdb", "Exception while closing InputStream", e3);
                            }
                        }
                        if (processExec == null) {
                            return "";
                        }
                        try {
                            processExec.destroy();
                            return "";
                        } catch (Throwable unused2) {
                            return "";
                        }
                    } finally {
                    }
                }
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
            }
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            processExec = null;
        }
    }

    @Override // com.byazt.pg.dy
    public String get(String str) {
        return hp(str);
    }

    @Override // com.byazt.pg.dy
    public boolean getBoolean(String str) throws IOException {
        String strHp = hp(str);
        if (TextUtils.isEmpty(strHp)) {
            return false;
        }
        try {
            return Boolean.parseBoolean(strHp);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.pg.dy
    public int getInt(String str) throws IOException {
        String strHp = hp(str);
        if (TextUtils.isEmpty(strHp)) {
            return 0;
        }
        try {
            return Integer.parseInt(strHp);
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // com.byazt.pg.dy
    public long getLong(String str) throws IOException {
        String strHp = hp(str);
        if (TextUtils.isEmpty(strHp)) {
            return 0L;
        }
        try {
            return Long.parseLong(strHp);
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.byazt.pg.dy
    public void set(String str, String str2) {
    }
}
