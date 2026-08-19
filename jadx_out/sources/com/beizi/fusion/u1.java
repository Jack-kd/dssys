package com.beizi.fusion;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class u1 {

    /* renamed from: a, reason: collision with root package name */
    private String f16411a;

    /* renamed from: b, reason: collision with root package name */
    private String f16412b;

    /* renamed from: c, reason: collision with root package name */
    private String f16413c;

    /* renamed from: d, reason: collision with root package name */
    private long f16414d;

    /* renamed from: e, reason: collision with root package name */
    private String f16415e;

    /* renamed from: f, reason: collision with root package name */
    private int f16416f;

    /* renamed from: g, reason: collision with root package name */
    private List f16417g;

    /* renamed from: h, reason: collision with root package name */
    private int f16418h;

    /* renamed from: i, reason: collision with root package name */
    private String f16419i;

    /* renamed from: j, reason: collision with root package name */
    private String f16420j;

    /* renamed from: k, reason: collision with root package name */
    private String f16421k;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private String f16422a;

        /* renamed from: b, reason: collision with root package name */
        private String f16423b;

        /* renamed from: c, reason: collision with root package name */
        private String f16424c;

        /* renamed from: d, reason: collision with root package name */
        private long f16425d;

        /* renamed from: e, reason: collision with root package name */
        private String f16426e;

        /* renamed from: f, reason: collision with root package name */
        private int f16427f;

        /* renamed from: g, reason: collision with root package name */
        private List f16428g;

        /* renamed from: h, reason: collision with root package name */
        private int f16429h;

        /* renamed from: i, reason: collision with root package name */
        private String f16430i;

        /* renamed from: j, reason: collision with root package name */
        private String f16431j;

        /* renamed from: k, reason: collision with root package name */
        private String f16432k;

        public a a(List list) {
            this.f16428g = list;
            return this;
        }

        public a b(int i2) {
            this.f16427f = i2;
            return this;
        }

        public a c(String str) {
            this.f16432k = str;
            return this;
        }

        public a d(String str) {
            this.f16424c = str;
            return this;
        }

        public a e(String str) {
            this.f16422a = str;
            return this;
        }

        public a a(int i2) {
            this.f16429h = i2;
            return this;
        }

        public a b(String str) {
            this.f16430i = str;
            return this;
        }

        public a a(String str) {
            this.f16431j = str;
            return this;
        }

        public u1 a() {
            u1 u1Var = new u1();
            u1Var.f16414d = this.f16425d;
            u1Var.f16413c = this.f16424c;
            u1Var.f16415e = this.f16426e;
            u1Var.f16412b = this.f16423b;
            u1Var.f16411a = this.f16422a;
            u1Var.f16416f = this.f16427f;
            u1Var.f16417g = this.f16428g;
            u1Var.f16418h = this.f16429h;
            u1Var.f16419i = this.f16430i;
            u1Var.f16420j = this.f16431j;
            u1Var.f16421k = this.f16432k;
            return u1Var;
        }
    }

    private u1() {
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("spaceID", this.f16411a);
            jSONObject.put("spaceParam", this.f16412b);
            jSONObject.put("requestUUID", this.f16413c);
            jSONObject.put("channelReserveTs", this.f16414d);
            jSONObject.put("sdkExtInfo", this.f16415e);
            jSONObject.put("isCache", this.f16416f);
            List list = this.f16417g;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < this.f16417g.size(); i2++) {
                    jSONArray.put(this.f16417g.get(i2));
                }
                jSONObject.put("orderList", jSONArray);
            }
            jSONObject.put("interactionType", this.f16418h);
            jSONObject.put("modelVersion", this.f16419i);
            jSONObject.put("blackListVersion", this.f16420j);
            jSONObject.put("oppoInfo", this.f16421k);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
