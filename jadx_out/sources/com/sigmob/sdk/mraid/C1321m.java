package com.sigmob.sdk.mraid;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.view.View;
import com.anythink.core.common.f.g;
import com.czhj.sdk.logger.SigmobLog;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* renamed from: com.sigmob.sdk.mraid.m, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1321m {

    /* renamed from: a, reason: collision with root package name */
    public static final String f37980a = "vnd.android.cursor.item/event";

    /* renamed from: b, reason: collision with root package name */
    private static final int f37981b = 31;

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f37982c = {"yyyy-MM-dd'T'HH:mm:ssZZZZZ", "yyyy-MM-dd'T'HH:mmZZZZZ"};

    /* renamed from: com.sigmob.sdk.mraid.m$a */
    public interface a {
        void onFailure(C1314f c1314f);
    }

    /* renamed from: com.sigmob.sdk.mraid.m$b */
    public static class b implements MediaScannerConnection.MediaScannerConnectionClient {

        /* renamed from: a, reason: collision with root package name */
        private final String f37983a;

        /* renamed from: b, reason: collision with root package name */
        private final String f37984b;

        /* renamed from: c, reason: collision with root package name */
        private MediaScannerConnection f37985c;

        private b(String str, String str2) {
            this.f37983a = str;
            this.f37984b = str2;
        }

        private void a(MediaScannerConnection mediaScannerConnection) {
            this.f37985c = mediaScannerConnection;
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public void onMediaScannerConnected() {
            MediaScannerConnection mediaScannerConnection = this.f37985c;
            if (mediaScannerConnection != null) {
                mediaScannerConnection.scanFile(this.f37983a, this.f37984b);
            }
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            MediaScannerConnection mediaScannerConnection = this.f37985c;
            if (mediaScannerConnection != null) {
                mediaScannerConnection.disconnect();
            }
        }
    }

    private String a(int i2) throws IllegalArgumentException {
        switch (i2) {
            case 0:
                return "SU";
            case 1:
                return "MO";
            case 2:
                return "TU";
            case 3:
                return "WE";
            case 4:
                return "TH";
            case 5:
                return "FR";
            case 6:
                return "SA";
            default:
                throw new IllegalArgumentException("invalid day of week " + i2);
        }
    }

    private String b(int i2) throws IllegalArgumentException {
        if (i2 == 0 || i2 < -31 || i2 > 31) {
            throw new IllegalArgumentException("invalid day of month " + i2);
        }
        return "" + i2;
    }

    private String c(String str) throws IllegalArgumentException {
        StringBuilder sb = new StringBuilder();
        boolean[] zArr = new boolean[63];
        String[] strArrSplit = str.split(",");
        for (String str2 : strArrSplit) {
            int i2 = Integer.parseInt(str2);
            int i3 = i2 + 31;
            if (!zArr[i3]) {
                sb.append(b(i2) + ",");
                zArr[i3] = true;
            }
        }
        if (strArrSplit.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the month if specifying repeating weekly");
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public static boolean d(Context context) {
        return false;
    }

    private Date a(String str) throws ParseException {
        Date date = null;
        for (String str2 : f37982c) {
            try {
                date = new SimpleDateFormat(str2, Locale.US).parse(str);
            } catch (ParseException unused) {
            }
            if (date != null) {
                break;
            }
        }
        return date;
    }

    private String b(String str) throws IllegalArgumentException {
        StringBuilder sb = new StringBuilder();
        boolean[] zArr = new boolean[7];
        String[] strArrSplit = str.split(",");
        for (String str2 : strArrSplit) {
            int i2 = Integer.parseInt(str2);
            if (i2 == 7) {
                i2 = 0;
            }
            if (!zArr[i2]) {
                sb.append(a(i2) + ",");
                zArr[i2] = true;
            }
        }
        if (strArrSplit.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the week if specifying repeating weekly");
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public static boolean c(Context context) {
        return false;
    }

    private Map<String, Object> a(Map<String, String> map) throws ParseException {
        HashMap map2 = new HashMap();
        if (!map.containsKey("description") || !map.containsKey("start")) {
            throw new IllegalArgumentException("Missing start and description fields");
        }
        map2.put(g.a.f3271h, map.get("description"));
        if (!map.containsKey("start") || map.get("start") == null) {
            throw new IllegalArgumentException("Invalid calendar event: start is null.");
        }
        Date dateA = a(map.get("start"));
        if (dateA == null) {
            throw new IllegalArgumentException("Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
        }
        map2.put("beginTime", Long.valueOf(dateA.getTime()));
        if (map.containsKey("end") && map.get("end") != null) {
            Date dateA2 = a(map.get("end"));
            if (dateA2 == null) {
                throw new IllegalArgumentException("Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
            }
            map2.put("endTime", Long.valueOf(dateA2.getTime()));
        }
        if (map.containsKey("location")) {
            map2.put("eventLocation", map.get("location"));
        }
        if (map.containsKey("summary")) {
            map2.put("description", map.get("summary"));
        }
        if (map.containsKey("transparency")) {
            map2.put("availability", Integer.valueOf(map.get("transparency").equals("transparent") ? 1 : 0));
        }
        map2.put("rrule", b(map));
        return map2;
    }

    private String b(Map<String, String> map) throws IllegalArgumentException {
        String strC;
        StringBuilder sb;
        String str;
        String string;
        StringBuilder sb2 = new StringBuilder();
        if (map.containsKey("frequency")) {
            String str2 = map.get("frequency");
            int i2 = map.containsKey("interval") ? Integer.parseInt(map.get("interval")) : -1;
            if ("daily".equals(str2)) {
                sb2.append("FREQ=DAILY;");
                if (i2 != -1) {
                    string = "INTERVAL=" + i2 + ";";
                    sb2.append(string);
                }
            } else {
                if ("weekly".equals(str2)) {
                    sb2.append("FREQ=WEEKLY;");
                    if (i2 != -1) {
                        sb2.append("INTERVAL=" + i2 + ";");
                    }
                    if (map.containsKey("daysInWeek")) {
                        strC = b(map.get("daysInWeek"));
                        if (strC == null) {
                            throw new IllegalArgumentException("invalid ");
                        }
                        sb = new StringBuilder();
                        str = "BYDAY=";
                        sb.append(str);
                        sb.append(strC);
                        sb.append(";");
                        string = sb.toString();
                    }
                } else {
                    if (!"monthly".equals(str2)) {
                        throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
                    }
                    sb2.append("FREQ=MONTHLY;");
                    if (i2 != -1) {
                        sb2.append("INTERVAL=" + i2 + ";");
                    }
                    if (map.containsKey("daysInMonth")) {
                        strC = c(map.get("daysInMonth"));
                        if (strC == null) {
                            throw new IllegalArgumentException();
                        }
                        sb = new StringBuilder();
                        str = "BYMONTHDAY=";
                        sb.append(str);
                        sb.append(strC);
                        sb.append(";");
                        string = sb.toString();
                    }
                }
                sb2.append(string);
            }
        }
        return sb2.toString();
    }

    public void a(Context context, String str, a aVar) throws C1314f {
        if (c(context)) {
            return;
        }
        SigmobLog.e("Error downloading file - the device does not have an SD card mounted, or the SigmobAndroid permission is not granted.");
        throw new C1314f("Error downloading file  - the device does not have an SD card mounted, or the SigmobAndroid permission is not granted.");
    }

    public boolean b(Context context) {
        return false;
    }

    public void a(Context context, Map<String, String> map) throws C1314f {
        if (!d(context)) {
            SigmobLog.e("unsupported action createCalendarEvent for devices pre-ICS");
            throw new C1314f("Action is unsupported on this device (need SigmobAndroid version Ice Cream Sandwich or above)");
        }
        try {
            Map<String, Object> mapA = a(map);
            Intent type = new Intent("android.intent.action.INSERT").setType(f37980a);
            for (String str : mapA.keySet()) {
                Object obj = mapA.get(str);
                if (obj instanceof Long) {
                    type.putExtra(str, ((Long) obj).longValue());
                } else if (obj instanceof Integer) {
                    type.putExtra(str, ((Integer) obj).intValue());
                } else {
                    type.putExtra(str, (String) obj);
                }
            }
            type.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            context.startActivity(type);
        } catch (ActivityNotFoundException unused) {
            SigmobLog.e("no calendar app installed");
            throw new C1314f("Action is unsupported on this device - no calendar app installed");
        } catch (IllegalArgumentException e2) {
            SigmobLog.e("create calendar: invalid parameters " + e2.getMessage());
            throw new C1314f(e2);
        } catch (Exception e3) {
            SigmobLog.e("could not create calendar event");
            throw new C1314f(e3);
        }
    }

    public boolean a(Activity activity, View view) {
        return false;
    }

    public boolean a(Context context) {
        return false;
    }
}
