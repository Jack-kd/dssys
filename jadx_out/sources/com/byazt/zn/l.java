package com.byazt.zn;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 34})
/* loaded from: classes3.dex */
public class l {
    public static volatile l hp;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.ow.w f28545e;
    public com.byazt.ow.w eb;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.ow.w f28548q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.ow.w f28549s;
    public volatile int gu = 0;
    public int jl = 0;
    public int zy = 0;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, Integer> f28547l = new HashMap();
    public final ConcurrentHashMap<String, Integer> jx = new ConcurrentHashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, Long> f28546j = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public final ConcurrentHashMap<String, Long> f28550w = new ConcurrentHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public final long f28544a = SystemClock.elapsedRealtime();

    private l() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ow.w a() {
        if (this.f28548q == null) {
            this.f28548q = nu.hp("activity_foreground_time");
        }
        return this.f28548q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ow.w eb() {
        if (this.f28545e == null) {
            this.f28545e = nu.hp("activity_recorder");
        }
        return this.f28545e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ow.w w() {
        if (this.f28549s == null) {
            this.f28549s = nu.hp("activity_adshow_count");
        }
        return this.f28549s;
    }

    public void j(final String str) {
        com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.zn.l.3
            @Override // java.lang.Runnable
            public void run() {
                l.this.w().put(str, l.this.w().get(str, 0) + 1);
            }
        });
    }

    public void jx(String str) {
        Long lRemove;
        if (TextUtils.isEmpty(str) || (lRemove = this.f28550w.remove(str)) == null) {
            return;
        }
        long jElapsedRealtime = (SystemClock.elapsedRealtime() - lRemove.longValue()) / 1000;
        if (jElapsedRealtime >= 0) {
            Long l2 = this.f28546j.get(str);
            if (l2 == null || l2.longValue() < 0) {
                l2 = 0L;
            }
            this.f28546j.put(str, Long.valueOf(l2.longValue() + jElapsedRealtime));
            hp(str, jElapsedRealtime);
        }
    }

    public void l(final String str) {
        com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.zn.l.1
            @Override // java.lang.Runnable
            public void run() {
                l.this.j().put(str, l.this.j().get(str, 0) + 1);
                if (l.this.gu == 0) {
                    l lVar = l.this;
                    lVar.gu = lVar.eb().get("histRunningCount", 0) + 1;
                    l.this.eb().put("histRunningCount", l.this.gu);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ow.w j() {
        if (this.eb == null) {
            this.eb = nu.hp("activity_resume_count");
        }
        return this.eb;
    }

    public void l() {
        if (this.f28550w.size() == 1) {
            for (String str : this.f28550w.keySet()) {
                Integer num = this.jx.get(str);
                this.jx.put(str, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                j(str);
            }
        }
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

    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Integer num = this.f28547l.get(str);
        this.f28547l.put(str, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
        this.f28550w.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
        if (this.f28550w.size() > 1) {
            this.jl++;
        }
        l(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        try {
            Map all = j().getAll();
            if (all == null) {
                return;
            }
            Iterator it = all.values().iterator();
            int iIntValue = 0;
            while (it.hasNext()) {
                iIntValue += ((Integer) it.next()).intValue();
            }
            if (iIntValue != 0 && iIntValue % 75 == 0) {
                final JSONArray jSONArray = new JSONArray();
                Iterator<String> it2 = this.f28547l.keySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    String next = it2.next();
                    Integer num = this.f28547l.get(next);
                    Long l2 = this.f28546j.get(next);
                    Integer num2 = this.jx.get(next);
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("name", next);
                        jSONObject.put("rc", num != null ? num.intValue() : 0);
                        jSONObject.put("ft", l2 != null ? l2.longValue() : 0L);
                        jSONObject.put("asc", num2 != null ? num2.intValue() : 0);
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                final JSONArray jSONArray2 = new JSONArray();
                Map all2 = a().getAll();
                Map all3 = w().getAll();
                if (all2 != null && all3 != null) {
                    for (String str : all.keySet()) {
                        Integer num3 = (Integer) all.get(str);
                        Long l3 = (Long) all2.get(str);
                        Integer num4 = (Integer) all3.get(str);
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("name", str);
                            jSONObject2.put("rc", num3 != null ? num3.intValue() : 0);
                            jSONObject2.put("ft", l3 != null ? l3.longValue() : 0L);
                            jSONObject2.put("asc", num4 != null ? num4.intValue() : 0);
                            jSONArray2.put(jSONObject2);
                        } catch (JSONException unused2) {
                        }
                    }
                }
                final long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.f28544a) / 1000;
                com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zn.l.4
                    @Override // com.byazt.fq.hp
                    public com.byazt.jlb.hp hp() throws Exception {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("ara", jSONArray);
                        jSONObject3.put("hara", jSONArray2);
                        jSONObject3.put("rt", jElapsedRealtime);
                        jSONObject3.put("hrc", l.this.gu);
                        jSONObject3.put("drc", l.this.jl);
                        return com.byazt.jlb.l.l().hp("ad_activity_record").l(jSONObject3.toString());
                    }
                }, "ad_activity_record");
            }
        } catch (Throwable unused3) {
        }
    }

    public void hp(final String str, final long j2) {
        com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.zn.l.2
            @Override // java.lang.Runnable
            public void run() {
                long j3 = l.this.a().get(str, 0L);
                l.this.a().put(str, (j3 >= 0 ? j3 : 0L) + j2);
                l.this.jx();
                l.this.hp(j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2) {
        int i2 = this.zy;
        if (i2 == 0) {
            try {
                Map all = a().getAll();
                if (all != null) {
                    Iterator it = all.values().iterator();
                    while (it.hasNext()) {
                        this.zy = (int) (this.zy + ((Long) it.next()).longValue());
                    }
                }
            } catch (Throwable unused) {
                this.zy = -1;
            }
        } else {
            this.zy = (int) (i2 + j2);
        }
        b.hp(this.zy, this.gu);
    }
}
