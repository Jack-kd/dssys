package com.byazt.ai;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1574, 28})
/* loaded from: classes2.dex */
public class hp implements com.byazt.jw.l {

    /* renamed from: a, reason: collision with root package name */
    public long f18008a;

    /* renamed from: e, reason: collision with root package name */
    public int f18009e;
    public long eb;
    public byte gu;
    public JSONObject hp;

    /* renamed from: j, reason: collision with root package name */
    public byte f18010j;
    public String jl;
    public byte jx;

    /* renamed from: l, reason: collision with root package name */
    public l f18011l;

    /* renamed from: q, reason: collision with root package name */
    public String f18012q;

    /* renamed from: s, reason: collision with root package name */
    public String f18013s;

    /* renamed from: w, reason: collision with root package name */
    public long f18014w;
    public int zy;

    public hp(String str, JSONObject jSONObject) {
        this.f18012q = str;
        this.hp = jSONObject;
    }

    public static com.byazt.jw.l j(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("type");
            int iOptInt2 = jSONObject.optInt("priority");
            hp hpVar = new hp();
            hpVar.hp((byte) iOptInt);
            hpVar.l((byte) iOptInt2);
            hpVar.hp(jSONObject.optJSONObject(NotificationCompat.CATEGORY_EVENT));
            hpVar.hp(jSONObject.optString("localId"));
            hpVar.l(jSONObject.optString("genTime"));
            hpVar.hp(jSONObject.optInt("channel"));
            return hpVar;
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.byazt.jw.l
    public String a() {
        if (TextUtils.isEmpty(this.f18012q)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.f18012q);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, eb());
            jSONObject.put("genTime", jl());
            jSONObject.put("priority", (int) this.f18010j);
            jSONObject.put("type", (int) this.jx);
            jSONObject.put("channel", this.zy);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.jw.l
    public int e() {
        return this.f18009e;
    }

    @Override // com.byazt.jw.l
    public synchronized JSONObject eb() {
        l lVar;
        try {
            if (this.hp == null && (lVar = this.f18011l) != null) {
                this.hp = lVar.hp(gu());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.hp;
    }

    public String gu() {
        return this.jl;
    }

    @Override // com.byazt.jw.l
    public l hp() {
        return this.f18011l;
    }

    public String jl() {
        return this.f18013s;
    }

    public void jx(String str) {
        this.jl = str;
    }

    @Override // com.byazt.jw.l
    public byte l() {
        return this.gu;
    }

    @Override // com.byazt.jw.l
    public long q() {
        return this.f18008a;
    }

    @Override // com.byazt.jw.l
    public long s() {
        return this.f18014w;
    }

    @Override // com.byazt.jw.l
    public byte w() {
        return this.f18010j;
    }

    @Override // com.byazt.jw.l
    public void hp(JSONObject jSONObject) {
        this.hp = jSONObject;
    }

    public void jx(byte b3) {
        this.gu = b3;
    }

    @Override // com.byazt.jw.l
    public void l(String str) {
        this.f18013s = str;
    }

    @Override // com.byazt.jw.l
    public void hp(byte b3) {
        this.jx = b3;
    }

    @Override // com.byazt.jw.l
    public String jx() {
        return this.f18012q;
    }

    @Override // com.byazt.jw.l
    public void l(long j2) {
        this.f18008a = j2;
    }

    public hp(String str, l lVar) {
        this.f18012q = str;
        this.f18011l = lVar;
    }

    @Override // com.byazt.jw.l
    public void hp(String str) {
        this.f18012q = str;
    }

    @Override // com.byazt.jw.l
    public void jx(long j2) {
        this.eb = j2;
    }

    @Override // com.byazt.jw.l
    public void l(byte b3) {
        this.f18010j = b3;
    }

    @Override // com.byazt.jw.l
    public void hp(long j2) {
        this.f18014w = j2;
    }

    @Override // com.byazt.jw.l
    public void l(int i2) {
        this.f18009e = i2;
    }

    @Override // com.byazt.jw.l
    public void hp(int i2) {
        this.zy = i2;
    }

    private hp() {
    }

    @Override // com.byazt.jw.l
    public byte j() {
        return this.jx;
    }
}
