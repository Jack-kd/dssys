package com.byazt.tgw;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 94})
/* loaded from: classes3.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public List<a> f25825a;

    /* renamed from: e, reason: collision with root package name */
    public int f25826e;
    public List<s> eb;
    public double gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public s f25827j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25828l;

    /* renamed from: q, reason: collision with root package name */
    public double f25829q;

    /* renamed from: s, reason: collision with root package name */
    public JSONObject f25830s;

    /* renamed from: w, reason: collision with root package name */
    public hp f25831w;

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 131})
    public static class hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public List<e> f25832l = new ArrayList();

        public void hp(String str) {
            this.hp = str;
        }

        public void hp(List<e> list) {
            this.f25832l = list;
        }
    }

    public String a() {
        return this.jx;
    }

    public JSONObject eb() {
        return this.f25830s;
    }

    public double hp() {
        return this.f25829q;
    }

    public List<s> j() {
        return this.eb;
    }

    public double jx() {
        return this.gu;
    }

    public int l() {
        return this.f25826e;
    }

    public List<e> q() {
        hp hpVar = this.f25831w;
        if (hpVar == null) {
            return null;
        }
        return hpVar.f25832l;
    }

    public boolean s() {
        hp hpVar = this.f25831w;
        return (hpVar == null || TextUtils.isEmpty(hpVar.hp)) ? false : true;
    }

    public List<a> w() {
        return this.f25825a;
    }

    public void hp(String str) {
        try {
            this.f25829q = Double.valueOf(str).doubleValue();
        } catch (Throwable unused) {
        }
    }

    public void j(String str) {
        this.f25828l = str;
    }

    public void jx(String str) {
        this.hp = str;
    }

    public void l(String str) {
        try {
            this.gu = Double.valueOf(str).doubleValue();
        } catch (Throwable unused) {
        }
    }

    public void w(String str) {
        this.jx = str;
    }

    public void hp(int i2) {
        this.f25826e = i2;
    }

    public void l(List<a> list) {
        this.f25825a = list;
    }

    public void hp(List<s> list) {
        this.eb = list;
    }

    public void hp(s sVar) {
        this.f25827j = sVar;
    }

    public void hp(hp hpVar) {
        this.f25831w = hpVar;
    }

    public void hp(JSONObject jSONObject) {
        this.f25830s = jSONObject;
    }
}
