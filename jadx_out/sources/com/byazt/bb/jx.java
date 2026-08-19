package com.byazt.bb;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.byazt.kw.e;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 93, 30})
/* loaded from: classes2.dex */
public final class jx {
    public Context hp;

    public jx(Context context) {
        this.hp = context;
    }

    private void l() throws JSONException {
        File[] fileArrHp = hp(com.byazt.kw.s.hp(this.hp), ".npth");
        if (fileArrHp == null) {
            return;
        }
        Arrays.sort(fileArrHp, Collections.reverseOrder());
        for (int i2 = 0; i2 < fileArrHp.length && i2 < 50; i2++) {
            File file = fileArrHp[i2];
            try {
                if (com.byazt.ut.hp.hp().hp(file.getAbsolutePath())) {
                    com.byazt.kw.j.hp(file);
                } else {
                    com.byazt.rw.jx jxVarJx = com.byazt.kw.j.jx(file.getAbsolutePath());
                    if (jxVarJx != null && jxVarJx.l() != null) {
                        JSONObject jSONObjectL = jxVarJx.l();
                        hp(file.getName(), jSONObjectL);
                        jxVarJx.l().put("upload_scene", "launch_scan");
                        if (com.byazt.ms.l.hp(jxVarJx.hp(), jSONObjectL.toString(), jxVarJx.jx()).hp() && !com.byazt.kw.j.hp(file)) {
                            com.byazt.ut.hp.hp().hp(com.byazt.gs.hp.hp(file.getAbsolutePath()));
                        }
                    }
                }
            } catch (Exception e2) {
                e.l(e2);
            }
        }
    }

    public void hp(boolean z2) throws JSONException {
        hp();
        if (z2) {
            l();
        }
    }

    private void hp() {
        try {
            SharedPreferences sharedPreferencesL = com.byazt.rz.l.l(this.hp, "npth", 0);
            long j2 = sharedPreferencesL.getLong("history_time", -1L);
            if (j2 < 0) {
                sharedPreferencesL.edit().putLong("history_time", System.currentTimeMillis()).apply();
            } else if (System.currentTimeMillis() - j2 > 86400000) {
                com.byazt.kw.j.hp(com.byazt.kw.s.l(this.hp));
                sharedPreferencesL.edit().putLong("history_time", System.currentTimeMillis()).apply();
            }
        } catch (Exception unused) {
        }
    }

    private com.byazt.aj.jx hp(String str, JSONObject jSONObject) {
        if (jSONObject == null && TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("launch_")) {
            return com.byazt.aj.jx.LAUNCH;
        }
        if (str.startsWith("anr_")) {
            return com.byazt.aj.jx.ANR;
        }
        if (str.startsWith("java_")) {
            if (jSONObject.optInt("is_dart") == 1) {
                return com.byazt.aj.jx.DART;
            }
            if (jSONObject.optInt("isJava") == 1) {
                return com.byazt.aj.jx.JAVA;
            }
        }
        return null;
    }

    @Nullable
    private File[] hp(File file, String str) {
        if (!file.exists()) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return file.listFiles();
        }
        return file.listFiles(new FilenameFilter() { // from class: com.byazt.bb.jx.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                return str2 != null && str2.endsWith(".npth");
            }
        });
    }
}
