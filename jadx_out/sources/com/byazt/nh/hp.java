package com.byazt.nh;

import com.byazt.uj.a;
import com.byazt.uj.e;
import com.byazt.uj.eb;
import com.byazt.uj.j;
import com.byazt.uj.jx;
import com.byazt.uj.l;
import com.byazt.uj.q;
import com.byazt.uj.s;
import com.byazt.uj.w;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1807, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final com.byazt.wj.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public Deque<com.byazt.ii.hp> f23567j = new LinkedList();
    public com.byazt.ii.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.wj.hp f23568l;

    /* renamed from: w, reason: collision with root package name */
    public String f23569w;

    static {
        int i2 = 8;
        a[] aVarArr = {new e(), new j(), new q(), new l(), new w(), new com.byazt.uj.hp(), new eb(), new jx(), new s()};
        final com.byazt.wj.hp hpVar = new com.byazt.wj.hp() { // from class: com.byazt.nh.hp.1
            @Override // com.byazt.wj.hp
            public int hp(String str, int i3, Deque<com.byazt.ii.hp> deque) {
                return i3;
            }
        };
        while (i2 >= 0) {
            final a aVar = aVarArr[i2];
            i2--;
            hpVar = new com.byazt.wj.hp() { // from class: com.byazt.nh.hp.2
                @Override // com.byazt.wj.hp
                public int hp(String str, int i3, Deque<com.byazt.ii.hp> deque) {
                    return aVar.hp(str, i3, deque, hpVar);
                }
            };
        }
        hp = hpVar;
    }

    private hp(String str, com.byazt.wj.hp hpVar) {
        this.f23568l = hpVar;
        this.f23569w = str;
        try {
            hp();
        } catch (Exception e2) {
            throw new com.byazt.vxt.l(str, e2);
        }
    }

    public static hp hp(String str) {
        return new hp(str, hp);
    }

    private void hp() {
        int length = this.f23569w.length();
        int i2 = 0;
        while (i2 < length) {
            int iHp = this.f23568l.hp(this.f23569w, i2, this.f23567j);
            if (iHp == i2) {
                throw new IllegalArgumentException("Unrecognized expression, unrecognized characters encountered during parsing:" + this.f23569w.substring(0, i2));
            }
            i2 = iHp;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            com.byazt.ii.hp hpVarPollFirst = this.f23567j.pollFirst();
            if (hpVarPollFirst == null) {
                this.jx = com.byazt.kv.l.hp(arrayList, this.f23569w, i2);
                this.f23567j = null;
                return;
            }
            arrayList.add(0, hpVarPollFirst);
        }
    }

    public <T> T hp(JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put("default_key", jSONObject);
        return (T) hp(map);
    }

    public <T> T hp(Map<String, JSONObject> map) {
        return (T) this.jx.hp(map);
    }
}
