package com.byazt.bki;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.bki.j;
import com.byazt.bki.jl;
import com.byazt.bki.s;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 732, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public jl f18568a;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, Object> f18569e;
    public s eb;
    public boolean gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f18570j;
    public JSONObject jl;
    public boolean jx;

    /* renamed from: k, reason: collision with root package name */
    public PluginValueSet f18571k;

    /* renamed from: l, reason: collision with root package name */
    public String f18572l;

    /* renamed from: q, reason: collision with root package name */
    public a f18573q;

    /* renamed from: s, reason: collision with root package name */
    public j f18574s;

    /* renamed from: v, reason: collision with root package name */
    public boolean f18575v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f18576w;
    public Map<String, Object> zy;

    @com.byazt.kj.hp(hp = {0, 1, 732, 170})
    /* renamed from: com.byazt.bki.hp$hp, reason: collision with other inner class name */
    public static class C0197hp {

        /* renamed from: a, reason: collision with root package name */
        public jl f18577a;

        /* renamed from: e, reason: collision with root package name */
        public Map<String, Object> f18578e;
        public s eb;
        public String hp;
        public JSONObject jl;

        /* renamed from: k, reason: collision with root package name */
        public PluginValueSet f18580k;

        /* renamed from: l, reason: collision with root package name */
        public String f18581l;

        /* renamed from: q, reason: collision with root package name */
        public a f18582q;

        /* renamed from: s, reason: collision with root package name */
        public j f18583s;

        /* renamed from: v, reason: collision with root package name */
        public boolean f18584v;
        public Map<String, Object> zy;
        public boolean jx = false;

        /* renamed from: j, reason: collision with root package name */
        public String f18579j = "";

        /* renamed from: w, reason: collision with root package name */
        public boolean f18585w = false;
        public boolean gu = false;

        public C0197hp hp(String str) {
            this.hp = str;
            return this;
        }

        public C0197hp j(boolean z2) {
            this.f18584v = z2;
            return this;
        }

        public C0197hp jx(@NonNull String str) {
            this.f18579j = str;
            return this;
        }

        public C0197hp l(String str) {
            this.f18581l = str;
            return this;
        }

        public C0197hp hp(boolean z2) {
            this.jx = z2;
            return this;
        }

        public C0197hp jx(boolean z2) {
            this.gu = z2;
            return this;
        }

        public C0197hp l(boolean z2) {
            this.f18585w = z2;
            return this;
        }

        public C0197hp hp(@NonNull jl jlVar) {
            this.f18577a = jlVar;
            return this;
        }

        public C0197hp hp(@NonNull s sVar) {
            this.eb = sVar;
            return this;
        }

        public C0197hp hp(@NonNull a aVar) {
            this.f18582q = aVar;
            return this;
        }

        public C0197hp hp(Map<String, Object> map) {
            if (map != null && !map.isEmpty()) {
                if (this.f18578e == null) {
                    this.f18578e = new HashMap();
                }
                this.f18578e.putAll(map);
            }
            return this;
        }

        public C0197hp hp(JSONObject jSONObject) {
            this.jl = jSONObject;
            return this;
        }

        public C0197hp hp(PluginValueSet pluginValueSet) {
            this.f18580k = pluginValueSet;
            return this;
        }

        public hp hp() {
            return new hp(this);
        }
    }

    @NonNull
    public jl a() {
        return this.f18568a;
    }

    @Nullable
    public Map<String, Object> e() {
        return this.f18569e;
    }

    @NonNull
    public s eb() {
        return this.eb;
    }

    public boolean gu() {
        return this.gu;
    }

    @Nullable
    public String hp() {
        return this.hp;
    }

    @Nullable
    public String j() {
        return this.f18570j;
    }

    @Nullable
    public JSONObject jl() {
        return this.jl;
    }

    public boolean jx() {
        return this.jx;
    }

    public PluginValueSet k() {
        return this.f18571k;
    }

    @Nullable
    public String l() {
        return this.f18572l;
    }

    @NonNull
    public a q() {
        return this.f18573q;
    }

    @Nullable
    public j s() {
        return this.f18574s;
    }

    public boolean v() {
        return this.f18575v;
    }

    public boolean w() {
        return this.f18576w;
    }

    @Nullable
    public Map<String, Object> zy() {
        return this.zy;
    }

    private hp(C0197hp c0197hp) {
        this.hp = c0197hp.hp;
        this.f18572l = c0197hp.f18581l;
        this.jx = c0197hp.jx;
        this.f18570j = c0197hp.f18579j;
        this.f18576w = c0197hp.f18585w;
        if (c0197hp.f18577a != null) {
            this.f18568a = c0197hp.f18577a;
        } else {
            this.f18568a = new jl.hp().hp();
        }
        if (c0197hp.eb != null) {
            this.eb = c0197hp.eb;
        } else {
            this.eb = new s.hp().hp();
        }
        if (c0197hp.f18583s != null) {
            this.f18574s = c0197hp.f18583s;
        } else {
            this.f18574s = new j.hp().hp();
        }
        if (c0197hp.f18582q != null) {
            this.f18573q = c0197hp.f18582q;
        } else {
            this.f18573q = new a();
        }
        this.f18569e = c0197hp.f18578e;
        this.gu = c0197hp.gu;
        this.jl = c0197hp.jl;
        this.zy = c0197hp.zy;
        this.f18571k = c0197hp.f18580k;
        this.f18575v = c0197hp.f18584v;
    }
}
