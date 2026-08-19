package com.kwad.sdk.m;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.q;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class b {
    public static final String TAG = "Ranger_" + b.class.getSimpleName();
    private List<com.kwad.sdk.m.a.a> bmI;

    public static class a {
        private static final b bmM = new b();
    }

    private static void E(int i2, String str) throws Throwable {
        ai.h("ksadsdk_perf_ranger_v2", "aggregation_version" + ("_" + i2), str);
    }

    private boolean T(List<String> list) throws ClassNotFoundException {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<String> it = list.iterator();
        boolean z2 = true;
        while (it.hasNext()) {
            boolean zHv = false;
            for (String str : hw(it.next())) {
                zHv = hv(str);
                int i2 = zHv ? 0 : i2 + 1;
            }
            z2 &= zHv;
        }
        return z2;
    }

    public static b TD() {
        return a.bmM;
    }

    private void TE() throws Throwable {
        long jUD = q.UD();
        if (jUD <= 0) {
            return;
        }
        ba(jUD);
    }

    private static void TG() throws Throwable {
        ai.a("ksadsdk_perf_ranger_v2", "ks_launch_delay", 0L);
    }

    private static void ba(long j2) throws Throwable {
        ai.a("ksadsdk_perf_ranger_v2", "ks_launch_delay", j2);
    }

    private static void fD(int i2) {
        ai.a("ksadsdk_perf_ranger_v2", "aggregation_sdk" + ("_" + i2), 1);
    }

    private static boolean fE(int i2) {
        StringBuilder sb = new StringBuilder("aggregation_sdk");
        sb.append("_" + i2);
        return ai.b("ksadsdk_perf_ranger_v2", sb.toString(), -1) == 1;
    }

    private static com.kwad.sdk.m.b.a.a fF(int i2) {
        com.kwad.sdk.m.b.a.a aVar = new com.kwad.sdk.m.b.a.a();
        String str = "_" + i2;
        aVar.fN(i2);
        aVar.hz(ai.i("ksadsdk_perf_ranger_v2", "aggregation_version" + str, ""));
        aVar.fO(ai.b("ksadsdk_perf_ranger_v2", "crash_times" + str, 0));
        aVar.fP(ai.b("ksadsdk_perf_ranger_v2", "call_ks_union_times" + str, 0));
        aVar.bb(ai.b("ksadsdk_perf_ranger_v2", "ks_launch_delay", -1L));
        aVar.bc(ai.b("ksadsdk_perf_ranger_v2", "aggregation_launch_delay" + str, -1L));
        return aVar;
    }

    private static void fG(int i2) throws Throwable {
        ai.h("ksadsdk_perf_ranger_v2", "aggregation_version" + ("_" + i2), "");
    }

    public static void fH(int i2) {
        String str = "_" + i2;
        ai.a("ksadsdk_perf_ranger_v2", "crash_times" + str, ai.b("ksadsdk_perf_ranger_v2", "crash_times" + str, -1) + 1);
    }

    private static void fI(int i2) {
        ai.a("ksadsdk_perf_ranger_v2", "crash_times" + ("_" + i2), 0);
    }

    public static void fJ(int i2) {
        String str = "_" + i2;
        ai.a("ksadsdk_perf_ranger_v2", "call_ks_union_times" + str, ai.b("ksadsdk_perf_ranger_v2", "call_ks_union_times" + str, -1) + 1);
    }

    private static void fK(int i2) {
        ai.a("ksadsdk_perf_ranger_v2", "call_ks_union_times" + ("_" + i2), 0);
    }

    private static void fL(int i2) throws Throwable {
        ai.a("ksadsdk_perf_ranger_v2", "aggregation_launch_delay" + ("_" + i2), 0L);
    }

    private static boolean hv(String str) throws ClassNotFoundException {
        try {
            Class.forName(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static String[] hw(String str) {
        return str.contains("_") ? str.split("_") : new String[]{str};
    }

    public final void TF() {
        boolean z2 = false;
        for (int i2 = 0; i2 < this.bmI.size(); i2++) {
            com.kwad.sdk.m.a.a aVar = this.bmI.get(i2);
            if (fE(aVar.bmZ)) {
                com.kwad.sdk.commercial.c.v(fF(aVar.bmZ));
                z2 = true;
            }
        }
        if (z2) {
            return;
        }
        com.kwad.sdk.commercial.c.v(fF(-1));
    }

    public final void clearAll() throws Throwable {
        for (int i2 = 0; i2 < this.bmI.size(); i2++) {
            fG(i2);
            fI(i2);
            fK(i2);
            TG();
            fL(i2);
        }
    }

    public final void hx(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        GlobalThreadPools.NX().execute(new Runnable() { // from class: com.kwad.sdk.m.b.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (b.this.bmI != null && !b.this.bmI.isEmpty()) {
                        for (com.kwad.sdk.m.a.a aVar : b.this.bmI) {
                            if (b.b(str, aVar.bnc)) {
                                b.fH(aVar.bmZ);
                            }
                        }
                    }
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.w(b.TAG, Log.getStackTraceString(e2));
                }
            }
        });
    }

    public final void start() throws Throwable {
        TE();
        List<com.kwad.sdk.m.a.a> list = this.bmI;
        if (list == null) {
            com.kwad.sdk.core.d.c.w(TAG, "aggregationCheckConfigList is null");
            return;
        }
        for (com.kwad.sdk.m.a.a aVar : list) {
            try {
                if (T(aVar.bna)) {
                    fD(aVar.bmZ);
                }
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.w(TAG, Log.getStackTraceString(e2));
            }
            try {
                if (aVar.bnb != null) {
                    a(aVar);
                }
            } catch (Exception e3) {
                com.kwad.sdk.core.d.c.w(TAG, Log.getStackTraceString(e3));
            }
        }
    }

    private void a(com.kwad.sdk.m.a.a aVar) throws Throwable {
        String strA = c.TI().a(aVar.bnb);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        E(aVar.bmZ, strA);
    }

    public final void b(d dVar) {
        List<com.kwad.sdk.m.a.a> list = dVar.bmI;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.bmI = list;
    }

    public final void c(final StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            return;
        }
        GlobalThreadPools.NX().execute(new Runnable() { // from class: com.kwad.sdk.m.b.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (b.this.bmI != null && !b.this.bmI.isEmpty()) {
                        for (com.kwad.sdk.m.a.a aVar : b.this.bmI) {
                            if (b.a(stackTraceElementArr, aVar.bnd)) {
                                b.fJ(aVar.bmZ);
                            }
                        }
                    }
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.w(b.TAG, Log.getStackTraceString(e2));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static boolean a(StackTraceElement[] stackTraceElementArr, List<String> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (String str : list) {
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (q.a(stackTraceElement).contains(str)) {
                    break;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str, List<String> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (!str.contains(it.next())) {
                return false;
            }
        }
        return true;
    }
}
