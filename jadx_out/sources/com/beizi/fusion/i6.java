package com.beizi.fusion;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.beizi.fusion.model.ResponseInfo;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class i6 implements Thread.UncaughtExceptionHandler {

    /* renamed from: c, reason: collision with root package name */
    private static i6 f14418c = new i6();

    /* renamed from: a, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f14419a;

    /* renamed from: b, reason: collision with root package name */
    private Context f14420b;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Throwable f14421a;

        public a(Throwable th) {
            this.f14421a = th;
        }

        @Override // java.lang.Runnable
        public void run() throws JSONException {
            Looper.prepare();
            i6.this.b(this.f14421a);
            Looper.loop();
        }
    }

    private i6() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Throwable th) throws JSONException {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        String string = stringWriter.toString();
        a(string);
        b(string);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            a(th);
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f14419a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
        }
    }

    public static i6 a() {
        return f14418c;
    }

    public void a(Context context) {
        this.f14419a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f14420b = context.getApplicationContext();
    }

    private void a(String str) throws JSONException {
        String strA;
        String strA2;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("appId", q1.i().c());
            jSONObject.put("packageName", this.f14420b.getPackageName());
            jSONObject.put("versionName", vo.l(this.f14420b));
            jSONObject.put("versionCode", String.valueOf(vo.k(this.f14420b)));
            jSONObject.put("sdkVersion", "5.5.0.3");
            jSONObject2.put("osVersion", Build.VERSION.RELEASE + "_" + Build.VERSION.SDK_INT);
            jSONObject2.put("vendor", Build.MANUFACTURER);
            jSONObject2.put("model", Build.MODEL);
            jSONObject.put("device", jSONObject2);
            jSONObject.put("crashMessage", str);
            if (!TextUtils.isEmpty(ResponseInfo.getInstance(this.f14420b).getCrashUrl()) && ResponseInfo.getInstance(this.f14420b).getCrashUrl().startsWith("http")) {
                strA = ResponseInfo.getInstance(this.f14420b).getCrashUrl();
            } else {
                strA = h3.a(BeiZis.getTransferProtocol() ? "aHR0cHM6Ly9hcGktaHRwLmJlaXppLmJpei9tYi9zZGsvY3Jhc2gvdjE=" : "aHR0cDovL2FwaS5odHAuYWQtc2NvcGUuY29tLmNuOjQ1NjAwL21iL3Nkay9jcmFzaC92MQ==");
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
            }
            if (TextUtils.isEmpty(strA) || (strA2 = o9.a(strA, jSONObject.toString().getBytes())) == null) {
                return;
            }
            mh.a("lance", "post:" + strA2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b(String str) {
        Context context;
        try {
            context = this.f14420b;
        } catch (Exception unused) {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            return;
        }
        File fileB = k4.b(context);
        mh.a("BeiZis", "CrashHandler storagePath == " + fileB);
        if (fileB != null) {
            String str2 = fileB.getPath() + "/Beizi/log/";
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str3 = new SimpleDateFormat("yyyy-MM-dd HH:MM:SS").format(new Date(System.currentTimeMillis()));
            File file2 = new File(str2 + "crash_" + str3 + ".trace");
            file2.createNewFile();
            FileWriter fileWriter = new FileWriter(file2, true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write(str3);
            bufferedWriter.write("\r\n");
            bufferedWriter.write("------------------crash----------------------");
            bufferedWriter.write("\r\n");
            bufferedWriter.write(str);
            bufferedWriter.write("\r\n");
            bufferedWriter.write("-------------------end-----------------------");
            bufferedWriter.newLine();
            bufferedWriter.close();
            fileWriter.close();
        }
        mh.a("lance", "writeLog ok");
    }

    private boolean a(Throwable th) throws InterruptedException {
        if (th == null) {
            return false;
        }
        new Thread(new a(th)).start();
        try {
            Thread.sleep(1000L);
            return true;
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            return true;
        }
    }
}
