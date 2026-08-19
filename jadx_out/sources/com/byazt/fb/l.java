package com.byazt.fb;

import com.byazt.fub.zy;
import com.byazt.ql.ns;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 528, 34})
/* loaded from: classes2.dex */
public class l extends zy {

    /* renamed from: a, reason: collision with root package name */
    public int f19618a;
    public JSONObject hp;

    /* renamed from: j, reason: collision with root package name */
    public float f19619j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public ns f19620l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19621w;

    @com.byazt.kj.hp(hp = {0, 1, 528, 123})
    public static class hp extends zy.hp {

        /* renamed from: a, reason: collision with root package name */
        public int f19622a;
        public JSONObject hp;

        /* renamed from: j, reason: collision with root package name */
        public float f19623j;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public ns f19624l;

        /* renamed from: w, reason: collision with root package name */
        public boolean f19625w;

        public hp gu(int i2) {
            this.f19622a = i2;
            return this;
        }

        public hp l(float f2) {
            this.f19623j = f2;
            return this;
        }

        public hp w(JSONObject jSONObject) {
            this.hp = jSONObject;
            return this;
        }

        public hp hp(ns nsVar) {
            this.f19624l = nsVar;
            return this;
        }

        @Override // com.byazt.fub.zy.hp
        /* renamed from: l, reason: merged with bridge method [inline-methods] */
        public l hp() {
            return new l(this);
        }

        public hp w(boolean z2) {
            this.f19625w = z2;
            return this;
        }

        public hp hp(float f2) {
            this.jx = f2;
            return this;
        }
    }

    public l(hp hpVar) {
        super(hpVar);
        this.f19618a = 3;
        this.hp = hpVar.hp;
        this.f19620l = hpVar.f19624l;
        this.jx = hpVar.jx;
        this.f19619j = hpVar.f19623j;
        this.f19621w = hpVar.f19625w;
        this.f19618a = hpVar.f19622a;
    }

    public JSONObject dy() {
        return this.hp;
    }

    public ns lv() {
        return this.f19620l;
    }

    public float nu() {
        return this.f19619j;
    }

    public int pu() {
        return this.f19618a;
    }

    public boolean r() {
        return this.f19621w;
    }

    public float ud() {
        return this.jx;
    }
}
