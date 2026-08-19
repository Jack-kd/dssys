package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.CpuChannelResponse;
import com.baidu.mobads.sdk.api.IOAdEvent;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: classes2.dex */
class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ IOAdEvent f11576a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ p f11577b;

    public q(p pVar, IOAdEvent iOAdEvent) {
        this.f11577b = pVar;
        this.f11576a = iOAdEvent;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        IOAdEvent iOAdEvent = this.f11576a;
        if (iOAdEvent == null || TextUtils.isEmpty(iOAdEvent.getType())) {
            return;
        }
        String type = this.f11576a.getType();
        if (z.ar.equals(type)) {
            List<CpuChannelResponse> listA = n.a((JSONArray) this.f11576a.getData().get("cpuChannelList"));
            if (this.f11577b.f11575a.f11572t != null) {
                this.f11577b.f11575a.f11572t.onChannelListLoaded(listA);
                return;
            }
            return;
        }
        if (z.as.equals(type)) {
            Map<String, Object> data = this.f11576a.getData();
            int iIntValue = 0;
            if (data != null) {
                str = (String) data.get("error_message");
                Object obj = data.get("error_code");
                if (obj == null) {
                    obj = 0;
                }
                iIntValue = ((Integer) obj).intValue();
            } else {
                str = "";
            }
            if (this.f11577b.f11575a.f11572t != null) {
                this.f11577b.f11575a.f11572t.onChannelListError(str, iIntValue);
            }
        }
    }
}
