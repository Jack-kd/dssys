package com.kwad.sdk.crash.online.monitor.block;

import android.os.Looper;
import android.util.Printer;
import com.kwad.sdk.utils.ab;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class a {
    private static volatile boolean beR;
    private static String beS;
    private static List<String> beT;
    private static List<String> beU;
    private static volatile boolean beV;
    private static volatile boolean beW;

    public static boolean Qw() {
        if (beR) {
            return false;
        }
        try {
            return ((Printer) ab.getField(Looper.getMainLooper(), "mLogging")) != null;
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("perfMonitor.MonitorDetector", "hasBlockMonitor ", e2);
            beR = true;
            return false;
        }
    }

    public static boolean Qx() throws ClassNotFoundException {
        if (beW) {
            return beV;
        }
        try {
            String str = new String(com.kwad.sdk.core.a.c.LP().decode("Y29tLnRlbmNlbnQubWF0cml4Lk1hdHJpeA=="));
            com.kwad.sdk.core.d.c.d("perfMonitor.MonitorDetector", "hasMatrix after:" + str);
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            beV = false;
            beW = true;
            return beV;
        }
    }

    public static void a(com.kwad.sdk.crash.online.monitor.a.a aVar) {
        beT = aVar.bfp;
        beU = aVar.bfq;
    }

    public static boolean bZ(boolean z2) {
        List<String> list = beT;
        return (list == null || list.isEmpty()) ? h("Y29tLnRlbmNlbnQubWF0cml4LnRyYWNlLmNvcmUuTG9vcGVyTW9uaXRvcg==", true) : c(beT, true);
    }

    private static boolean c(List<String> list, boolean z2) {
        if (beR) {
            return false;
        }
        try {
            Printer printer = (Printer) ab.getField(Looper.getMainLooper(), "mLogging");
            if (printer != null) {
                beS = printer.getClass().getName();
                com.kwad.sdk.core.d.c.d("perfMonitor.MonitorDetector", "originPrinter name:" + printer.getClass().getName());
                if (z2) {
                    f.gz(beS);
                }
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    String str = new String(com.kwad.sdk.core.a.c.LP().decode(it.next()));
                    com.kwad.sdk.core.d.c.d("perfMonitor.MonitorDetector", "printer after:" + str);
                    if (printer.getClass().getName().contains(str)) {
                        com.kwad.sdk.core.d.c.d("perfMonitor.MonitorDetector", "printer monitor");
                        return true;
                    }
                }
            } else {
                com.kwad.sdk.core.d.c.d("perfMonitor.MonitorDetector", "printer not hook");
            }
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("perfMonitor.MonitorDetector", "hasBlockMonitor ", e2);
            beR = true;
        }
        return false;
    }

    public static boolean ca(boolean z2) {
        List<String> list = beU;
        if (list == null || list.isEmpty()) {
            return false;
        }
        return c(beU, false);
    }

    private static boolean h(String str, boolean z2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        return c(arrayList, z2);
    }
}
