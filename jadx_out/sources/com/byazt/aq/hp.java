package com.byazt.aq;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.oyr.hp;
import com.byazt.pg.r;
import com.byazt.uid.s;
import com.byazt.ymw.sz;
import com.kuaishou.weapon.p0.bg;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 403, 28})
/* loaded from: classes2.dex */
public class hp implements r.hp {

    /* renamed from: q, reason: collision with root package name */
    public static ThreadPoolExecutor f18062q;

    /* renamed from: s, reason: collision with root package name */
    public static boolean f18063s;
    public final Context gu;

    /* renamed from: k, reason: collision with root package name */
    public int f18067k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f18068l;
    public com.byazt.oyr.hp zy;
    public volatile boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18066j = true;

    /* renamed from: w, reason: collision with root package name */
    public boolean f18069w = false;

    /* renamed from: a, reason: collision with root package name */
    public long f18064a = 0;
    public long eb = 0;

    /* renamed from: e, reason: collision with root package name */
    public AtomicBoolean f18065e = new AtomicBoolean(false);
    public volatile boolean jl = false;
    public final Handler hp = ((r) com.byazt.ym.j.getService("thread_service")).getIOHandler();

    public hp(Context context, int i2) {
        this.gu = context;
        this.f18068l = sz.hp(context);
        this.f18067k = i2;
    }

    public static ThreadPoolExecutor eb() {
        if (f18062q == null) {
            synchronized (hp.class) {
                try {
                    if (f18062q == null) {
                        com.byazt.shx.j jVar = new com.byazt.shx.j(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new s("tnc/AppConfig"));
                        f18062q = jVar;
                        jVar.allowCoreThreadTimeOut(true);
                    }
                } finally {
                }
            }
        }
        return f18062q;
    }

    private void j(boolean z2) {
        if (this.f18069w) {
            return;
        }
        if (this.f18066j) {
            this.f18066j = false;
            this.f18064a = 0L;
            this.eb = 0L;
        }
        long j2 = z2 ? 360000L : 43200000L;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f18064a > j2) {
            if (jCurrentTimeMillis - this.eb > i.l.f2678c || !this.jl) {
                jx();
            }
        }
    }

    private com.byazt.oyr.hp q() {
        if (this.zy == null) {
            hp.C0335hp c0335hp = new hp.C0335hp();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.zy = c0335hp.hp(10L, timeUnit).l(10L, timeUnit).jx(10L, timeUnit).hp();
        }
        return this.zy;
    }

    private boolean s() {
        String[] strArrA = a();
        if (strArrA != null && strArrA.length != 0) {
            hp(0);
        }
        return false;
    }

    public String[] a() {
        String[] strArrA = eb.hp().hp(this.f18067k).j() != null ? eb.hp().hp(this.f18067k).j().a() : null;
        return (strArrA == null || strArrA.length <= 0) ? new String[0] : strArrA;
    }

    public Context getContext() {
        return this.gu;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        int i2 = message.what;
        if (i2 == 101) {
            this.f18069w = false;
            this.f18064a = System.currentTimeMillis();
            com.byazt.xh.jx.l("TNCManager", "doRefresh, succ");
            if (this.f18066j) {
                hp();
            }
            this.f18065e.set(false);
            return;
        }
        if (i2 != 102) {
            return;
        }
        this.f18069w = false;
        if (this.f18066j) {
            hp();
        }
        com.byazt.xh.jx.l("TNCManager", "doRefresh, error");
        this.f18065e.set(false);
    }

    public boolean jx() {
        com.byazt.xh.jx.l("TNCManager", "doRefresh: updating state " + this.f18065e.get());
        eb().execute(new Runnable() { // from class: com.byazt.aq.hp.2
            @Override // java.lang.Runnable
            public void run() {
                boolean zHp = com.byazt.xh.w.hp(hp.this.gu);
                if (zHp) {
                    hp.this.eb = System.currentTimeMillis();
                    if (hp.this.f18065e.compareAndSet(false, true)) {
                        hp.this.jx(zHp);
                    } else {
                        com.byazt.xh.jx.l("TNCManager", "doRefresh, already running");
                    }
                }
            }
        });
        return true;
    }

    public void w() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            if (this.f18068l) {
                j();
            } else {
                l();
            }
        } catch (Throwable unused) {
        }
    }

    public static void l(boolean z2) {
        f18063s = z2;
    }

    public void jx(boolean z2) {
        com.byazt.xh.jx.l("TNCManager", "doRefresh, actual request");
        j();
        this.f18069w = true;
        if (!z2) {
            this.hp.sendEmptyMessage(102);
            return;
        }
        try {
            s();
        } catch (Exception unused) {
            this.f18065e.set(false);
        }
    }

    public synchronized void l() {
        if (System.currentTimeMillis() - this.f18064a > bg.f30873s) {
            this.f18064a = System.currentTimeMillis();
            try {
                if (eb.hp().hp(this.f18067k).s() != null) {
                    eb.hp().hp(this.f18067k).s().l();
                }
            } catch (Exception unused) {
            }
        }
    }

    public void hp() {
        hp(false);
    }

    public synchronized void hp(boolean z2) {
        if (this.f18068l) {
            j(z2);
            return;
        }
        if (this.f18064a <= 0) {
            try {
                eb().execute(new Runnable() { // from class: com.byazt.aq.hp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.l();
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized void j() {
        if (this.jl) {
            return;
        }
        this.jl = true;
        long j2 = com.byazt.rz.l.l(this.gu, "ss_app_config", 0).getLong("last_refresh_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j2 > jCurrentTimeMillis) {
            j2 = jCurrentTimeMillis;
        }
        this.f18064a = j2;
        try {
            if (eb.hp().hp(this.f18067k).s() != null) {
                eb.hp().hp(this.f18067k).s().hp();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        Handler handler = this.hp;
        if (handler != null) {
            handler.sendEmptyMessage(i2);
        }
    }

    public static void hp(Context context, int i2) {
        hp hpVarHp;
        if (f18063s && (hpVarHp = eb.hp().hp(i2, context)) != null) {
            if (sz.hp(context)) {
                hpVarHp.hp(true);
            } else {
                hpVarHp.hp();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(Object obj) throws Exception {
        JSONObject jSONObject;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            jSONObject = new JSONObject(str);
            if (!cb.f11292o.equals(jSONObject.getString("message"))) {
                return false;
            }
        } else {
            jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        }
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        synchronized (this) {
            SharedPreferences.Editor editorEdit = com.byazt.rz.l.l(this.gu, "ss_app_config", 0).edit();
            editorEdit.putLong("last_refresh_time", System.currentTimeMillis());
            editorEdit.apply();
        }
        if (eb.hp().hp(this.f18067k).s() == null) {
            return true;
        }
        eb.hp().hp(this.f18067k).s().hp(jSONObject2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final int i2) {
        String[] strArrA = a();
        if (strArrA != null && strArrA.length > i2) {
            String str = strArrA[i2];
            if (TextUtils.isEmpty(str)) {
                l(102);
                return;
            }
            try {
                String strHp = hp(str);
                if (TextUtils.isEmpty(strHp)) {
                    l(102);
                    return;
                }
                com.byazt.ap.jx jxVarJx = q().jx();
                jxVarJx.hp(strHp);
                hp(jxVarJx);
                jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.aq.hp.3
                    @Override // com.byazt.mnb.hp
                    public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) throws JSONException {
                        JSONObject jSONObject;
                        if (lVar == null || !lVar.q()) {
                            hp.this.hp(i2 + 1);
                            return;
                        }
                        String string = null;
                        try {
                            jSONObject = new JSONObject(lVar.w());
                        } catch (Exception unused) {
                            jSONObject = null;
                        }
                        if (jSONObject == null) {
                            hp.this.hp(i2 + 1);
                            return;
                        }
                        try {
                            string = jSONObject.getString("message");
                        } catch (Exception unused2) {
                        }
                        if (!cb.f11292o.equals(string)) {
                            hp.this.hp(i2 + 1);
                            return;
                        }
                        try {
                            if (hp.this.hp(jSONObject)) {
                                hp.this.l(101);
                            } else {
                                hp.this.hp(i2 + 1);
                            }
                        } catch (Exception unused3) {
                        }
                    }

                    @Override // com.byazt.mnb.hp
                    public void hp(com.byazt.ap.j jVar, IOException iOException) {
                        hp.this.hp(i2 + 1);
                    }
                });
                return;
            } catch (Throwable th) {
                com.byazt.xh.jx.l("AppConfig", "try app config exception: ".concat(String.valueOf(th)));
                return;
            }
        }
        l(102);
    }

    private String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return "https://" + str + "/get_domains/v4/";
    }

    private void hp(com.byazt.ap.jx jxVar) {
        if (jxVar == null) {
            return;
        }
        Address addressHp = eb.hp().hp(this.f18067k).j() != null ? eb.hp().hp(this.f18067k).j().hp(this.gu) : null;
        if (addressHp != null && addressHp.hasLatitude() && addressHp.hasLongitude()) {
            StringBuilder sb = new StringBuilder();
            sb.append(addressHp.getLatitude());
            jxVar.hp("latitude", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(addressHp.getLongitude());
            jxVar.hp("longitude", sb2.toString());
            String locality = addressHp.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                jxVar.hp("city", Uri.encode(locality));
            }
        }
        if (this.jx) {
            jxVar.hp("force", "1");
        }
        try {
            jxVar.hp("abi", Build.SUPPORTED_ABIS[0]);
        } catch (Throwable unused) {
        }
        if (eb.hp().hp(this.f18067k).j() != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(eb.hp().hp(this.f18067k).j().hp());
            jxVar.hp("aid", sb3.toString());
            jxVar.hp("device_platform", eb.hp().hp(this.f18067k).j().jx());
            jxVar.hp("channel", eb.hp().hp(this.f18067k).j().l());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(eb.hp().hp(this.f18067k).j().j());
            jxVar.hp("version_code", sb4.toString());
            jxVar.hp("custom_info_1", eb.hp().hp(this.f18067k).j().w());
        }
    }

    public static void hp(ThreadPoolExecutor threadPoolExecutor) {
        f18062q = threadPoolExecutor;
    }
}
