package com.byazt.v;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.rx.BaseConstants;
import com.byazt.t.jl;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public final String f26510a;

    /* renamed from: e, reason: collision with root package name */
    public final List<String> f26511e;
    public final long eb;
    public final int gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f26512j;
    public final Object jl;
    public final String jx;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f26513k;

    /* renamed from: l, reason: collision with root package name */
    public final String f26514l;

    /* renamed from: q, reason: collision with root package name */
    public final JSONObject f26515q;

    /* renamed from: s, reason: collision with root package name */
    public final JSONObject f26516s;

    /* renamed from: u, reason: collision with root package name */
    public final JSONObject f26517u;

    /* renamed from: v, reason: collision with root package name */
    public final String f26518v;

    /* renamed from: w, reason: collision with root package name */
    public final long f26519w;
    public final String zy;

    @com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, 219})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f26520a;

        /* renamed from: e, reason: collision with root package name */
        public Map<String, Object> f26521e;
        public long eb;
        public List<String> gu;
        public String hp;
        public int jl;
        public String jx;

        /* renamed from: k, reason: collision with root package name */
        public String f26523k;

        /* renamed from: l, reason: collision with root package name */
        public String f26524l;

        /* renamed from: q, reason: collision with root package name */
        public JSONObject f26525q;

        /* renamed from: s, reason: collision with root package name */
        public JSONObject f26526s;

        /* renamed from: u, reason: collision with root package name */
        public String f26527u;

        /* renamed from: w, reason: collision with root package name */
        public long f26529w;
        public JSONObject xs;
        public Object zy;

        /* renamed from: j, reason: collision with root package name */
        public boolean f26522j = false;

        /* renamed from: v, reason: collision with root package name */
        public boolean f26528v = false;

        public hp hp(boolean z2) {
            this.f26528v = z2;
            return this;
        }

        public hp j(String str) {
            this.f26523k = str;
            return this;
        }

        public hp jx(String str) {
            this.f26520a = str;
            return this;
        }

        public hp l(String str) {
            this.jx = str;
            return this;
        }

        public hp hp(String str) {
            this.f26524l = str;
            return this;
        }

        public hp l(long j2) {
            this.eb = j2;
            return this;
        }

        public hp hp(long j2) {
            this.f26529w = j2;
            return this;
        }

        public hp l(boolean z2) {
            this.f26522j = z2;
            return this;
        }

        public hp hp(JSONObject jSONObject) {
            this.f26526s = jSONObject;
            return this;
        }

        public hp l(JSONObject jSONObject) {
            this.f26525q = jSONObject;
            return this;
        }

        public hp hp(List<String> list) {
            this.gu = list;
            return this;
        }

        public hp hp(int i2) {
            this.jl = i2;
            return this;
        }

        public hp hp(Object obj) {
            this.zy = obj;
            return this;
        }

        public jx hp() throws JSONException {
            if (TextUtils.isEmpty(this.hp)) {
                this.hp = BaseConstants.CATEGORY_UMENG;
            }
            JSONObject jSONObject = new JSONObject();
            if (this.f26526s == null) {
                this.f26526s = new JSONObject();
            }
            try {
                Map<String, Object> map = this.f26521e;
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : this.f26521e.entrySet()) {
                        if (!this.f26526s.has(entry.getKey())) {
                            this.f26526s.putOpt(entry.getKey(), entry.getValue());
                        }
                    }
                }
                if (this.f26528v) {
                    this.f26527u = this.jx;
                    JSONObject jSONObject2 = new JSONObject();
                    this.xs = jSONObject2;
                    if (this.f26522j) {
                        jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.f26526s.toString());
                    } else {
                        Iterator<String> itKeys = this.f26526s.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            this.xs.put(next, this.f26526s.get(next));
                        }
                    }
                    this.xs.put(PointParamKey.CATEGORY, this.hp);
                    this.xs.put("tag", this.f26524l);
                    this.xs.put(f.a.f3244d, this.f26529w);
                    this.xs.put("ext_value", this.eb);
                    if (!TextUtils.isEmpty(this.f26523k)) {
                        this.xs.put("refer", this.f26523k);
                    }
                    JSONObject jSONObject3 = this.f26525q;
                    if (jSONObject3 != null) {
                        this.xs = com.byazt.pp.l.hp(jSONObject3, this.xs);
                    }
                    if (this.f26522j) {
                        if (!this.xs.has("log_extra") && !TextUtils.isEmpty(this.f26520a)) {
                            this.xs.put("log_extra", this.f26520a);
                        }
                        this.xs.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                    }
                }
                if (this.f26522j) {
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.f26526s.toString());
                    if (!jSONObject.has("log_extra") && !TextUtils.isEmpty(this.f26520a)) {
                        jSONObject.put("log_extra", this.f26520a);
                    }
                    jSONObject.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                } else {
                    jSONObject.put("extra", this.f26526s);
                }
                if (!TextUtils.isEmpty(this.f26523k)) {
                    jSONObject.putOpt("refer", this.f26523k);
                }
                JSONObject jSONObject4 = this.f26525q;
                if (jSONObject4 != null) {
                    jSONObject = com.byazt.pp.l.hp(jSONObject4, jSONObject);
                }
                this.f26526s = jSONObject;
            } catch (Exception e2) {
                jl.sz().hp(e2, "DownloadEventModel build");
            }
            return new jx(this);
        }
    }

    public jx(hp hpVar) {
        this.hp = hpVar.hp;
        this.f26514l = hpVar.f26524l;
        this.jx = hpVar.jx;
        this.f26512j = hpVar.f26522j;
        this.f26519w = hpVar.f26529w;
        this.f26510a = hpVar.f26520a;
        this.eb = hpVar.eb;
        this.f26516s = hpVar.f26526s;
        this.f26515q = hpVar.f26525q;
        this.f26511e = hpVar.gu;
        this.gu = hpVar.jl;
        this.jl = hpVar.zy;
        this.f26513k = hpVar.f26528v;
        this.f26518v = hpVar.f26527u;
        this.f26517u = hpVar.xs;
        this.zy = hpVar.f26523k;
    }

    public String a() {
        return this.f26510a;
    }

    public List<String> e() {
        return this.f26511e;
    }

    public long eb() {
        return this.eb;
    }

    public int gu() {
        return this.gu;
    }

    public String hp() {
        return this.hp;
    }

    public boolean j() {
        return this.f26512j;
    }

    public Object jl() {
        return this.jl;
    }

    public String jx() {
        return this.jx;
    }

    public String k() {
        return this.f26518v;
    }

    public String l() {
        return this.f26514l;
    }

    public JSONObject q() {
        return this.f26515q;
    }

    public JSONObject s() {
        return this.f26516s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("category: ");
        sb.append(this.hp);
        sb.append("\ttag: ");
        sb.append(this.f26514l);
        sb.append("\tlabel: ");
        sb.append(this.jx);
        sb.append("\nisAd: ");
        sb.append(this.f26512j);
        sb.append("\tadId: ");
        sb.append(this.f26519w);
        sb.append("\tlogExtra: ");
        sb.append(this.f26510a);
        sb.append("\textValue: ");
        sb.append(this.eb);
        sb.append("\nextJson: ");
        sb.append(this.f26516s);
        sb.append("\nparamsJson: ");
        sb.append(this.f26515q);
        sb.append("\nclickTrackUrl: ");
        List<String> list = this.f26511e;
        sb.append(list != null ? list.toString() : "");
        sb.append("\teventSource: ");
        sb.append(this.gu);
        sb.append("\textraObject: ");
        Object obj = this.jl;
        sb.append(obj != null ? obj.toString() : "");
        sb.append("\nisV3: ");
        sb.append(this.f26513k);
        sb.append("\tV3EventName: ");
        sb.append(this.f26518v);
        sb.append("\tV3EventParams: ");
        JSONObject jSONObject = this.f26517u;
        sb.append(jSONObject != null ? jSONObject.toString() : "");
        return sb.toString();
    }

    public JSONObject v() {
        return this.f26517u;
    }

    public long w() {
        return this.f26519w;
    }

    public boolean zy() {
        return this.f26513k;
    }
}
