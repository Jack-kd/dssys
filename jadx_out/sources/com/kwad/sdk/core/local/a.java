package com.kwad.sdk.core.local;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.request.model.f;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ac;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class a {
    private static volatile a aSN;
    public static ThreadLocal<SimpleDateFormat> aSO = new ThreadLocal<SimpleDateFormat>() { // from class: com.kwad.sdk.core.local.a.1
        @Nullable
        private static SimpleDateFormat Md() {
            return new SimpleDateFormat("yyyy-MM-dd");
        }

        @Override // java.lang.ThreadLocal
        @Nullable
        public final /* synthetic */ SimpleDateFormat initialValue() {
            return Md();
        }
    };

    public static a LY() {
        if (aSN == null) {
            synchronized (a.class) {
                try {
                    if (aSN == null) {
                        aSN = new a();
                    }
                } finally {
                }
            }
        }
        return aSN;
    }

    public static boolean LZ() throws JSONException {
        List<f> listEw = ew(15);
        if (listEw.size() == 0) {
            return true;
        }
        long j2 = -1;
        int i2 = 0;
        for (f fVar : listEw) {
            i2 += fVar.count;
            long j3 = fVar.aXx;
            if (j3 > j2) {
                j2 = j3;
            }
        }
        c.d("AdCounter", "onBind localCountCheck: allCount: " + i2 + ", lastShowTime: " + j2);
        if (i2 > Mb()) {
            return false;
        }
        return j2 + (Mc() * 1000) <= System.currentTimeMillis();
    }

    public static List<f> Ma() throws JSONException {
        if (((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext() == null) {
            return null;
        }
        String string = getString("ksadsdk_local_ad_task_info_adstyle_data");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        try {
            JSONArray jSONArray = new JSONArray(string);
            int length = jSONArray.length();
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i3);
                f fVar = new f();
                fVar.parseJson(jSONObject);
                arrayList.add(fVar);
            }
        } catch (Exception unused) {
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            f fVar2 = (f) obj;
            if (a(fVar2)) {
                arrayList2.add(fVar2);
            }
        }
        return arrayList2;
    }

    private static int Mb() {
        Context context = ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext();
        if (context == null) {
            return 30;
        }
        return context.getSharedPreferences("ksadsdk_local_ad_task_info", 0).getInt("reward_aggregation_max_per_day", 30);
    }

    private static long Mc() {
        Context context = ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext();
        if (context == null) {
            return 1200L;
        }
        return context.getSharedPreferences("ksadsdk_local_ad_task_info", 0).getLong("reward_aggregation_min_interval", 1200L);
    }

    private static void T(String str, String str2) {
        Context context = ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext();
        if (context == null) {
            return;
        }
        context.getSharedPreferences("ksadsdk_local_ad_task_info", 0).edit().putString(str, str2).apply();
    }

    private static boolean a(@NonNull f fVar) {
        long j2 = fVar.aXx;
        if (j2 <= 0) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = aSO.get();
        return simpleDateFormat.format(new Date(j2)).equals(simpleDateFormat.format(new Date()));
    }

    public static void cG(AdTemplate adTemplate) throws JSONException {
        if (adTemplate.watched) {
            c.d("AdCounter", "startWatchAd this ad has been watched.");
        } else {
            cH(adTemplate);
        }
    }

    private static void cH(AdTemplate adTemplate) throws JSONException {
        int iEW = e.eW(adTemplate);
        int iEI = e.eI(adTemplate);
        List listMa = Ma();
        if (listMa != null && listMa.size() != 0) {
            Iterator it = listMa.iterator();
            while (true) {
                if (!it.hasNext()) {
                    listMa.add(new f(iEI, iEW, 1, System.currentTimeMillis()));
                    break;
                }
                f fVar = (f) it.next();
                if (fVar.adStyle == iEI && fVar.taskType == iEW) {
                    fVar.count++;
                    if (!a(fVar)) {
                        fVar.count = 1;
                        fVar.aL(System.currentTimeMillis());
                    }
                }
            }
        } else {
            listMa = new ArrayList();
            listMa.add(new f(iEI, iEW, 1, System.currentTimeMillis()));
        }
        T("ksadsdk_local_ad_task_info_adstyle_data", ac.Y(listMa).toString());
        adTemplate.watched = true;
    }

    @NonNull
    private static List<f> ew(int i2) throws JSONException {
        ArrayList arrayList = new ArrayList();
        List<f> listMa = Ma();
        if (listMa != null && listMa.size() != 0) {
            for (f fVar : listMa) {
                if (15 == fVar.adStyle) {
                    arrayList.add(fVar);
                }
            }
        }
        return arrayList;
    }

    public static void g(int i2, long j2) {
        Context context = ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext();
        if (context == null) {
            return;
        }
        context.getSharedPreferences("ksadsdk_local_ad_task_info", 0).edit().putInt("reward_aggregation_max_per_day", i2).putLong("reward_aggregation_min_interval", j2).apply();
    }

    private static String getString(String str) {
        Context context = ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext();
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences("ksadsdk_local_ad_task_info", 0).getString(str, null);
        } catch (Throwable th) {
            c.printStackTrace(th);
            return null;
        }
    }
}
