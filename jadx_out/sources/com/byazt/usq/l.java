package com.byazt.usq;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byakv.z.SoftDecTool;
import com.kuaishou.weapon.p0.bg;
import com.umeng.analytics.pro.bv;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1249, 34})
/* loaded from: classes3.dex */
public class l {
    public static volatile l hp;

    /* renamed from: a, reason: collision with root package name */
    public long f26426a;

    /* renamed from: j, reason: collision with root package name */
    public LinkedList<JSONObject> f26427j;
    public LinkedList<JSONObject> jx;

    /* renamed from: l, reason: collision with root package name */
    public SharedPreferences f26428l;

    /* renamed from: w, reason: collision with root package name */
    public LinkedList<JSONObject> f26429w;

    public l() {
        this.f26428l = null;
        this.jx = null;
        this.f26427j = null;
        this.f26429w = null;
        this.f26426a = 0L;
        this.f26428l = SoftDecTool.getSharedPreferences("pithar");
        this.jx = jx("sp_angle");
        this.f26427j = jx("sp_screen");
        this.f26429w = jx("sp_net");
        this.f26426a = w.hp().jx() / w.hp().j();
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

    private LinkedList<JSONObject> jx(String str) {
        LinkedList<JSONObject> linkedList = new LinkedList<>();
        SharedPreferences sharedPreferences = this.f26428l;
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString(str, "");
            if (!TextUtils.isEmpty(string)) {
                for (String str2 : string.split("\\|")) {
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            linkedList.add(new JSONObject(str2));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        return linkedList;
    }

    public synchronized void l(String str) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if ("android.intent.action.SCREEN_OFF".equals(str)) {
                LinkedList<JSONObject> linkedListHp = hp("sp_screen");
                int i2 = 1;
                if (linkedListHp != null && !linkedListHp.isEmpty()) {
                    JSONObject jSONObject = linkedListHp.get(linkedListHp.size() - 1);
                    if (jSONObject.optLong(bv.aI, 0L) / bg.f30873s == jCurrentTimeMillis / bg.f30873s) {
                        int iOptInt = jSONObject.optInt("val", 0) + 1;
                        linkedListHp.remove(linkedListHp.size() - 1);
                        i2 = iOptInt;
                    }
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(bv.aI, jCurrentTimeMillis);
                    jSONObject2.put("val", i2);
                    hp(jSONObject2, "sp_screen");
                } catch (JSONException e2) {
                    throw new RuntimeException(e2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public LinkedList<JSONObject> hp(String str) {
        if ("sp_angle".equals(str)) {
            return this.jx;
        }
        if ("sp_screen".equals(str)) {
            return this.f26427j;
        }
        if ("sp_net".equals(str)) {
            return this.f26429w;
        }
        return null;
    }

    public void hp(JSONObject jSONObject, String str) {
        LinkedList<JSONObject> linkedListHp = hp(str);
        if (linkedListHp == null) {
            return;
        }
        linkedListHp.add(jSONObject);
        if (linkedListHp.size() > this.f26426a) {
            linkedListHp.remove(0);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jJx = jCurrentTimeMillis - w.hp().jx();
        Iterator<JSONObject> it = linkedListHp.iterator();
        JSONObject jSONObject2 = null;
        while (it.hasNext()) {
            JSONObject next = it.next();
            long jOptLong = next.optLong(bv.aI, 0L);
            if (jOptLong < jJx) {
                it.remove();
                jSONObject2 = next;
            } else if (jOptLong > jCurrentTimeMillis) {
                it.remove();
            }
        }
        if (jSONObject2 != null && linkedListHp.size() < 2) {
            linkedListHp.add(0, jSONObject2);
        }
        hp(str, linkedListHp);
    }

    public synchronized void hp(int i2) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int iOptInt = i2 == 4 ? 1 : i2 > 0 ? 2 : 0;
            LinkedList<JSONObject> linkedListHp = hp("sp_net");
            if (linkedListHp != null && !linkedListHp.isEmpty()) {
                JSONObject jSONObject = linkedListHp.get(linkedListHp.size() - 1);
                if (jSONObject.optLong(bv.aI, 0L) / bg.f30873s == jCurrentTimeMillis / bg.f30873s) {
                    iOptInt |= jSONObject.optInt("val", 0);
                    linkedListHp.remove(linkedListHp.size() - 1);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(bv.aI, jCurrentTimeMillis);
                jSONObject2.put("val", iOptInt);
                hp(jSONObject2, "sp_net");
            } catch (JSONException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void hp(String str, LinkedList<JSONObject> linkedList) {
        if (linkedList == null || this.f26428l == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<JSONObject> it = linkedList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append("\\|");
        }
        SharedPreferences.Editor editorEdit = this.f26428l.edit();
        editorEdit.putString(str, sb.toString());
        editorEdit.apply();
    }

    public LinkedList<JSONObject> hp(long j2) {
        if (j2 == 0) {
            return this.jx;
        }
        LinkedList<JSONObject> linkedList = new LinkedList<>();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Iterator<JSONObject> it = this.jx.iterator();
        JSONObject jSONObject = null;
        while (it.hasNext()) {
            JSONObject next = it.next();
            if (jCurrentTimeMillis - next.optLong(bv.aI, 0L) < j2) {
                linkedList.add(next);
            } else {
                jSONObject = next;
            }
        }
        if (jSONObject != null && linkedList.size() < 2) {
            linkedList.add(0, jSONObject);
        }
        return linkedList;
    }
}
