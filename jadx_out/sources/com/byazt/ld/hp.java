package com.byazt.ld;

import com.byazt.lc.eb;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 1075, 28})
/* loaded from: classes3.dex */
public class hp {
    public static boolean hp(String[] strArr) throws IOException {
        if (strArr.length <= 0) {
            return false;
        }
        try {
            Process processExec = Runtime.getRuntime().exec(strArr);
            InputStream errorStream = processExec.getErrorStream();
            InputStream inputStream = processExec.getInputStream();
            hp(errorStream);
            hp(inputStream);
            if (processExec.waitFor() == 0) {
                return true;
            }
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "exec dex2oat failed : " + Arrays.toString(strArr));
            return false;
        } catch (IOException e2) {
            com.byazt.ik.a.hp(e2);
            return false;
        } catch (InterruptedException e3) {
            com.byazt.ik.a.hp(e3);
            return false;
        }
    }

    private static void hp(final InputStream inputStream) {
        com.byazt.hu.w.l(new Runnable() { // from class: com.byazt.ld.hp.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            return;
                        } else {
                            ZeusLogger.d(ZeusLogger.TAG_INSTALL, "exec cmd info : ".concat(line));
                        }
                    } catch (IOException e2) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "execCmd consumeInputStream failed : ".concat(String.valueOf(e2)));
                        return;
                    } finally {
                        eb.hp(bufferedReader);
                    }
                }
            }
        });
    }
}
