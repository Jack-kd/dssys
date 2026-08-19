package com.byazt.ton;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.webkit.WebView;
import com.byazt.dnb.s;
import com.byazt.lf.k;
import com.byazt.uid.eb;
import com.byazt.vz.MultiWebview;
import com.byazt.ymw.sz;
import com.byazt.ymw.u;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileLock;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1140, 38})
/* loaded from: classes3.dex */
public class j {
    public static void hp(final Context context) {
        if (context == null) {
            return;
        }
        MultiWebview.f26780j = new com.byazt.ykc.hp() { // from class: com.byazt.ton.j.1
            @Override // com.byazt.ykc.hp
            public void hp(String str, Throwable th) throws JSONException {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("threadName", str);
                    jSONObject.put("record", Arrays.toString(th.getStackTrace()));
                } catch (Exception unused) {
                }
                k.hp().hp("webview_init_failed", jSONObject, th);
            }
        };
        com.byazt.ke.jx.hp(context.getApplicationContext());
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                if (sz.hp(context)) {
                    s.hp(new eb("tt_webview_file_path") { // from class: com.byazt.ton.j.2
                        @Override // java.lang.Runnable
                        public void run() throws Throwable {
                            j.jx(context);
                        }
                    });
                    return;
                }
                String strL = sz.l(context);
                try {
                    if (TextUtils.isEmpty(strL)) {
                        strL = context.getPackageName() + Process.myPid();
                    }
                    WebView.setDataDirectorySuffix(strL);
                } catch (IllegalStateException unused) {
                    hp(strL);
                } catch (Exception unused2) {
                }
            }
        } catch (Throwable th) {
            u.hp(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(Context context) throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th;
        String strHp = hp();
        File file = new File(com.byazt.rz.l.hp(context, TextUtils.isEmpty(strHp) ? "webview" : "webview_".concat(String.valueOf(strHp)), 0).getPath(), "webview_data.lock");
        file.getAbsolutePath();
        if (file.exists()) {
            RandomAccessFile randomAccessFile2 = null;
            try {
                try {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                } catch (Exception unused) {
                }
            } catch (Throwable th2) {
                randomAccessFile = randomAccessFile2;
                th = th2;
            }
            try {
                FileLock fileLockTryLock = randomAccessFile.getChannel().tryLock();
                if (fileLockTryLock != null) {
                    fileLockTryLock.close();
                } else {
                    hp(file, file.delete());
                }
                com.byazt.qkc.l.hp(randomAccessFile);
            } catch (Exception unused2) {
                randomAccessFile2 = randomAccessFile;
                hp(file, file.exists() ? file.delete() : false);
                com.byazt.qkc.l.hp(randomAccessFile2);
            } catch (Throwable th3) {
                th = th3;
                com.byazt.qkc.l.hp(randomAccessFile);
                throw th;
            }
        }
    }

    private static void hp(String str) {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            declaredMethod2.setAccessible(true);
            Class cls = (Class) declaredMethod.invoke(null, "android.webkit.WebViewFactory");
            Field field = (Field) declaredMethod2.invoke(cls, "sDataDirectorySuffix");
            field.setAccessible(true);
            if (TextUtils.isEmpty((String) field.get(cls))) {
                field.set(cls, str);
            }
        } catch (Throwable unused) {
        }
    }

    private static void hp(File file, boolean z2) throws IOException {
        if (!z2 || file.exists()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException unused) {
        }
    }

    private static String hp() {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            declaredMethod2.setAccessible(true);
            Class cls = (Class) declaredMethod.invoke(null, "android.webkit.WebViewFactory");
            return (String) ((Field) declaredMethod2.invoke(cls, "sDataDirectorySuffix")).get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }
}
