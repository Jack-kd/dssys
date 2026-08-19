package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.model.EventItem;
import com.beizi.fusion.model.FreqItem;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class l8 {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap f14838a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private static HashMap f14839b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private static Comparator f14840c = new a();

    /* renamed from: d, reason: collision with root package name */
    private static HashMap f14841d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    private static HashMap f14842e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private static HashSet f14843f = new HashSet();

    public class a implements Comparator {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(EventItem eventItem, EventItem eventItem2) {
            return eventItem.getTimeStamp().compareTo(eventItem2.getTimeStamp());
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f14844a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f14845b;

        public b(Context context, String str) {
            this.f14844a = context;
            this.f14845b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            l8.b(this.f14844a, this.f14845b);
        }
    }

    public static int a(String str, String str2) throws InterruptedException {
        ArrayList arrayList;
        int i2 = 0;
        if (str2 == null) {
            return 0;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("enter getTodayEventTimes channelMap != null ?  ");
        sb.append(f14839b != null);
        sb.append(",eventCode = ");
        sb.append(str2);
        d(sb.toString());
        a(q1.i().n(), str);
        String strValueOf = String.valueOf(a());
        if ("200.000".equalsIgnoreCase(str2)) {
            HashMap map = f14838a;
            if (map != null && map.get(str) != null) {
                d("getSpaceTodayEventTimes platFormMap.containsKey(adUnitId) = " + f14838a.containsKey(str));
                HashMap map2 = (HashMap) f14838a.get(str);
                if (map2 != null && (arrayList = (ArrayList) map2.get(str2)) != null) {
                    int size = arrayList.size();
                    int i3 = 0;
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        if (((EventItem) obj).getTimeStamp().compareTo(strValueOf) > 0) {
                            i3++;
                        }
                    }
                    i2 = i3;
                }
            }
        } else {
            HashMap map3 = f14839b;
            if (map3 != null && map3.get(str) != null) {
                d("getSpaceTodayEventTimes channelMap.containsKey(adUnitId) = " + f14839b.containsKey(str));
                HashMap map4 = (HashMap) f14839b.get(str);
                Iterator it = f14843f.iterator();
                int i4 = 0;
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    if (map4 != null && map4.get(str3) != null) {
                        HashMap map5 = (HashMap) map4.get(str3);
                        d("getSpaceTodayEventTimes eventMap = " + map5);
                        if (map5 != null && map5.get(str2) != null) {
                            ArrayList arrayList2 = (ArrayList) map5.get(str2);
                            d("getSpaceTodayEventTimes itemList = " + arrayList2 + ",eventCode = " + str2);
                            if (arrayList2 != null && arrayList2.size() > 0) {
                                mh.b("BeiZis", arrayList2.toString());
                                int size2 = arrayList2.size();
                                int i5 = 0;
                                while (i5 < size2) {
                                    Object obj2 = arrayList2.get(i5);
                                    i5++;
                                    if (((EventItem) obj2).getTimeStamp().compareTo(strValueOf) > 0) {
                                        i4++;
                                    }
                                }
                            }
                        }
                    }
                }
                i2 = i4;
            }
        }
        mh.b("BeiZis", "todayEventTimes = " + i2);
        return i2;
    }

    public static void b(Context context, String str) {
        try {
            ArrayList arrayList = (ArrayList) k6.a(context).c(str);
            f14838a.put(str, b(arrayList));
            f14839b.put(str, a(arrayList));
            d("adUnitId = " + str + ",platFormMap get = " + f14838a.get(str) + ",channelMap get = " + f14839b.get(str));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void c(Context context, String str) {
        w3.b().a().execute(new b(context, str));
    }

    public static void d(String str) {
        mh.c("FreqUtil", str);
    }

    public static boolean c(String str) {
        return f14838a.containsKey(str) && f14839b.containsKey(str);
    }

    public static FreqItem b(String str) {
        return (FreqItem) f14842e.get(str);
    }

    private static Map b(List list) {
        ArrayList arrayList;
        if (list != null && list.size() != 0) {
            HashMap map = new HashMap();
            Iterator it = list.iterator();
            String str = null;
            ArrayList arrayList2 = null;
            while (it.hasNext()) {
                EventItem eventItem = (EventItem) it.next();
                String code = eventItem.getCode();
                if (!code.equals(str)) {
                    if (str != null && arrayList2 != null) {
                        map.put(str, arrayList2);
                    }
                    if (!map.containsKey(code)) {
                        arrayList = new ArrayList();
                        arrayList.add(eventItem);
                    } else {
                        arrayList = (ArrayList) map.get(code);
                        if (arrayList != null) {
                            arrayList.add(eventItem);
                        }
                    }
                    map.put(code, arrayList);
                    arrayList2 = arrayList;
                } else if (arrayList2 != null) {
                    arrayList2.add(eventItem);
                }
                str = code;
            }
            for (String str2 : map.keySet()) {
                ArrayList arrayList3 = (ArrayList) map.get(str2);
                Collections.sort(arrayList3, f14840c);
                map.put(str2, arrayList3);
            }
            return map;
        }
        return new HashMap();
    }

    public static long a() {
        Calendar calendar = Calendar.getInstance(Locale.CHINA);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        return calendar.getTimeInMillis();
    }

    public static void a(Context context, String str) throws InterruptedException {
        if (c(str)) {
            return;
        }
        c(context, str);
        int i2 = 0;
        while (!c(str) && i2 < 100) {
            d("currentWaitInitTime = " + i2);
            try {
                Thread.sleep(5L);
                i2 += 5;
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0148, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.util.List r18, java.lang.String r19, java.lang.String r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.l8.a(java.util.List, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public static long a(String str) {
        Long l2 = (Long) f14841d.get(str);
        if (l2 == null) {
            return 0L;
        }
        return l2.longValue();
    }

    private static void a(String str, List list) {
        if (list == null || list.size() == 0) {
            return;
        }
        long jA = a(str);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            jA = Math.max(((FreqItem) it.next()).getInterval(), jA);
        }
        d("maxInterval = " + jA);
        f14841d.put(str, Long.valueOf(jA));
    }

    private static Map a(List list) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (list != null && list.size() != 0) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                EventItem eventItem = (EventItem) it.next();
                String spaceId = eventItem.getSpaceId();
                if (spaceId != null) {
                    if (!map.containsKey(spaceId)) {
                        arrayList2 = new ArrayList();
                        arrayList2.add(eventItem);
                    } else {
                        arrayList2 = (ArrayList) map.get(spaceId);
                        if (arrayList2 != null) {
                            arrayList2.add(eventItem);
                        }
                    }
                    map.put(spaceId, arrayList2);
                }
                String channel = eventItem.getChannel();
                f14843f.add(channel);
                if (channel != null) {
                    if (!map2.containsKey(channel)) {
                        arrayList = new ArrayList();
                        arrayList.add(eventItem);
                    } else {
                        arrayList = (ArrayList) map2.get(channel);
                        if (arrayList != null) {
                            arrayList.add(eventItem);
                        }
                    }
                    map2.put(channel, arrayList);
                }
            }
            HashMap map3 = new HashMap();
            for (String str : map.keySet()) {
                ArrayList arrayList3 = (ArrayList) map.get(str);
                if (arrayList3 != null) {
                    map3.put(str, (HashMap) b(arrayList3));
                }
            }
            for (String str2 : map2.keySet()) {
                ArrayList arrayList4 = (ArrayList) map2.get(str2);
                if (arrayList4 != null) {
                    map3.put(str2, (HashMap) b(arrayList4));
                }
            }
            return map3;
        }
        return new HashMap();
    }

    public static void a(String str, EventItem eventItem) {
        try {
            HashMap map = (HashMap) f14838a.get(str);
            if (map == null) {
                map = new HashMap();
            }
            String code = eventItem.getCode();
            a(eventItem, map, code);
            String spaceId = eventItem.getSpaceId();
            if (spaceId != null) {
                HashMap map2 = (HashMap) f14839b.get(str);
                if (map2 == null) {
                    map2 = new HashMap();
                }
                HashMap map3 = (HashMap) map2.get(spaceId);
                if (map3 == null) {
                    map3 = new HashMap();
                }
                a(eventItem, map3, code);
                map2.put(spaceId, map3);
            }
            String channel = eventItem.getChannel();
            f14843f.add(channel);
            if (channel != null) {
                HashMap map4 = (HashMap) f14839b.get(str);
                if (map4 == null) {
                    map4 = new HashMap();
                }
                HashMap map5 = (HashMap) map4.get(channel);
                if (map5 == null) {
                    map5 = new HashMap();
                }
                a(eventItem, map5, code);
                map4.put(channel, map5);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void a(EventItem eventItem, HashMap map, String str) {
        if (map != null) {
            if (!map.containsKey(str)) {
                if (str != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(eventItem);
                    map.put(str, arrayList);
                    return;
                }
                return;
            }
            ArrayList arrayList2 = (ArrayList) map.get(str);
            if (arrayList2 != null) {
                arrayList2.add(eventItem);
                Collections.sort(arrayList2, f14840c);
                map.put(str, arrayList2);
            }
        }
    }
}
