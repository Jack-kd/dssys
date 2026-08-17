package com.baidu.mobads.sdk.internal;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class bz implements Parcelable {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11266a = "MD5";

    /* renamed from: b, reason: collision with root package name */
    public static final Parcelable.Creator<bz> f11267b = new ca();

    /* renamed from: c, reason: collision with root package name */
    private JSONObject f11268c;

    /* renamed from: d, reason: collision with root package name */
    private double f11269d;

    /* renamed from: e, reason: collision with root package name */
    private String f11270e;

    /* renamed from: f, reason: collision with root package name */
    private String f11271f;

    /* renamed from: g, reason: collision with root package name */
    private String f11272g;

    /* renamed from: h, reason: collision with root package name */
    private int f11273h;

    /* renamed from: i, reason: collision with root package name */
    private int f11274i;

    public /* synthetic */ bz(Parcel parcel, ca caVar) {
        this(parcel);
    }

    public Boolean a() {
        return Boolean.valueOf(this.f11274i == 1);
    }

    public double b() {
        return this.f11269d;
    }

    public String c() {
        return cs.a().c(this.f11270e);
    }

    public String d() {
        return this.f11271f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f11272g;
    }

    public Boolean f() {
        return Boolean.valueOf(this.f11273h == 1);
    }

    public String toString() {
        return this.f11268c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f11271f);
        parcel.writeInt(this.f11274i);
        parcel.writeString(this.f11270e);
        parcel.writeDouble(this.f11269d);
        parcel.writeString(this.f11272g);
        parcel.writeInt(this.f11273h);
    }

    public bz(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f11268c = jSONObject;
            this.f11269d = jSONObject.getDouble(com.umeng.analytics.pro.cl.f49059n);
            this.f11270e = this.f11268c.getString("url");
            this.f11271f = this.f11268c.getString(com.anythink.core.common.m.f.f5775Y);
            this.f11274i = 1;
            this.f11272g = "";
            this.f11273h = 0;
        } catch (JSONException unused) {
            this.f11274i = 0;
        }
        this.f11274i = c() == null ? 0 : 1;
    }

    public bz(bz bzVar, String str, Boolean bool) {
        this.f11269d = bzVar.b();
        this.f11270e = bzVar.c();
        this.f11271f = bzVar.d();
        this.f11274i = bzVar.a().booleanValue() ? 1 : 0;
        this.f11272g = str;
        this.f11273h = bool.booleanValue() ? 1 : 0;
    }

    private bz(Parcel parcel) {
        this.f11271f = parcel.readString();
        this.f11274i = parcel.readInt();
        this.f11270e = parcel.readString();
        this.f11269d = parcel.readDouble();
        this.f11272g = parcel.readString();
        this.f11273h = parcel.readInt();
    }
}
