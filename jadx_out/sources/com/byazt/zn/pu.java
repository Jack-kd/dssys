package com.byazt.zn;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS})
/* loaded from: classes3.dex */
public class pu {
    public static String hp;

    public static String hp(String str) {
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        FileReader fileReader = null;
        try {
            File file = new File("data/data/com.union_test.toutiao" + ServiceReference.DELIMITER + str);
            if (!file.exists()) {
                return null;
            }
            FileReader fileReader2 = new FileReader(file);
            try {
                bufferedReader = new BufferedReader(fileReader2);
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    } catch (Exception unused) {
                        fileReader = fileReader2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable unused3) {
                            }
                        }
                        return sb.toString();
                    } catch (Throwable th) {
                        th = th;
                        fileReader = fileReader2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Throwable unused4) {
                            }
                        }
                        if (bufferedReader == null) {
                            throw th;
                        }
                        try {
                            bufferedReader.close();
                            throw th;
                        } catch (Throwable unused5) {
                            throw th;
                        }
                    }
                }
                String string = sb.toString();
                try {
                    fileReader2.close();
                } catch (Throwable unused6) {
                }
                try {
                    bufferedReader.close();
                } catch (Throwable unused7) {
                }
                return string;
            } catch (Exception unused8) {
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception unused9) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    public static String jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            String strJx = com.byazt.ij.hp.jx();
            if (!TextUtils.isEmpty(strJx)) {
                strJx = strJx.replaceAll("\\.", "");
            }
            return Uri.parse(str).buildUpon().appendQueryParameter("sdkVersion", strJx).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String l(String str) {
        try {
            if (!hp()) {
                return str;
            }
            String strNd = com.byazt.jz.s.u().nd();
            return TextUtils.isEmpty(strNd) ? str : Uri.parse(str).buildUpon().appendQueryParameter(l(), strNd).appendQueryParameter("aid", "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static String l() {
        if (TextUtils.isEmpty(hp)) {
            hp = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return hp;
    }

    public static boolean hp() {
        if (com.byazt.ymw.u.jx()) {
            return com.byazt.jz.s.u().f();
        }
        return false;
    }

    public static String hp(String str, String str2) {
        return str.contains("https://api-access.pangolin-sdk-toutiao.com") ? str.replace("https://api-access.pangolin-sdk-toutiao.com", str2) : str;
    }

    public static void hp(Map<String, String> map) {
        if (hp()) {
            map.put("x-app-id", "5001121");
            String strNd = com.byazt.jz.s.u().nd();
            if (TextUtils.isEmpty(strNd)) {
                return;
            }
            map.put("x-device-id", strNd);
        }
    }
}
