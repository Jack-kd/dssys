package com.baidu.mobads.sdk.internal;

import android.content.Context;
import com.baidu.mobads.sdk.api.CpuChannelListManager;
import com.baidu.mobads.sdk.api.IAdInterListener;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class o extends ae {

    /* renamed from: t, reason: collision with root package name */
    private CpuChannelListManager.CpuChannelListListener f11572t;

    /* renamed from: u, reason: collision with root package name */
    private String f11573u;

    /* renamed from: v, reason: collision with root package name */
    private int f11574v;

    public o(Context context) {
        super(context);
    }

    public void a(CpuChannelListManager.CpuChannelListListener cpuChannelListListener) {
        this.f11572t = cpuChannelListListener;
    }

    public void a(String str, int i2) {
        this.f11573u = str;
        this.f11574v = i2;
    }

    @Override // com.baidu.mobads.sdk.internal.ae, com.baidu.mobads.sdk.internal.bj
    public void a() {
        if (this.f11176m == null) {
            this.f11177n = false;
            return;
        }
        this.f11177n = true;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, "cpu");
            this.f11176m.createProdHandler(jSONObject2);
            p pVar = new p(this);
            this.f11176m.addEventListener(z.ar, pVar);
            this.f11176m.addEventListener(z.as, pVar);
            jSONObject.put("appsid", this.f11573u);
            jSONObject.put("subChannelId", this.f11574v);
            jSONObject.put("event_type", "cpu_channelIds");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        a(jSONObject);
    }
}
