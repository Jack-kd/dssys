package com.byazt.kw;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 756, 42})
/* loaded from: classes.dex */
public final class k {

    @com.byazt.kj.hp(hp = {0, 1, 756, MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID})
    public static class hp {
        public final PrintWriter hp;

        public hp(PrintWriter printWriter) {
            this.hp = printWriter;
        }

        public Object hp() {
            return this.hp;
        }

        public void hp(Object obj) {
            this.hp.println(obj);
        }
    }

    public static String hp(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            hp(stackTraceElement, sb);
        }
        return sb.toString();
    }

    private static boolean jx(Throwable th) {
        int i2 = 0;
        while (th != null) {
            if (th instanceof StackOverflowError) {
                return true;
            }
            if (i2 > 20) {
                return false;
            }
            th = th.getCause();
            i2++;
        }
        return false;
    }

    private static boolean l(String str) {
        Set<String> setHp = w.hp();
        if (setHp.contains(str)) {
            return true;
        }
        for (String str2 : setHp) {
            if (!TextUtils.isEmpty(str) && str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static StringBuilder hp(StackTraceElement stackTraceElement, StringBuilder sb) {
        String className = stackTraceElement.getClassName();
        sb.append("  at ");
        sb.append(className);
        sb.append(i.f2495E);
        sb.append(stackTraceElement.getMethodName());
        sb.append("(");
        sb.append(stackTraceElement.getFileName());
        sb.append(":");
        sb.append(stackTraceElement.getLineNumber());
        sb.append(")\n");
        return sb;
    }

    public static boolean l(Throwable th) {
        if (th == null) {
            return false;
        }
        int i2 = 0;
        while (th != null) {
            if (th instanceof OutOfMemoryError) {
                return true;
            }
            if (i2 > 20) {
                return false;
            }
            i2++;
            try {
                th = th.getCause();
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @NonNull
    public static String hp(@NonNull Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            if (jx(th)) {
                hp(th, printWriter);
            } else {
                th.printStackTrace(printWriter);
            }
            String string = stringWriter.toString();
            printWriter.close();
            return string;
        } catch (Exception unused) {
            printWriter.close();
            return "";
        } catch (Throwable th2) {
            printWriter.close();
            throw th2;
        }
    }

    @Nullable
    public static JSONObject hp(String str) {
        try {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            JSONObject jSONObject = new JSONObject();
            if (allStackTraces == null) {
                return null;
            }
            jSONObject.put("thread_all_count", allStackTraces.size());
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                JSONObject jSONObject2 = new JSONObject();
                Thread key = entry.getKey();
                String name = key.getName();
                if (!l(name) && (str == null || (!str.equals(name) && !name.startsWith(str) && !name.endsWith(str)))) {
                    jSONObject2.put("thread_name", key.getName() + "(" + key.getId() + ")");
                    StackTraceElement[] value = entry.getValue();
                    if (value != null) {
                        JSONArray jSONArray2 = new JSONArray();
                        for (StackTraceElement stackTraceElement : value) {
                            jSONArray2.put(stackTraceElement.getClassName() + i.f2495E + stackTraceElement.getMethodName() + "(" + stackTraceElement.getLineNumber() + ")");
                        }
                        jSONObject2.put("thread_stack", jSONArray2);
                        if (jSONArray2.length() > 0) {
                        }
                    }
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("thread_stacks", jSONArray);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void hp(Throwable th, PrintWriter printWriter) {
        if (th == null || printWriter == null) {
            return;
        }
        hp hpVar = new hp(printWriter);
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        setNewSetFromMap.add(th);
        synchronized (hpVar.hp()) {
            try {
                hpVar.hp(th);
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    if (i3 > 256) {
                        hpVar.hp("\t... skip " + (stackTrace.length - i3) + " lines");
                        break;
                    }
                    hpVar.hp("\tat " + stackTraceElement);
                    i3++;
                    i2++;
                }
                for (Throwable th2 : th.getSuppressed()) {
                    hp(th2, hpVar, stackTrace, "Suppressed: ", "\t", setNewSetFromMap);
                }
                Throwable cause = th.getCause();
                if (cause != null) {
                    hp(cause, hpVar, stackTrace, "Caused by: ", "", setNewSetFromMap);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    private static void hp(Throwable th, hp hpVar, StackTraceElement[] stackTraceElementArr, String str, String str2, Set<Throwable> set) {
        if (set.contains(th)) {
            hpVar.hp("\t[CIRCULAR REFERENCE:" + th + "]");
            return;
        }
        set.add(th);
        StackTraceElement[] stackTrace = th.getStackTrace();
        int iMin = Math.min(stackTrace.length, 256);
        int i2 = iMin - 1;
        int i3 = i2;
        for (int iMin2 = Math.min(stackTraceElementArr.length, 256) - 1; i3 >= 0 && iMin2 >= 0 && stackTrace[i3].equals(stackTraceElementArr[iMin2]); iMin2--) {
            i3--;
        }
        int i4 = i2 - i3;
        hpVar.hp(str2 + str + th);
        for (int i5 = 0; i5 <= i3; i5++) {
            hpVar.hp(str2 + "\tat " + stackTrace[i5]);
        }
        if (iMin < stackTrace.length) {
            hpVar.hp("\t... skip " + (stackTrace.length - iMin) + " lines");
        }
        if (i4 != 0) {
            hpVar.hp(str2 + "\t... " + i4 + " more");
        }
        for (Throwable th2 : th.getSuppressed()) {
            hp(th2, hpVar, stackTrace, "Suppressed: ", str2 + "\t", set);
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            hp(cause, hpVar, stackTrace, "Caused by: ", str2, set);
        }
    }
}
