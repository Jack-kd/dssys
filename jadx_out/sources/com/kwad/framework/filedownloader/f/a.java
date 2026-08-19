package com.kwad.framework.filedownloader.f;

/* loaded from: classes4.dex */
public class a {
    private static void b(String str, Object... objArr) {
        d.d(a.class, str + ", but the download service isn't connected yet.\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your requestHttpCode invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()", objArr);
    }

    public static boolean cv(int i2) {
        b("request pause the task[%d] in the download service", Integer.valueOf(i2));
        return false;
    }

    public static byte cw(int i2) {
        b("request get the status for the task[%d] in the download service", Integer.valueOf(i2));
        return (byte) 0;
    }

    public static boolean cx(int i2) {
        b("request clear the task[%d] data in the database", Integer.valueOf(i2));
        return false;
    }

    public static boolean h(String str, String str2, boolean z2) {
        b("request start the task([%s], [%s], [%B]) in the download service", str, str2, Boolean.valueOf(z2));
        return false;
    }
}
