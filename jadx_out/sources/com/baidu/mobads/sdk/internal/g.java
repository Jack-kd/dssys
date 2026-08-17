package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.util.List;

/* loaded from: classes2.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private dg f11531a;

    /* renamed from: b, reason: collision with root package name */
    private String f11532b;

    public interface a {
        void a();

        void a(int i2, String str, NativeResponse nativeResponse);

        void a(NativeResponse nativeResponse);

        void a(NativeResponse nativeResponse, int i2);

        void a(List<NativeResponse> list);

        void b();

        void b(int i2, String str, NativeResponse nativeResponse);

        void b(NativeResponse nativeResponse);

        void c();
    }

    public interface b {
        void a(NativeResponse nativeResponse);
    }

    public g(Context context, String str, a aVar, boolean z2, int i2) {
        this(context, aVar, new dg(context, str, "feed", z2, i2));
    }

    public void a() {
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.p();
        }
    }

    public void b(boolean z2) {
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.d(z2);
        }
    }

    public void c(boolean z2) {
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.b(z2);
        }
    }

    public g(Context context, String str, BaiduNativeManager.ExpressAdListener expressAdListener, boolean z2, int i2) {
        dg dgVar = new dg(context, str, "feed", z2, i2);
        this.f11531a = dgVar;
        dgVar.a(expressAdListener);
        this.f11531a.a(1);
    }

    public void a(b bVar) {
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.a(bVar);
        }
    }

    public void b() {
        b((RequestParameters) null);
    }

    public void b(RequestParameters requestParameters) {
        if (requestParameters == null) {
            requestParameters = new RequestParameters.Builder().build();
        }
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.h(this.f11532b);
        }
        this.f11531a.a(requestParameters);
        this.f11531a.a();
    }

    public void a(boolean z2) {
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.c(z2);
        }
    }

    public g(Context context, String str, BaiduNativeManager.EntryAdListener entryAdListener, boolean z2, int i2) {
        dg dgVar = new dg(context, str, IAdInterListener.AdProdType.PRODUCT_SONES, z2, i2);
        this.f11531a = dgVar;
        dgVar.a(entryAdListener);
    }

    public void a(int i2) {
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.f11181r = i2;
        }
    }

    public g(Context context, String str, a aVar, boolean z2, int i2, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            if (str2.equals(IAdInterListener.AdProdType.PRODUCT_INSITE)) {
                this.f11531a = new dg(context, str, IAdInterListener.AdProdType.PRODUCT_INSITE, z2, i2);
            } else if (str2.equals(IAdInterListener.AdProdType.PRODUCT_SUG)) {
                this.f11531a = new dg(context, str, IAdInterListener.AdProdType.PRODUCT_SUG, z2, i2);
            } else if (str2.equals(IAdInterListener.AdProdType.PRODUCT_PREROLL)) {
                this.f11531a = new dg(context, str, "video", z2, i2);
            } else {
                this.f11531a = new dg(context, str, "feed", z2, i2);
            }
        }
        this.f11531a.a(aVar);
    }

    public String a(RequestParameters requestParameters) {
        if (this.f11531a == null) {
            return null;
        }
        if (requestParameters == null) {
            requestParameters = new RequestParameters.Builder().build();
        }
        this.f11531a.h(this.f11532b);
        this.f11531a.a(requestParameters);
        return this.f11531a.l();
    }

    public void b(String str) {
        this.f11532b = str;
    }

    public void a(String str) {
        dg dgVar = this.f11531a;
        if (dgVar != null) {
            dgVar.b(str);
        }
    }

    public g(Context context, a aVar, dg dgVar) {
        this.f11531a = dgVar;
        dgVar.a(aVar);
    }
}
