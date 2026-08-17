package com.byazt.bl;

import com.byazt.qt.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1567, 34})
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public final String f18607a;
    public String eb;
    public final int hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f18608j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<a> f18609l = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public boolean f18610s;

    /* renamed from: w, reason: collision with root package name */
    public final String f18611w;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l(org.json.JSONObject r8, com.byazt.bl.jx r9) {
        /*
            r7 = this;
            r7.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r7.f18609l = r0
            java.lang.String r0 = "dislike_control"
            r1 = 0
            int r0 = r8.optInt(r0, r1)
            r7.hp = r0
            java.lang.String r0 = "close_on_dislike"
            boolean r0 = r8.optBoolean(r0, r1)
            r7.f18608j = r0
            if (r9 == 0) goto L22
            java.lang.String r0 = r9.getId()
            goto L24
        L22:
            java.lang.String r0 = ""
        L24:
            if (r9 == 0) goto L2b
            boolean r2 = r9.isNewUi()
            goto L2c
        L2b:
            r2 = r1
        L2c:
            r7.f18610s = r2
            java.lang.String r2 = "filter_words"
            org.json.JSONArray r2 = r8.optJSONArray(r2)
            if (r2 == 0) goto L7b
            r3 = r1
        L37:
            int r4 = r2.length()
            if (r1 >= r4) goto L7a
            org.json.JSONObject r4 = r2.optJSONObject(r1)
            com.byazt.bl.jx r4 = com.byazt.bl.jx.parseFromJson(r4)
            boolean r5 = r7.f18610s
            r4.setNewUi(r5)
            boolean r5 = r7.f18610s
            if (r5 == 0) goto L62
            java.lang.String r5 = r4.getId()
            java.lang.String r6 = "8:1"
            boolean r6 = r6.equals(r5)
            if (r6 != 0) goto L77
            java.lang.String r6 = "99:1"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L77
        L62:
            boolean r5 = r4.isValid()
            if (r5 == 0) goto L77
            java.util.List<com.byazt.qt.a> r5 = r7.f18609l
            r5.add(r4)
            if (r3 != 0) goto L77
            java.lang.String r3 = r4.getId()
            boolean r3 = android.text.TextUtils.equals(r3, r0)
        L77:
            int r1 = r1 + 1
            goto L37
        L7a:
            r1 = r3
        L7b:
            if (r9 == 0) goto L84
            if (r1 != 0) goto L84
            java.util.List<com.byazt.qt.a> r0 = r7.f18609l
            r0.add(r9)
        L84:
            java.lang.String r9 = "ad_id"
            java.lang.String r9 = r8.optString(r9)
            r7.f18611w = r9
            java.lang.String r9 = "ext"
            java.lang.String r8 = r8.optString(r9)
            r7.f18607a = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.bl.l.<init>(org.json.JSONObject, com.byazt.bl.jx):void");
    }

    public boolean a() {
        return this.hp == 1;
    }

    public JSONArray eb() {
        JSONObject json;
        JSONArray jSONArray = new JSONArray();
        List<a> list = this.f18609l;
        if (list != null) {
            for (a aVar : list) {
                if ((aVar instanceof jx) && (json = ((jx) aVar).toJson()) != null) {
                    jSONArray.put(json);
                }
            }
        }
        return jSONArray;
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        jSONObject.put("dislike_control", this.hp);
        jSONObject.put("filter_words", eb());
        jSONObject.put("close_on_dislike", q());
    }

    public String j() {
        return this.f18611w;
    }

    public String jx() {
        return this.jx;
    }

    public boolean l() {
        return this.f18610s;
    }

    public boolean q() {
        return this.f18608j;
    }

    public String s() {
        return this.eb;
    }

    public String w() {
        return this.f18607a;
    }

    public void l(String str) {
        this.eb = str;
    }

    public List<a> hp() {
        return this.f18609l;
    }

    public void hp(String str) {
        this.jx = str;
    }
}
