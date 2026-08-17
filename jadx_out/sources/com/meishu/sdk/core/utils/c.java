package com.meishu.sdk.core.utils;

import android.content.Context;
import com.google.gson.Gson;
import com.meishu.sdk.core.domain.LayoutBean;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public LayoutBean f31838a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final c f31839a = new c();
    }

    public LayoutBean a(Context context) throws IOException {
        LayoutBean layoutBean = this.f31838a;
        if (layoutBean != null) {
            return layoutBean;
        }
        try {
            File file = new File(context.getExternalCacheDir().getAbsolutePath() + "/ms_cache", "ms_temp.json");
            if (!file.exists()) {
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                stringBuffer.append(line);
            }
            bufferedReader.close();
            if (stringBuffer.toString().isEmpty()) {
                return null;
            }
            return (LayoutBean) new Gson().fromJson(stringBuffer.toString(), LayoutBean.class);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
