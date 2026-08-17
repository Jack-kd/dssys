package com.meishu.sdk.core.utils;

import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes4.dex */
public class v0 {

    /* renamed from: a, reason: collision with root package name */
    public static HashMap<String, a> f32032a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public static final Gson f32033b = new Gson();

    /* renamed from: c, reason: collision with root package name */
    public static HashMap<String, HashMap<String, RecordBean>> f32034c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public boolean f32035a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f32036b;
    }

    public static void a(String str, int i2) {
        try {
            HashMap<String, RecordBean> mapA = a();
            if (mapA == null) {
                mapA = new HashMap<>();
            }
            RecordBean recordBean = mapA.get(str);
            if (recordBean == null) {
                recordBean = new RecordBean();
            }
            recordBean.setPid(str);
            switch (i2) {
                case 1:
                    recordBean.setLoadNum(recordBean.getLoadNum() + 1);
                    break;
                case 2:
                    recordBean.setLoadSucc(recordBean.getLoadSucc() + 1);
                    break;
                case 3:
                    recordBean.setExposureNum(recordBean.getExposureNum() + 1);
                    break;
                case 4:
                    recordBean.setClickNum(recordBean.getClickNum() + 1);
                    break;
                case 5:
                    recordBean.setDynamicClickNum(recordBean.getDynamicClickNum() + 1);
                    break;
                case 6:
                    recordBean.setLastDynamicLoadedTime(System.currentTimeMillis());
                    break;
                case 7:
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    recordBean.setLastDynamicClickTime(jCurrentTimeMillis);
                    recordBean.setLastClickTime(jCurrentTimeMillis);
                    r.a().b("last_dynamic_time", jCurrentTimeMillis);
                    r.a().b("last_click_time", jCurrentTimeMillis);
                    break;
                case 8:
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    recordBean.setLastClickTime(jCurrentTimeMillis2);
                    r.a().b("last_click_time", jCurrentTimeMillis2);
                    break;
            }
            mapA.put(str, recordBean);
            a(mapA);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(HashMap<String, RecordBean> map) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINESE);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8:00"));
            String str = simpleDateFormat.format(new Date(jCurrentTimeMillis));
            if (f32034c == null) {
                f32034c = new HashMap<>();
            }
            f32034c.put(str, map);
            RecordMapBean recordMapBean = new RecordMapBean();
            recordMapBean.setDateRecordMap(f32034c);
            r.a().b("record_data", f32033b.toJson(recordMapBean));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static HashMap<String, RecordBean> a() {
        try {
            RecordMapBean recordMapBean = (RecordMapBean) f32033b.fromJson(r.a().a("record_data") ? r.a().a("record_data", "") : AdSdk.getSharedPreferences().getString("record_data", ""), RecordMapBean.class);
            if (recordMapBean == null) {
                return null;
            }
            HashMap<String, HashMap<String, RecordBean>> dateRecordMap = recordMapBean.getDateRecordMap();
            if (dateRecordMap == null) {
                dateRecordMap = new HashMap<>();
            }
            Calendar calendar = Calendar.getInstance();
            return dateRecordMap.get(String.format("%04d-%02d-%02d", Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5))));
        } catch (Throwable unused) {
            return null;
        }
    }
}
