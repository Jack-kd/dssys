package com.byazt.mb;

import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsChecksumLevel, 30})
/* loaded from: classes3.dex */
public class jx implements hp.l {

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f22889l;
    public float zy;
    public final ConcurrentHashMap<Integer, j> jx = new ConcurrentHashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, Float> f22892j = new ConcurrentHashMap();

    /* renamed from: w, reason: collision with root package name */
    public j f22895w = null;
    public JSONArray eb = new JSONArray();

    /* renamed from: s, reason: collision with root package name */
    public final String f22894s = "realtime_feature";

    /* renamed from: q, reason: collision with root package name */
    public long f22893q = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f22891e = 0;
    public long gu = 0;
    public long jl = 0;
    public long hp = 0;

    /* renamed from: a, reason: collision with root package name */
    public Handler f22890a = e.hp();

    private jx() {
        com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        if (hpVarJx != null) {
            hpVarJx.hp(this);
        }
    }

    private Handler gu() {
        return this.f22890a;
    }

    public static jx jx() {
        if (f22889l == null) {
            synchronized (jx.class) {
                try {
                    if (f22889l == null) {
                        f22889l = new jx();
                    }
                } finally {
                }
            }
        }
        return f22889l;
    }

    public void a() {
        long jEb = eb();
        if (jEb != this.hp) {
            hp.hp(hp.f22876w);
            this.hp = jEb;
        }
    }

    public float e() {
        if (this.zy == 0.0f) {
            this.zy = DeviceUtils.s();
        }
        return this.zy;
    }

    public long eb() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        if (this.hp == 0) {
            this.hp = timeInMillis;
        }
        return timeInMillis;
    }

    public void j() {
        hp();
        l();
        hp.hp(hp.hp, 0L, 0L);
        hp.hp(hp.f22872j);
    }

    @Override // com.byazt.zn.hp.l
    public void onAppBackground() {
        if (!com.byazt.jz.s.u().nu() && sz.l().tq()) {
            gu().post(new Runnable() { // from class: com.byazt.mb.jx.4
                @Override // java.lang.Runnable
                public void run() {
                    hp.hp(hp.jx, hp.a(), 0L);
                    if (jx.this.f22895w != null) {
                        jx.this.f22895w.l();
                    }
                    Iterator it = jx.this.jx.values().iterator();
                    while (it.hasNext()) {
                        ((j) it.next()).l();
                    }
                    jx.this.f22891e = System.currentTimeMillis();
                }
            });
        }
    }

    @Override // com.byazt.zn.hp.l
    public void onAppExit() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppForeground() {
        if (!com.byazt.jz.s.u().nu() && sz.l().tq()) {
            gu().post(new Runnable() { // from class: com.byazt.mb.jx.5
                @Override // java.lang.Runnable
                public void run() {
                    jx.this.zy = DeviceUtils.s();
                    hp.hp(hp.f22873l, 0L, hp.eb());
                    hp.hp(hp.f22871a);
                    jx.this.f22893q = System.currentTimeMillis();
                }
            });
        }
    }

    @Override // com.byazt.zn.hp.l
    public void onAppStart() {
    }

    public long q() {
        return this.f22891e;
    }

    public long s() {
        return this.f22893q;
    }

    public JSONArray w() throws JSONException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.jx.keySet().isEmpty()) {
            this.eb = new JSONArray();
        } else {
            JSONArray jSONArray = new JSONArray();
            try {
                try {
                    for (Integer num : this.jx.keySet()) {
                        int iIntValue = num.intValue();
                        j jVar = this.jx.get(num);
                        if (jVar != null && jVar.hp().length() > 0) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("slot_type", iIntValue);
                            jSONObject.put("event_cnts", jVar.hp());
                            jSONArray.put(jSONObject);
                        }
                    }
                    if (this.f22895w != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("slot_type", -1);
                        jSONObject2.put("event_cnts", this.f22895w.hp());
                        jSONArray.put(jSONObject2);
                    }
                } catch (JSONException e2) {
                    u.hp(e2.getMessage());
                }
            } catch (Throwable th) {
                u.hp(th.getMessage());
            }
            this.eb = jSONArray;
        }
        if (sz.l().df()) {
            double dCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis;
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("cost", dCurrentTimeMillis);
                jSONObject3.put("feature_cnt", this.eb.length());
            } catch (JSONException e3) {
                u.hp(e3.getMessage());
            }
            k.hp().e(jSONObject3);
        }
        return this.eb;
    }

    public long l() {
        if (this.jl == 0) {
            this.jl = System.currentTimeMillis() - (SystemClock.elapsedRealtime() - vv.f21996w);
        }
        return this.jl;
    }

    public long hp() {
        if (this.gu == 0) {
            this.gu = System.currentTimeMillis() - (SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime());
        }
        return this.gu;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, @NonNull String str2, String str3, int i2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !sz.l().tq()) {
            return;
        }
        if (i2 > 0 && i2 <= 10) {
            j jVar = this.jx.get(Integer.valueOf(i2));
            if (jVar == null) {
                jVar = new j(str2);
                this.jx.put(Integer.valueOf(i2), jVar);
            }
            jVar.hp(str, str3);
            return;
        }
        if (this.f22895w == null) {
            this.f22895w = new j(str2);
        }
        this.f22895w.hp(str, str3);
    }

    public void hp(@NonNull final String str, @NonNull final String str2, final String str3, final JSONObject jSONObject, final String str4) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !sz.l().tq()) {
            return;
        }
        str.getClass();
        switch (str) {
            case "feed_over":
            case "show":
            case "skip":
            case "click":
            case "feed_continue":
            case "feed_break":
            case "feed_pause":
            case "play_start":
                gu().post(new Runnable() { // from class: com.byazt.mb.jx.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            String strOptString = str3;
                            int iOptInt = 0;
                            if (jSONObject != null) {
                                if (TextUtils.isEmpty(strOptString)) {
                                    strOptString = jSONObject.optString("req_id");
                                }
                                iOptInt = jSONObject.optInt("ad_slot_type", 0);
                            } else if (str4 != null) {
                                JSONObject jSONObject2 = new JSONObject(str4);
                                if (TextUtils.isEmpty(strOptString)) {
                                    strOptString = jSONObject2.optString("req_id");
                                }
                                iOptInt = jSONObject2.optInt("ad_slot_type", 0);
                            }
                            jx.this.hp(str, str2, strOptString, iOptInt);
                        } catch (Exception unused) {
                        }
                    }
                });
                break;
        }
    }

    public void hp(@NonNull final String str, final mp mpVar) {
        if (!TextUtils.isEmpty(str) && sz.l().tq() && "videoPercent30".equals(str)) {
            gu().post(new Runnable() { // from class: com.byazt.mb.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    mp mpVar2 = mpVar;
                    if (mpVar2 != null) {
                        String strJ = mpVar2.j();
                        if (TextUtils.isEmpty(strJ)) {
                            return;
                        }
                        jx.this.hp(str, strJ, mpVar.ns(), ky.jl(mpVar));
                    }
                }
            });
        }
    }

    public void hp(@NonNull final String str, final mp mpVar, final String str2) {
        if (TextUtils.isEmpty(str) || !sz.l().tq()) {
            return;
        }
        if ("landingStart".equals(str) || "landingFinish".equals(str) || "landingContinue".equals(str) || "landingPause".equals(str)) {
            gu().post(new Runnable() { // from class: com.byazt.mb.jx.3
                @Override // java.lang.Runnable
                public void run() {
                    mp mpVar2 = mpVar;
                    if (mpVar2 != null) {
                        String strJ = mpVar2.j();
                        if (TextUtils.isEmpty(strJ)) {
                            return;
                        }
                        int iJl = ky.jl(mpVar);
                        jx.this.hp(str, strJ, mpVar.ns() + str2, iJl);
                    }
                }
            });
        }
    }

    public void hp(mp mpVar, float f2) {
        if (mpVar != null) {
            this.f22892j.put(ky.hp(mpVar, ""), Float.valueOf(f2));
        }
    }

    public float hp(String str) {
        Float f2;
        if (TextUtils.isEmpty(str) || (f2 = this.f22892j.get(str)) == null) {
            return 0.0f;
        }
        return f2.floatValue();
    }
}
