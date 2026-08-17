package com.kwad.sdk.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.al;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public final class ak {
    @WorkerThread
    public static String a(Context context, String str, al.a aVar, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strAv = al.av(context, al.a(str, aVar));
        String strDQ = bf.dQ(context);
        if (!TextUtils.isEmpty(strDQ)) {
            strAv = strAv.replace("__MAC__", strDQ).replace("__MAC2__", an.md5(strDQ)).replace("__MAC3__", an.md5(strDQ.replace(":", "")));
        }
        String strDO = bf.dO(context);
        if (!TextUtils.isEmpty(strDO)) {
            strAv = strAv.replace("__IMEI__", strDO).replace("__IMEI2__", an.md5(strDO)).replace("__IMEI3__", an.sha1(strDO));
        }
        String oaid = bf.getOaid();
        if (!TextUtils.isEmpty(oaid)) {
            strAv = strAv.replace("__OAID__", oaid).replace("__OAID2__", an.md5(oaid));
        }
        String strDP = bf.dP(context);
        if (!TextUtils.isEmpty(strDP)) {
            strAv = strAv.replace("__ANDROIDID2__", an.md5(strDP)).replace("__ANDROIDID3__", an.sha1(strDP)).replace("__ANDROIDID__", strDP);
        }
        return al.d(context, strAv, z2);
    }

    public static void f(AdTemplate adTemplate, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Context context = ServiceProvider.getContext();
        int i2 = 0;
        if (!TextUtils.isEmpty(bf.dQ(context))) {
            if (str2.contains("__MAC__")) {
                arrayList.add("__MAC__");
            }
            if (str2.contains("__MAC2__")) {
                arrayList.add("__MAC2__");
            }
            if (str2.contains("__MAC3__")) {
                arrayList.add("__MAC3__");
            }
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    com.kwad.sdk.commercial.i.a.a(adTemplate, "MAC", str, str2, (String) obj);
                }
                arrayList.clear();
            }
        }
        if (!TextUtils.isEmpty(bf.dO(context))) {
            if (str2.contains("__IMEI__")) {
                arrayList.add("__IMEI__");
            }
            if (str2.contains("__IMEI2__")) {
                arrayList.add("__IMEI2__");
            }
            if (str2.contains("__IMEI3__")) {
                arrayList.add("__IMEI3__");
            }
            if (!arrayList.isEmpty()) {
                int size2 = arrayList.size();
                int i4 = 0;
                while (i4 < size2) {
                    Object obj2 = arrayList.get(i4);
                    i4++;
                    com.kwad.sdk.commercial.i.a.a(adTemplate, "IMEI", str, str2, (String) obj2);
                }
                arrayList.clear();
            }
        }
        if (!TextUtils.isEmpty(bf.getOaid())) {
            if (str2.contains("__OAID__")) {
                arrayList.add("__OAID__");
            }
            if (str2.contains("__OAID2__")) {
                arrayList.add("__OAID2__");
            }
            if (!arrayList.isEmpty()) {
                int size3 = arrayList.size();
                int i5 = 0;
                while (i5 < size3) {
                    Object obj3 = arrayList.get(i5);
                    i5++;
                    com.kwad.sdk.commercial.i.a.a(adTemplate, "OAID", str, str2, (String) obj3);
                }
                arrayList.clear();
            }
        }
        if (TextUtils.isEmpty(bf.dP(context))) {
            return;
        }
        if (str2.contains("__ANDROIDID__")) {
            arrayList.add("__ANDROIDID__");
        }
        if (str2.contains("__ANDROIDID2__")) {
            arrayList.add("__ANDROIDID2__");
        }
        if (str2.contains("__ANDROIDID3__")) {
            arrayList.add("__ANDROIDID3__");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        int size4 = arrayList.size();
        while (i2 < size4) {
            Object obj4 = arrayList.get(i2);
            i2++;
            com.kwad.sdk.commercial.i.a.a(adTemplate, "ANDROID", str, str2, (String) obj4);
        }
        arrayList.clear();
    }
}
