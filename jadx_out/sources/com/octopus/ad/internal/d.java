package com.octopus.ad.internal;

import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.R;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static HashSet<String> f34625a;

    /* renamed from: b, reason: collision with root package name */
    private WeakReference<Context> f34626b;

    /* renamed from: d, reason: collision with root package name */
    private String f34628d;

    /* renamed from: e, reason: collision with root package name */
    private String f34629e;

    /* renamed from: f, reason: collision with root package name */
    private String f34630f;

    /* renamed from: g, reason: collision with root package name */
    private String f34631g;

    /* renamed from: h, reason: collision with root package name */
    private long f34632h;

    /* renamed from: i, reason: collision with root package name */
    private long f34633i;

    /* renamed from: j, reason: collision with root package name */
    private long f34634j;

    /* renamed from: q, reason: collision with root package name */
    private String f34641q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f34642r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f34643s;

    /* renamed from: v, reason: collision with root package name */
    private String f34646v;

    /* renamed from: c, reason: collision with root package name */
    private p f34627c = p.PREFETCH;

    /* renamed from: k, reason: collision with root package name */
    private int f34635k = 3;

    /* renamed from: l, reason: collision with root package name */
    private boolean f34636l = false;

    /* renamed from: m, reason: collision with root package name */
    private int f34637m = -1;

    /* renamed from: n, reason: collision with root package name */
    private int f34638n = -1;

    /* renamed from: o, reason: collision with root package name */
    private int f34639o = -1;

    /* renamed from: p, reason: collision with root package name */
    private int f34640p = -1;

    /* renamed from: t, reason: collision with root package name */
    private boolean f34644t = false;

    /* renamed from: u, reason: collision with root package name */
    private boolean f34645u = false;

    public d(Context context, String str) {
        this.f34646v = "";
        this.f34626b = new WeakReference<>(context);
        this.f34646v = str;
    }

    public void a(boolean z2) {
        this.f34644t = z2;
    }

    public Context b() {
        if (this.f34626b.get() != null) {
            return this.f34626b.get();
        }
        return null;
    }

    public String c() {
        return this.f34628d;
    }

    public String d() {
        return this.f34629e;
    }

    public String e() {
        return TextUtils.isEmpty(this.f34630f) ? this.f34646v : this.f34630f;
    }

    public String f() {
        return this.f34631g;
    }

    public long g() {
        return this.f34633i;
    }

    public long h() {
        return this.f34632h;
    }

    public long i() {
        return this.f34634j;
    }

    public int j() {
        return -1;
    }

    public int k() {
        return -1;
    }

    public boolean l() {
        return this.f34642r;
    }

    public boolean m() {
        return this.f34643s;
    }

    public int n() {
        return this.f34639o;
    }

    public int o() {
        return this.f34640p;
    }

    public boolean p() {
        return this.f34636l;
    }

    public p q() {
        return this.f34627c;
    }

    public boolean r() {
        if (q.a().f35026t != null && !com.octopus.ad.internal.c.p.a(q.a().k()) && !com.octopus.ad.internal.c.p.a(this.f34628d)) {
            return true;
        }
        com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.no_identification));
        return false;
    }

    public String s() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = b().getResources().getConfiguration().orientation == 2 ? "h" : "v";
            this.f34641q = str;
            if (!com.octopus.ad.internal.c.p.a(str)) {
                jSONObject.put("mOrientation", this.f34641q);
            }
            if (this.f34637m > 0 && this.f34638n > 0) {
                jSONObject.put("size", this.f34637m + "x" + this.f34638n);
            }
            int iO = o();
            int iN = n();
            if (iO > 0 && iN > 0) {
                p pVar = this.f34627c;
                p pVar2 = p.INTERSTITIAL;
                if (!pVar.equals(pVar2) && (this.f34637m < 0 || this.f34638n < 0)) {
                    jSONObject.put("max_size", iN + "x" + iO);
                } else if (this.f34627c.equals(pVar2)) {
                    jSONObject.put("size", iN + "x" + iO);
                }
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34572h, "Failed to encode adUnitParams, err = " + e2.getMessage());
            return "";
        }
    }

    public String a() {
        return this.f34646v;
    }

    public void c(String str) {
        this.f34629e = str;
    }

    public void d(String str) {
        this.f34630f = str;
    }

    public void a(String str) {
        this.f34646v = str;
    }

    public void b(String str) {
        this.f34628d = str;
    }

    public void c(long j2) {
        this.f34634j = j2;
    }

    public void d(boolean z2) {
        this.f34636l = z2;
    }

    public void a(long j2) {
        this.f34633i = j2;
    }

    public void b(long j2) {
        this.f34632h = j2;
    }

    public void c(boolean z2) {
        this.f34643s = z2;
    }

    public void e(String str) {
        this.f34631g = str;
    }

    public void a(int i2) {
        this.f34635k = i2;
    }

    public void b(boolean z2) {
        this.f34642r = z2;
    }

    public void c(int i2) {
        this.f34640p = i2;
    }

    public void a(p pVar) {
        this.f34627c = pVar;
    }

    public void b(int i2) {
        this.f34639o = i2;
    }
}
