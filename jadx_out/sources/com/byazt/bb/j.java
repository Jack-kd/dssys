package com.byazt.bb;

import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 93, 38})
/* loaded from: classes2.dex */
public class j {

    @com.byazt.kj.hp(hp = {0, 1, 93, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp extends com.byazt.shx.jx {
        public InputStream hp;

        /* renamed from: l, reason: collision with root package name */
        public List<String> f18458l;

        public hp(InputStream inputStream, List<String> list) {
            super("LogcatDump$LogDumperThread");
            this.hp = inputStream;
            this.f18458l = list;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.hp));
            int length = 32768;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        if (!line.startsWith("---------")) {
                            length -= line.getBytes("UTF-8").length;
                            if (length < 0) {
                                break;
                            } else {
                                this.f18458l.add(line);
                            }
                        }
                    } else {
                        break;
                    }
                } catch (IOException unused) {
                    return;
                } finally {
                    com.byazt.kw.a.hp(bufferedReader);
                }
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 93, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l extends com.byazt.shx.jx {
        public Process hp;

        /* renamed from: l, reason: collision with root package name */
        public long f18459l;

        public l(Process process, long j2) {
            super("LogcatDump$TimerThread");
            this.hp = process;
            this.f18459l = j2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws InterruptedException {
            try {
                Thread.sleep(this.f18459l);
            } catch (InterruptedException unused) {
            }
            Process process = this.hp;
            if (process != null) {
                process.destroy();
            }
        }
    }

    public static List<String> hp(int i2, int i3) {
        Process processExec;
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        try {
            processExec = Runtime.getRuntime().exec(new String[]{"logcat", "-t", String.valueOf(i2), hp(i3)});
        } catch (Throwable unused) {
            processExec = null;
        }
        try {
            new hp(processExec.getInputStream(), copyOnWriteArrayList).start();
            new hp(processExec.getErrorStream(), copyOnWriteArrayList).start();
            new l(processExec, 3000L).start();
            if (Build.VERSION.SDK_INT >= 26) {
                processExec.waitFor(3000L, TimeUnit.MILLISECONDS);
            } else {
                processExec.waitFor();
            }
            processExec.destroy();
            return copyOnWriteArrayList;
        } catch (Throwable unused2) {
            if (processExec != null) {
                processExec.destroy();
            }
            return copyOnWriteArrayList;
        }
    }

    private static String hp(int i2) {
        String[] strArr = {"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"};
        if (i2 >= 0 && i2 < 6) {
            return strArr[i2];
        }
        return "*:V";
    }
}
