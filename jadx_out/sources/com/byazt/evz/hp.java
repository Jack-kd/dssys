package com.byazt.evz;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.byazt.ap.j;
import com.byazt.cm.w;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.rz.PluginConstants;
import com.byazt.uid.eb;
import com.byazt.ymw.u;
import com.byazt.zn.as;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1155, 28})
/* loaded from: classes2.dex */
public class hp implements hp.l {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f19508a;
    public static volatile hp hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static final String f19509j = "com.byazt.evz.hp";

    /* renamed from: w, reason: collision with root package name */
    public static HashMap<String, Long> f19510w;
    public com.byazt.zn.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public CopyOnWriteArrayList<JSONObject> f19511l = new CopyOnWriteArrayList<>();

    static {
        String name = hp.class.getName();
        f19510w = new HashMap<>();
        f19508a = new HashSet(Arrays.asList("dalvik.system.VMStack.getThreadStackTrace", "java.lang.Thread.getStackTrace", name));
    }

    private hp() {
        com.byazt.zn.hp hpVarJx = s.u().jx();
        this.jx = hpVarJx;
        if (hpVarJx != null) {
            hpVarJx.jx(this);
        }
    }

    @Override // com.byazt.zn.hp.l
    public void onAppBackground() throws JSONException {
        if (s.u().nu()) {
            return;
        }
        l();
    }

    @Override // com.byazt.zn.hp.l
    public void onAppExit() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppForeground() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppStart() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() throws JSONException {
        CopyOnWriteArrayList<JSONObject> copyOnWriteArrayList = this.f19511l;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<JSONObject> it = this.f19511l.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("stats_list", jSONArray);
        } catch (JSONException unused) {
        }
        this.f19511l.clear();
        String strJl = ky.jl("/api/ad/union/sdk/callstack/batch/");
        as asVar = new as(w.hp().l().a());
        asVar.hp(strJl);
        asVar.jx(jSONObject, "callstack");
        asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.evz.hp.2
            @Override // com.byazt.mnb.hp
            public void hp(j jVar, com.byazt.oyr.l lVar) {
                if (lVar != null) {
                    lVar.q();
                    lVar.w();
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(j jVar, IOException iOException) {
                iOException.getMessage();
            }
        });
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(int i2, com.byazt.jt.l lVar) {
        if (lVar == null) {
            return;
        }
        hp(i2, lVar.j());
    }

    private boolean hp(Long l2) {
        return !hp(new Date(), new Date(l2.longValue()));
    }

    private boolean hp(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5);
    }

    private boolean hp(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Long l2 = f19510w.get(str);
            if (l2 != null && l2.longValue() != 0) {
                if (!hp(l2)) {
                    return false;
                }
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis > 0) {
                    f19510w.put(str, Long.valueOf(jCurrentTimeMillis));
                }
            }
            return true;
        } catch (Throwable th) {
            u.hp("callstack error:" + th.getMessage());
            return true;
        }
    }

    public void hp(final int i2, final String str) {
        if (l.hp() && hp(str)) {
            final StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            com.byazt.uid.w.hp(new eb("callChainStatistic") { // from class: com.byazt.evz.hp.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    hp.this.f19511l.add(hp.this.hp(i2, str, stackTrace));
                    if (hp.this.f19511l.size() < 3) {
                        return;
                    }
                    try {
                        hp.this.l();
                    } catch (OutOfMemoryError unused) {
                    }
                }
            }, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject hp(int i2, String str, Object obj) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rit", str);
            jSONObject.put("appid", s.u().ns());
            jSONObject.put("app_version", ky.e());
            jSONObject.put("ad_sdk_version", d.f21860w);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            jSONObject.put("adtype", i2);
            jSONObject.put("timestamp", System.currentTimeMillis());
            jSONObject.put("callstack", hp(obj));
            jSONObject.put("type", "callstack");
            jSONObject.put("device_info", com.byazt.lca.hp.hp(sz.getContext(), i2));
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private JSONArray hp(Object obj) {
        JSONArray jSONArray = new JSONArray();
        if (obj != null) {
            for (StackTraceElement stackTraceElement : (StackTraceElement[]) obj) {
                if (stackTraceElement != null) {
                    if (!f19508a.contains(stackTraceElement.getClassName() + i.f2495E + stackTraceElement.getMethodName())) {
                        String className = stackTraceElement.getClassName();
                        if (className != null && className.startsWith("android.app")) {
                            break;
                        }
                        jSONArray.put(stackTraceElement.toString());
                    } else {
                        continue;
                    }
                }
            }
        }
        return jSONArray;
    }
}
