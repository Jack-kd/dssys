package com.byazt.lf;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.byazt.jw.hp;
import com.byazt.jz.sz;
import com.byazt.ymw.u;
import com.sigmob.sdk.base.common.C1244a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 736, 34})
/* loaded from: classes3.dex */
public class l {
    public static final Set<String> eb;

    /* renamed from: s, reason: collision with root package name */
    public static List<com.byazt.ai.hp> f22593s;
    public static final String hp = UUID.randomUUID().toString();

    /* renamed from: l, reason: collision with root package name */
    public static AtomicInteger f22592l = new AtomicInteger(0);

    /* renamed from: w, reason: collision with root package name */
    public static String f22594w = "_create";
    public static final AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicBoolean f22591j = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f22590a = new AtomicBoolean(false);

    static {
        HashSet hashSet = new HashSet();
        eb = hashSet;
        hashSet.add("click_start");
        hashSet.add("download_start");
        hashSet.add(C1244a.f35652D);
        hashSet.add(C1244a.f35654F);
        hashSet.add("click");
        hashSet.add("show");
        f22593s = new CopyOnWriteArrayList();
    }

    public static void hp(Context context, boolean z2) {
        if (jx.compareAndSet(false, true)) {
            l(context, z2);
            com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.lf.l.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.mdk.hp.jx("csj");
                    l.f22591j.set(true);
                }
            }, com.byazt.jz.s.u().a() ? 20000L : WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
        }
    }

    public static void j() {
        try {
            com.byazt.mdk.hp.hp("csj", false);
        } catch (Exception e2) {
            u.l(f22594w, e2.getMessage());
        }
    }

    public static com.byazt.kk.hp jx() {
        return zy.hp;
    }

    private static void l(Context context, boolean z2) {
        if (context == null) {
            return;
        }
        int iVq = sz.l().vq();
        if (iVq <= 0 || iVq == Integer.MAX_VALUE) {
            iVq = 100;
        }
        int iAs = sz.l().as();
        if (iAs > iVq) {
            iAs = 5;
            iVq = 10;
        }
        com.byazt.mdk.hp.hp(new hp.C0286hp().jx(com.byazt.yc.hp.hp(iAs, iVq)).hp(com.byazt.yc.hp.hp(1, iVq)).l(com.byazt.yc.hp.hp(1, iVq)).l(z2).hp("csj").hp(sz.l().kg()).hp(context).hp(new q()).hp(s.hp).hp(sz.l().f()).l(com.byazt.wu.hp.w()).hp());
    }

    public static void hp() {
        com.byazt.mdk.hp.hp(false, "csj");
    }

    public static void hp(com.byazt.ai.hp hpVar, String str, int i2) {
        if (sz.l().vt()) {
            return;
        }
        if (com.byazt.mdk.hp.hp("csj")) {
            f22593s.add(hpVar);
            com.byazt.gq.jx.reportEvent(hpVar);
            hp(sz.getContext(), com.byazt.ton.l.hp());
        } else {
            hp(hpVar);
            com.byazt.gq.jx.reportEvent(hpVar);
        }
    }

    private static void hp(com.byazt.jw.l lVar) {
        if (f22590a.compareAndSet(false, true) && !f22593s.isEmpty()) {
            int size = f22593s.size();
            for (int i2 = 0; i2 < size; i2++) {
                com.byazt.mdk.hp.hp(f22593s.get(i2), "csj");
            }
            f22593s.clear();
        }
        com.byazt.mdk.hp.hp(lVar, "csj");
    }

    private static void hp(String str, com.byazt.ai.hp hpVar) {
        if (sz.l().dy()) {
            try {
                hpVar.jx(com.byazt.giz.hp.l(str));
            } catch (Exception e2) {
                u.hp(e2.getMessage());
            }
        }
    }

    public static void l() {
        com.byazt.mdk.hp.hp(s.hp, "csj");
    }

    public static void hp(com.byazt.jdb.hp hpVar, final String str) {
        if (!sz.l().vt() || eb.contains(str)) {
            final com.byazt.ai.hp hpVar2 = new com.byazt.ai.hp(hpVar.j(), hpVar);
            hpVar2.l(hpVar.a() ? (byte) 1 : (byte) 2);
            hpVar2.hp((byte) 0);
            hp(hpVar.jx(), hpVar2);
            if (com.byazt.mdk.hp.hp("csj")) {
                f22593s.add(hpVar2);
                com.byazt.gq.jx.reportEvent(hpVar2);
                hp(sz.getContext(), com.byazt.ton.l.hp());
            } else {
                hp(hpVar2);
                com.byazt.gq.jx.reportEvent(hpVar2);
            }
            final com.byazt.sf.jx jxVar = (com.byazt.sf.jx) com.byazt.ym.j.getService("pitaya");
            if (jxVar != null) {
                com.byazt.dnb.s.hp(new com.byazt.uid.eb("csj-pitaya-applog") { // from class: com.byazt.lf.l.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            jxVar.onAppLogEvent(str, hpVar2.eb());
                        } catch (Throwable th) {
                            u.l("AdLogSwitchUtils", "pitaya onAppLogEvent error:" + th.getMessage());
                        }
                    }
                });
            }
        }
    }

    public static void hp(String str, List<String> list, boolean z2, Map<String, String> map, JSONObject jSONObject) {
        if (list == null || list.size() == 0) {
            return;
        }
        list.size();
        if (com.byazt.mdk.hp.hp("csj")) {
            hp(sz.getContext(), com.byazt.ton.l.hp());
        }
        com.byazt.mdk.hp.hp("csj", str, hp(list, ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getOAID(false)), z2, map, jSONObject);
    }

    public static List<String> hp(List<String> list, String str) {
        if (list != null && list.size() != 0 && !TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList(list);
            list = new ArrayList<>();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                String strReplace = (String) arrayList.get(i2);
                if (!TextUtils.isEmpty(strReplace)) {
                    if (strReplace.contains("{OAID}") || strReplace.contains("__OAID__")) {
                        strReplace = strReplace.replace("{OAID}", str).replace("__OAID__", str);
                    }
                    list.add(strReplace);
                }
            }
        }
        return list;
    }

    public static void hp(String str) {
        if (com.byazt.mdk.hp.hp("csj")) {
            hp(sz.getContext(), com.byazt.ton.l.hp());
        }
        com.byazt.mdk.hp.hp("csj", str);
    }
}
