package com.byazt.yek;

import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.ymw.e;
import com.byazt.zn.ky;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 669, 28})
/* loaded from: classes3.dex */
public class hp {
    public String eb;
    public final int jl;

    /* renamed from: s, reason: collision with root package name */
    public a f27900s;

    /* renamed from: w, reason: collision with root package name */
    public final AtomicBoolean f27901w = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f27895a = new AtomicBoolean(false);
    public List<mp> hp = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public List<mp> f27898l = new ArrayList();
    public List<mp> jx = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public List<String> f27897j = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public long f27899q = -1;

    /* renamed from: e, reason: collision with root package name */
    public long f27896e = -1;
    public long gu = -1;
    public final Runnable zy = new Runnable() { // from class: com.byazt.yek.hp.1
        @Override // java.lang.Runnable
        public void run() throws JSONException {
            if (hp.this.f27895a.get()) {
                return;
            }
            hp.this.f27901w.set(true);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(hp.this.f27898l);
            for (mp mpVar : hp.this.jx) {
                int iHp = hp.this.hp(mpVar);
                if (iHp == 2) {
                    mpVar.q(100009L);
                    arrayList.add(mpVar);
                } else if (iHp == 1) {
                    mpVar.q(100008L);
                } else {
                    mpVar.q(100003L);
                    arrayList2.add(mpVar);
                }
            }
            if (!arrayList.isEmpty() && hp.this.f27900s != null) {
                hp.this.f27900s.jx(arrayList);
            }
            hp.this.l(arrayList2);
        }
    };

    public hp(int i2) {
        this.jl = i2;
    }

    private void j(List<mp> list) throws JSONException {
        list.size();
        Iterator<mp> it = list.iterator();
        while (it.hasNext()) {
            jx(it.next());
        }
        a aVar = this.f27900s;
        if (aVar != null) {
            aVar.l(list);
        }
        hp();
    }

    private void jx(long j2) {
        this.gu = j2;
    }

    public void l(long j2) {
        this.f27896e = j2;
    }

    private void jx(List<mp> list) throws JSONException {
        list.size();
        Iterator<mp> it = list.iterator();
        while (it.hasNext()) {
            jx(it.next());
        }
        a aVar = this.f27900s;
        if (aVar != null) {
            aVar.hp(list);
        }
        hp();
    }

    private JSONObject l(int i2, List<mp> list) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<mp> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(l(it.next()));
            }
            jSONObject.put(com.sigmob.sdk.base.db.a.f36070a, jSONArray);
            jSONObject.put("check_type", i2);
            return jSONObject;
        } catch (JSONException e2) {
            e2.getMessage();
            return jSONObject;
        }
    }

    public void hp() {
        this.f27900s = null;
        e.jx().removeCallbacks(this.zy);
    }

    public void hp(long j2) {
        this.f27899q = j2;
    }

    public void hp(List<mp> list, a aVar) {
        this.f27900s = aVar;
        hp(list);
    }

    private void jx(mp mpVar) throws JSONException {
        jx(System.currentTimeMillis());
        if (mpVar.ri() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            String strL = ky.l(this.jl);
            long j2 = this.f27896e;
            long j3 = this.f27899q;
            jSONObject.put("cache_get_duration", j2 - j3 < 0 ? -1L : j2 - j3);
            long j4 = this.gu;
            long j5 = this.f27896e;
            jSONObject.put("network_check_duration", j4 - j5 < 0 ? -1L : j4 - j5);
            long j6 = this.gu;
            long j7 = this.f27899q;
            jSONObject.put("cache_total_duration", j6 - j7 < 0 ? -1L : j6 - j7);
            jSONObject.put("cache_loss_reason", this.eb);
            jSONObject.put("creative_check_duration", mpVar.mk() != null ? mpVar.mk().optLong("creative_check_duration", 0L) : -1L);
            jx.hp(mpVar, jSONObject, false);
            com.byazt.jdb.j.jx(mpVar, strL, jSONObject);
        } catch (Exception unused) {
        }
    }

    private void hp(List<mp> list) throws JSONException {
        boolean z2;
        this.hp = list;
        this.f27898l.clear();
        this.jx.clear();
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        for (mp mpVar : list) {
            this.f27897j.add(mpVar.sq());
            JSONObject jSONObjectMk = mpVar.mk();
            if (jSONObjectMk == null) {
                mpVar.s(-1L);
                this.f27898l.add(mpVar);
            } else {
                int iOptInt = jSONObjectMk.optInt("cache_correct_type", i2);
                int iOptInt2 = jSONObjectMk.optInt("is_need_cache_correct", i2);
                int iOptInt3 = jSONObjectMk.optInt("is_need_cache_check", i2);
                int i3 = iOptInt == 1 ? 1 : i2;
                int i4 = iOptInt2 == 1 ? 1 : i2;
                int i5 = iOptInt3 == 1 ? 1 : i2;
                if (i3 == 0) {
                    this.f27898l.add(mpVar);
                    mpVar.s(0L);
                } else if (i4 == 0 && i5 == 0) {
                    this.f27898l.add(mpVar);
                    mpVar.s(2L);
                    mpVar.q(100002L);
                } else if (i4 == 0) {
                    this.jx.add(mpVar);
                    mpVar.s(3L);
                    z3 = true;
                } else {
                    long jOptLong = jSONObjectMk.optLong("creative_check_duration", 0L);
                    if (jOptLong > 0) {
                        z2 = z3;
                        if (Math.abs((System.currentTimeMillis() / 1000) - ky.u(mpVar)) <= jOptLong) {
                            if (i5 == 0) {
                                this.f27898l.add(mpVar);
                                mpVar.s(4L);
                                mpVar.q(100002L);
                                z3 = z2;
                                i2 = 0;
                            } else {
                                this.jx.add(mpVar);
                                mpVar.s(6L);
                                z3 = true;
                                i2 = 0;
                            }
                        }
                    } else {
                        z2 = z3;
                    }
                    if (i5 == 0) {
                        this.jx.add(mpVar);
                        mpVar.s(5L);
                        z4 = true;
                        z3 = z2;
                        i2 = 0;
                    } else {
                        this.jx.add(mpVar);
                        mpVar.s(7L);
                        z3 = true;
                        z4 = true;
                        i2 = 0;
                    }
                }
            }
            z2 = z3;
            z3 = z2;
            i2 = 0;
        }
        boolean z5 = z3;
        if (!this.jx.isEmpty() && (z5 || z4)) {
            hp((z5 && z4) ? 3 : z5 ? 1 : z4 ? 2 : 0, this.jx);
        } else {
            jx(this.f27898l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(List<mp> list) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f27897j) {
            for (mp mpVar : list) {
                if (str.equals(mpVar.sq())) {
                    arrayList.add(mpVar);
                }
            }
        }
        j(arrayList);
    }

    private JSONObject l(mp mpVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            String strJ = mpVar.j();
            String strW_ = mpVar.w_();
            Map<String, Object> mapRp = mpVar.rp();
            String string = "";
            if (mapRp != null) {
                JSONObject jSONObject2 = new JSONObject();
                Set<Map.Entry<String, Object>> setEntrySet = mapRp.entrySet();
                if (!setEntrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : setEntrySet) {
                        jSONObject2.put(entry.getKey(), entry.getValue());
                    }
                }
                if (jSONObject2.length() > 0) {
                    string = jSONObject2.toString();
                }
            }
            hp(strJ, strW_, string, mpVar.ns(), jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void hp(final int i2, final List<mp> list) {
        Iterator<mp> it = list.iterator();
        long jMin = 2147483647L;
        while (it.hasNext()) {
            JSONObject jSONObjectMk = it.next().mk();
            long jOptLong = jSONObjectMk == null ? 0L : jSONObjectMk.optLong("correct_interface_timeout", 0L);
            if (jOptLong > 0) {
                jMin = Math.min(jMin, jOptLong);
            }
        }
        if (jMin == 2147483647L) {
            jMin = 0;
        }
        if (jMin > 0) {
            e.jx().postDelayed(this.zy, jMin);
        }
        sz.hp().hp(l(i2, list), new l<w>() { // from class: com.byazt.yek.hp.2
            @Override // com.byazt.yek.l
            public void hp(w wVar, long j2, long j3) {
                try {
                    hp.this.hp(i2, list, wVar, j2);
                } catch (Exception e2) {
                    e2.getMessage();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, List<mp> list, w wVar, long j2) throws JSONException {
        a aVar;
        if (this.f27901w.get()) {
            return;
        }
        this.f27895a.set(true);
        if (wVar == null || wVar.hp()) {
            j(Collections.EMPTY_LIST);
            return;
        }
        if (j2 != 20000) {
            Iterator<mp> it = list.iterator();
            while (it.hasNext()) {
                it.next().q(100001L);
            }
            l(this.hp);
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Map<String, JSONObject> map = wVar.f27903l;
        for (mp mpVar : list) {
            String strHp = w.hp(mpVar.j(), mpVar.ns());
            JSONObject jSONObject = TextUtils.isEmpty(strHp) ? null : map.get(strHp);
            if (jSONObject == null) {
                mpVar.q(100004L);
                arrayList.add(mpVar);
            } else {
                mpVar.e(jSONObject.optLong("cali_timestamp", 0L));
                if (jSONObject.has("is_valid")) {
                    if (jSONObject.optBoolean("is_valid")) {
                        if (i2 == 2 || i2 == 3) {
                            String strOptString = jSONObject.optString(n.f36450m);
                            String strOptString2 = jSONObject.optString("media_ext");
                            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                                mpVar.b(strOptString);
                                mpVar.hp(hp(new JSONObject(strOptString2), mpVar.rp()));
                            } else {
                                mpVar.q(100006L);
                                arrayList.add(mpVar);
                            }
                        }
                        mpVar.q(100000L);
                        arrayList.add(mpVar);
                    } else {
                        arrayList2.add(mpVar);
                        this.eb = jSONObject.optString(MediationConstant.KEY_REASON);
                        mpVar.q(100007L);
                    }
                } else {
                    mpVar.q(100005L);
                    arrayList.add(mpVar);
                }
            }
        }
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            jx((mp) obj);
        }
        if (!arrayList2.isEmpty() && (aVar = this.f27900s) != null) {
            aVar.jx(arrayList2);
        }
        arrayList.addAll(this.f27898l);
        l(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int hp(mp mpVar) {
        JSONObject jSONObjectMk = mpVar == null ? null : mpVar.mk();
        int iOptInt = jSONObjectMk == null ? 0 : jSONObjectMk.optInt("cache_correct_fallback_type", 0);
        if (iOptInt == 0 || iOptInt == 1 || iOptInt == 2) {
            return iOptInt;
        }
        return 0;
    }

    public static Map<String, Object> hp(JSONObject jSONObject, Map<String, Object> map) {
        if (jSONObject == null) {
            return map;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next)) {
                map.put(next, jSONObject.opt(next));
            }
        }
        return map;
    }

    private void hp(String str, String str2, String str3, String str4, JSONObject jSONObject) throws JSONException {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        String upperCase = com.byazt.ymw.a.l("id=" + str + "&timestamp=" + iCurrentTimeMillis + "&ext=" + str2 + "&media_ext=" + str3 + "&req_id=" + str4).toUpperCase();
        jSONObject.put("id", str);
        jSONObject.put("timestamp", iCurrentTimeMillis);
        jSONObject.put(n.f36450m, str2);
        jSONObject.put("media_ext", str3);
        jSONObject.put("req_id", str4);
        jSONObject.put(f.f5775Y, upperCase);
    }
}
