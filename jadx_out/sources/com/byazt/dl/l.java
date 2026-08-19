package com.byazt.dl;

import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import com.anythink.core.common.d.i;
import com.byazt.ctq.w;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 33, 34})
/* loaded from: classes2.dex */
public class l {
    public static volatile l hp;
    public int jx = -1;

    /* renamed from: j, reason: collision with root package name */
    public long f19168j = -1;

    /* renamed from: w, reason: collision with root package name */
    public int f19172w = -1;

    /* renamed from: a, reason: collision with root package name */
    public int f19166a = -1;
    public int eb = -1;

    /* renamed from: s, reason: collision with root package name */
    public int f19171s = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f19170q = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f19167e = -1;

    /* renamed from: l, reason: collision with root package name */
    public w f19169l = com.byazt.lto.hp.l();

    private l() {
    }

    private synchronized void l(JSONObject jSONObject) {
        try {
            int iOptInt = jSONObject.optInt("event_batch_size", 100);
            this.jx = iOptInt;
            if (iOptInt <= 0 || iOptInt > 1000) {
                this.jx = 100;
            }
            long jOptLong = jSONObject.optLong("event_routine_interval", i.l.f2678c);
            this.f19168j = jOptLong;
            if (jOptLong < 10000 || jOptLong > PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                this.f19168j = i.l.f2678c;
            }
            int iOptInt2 = jSONObject.optInt("dynamic_adapter_type", 0);
            this.f19172w = iOptInt2;
            if (iOptInt2 != 0 && iOptInt2 != 1) {
                this.f19172w = 0;
            }
            this.eb = jSONObject.optInt("rv_start_time", 5000);
            int iOptInt3 = jSONObject.optInt("wf_dynamic_adapter_type", 0);
            this.f19166a = iOptInt3;
            if (iOptInt3 != 0 && iOptInt3 != 1) {
                this.f19166a = 0;
            }
            com.byazt.gp.j.hp().hp(jSONObject.optInt("pre_fetch_count", 20));
            this.f19171s = jSONObject.optInt("adapter_plugin_loader_gdt", -1);
            this.f19170q = jSONObject.optInt("can_log", -1);
            this.f19167e = jSONObject.optInt("enable_abtest_id", 0);
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized JSONObject q() {
        try {
            w wVar = this.f19169l;
            if (wVar == null) {
                return null;
            }
            String string = wVar.getString("app_common_config", null);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            if (!string.startsWith("[") && !string.startsWith("{")) {
                string = com.byazt.zg.hp.l(string, com.byazt.zg.l.hp());
            }
            if (!TextUtils.isEmpty(string)) {
                try {
                    return new JSONObject(string);
                } catch (Throwable unused) {
                }
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public int a() {
        int i2 = this.eb;
        if (i2 != -1) {
            return i2;
        }
        JSONObject jSONObjectQ = q();
        if (jSONObjectQ == null) {
            return 5000;
        }
        l(jSONObjectQ);
        return this.eb;
    }

    public boolean eb() {
        int i2 = this.f19170q;
        if (i2 != -1) {
            return i2 == 1;
        }
        JSONObject jSONObjectQ = q();
        if (jSONObjectQ != null) {
            l(jSONObjectQ);
            if (this.f19170q == 1) {
                return true;
            }
        }
        return false;
    }

    public int j() {
        int i2 = this.f19172w;
        if (i2 != -1) {
            return i2;
        }
        JSONObject jSONObjectQ = q();
        if (jSONObjectQ == null) {
            return 0;
        }
        l(jSONObjectQ);
        return this.f19172w;
    }

    public synchronized long jx() {
        long j2 = this.f19168j;
        if (j2 != -1) {
            return j2;
        }
        JSONObject jSONObjectQ = q();
        if (jSONObjectQ == null) {
            return i.l.f2678c;
        }
        l(jSONObjectQ);
        return this.f19168j;
    }

    public int s() {
        int i2 = this.f19167e;
        if (i2 != -1) {
            return i2;
        }
        JSONObject jSONObjectQ = q();
        if (jSONObjectQ == null) {
            return 0;
        }
        l(jSONObjectQ);
        return this.f19167e;
    }

    public int w() {
        int i2 = this.f19166a;
        if (i2 != -1) {
            return i2;
        }
        JSONObject jSONObjectQ = q();
        if (jSONObjectQ == null) {
            return 0;
        }
        l(jSONObjectQ);
        return this.f19166a;
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public synchronized void hp(final JSONObject jSONObject) {
        if (jSONObject != null) {
            l(jSONObject);
            if (com.byazt.di.l.l().jx()) {
                com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.dl.l.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String string = jSONObject.toString();
                        if (TextUtils.isEmpty(string)) {
                            return;
                        }
                        l.this.f19169l.put("app_common_config", string);
                    }
                });
            } else {
                String string = jSONObject.toString();
                if (!TextUtils.isEmpty(string)) {
                    this.f19169l.put("app_common_config", string);
                }
            }
        }
    }

    public synchronized int l() {
        int i2 = this.jx;
        if (i2 != -1) {
            return i2;
        }
        JSONObject jSONObjectQ = q();
        if (jSONObjectQ == null) {
            return 100;
        }
        l(jSONObjectQ);
        return this.jx;
    }
}
