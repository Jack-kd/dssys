package com.kwad.components.core.innerEc.qcpx;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.internal.cb;
import com.kwad.components.core.innerEc.f;
import com.kwad.sdk.core.adlog.c;
import com.kwad.sdk.core.network.e;
import com.kwad.sdk.core.network.g;
import com.kwad.sdk.core.network.l;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.utils.ae;
import com.kwad.sdk.utils.by;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b {
    /* JADX INFO: Access modifiers changed from: private */
    public static void a(AdTemplate adTemplate, final Context context, final int i2, final String str, final String str2) {
        int i3 = 4;
        if (!l.HTTP_CODE_ERROR_MSG.equals(str) && i2 != e.aTc.errorCode) {
            int i4 = e.aTd.errorCode;
            i3 = 3;
        }
        c.u(adTemplate, i3);
        by.runOnUiThread(new Runnable() { // from class: com.kwad.components.core.innerEc.qcpx.b.3
            @Override // java.lang.Runnable
            public final void run() {
                String str3 = str2;
                if (!TextUtils.isEmpty(str)) {
                    str3 = str;
                }
                com.kwad.sdk.core.d.c.w("ReceiveQcpxRequestHelper", "notifyError errorCode: " + i2 + ", errorMsg: " + str + ", defaultToast: " + str2 + ", targetToast: " + str3);
                ae.c(context, str3, 0);
            }
        });
    }

    public static void h(final Context context, final AdTemplate adTemplate) {
        if (adTemplate == null) {
            return;
        }
        final Map<String, String> mapRj = f.rj();
        if (mapRj == null) {
            com.kwad.sdk.core.d.c.d("ReceiveQcpxRequestHelper", "requestReceiveQcpx: map is null, not login");
            return;
        }
        if (!com.kwad.sdk.core.response.helper.a.dH(com.kwad.sdk.core.response.helper.e.eO(adTemplate))) {
            com.kwad.sdk.core.d.c.d("ReceiveQcpxRequestHelper", "requestReceiveQcpx: there is no qcpx");
            return;
        }
        final ReceiveQcpxBody receiveQcpxBodyNewInstance = ReceiveQcpxBody.newInstance(adTemplate);
        final String str = receiveQcpxBodyNewInstance.receiveToast;
        final String str2 = receiveQcpxBodyNewInstance.receiveFailToast;
        new l<a, ReceiveQcpxResultData>() { // from class: com.kwad.components.core.innerEc.qcpx.b.1
            @NonNull
            private static ReceiveQcpxResultData aR(String str3) {
                ReceiveQcpxResultData receiveQcpxResultData = new ReceiveQcpxResultData();
                receiveQcpxResultData.parseJson(new JSONObject(str3));
                return receiveQcpxResultData;
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.kwad.sdk.core.network.a
            @NonNull
            /* renamed from: tl, reason: merged with bridge method [inline-methods] */
            public a createRequest() {
                return new a(mapRj, receiveQcpxBodyNewInstance);
            }

            @Override // com.kwad.sdk.core.network.l
            @NonNull
            public final /* synthetic */ BaseResultData parseData(String str3) {
                return aR(str3);
            }
        }.request(new g<a, ReceiveQcpxResultData>() { // from class: com.kwad.components.core.innerEc.qcpx.b.2
            private static void a(@NonNull a aVar) {
                com.kwad.sdk.core.d.c.w("ReceiveQcpxRequestHelper", "request onStartRequest: " + aVar.getUrl());
            }

            private void n(int i2, String str3) {
                com.kwad.sdk.core.d.c.w("ReceiveQcpxRequestHelper", "request onError: errorCode: " + i2 + ", errorMsg: " + str3);
                b.a(adTemplate, context, i2, str3, str2);
            }

            @Override // com.kwad.sdk.core.network.g
            public final /* synthetic */ void onError(@NonNull com.kwad.sdk.core.network.f fVar, int i2, String str3) {
                n(i2, str3);
            }

            @Override // com.kwad.sdk.core.network.g
            public final /* synthetic */ void onStartRequest(@NonNull com.kwad.sdk.core.network.f fVar) {
                a((a) fVar);
            }

            @Override // com.kwad.sdk.core.network.g
            public final /* synthetic */ void onSuccess(@NonNull com.kwad.sdk.core.network.f fVar, @NonNull BaseResultData baseResultData) {
                a((ReceiveQcpxResultData) baseResultData);
            }

            private void a(@NonNull ReceiveQcpxResultData receiveQcpxResultData) {
                com.kwad.sdk.core.d.c.w("ReceiveQcpxRequestHelper", "request onSuccess: " + receiveQcpxResultData.errorMsg);
                b.a(adTemplate, context, cb.f11292o, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(AdTemplate adTemplate, final Context context, final String str, final String str2) {
        c.cA(adTemplate);
        by.runOnUiThread(new Runnable() { // from class: com.kwad.components.core.innerEc.qcpx.b.4
            @Override // java.lang.Runnable
            public final void run() {
                com.kwad.sdk.core.d.c.w("ReceiveQcpxRequestHelper", "notifySuccess: " + str + ", toast: " + str2);
                ae.c(context, str2, 0);
            }
        });
    }
}
