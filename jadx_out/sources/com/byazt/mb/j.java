package com.byazt.mb;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.jz.sz;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsChecksumLevel, 38})
/* loaded from: classes3.dex */
public class j implements Comparable<j> {
    public int eb;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public long f22884k;

    /* renamed from: l, reason: collision with root package name */
    public final String f22885l;

    /* renamed from: w, reason: collision with root package name */
    public int f22888w;
    public final ArrayList<Long> hp = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList<Long> f22883j = new ArrayList<>();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<Long> f22881a = new ArrayList<>();

    /* renamed from: s, reason: collision with root package name */
    public final ArrayList<Long> f22887s = new ArrayList<>();

    /* renamed from: q, reason: collision with root package name */
    public final HashMap<String, w> f22886q = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public int f22882e = 0;
    public int gu = 0;
    public final HashMap<String, w> jl = new HashMap<>();
    public int zy = 0;

    public j(String str) {
        this.f22885l = str;
    }

    private void l(@NonNull JSONArray jSONArray) throws JSONException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        List<Integer> listId = sz.l().id();
        if (listId != null) {
            int i2 = 0;
            while (i2 < listId.size()) {
                int iIntValue = listId.get(i2).intValue();
                long j2 = jElapsedRealtime - (iIntValue * 60000);
                Iterator<String> it = this.jl.keySet().iterator();
                long jHp = 0;
                while (it.hasNext()) {
                    HashSet hashSet3 = hashSet;
                    HashSet hashSet4 = hashSet2;
                    w wVar = this.jl.get(it.next());
                    if (wVar != null) {
                        jHp += wVar.hp(j2, jElapsedRealtime);
                    }
                    hashSet2 = hashSet4;
                    hashSet = hashSet3;
                }
                HashSet hashSet5 = hashSet;
                HashSet hashSet6 = hashSet2;
                if (jHp != 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(bv.aI, "lpstay_".concat(String.valueOf(iIntValue)));
                    jSONObject.put("v", jHp);
                    jSONArray.put(jSONObject);
                }
                i2++;
                hashSet2 = hashSet6;
                hashSet = hashSet5;
            }
        }
        HashSet hashSet7 = hashSet;
        HashSet hashSet8 = hashSet2;
        if (listId != null) {
            for (int i3 = 0; i3 < listId.size(); i3++) {
                int iIntValue2 = listId.get(i3).intValue();
                long j3 = jElapsedRealtime - (iIntValue2 * 60000);
                Iterator<String> it2 = this.f22886q.keySet().iterator();
                long jHp2 = 0;
                while (it2.hasNext()) {
                    w wVar2 = this.f22886q.get(it2.next());
                    if (wVar2 != null) {
                        jHp2 += wVar2.hp(j3, jElapsedRealtime);
                    }
                }
                if (jHp2 != 0) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(bv.aI, "vstay_".concat(String.valueOf(iIntValue2)));
                    jSONObject2.put("v", jHp2);
                    jSONArray.put(jSONObject2);
                }
                Iterator it3 = hashSet7.iterator();
                while (it3.hasNext()) {
                    this.jl.remove((String) it3.next());
                }
                Iterator it4 = hashSet8.iterator();
                while (it4.hasNext()) {
                    this.f22886q.remove((String) it4.next());
                }
            }
        }
        if (sz.l().fv() && this.f22882e != 0) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(bv.aI, "vstay_0");
            jSONObject3.put("v", this.f22882e);
            jSONArray.put(jSONObject3);
        }
        if (sz.l().fv() && this.zy != 0) {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(bv.aI, "lpstay_0");
            jSONObject4.put("v", this.zy);
            jSONArray.put(jSONObject4);
        }
        if (this.gu != 0) {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(bv.aI, "v30p");
            jSONObject5.put("v", this.gu);
            jSONArray.put(jSONObject5);
        }
    }

    public void hp(@NonNull String str, @Nullable String str2) {
        w wVar;
        w wVar2;
        w wVar3;
        w wVar4;
        w wVar5;
        w wVar6;
        str.getClass();
        switch (str) {
            case "landingContinue":
                if (!TextUtils.isEmpty(str2) && (wVar = this.jl.get(str2)) != null) {
                    wVar.j(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingPause":
                if (!TextUtils.isEmpty(str2) && (wVar2 = this.jl.get(str2)) != null) {
                    wVar2.jx(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingStart":
                if (!TextUtils.isEmpty(str2)) {
                    w wVar7 = this.jl.get(str2);
                    if (wVar7 == null) {
                        wVar7 = new w();
                        this.jl.put(str2, wVar7);
                    }
                    wVar7.hp(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "feed_over":
            case "feed_break":
                if (!TextUtils.isEmpty(str2) && (wVar3 = this.f22886q.get(str2)) != null && wVar3.hp() != w.f22917w) {
                    wVar3.l(SystemClock.elapsedRealtime());
                    if (sz.l().fv()) {
                        this.f22882e = (int) (this.f22882e + wVar3.hp(this.f22884k, SystemClock.elapsedRealtime()));
                        break;
                    }
                }
                break;
            case "show":
                this.hp.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (sz.l().fv()) {
                    this.jx++;
                    break;
                }
                break;
            case "click":
                this.f22883j.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (sz.l().fv()) {
                    this.f22888w++;
                    break;
                }
                break;
            case "feed_continue":
                if (!TextUtils.isEmpty(str2) && (wVar4 = this.f22886q.get(str2)) != null) {
                    wVar4.j(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "feed_pause":
                if (!TextUtils.isEmpty(str2) && (wVar5 = this.f22886q.get(str2)) != null) {
                    wVar5.jx(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingFinish":
                if (!TextUtils.isEmpty(str2) && (wVar6 = this.jl.get(str2)) != null && wVar6.hp() != w.f22917w) {
                    wVar6.l(SystemClock.elapsedRealtime());
                    if (sz.l().fv()) {
                        this.zy = (int) (this.zy + wVar6.hp(this.f22884k, SystemClock.elapsedRealtime()));
                        break;
                    }
                }
                break;
            case "videoPercent30":
                if (sz.l().fv()) {
                    this.gu++;
                    break;
                }
                break;
            case "dislike":
                this.f22887s.add(Long.valueOf(SystemClock.elapsedRealtime()));
                break;
            case "play_start":
                this.f22881a.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (sz.l().fv()) {
                    this.eb++;
                }
                if (!TextUtils.isEmpty(str2)) {
                    w wVar8 = this.f22886q.get(str2);
                    if (wVar8 == null) {
                        wVar8 = new w();
                        this.f22886q.put(str2, wVar8);
                    }
                    wVar8.hp(SystemClock.elapsedRealtime());
                    break;
                }
                break;
        }
    }

    public void l() {
        this.f22884k = SystemClock.elapsedRealtime();
        this.gu = 0;
        this.f22888w = 0;
        this.jx = 0;
        this.zy = 0;
        this.f22882e = 0;
        this.eb = 0;
    }

    public JSONArray hp() {
        JSONArray jSONArray = new JSONArray();
        try {
            hp(jSONArray);
            l(jSONArray);
            return jSONArray;
        } catch (Throwable th) {
            u.hp(th.getMessage());
            return jSONArray;
        }
    }

    private void hp(String str, JSONArray jSONArray, ArrayList<Long> arrayList, List<Integer> list, long j2) throws JSONException {
        int size = arrayList.size() - 1;
        Iterator<Integer> it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            long j3 = j2 - (iIntValue * 60000);
            while (size >= 0 && arrayList.get(size).longValue() >= j3) {
                i2++;
                size--;
            }
            if (i2 != 0) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(bv.aI, str + iIntValue);
                jSONObject.put("v", i2);
                jSONArray.put(jSONObject);
            }
        }
        while (size >= 0) {
            arrayList.remove(0);
            size--;
        }
    }

    private void hp(@NonNull JSONArray jSONArray) throws JSONException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        hp("show_", jSONArray, this.hp, sz.l().id(), jElapsedRealtime);
        hp("click_", jSONArray, this.f22883j, sz.l().id(), jElapsedRealtime);
        hp("play_", jSONArray, this.f22881a, sz.l().id(), jElapsedRealtime);
        hp("dis_", jSONArray, this.f22887s, sz.l().id(), jElapsedRealtime);
        if (sz.l().fv() && this.jx != 0) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(bv.aI, "show_0");
            jSONObject.put("v", this.jx);
            jSONArray.put(jSONObject);
        }
        if (sz.l().fv() && this.f22888w != 0) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(bv.aI, "click_0");
            jSONObject2.put("v", this.f22888w);
            jSONArray.put(jSONObject2);
        }
        if (!sz.l().fv() || this.eb == 0) {
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put(bv.aI, "play_0");
        jSONObject3.put("v", this.eb);
        jSONArray.put(jSONObject3);
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(j jVar) {
        return jVar.jx - this.jx;
    }
}
