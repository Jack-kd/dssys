package com.meishu.sdk.core.utils;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* loaded from: classes4.dex */
public class z0 extends com.meishu.sdk.core.safe.l {
    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            Process processStart = new ProcessBuilder("/system/bin/cat", "/proc/cpuinfo").start();
            StringBuffer stringBuffer = new StringBuffer();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream(), "utf-8"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else {
                    stringBuffer.append(line);
                }
            }
            bufferedReader.close();
            String lowerCase = stringBuffer.toString().toLowerCase();
            y0.f32046A = lowerCase;
            if (TextUtils.isEmpty(lowerCase)) {
                return;
            }
            r.a().b("cpuInfo", y0.f32046A);
        } catch (Throwable unused) {
        }
    }
}
