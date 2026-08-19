package com.byazt.kw;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 756, 38})
/* loaded from: classes.dex */
public class j {
    public static void hp(@NonNull File file, @NonNull String str, boolean z2) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, z2);
            try {
                fileOutputStream2.write(str.getBytes());
                fileOutputStream2.flush();
                a.hp(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                a.hp(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static com.byazt.rw.jx jx(String str) {
        try {
            JSONObject jSONObject = new JSONObject(l(str));
            com.byazt.rw.jx jxVar = new com.byazt.rw.jx();
            jxVar.hp(jSONObject.optString("url"));
            jxVar.hp(jSONObject.optJSONObject("body"));
            jxVar.l(jSONObject.optString("dump_file"));
            jxVar.hp(jSONObject.optBoolean("encrypt", false));
            return jxVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String l(String str) throws IOException {
        return hp(str, null);
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.delete();
    }

    public static boolean hp(File file) {
        return file.exists() && file.delete();
    }

    public static String hp(String str, String str2) throws Throwable {
        BufferedReader bufferedReader = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null) {
                        sb.append(line);
                        if (str2 != null) {
                            sb.append(str2);
                        }
                    } else {
                        a.hp(bufferedReader2);
                        return sb.toString();
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    a.hp(bufferedReader);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String hp(File file, String str, String str2, JSONObject jSONObject, boolean z2) {
        return hp(file, str, str2, jSONObject, null, z2);
    }

    public static String hp(File file, String str, String str2, JSONObject jSONObject, String str3, boolean z2) throws JSONException {
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("url", str2);
            jSONObject2.put("body", jSONObject);
            if (str3 == null) {
                str3 = "";
            }
            jSONObject2.put("dump_file", str3);
            jSONObject2.put("encrypt", z2);
            hp(file2, jSONObject2.toString(), false);
        } catch (IOException | JSONException unused) {
        }
        return file2.getAbsolutePath();
    }

    public static void hp(Context context, String str, String str2) throws Throwable {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            sb.append(" ");
            if (str == null) {
                str = "null";
            }
            sb.append(str);
            sb.append(" ");
            if (str2 == null) {
                str2 = "null";
            }
            sb.append(str2);
            sb.append("\n");
            hp(s.l(context), sb.toString(), true);
        } catch (IOException unused) {
        }
    }
}
