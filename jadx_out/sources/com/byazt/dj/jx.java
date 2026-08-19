package com.byazt.dj;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.aj.s;
import com.byazt.kc.AbsServerManager;
import com.byazt.kw.e;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1136, 30})
/* loaded from: classes2.dex */
public class jx {
    public static volatile boolean hp = true;

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f19154a = false;
    public final SharedPreferences eb;

    /* renamed from: j, reason: collision with root package name */
    public final Context f19155j;
    public j jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f19156l;

    /* renamed from: w, reason: collision with root package name */
    public volatile long f19157w;

    public jx(Context context) {
        if (context == null || !(context instanceof Application)) {
            throw new IllegalArgumentException("context must not be null or not application");
        }
        this.f19155j = context;
        SharedPreferences sharedPreferencesL = com.byazt.rz.l.l(context, "anr_monitor_table", 0);
        this.eb = sharedPreferencesL;
        this.f19157w = sharedPreferencesL.getLong("trace_anr_happen_time", 0L);
    }

    public void hp() {
        if (this.f19154a) {
            return;
        }
        this.jx = new j(this);
        this.f19154a = true;
    }

    public boolean hp(int i2, String str, int i3) {
        JSONObject jSONObjectHp;
        JSONObject jSONObjectHp2;
        try {
            jSONObjectHp = w.hp(hp);
        } catch (Throwable unused) {
            jSONObjectHp = null;
        }
        String strHp = w.hp(this.f19155j, i3);
        if (TextUtils.isEmpty(strHp)) {
            return false;
        }
        try {
            com.byazt.aj.a aVarJ = s.l().j();
            if (aVarJ != null) {
                if (aVarJ.hp()) {
                    if (i2 == 200 && (jSONObjectHp2 = hp(str, Process.myPid(), this.f19155j.getPackageName())) != null && jSONObjectHp2.length() > 0) {
                        jSONObjectHp = jSONObjectHp2;
                    }
                    if (jSONObjectHp != null && jSONObjectHp.length() > 0) {
                        try {
                            jSONObjectHp.put("pid", Process.myPid());
                            jSONObjectHp.put(AbsServerManager.PACKAGE_QUERY_BINDER, this.f19155j.getPackageName());
                            jSONObjectHp.put("is_remote_process", 0);
                            com.byazt.rw.hp hpVar = new com.byazt.rw.hp(new JSONObject());
                            hpVar.hp("data", jSONObjectHp.toString());
                            hpVar.hp("is_anr", (Object) 1);
                            hpVar.hp("timestamp", Long.valueOf(System.currentTimeMillis()));
                            hpVar.hp("event_type", "anr");
                            hpVar.hp("anr_time", Long.valueOf(System.currentTimeMillis()));
                            hpVar.hp("crash_time", Long.valueOf(System.currentTimeMillis()));
                            hpVar.hp("anr_info", strHp);
                            com.byazt.hc.w wVarHp = com.byazt.hc.w.hp();
                            com.byazt.aj.jx jxVar = com.byazt.aj.jx.ANR;
                            com.byazt.rw.hp hpVarHp = wVarHp.hp(jxVar, hpVar);
                            com.byazt.kw.j.hp(this.f19155j, jxVar.hp(), (String) null);
                            com.byazt.ms.hp.hp().l(hpVarHp.hp());
                            hp(strHp);
                        } catch (Throwable th) {
                            e.l(th);
                        }
                    }
                    return true;
                }
            }
        } catch (Throwable unused2) {
        }
        return false;
    }

    private static void hp(String str) {
        Iterator<Object> it = s.l().jx().iterator();
        while (it.hasNext()) {
            it.next();
            com.byazt.aj.jx jxVar = com.byazt.aj.jx.LAUNCH;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0195, code lost:
    
        com.byazt.kw.a.hp(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0198, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject hp(java.lang.String r17, int r18, java.lang.String r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.dj.jx.hp(java.lang.String, int, java.lang.String):org.json.JSONObject");
    }

    private Object[] hp(BufferedReader bufferedReader, Pattern... patternArr) throws IOException {
        if (bufferedReader != null && patternArr != null && patternArr.length > 0) {
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    for (Pattern pattern : patternArr) {
                        if (pattern.matcher(line).matches()) {
                            return new Object[]{pattern, line};
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }

    private String hp(BufferedReader bufferedReader) throws IOException {
        if (bufferedReader == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.trim().length() <= 0) {
                break;
            }
            sb.append(line);
            sb.append("\n");
        }
        return sb.toString();
    }
}
