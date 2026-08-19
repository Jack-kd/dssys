package com.byazt.ne;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.byazt.ap.j;
import com.byazt.cm.w;
import com.byazt.dnb.gu;
import com.byazt.jz.sz;
import com.byazt.ymw.a;
import com.byazt.ymw.e;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 968, 34})
/* loaded from: classes3.dex */
public class l {
    public Map<String, com.byazt.ne.hp> hp;
    public Set<String> jx;

    /* renamed from: l, reason: collision with root package name */
    public ReentrantLock f23550l;

    @com.byazt.kj.hp(hp = {0, 1, 968, 123})
    public static final class hp {
        public static final l hp = new l();
    }

    private void delete(Map<String, com.byazt.ne.hp> map) {
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()) {
            map.get(it.next()).l(gu.hp());
        }
    }

    private void j() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.hp.keySet().iterator();
        while (it.hasNext()) {
            com.byazt.ne.hp hpVar = this.hp.get(it.next());
            if (hpVar != null) {
                jSONArray.put(hpVar.w());
            }
        }
        com.byazt.jz.l.hp().put("sdk_brand_video_cahce", jSONArray.toString());
    }

    private JSONArray jx(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("creatives");
        JSONArray jSONArray = new JSONArray();
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("precache_brand_video")) != null) {
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        jSONArray.put(jSONArrayOptJSONArray.opt(i3));
                    }
                }
            }
        }
        return jSONArray;
    }

    private com.byazt.oyr.hp l() {
        return w.hp().l();
    }

    private Map<String, com.byazt.ne.hp> w() {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, com.byazt.ne.hp>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, com.byazt.ne.hp> next = it.next();
            if (next.getValue().j()) {
                map.put(next.getKey(), next.getValue());
                it.remove();
            } else {
                arrayList.add(next.getValue());
            }
        }
        int size = this.hp.size() - sz.l().ri();
        if (size > 0) {
            Collections.sort(arrayList, new Comparator<com.byazt.ne.hp>() { // from class: com.byazt.ne.l.3
                @Override // java.util.Comparator
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public int compare(com.byazt.ne.hp hpVar, com.byazt.ne.hp hpVar2) {
                    long jJx = hpVar2.jx() - hpVar.jx();
                    if (jJx == 0) {
                        String strHp = gu.hp();
                        jJx = hpVar.hp(strHp) - hpVar2.hp(strHp);
                    }
                    return (int) jJx;
                }
            });
            for (int i2 = 0; i2 < size; i2++) {
                com.byazt.ne.hp hpVar = (com.byazt.ne.hp) arrayList.get(i2);
                this.hp.remove(hpVar.l());
                map.put(hpVar.l(), hpVar);
            }
        }
        return map;
    }

    private l() {
        this.hp = new HashMap();
        this.f23550l = new ReentrantLock();
        this.jx = new HashSet();
        String str = com.byazt.jz.l.hp().get("sdk_brand_video_cahce", "");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                l(jSONArray.optJSONObject(i2));
            }
        } catch (Throwable unused) {
        }
    }

    private void l(JSONObject jSONObject) {
        if (jSONObject != null) {
            com.byazt.ne.hp hpVar = new com.byazt.ne.hp(jSONObject);
            this.hp.put(hpVar.l(), hpVar);
        }
    }

    public static l hp() {
        return hp.hp;
    }

    public void hp(JSONObject jSONObject) {
        final JSONArray jSONArrayJx = jx(jSONObject);
        if (jSONArrayJx == null || jSONArrayJx.length() == 0) {
            return;
        }
        e.hp().postDelayed(new Runnable() { // from class: com.byazt.ne.l.1
            @Override // java.lang.Runnable
            public void run() {
                jSONArrayJx.length();
                l.this.hp(jSONArrayJx);
            }
        }, 20000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONArray jSONArray) {
        try {
            this.f23550l.lock();
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                l(jSONArray.optJSONObject(i2));
            }
            Map<String, com.byazt.ne.hp> mapW = w();
            int iJx = jx();
            j();
            delete(mapW);
            this.f23550l.unlock();
            hp(iJx);
        } catch (Throwable th) {
            this.f23550l.unlock();
            throw th;
        }
    }

    private int jx() {
        Iterator<String> it = this.hp.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            com.byazt.ne.hp hpVar = this.hp.get(it.next());
            if (hpVar != null) {
                String strHp = gu.hp();
                String strL = hpVar.l();
                if (TextUtils.isEmpty(strL)) {
                    strL = a.l(hpVar.hp());
                }
                String strHp2 = hpVar.hp();
                File file = new File(strHp, strL);
                if (!file.exists() || file.length() <= 0) {
                    i2++;
                    if (!this.jx.contains(strL)) {
                        this.jx.add(strL);
                        hp(strHp2, strHp, strL);
                    }
                }
            }
        }
        return i2;
    }

    private void hp(int i2) {
        File[] fileArrListFiles = new File(gu.hp()).listFiles();
        int iRi = sz.l().ri();
        if (fileArrListFiles == null || fileArrListFiles.length <= iRi - i2) {
            return;
        }
        for (int i3 = 0; i3 < fileArrListFiles.length; i3++) {
            if (!this.hp.containsKey(hp(fileArrListFiles[i3])) && fileArrListFiles[i3].exists()) {
                fileArrListFiles[i3].delete();
            }
        }
    }

    private String hp(File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(i.f2495E);
        return iLastIndexOf != -1 ? name.substring(0, iLastIndexOf) : name;
    }

    private void hp(final String str, String str2, final String str3) {
        com.byazt.ap.l lVarJ = l().j();
        lVarJ.hp(str);
        lVarJ.hp(str2, str3);
        lVarJ.hp(new com.byazt.mnb.hp() { // from class: com.byazt.ne.l.2
            @Override // com.byazt.mnb.hp
            public void hp(j jVar, com.byazt.oyr.l lVar) {
                l.this.hp(str3);
            }

            @Override // com.byazt.mnb.hp
            public void hp(j jVar, IOException iOException) {
                l.this.hp(str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str) {
        try {
            this.f23550l.lock();
            this.jx.remove(str);
        } finally {
            this.f23550l.unlock();
        }
    }
}
