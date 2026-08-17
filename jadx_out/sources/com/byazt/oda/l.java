package com.byazt.oda;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.view.MotionEventCompat;
import androidx.work.PeriodicWorkRequest;
import com.anythink.core.common.d.i;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static volatile String f24008a;

    /* renamed from: w, reason: collision with root package name */
    public static hp f24011w;
    public static AtomicBoolean hp = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public static final Map<String, String> f24010l = new ConcurrentHashMap();
    public static volatile long jx = 0;

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicBoolean f24009j = new AtomicBoolean(false);

    public interface hp {
        void hp(String str);

        void l(String str);
    }

    public static void hp(hp hpVar) {
        f24011w = hpVar;
    }

    private static String[] j(com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) {
        String[] strArr = {"", ""};
        Map<String, String> mapHp = hp(false, hpVar, z2, i2, jVar);
        if (mapHp != null) {
            strArr[0] = mapHp.get("local_ipv4");
            strArr[1] = mapHp.get("local_ipv6");
        }
        return strArr;
    }

    private static String[] jx(com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) throws JSONException {
        String[] strArrL = l(hpVar, z2, i2, jVar);
        if (TextUtils.isEmpty(strArrL[0]) && TextUtils.isEmpty(strArrL[1])) {
            s.hp("", hpVar, i2);
        }
        return strArrL;
    }

    public static String[] l(com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) {
        return j(hpVar, z2, i2, jVar);
    }

    public static String hp(com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) {
        Map<String, String> mapHp = hp(false, hpVar, z2, i2, jVar);
        String str = mapHp != null ? mapHp.get("mac") : "";
        return str == null ? "" : str;
    }

    private static String l(byte[] bArr) {
        return (bArr[0] & 255) + i.f2495E + (bArr[1] & 255) + i.f2495E + (bArr[2] & 255) + i.f2495E + (bArr[3] & 255);
    }

    private static Map<String, String> hp(boolean z2, com.byazt.pg.hp hpVar, int i2) {
        Enumeration<NetworkInterface> networkInterfaces;
        long jElapsedRealtime = SystemClock.elapsedRealtime() + PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
        if (!z2) {
            if (hp.get()) {
                jx = 0L;
                hp.set(false);
            }
            if (jElapsedRealtime - jx < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                f24009j.set(true);
                return f24010l;
            }
        }
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (Throwable unused) {
        }
        if (networkInterfaces == null) {
            jx = jElapsedRealtime;
            f24009j.set(true);
            return null;
        }
        HashMap map = new HashMap();
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
            if (networkInterfaceNextElement != null) {
                map.put(networkInterfaceNextElement.getName(), networkInterfaceNextElement);
            }
        }
        hp(map, hpVar, i2);
        hp(map, hpVar);
        jx = jElapsedRealtime;
        f24009j.set(true);
        return f24010l;
    }

    public static Map<String, String> hp(boolean z2, com.byazt.pg.hp hpVar, boolean z3, int i2, com.byazt.he.j jVar) {
        Map<String, String> mapHp;
        if (!hp(hpVar, z3, jVar)) {
            return f24010l;
        }
        if (f24009j.get()) {
            return hp(z2, hpVar, i2);
        }
        synchronized (l.class) {
            mapHp = hp(z2, hpVar, i2);
        }
        return mapHp;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] hp(boolean r16, java.util.concurrent.atomic.AtomicBoolean r17, com.byazt.pg.hp r18, boolean r19, int r20, com.byazt.he.j r21) throws org.json.JSONException {
        /*
            r0 = 2
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = 0
            java.lang.String r2 = ""
            r0[r1] = r2
            r3 = 1
            r0[r3] = r2
            java.lang.String r4 = com.byazt.oda.s.hp(r18)
            r5 = 0
            r6 = 0
            java.lang.String r8 = "armor_service"
            java.lang.Object r8 = com.byazt.ym.j.getService(r8)     // Catch: org.json.JSONException -> L59
            com.byazt.pg.w r8 = (com.byazt.pg.w) r8     // Catch: org.json.JSONException -> L59
            boolean r9 = android.text.TextUtils.isEmpty(r4)     // Catch: org.json.JSONException -> L59
            java.lang.String r10 = "time"
            java.lang.String r11 = "value"
            if (r9 != 0) goto L39
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: org.json.JSONException -> L59
            r9.<init>(r4)     // Catch: org.json.JSONException -> L59
            java.lang.String r4 = r9.getString(r11)     // Catch: org.json.JSONException -> L59
            java.lang.String r4 = r8.decryptAESWithCBC(r4)     // Catch: org.json.JSONException -> L59
            long r12 = r9.getLong(r10)     // Catch: org.json.JSONException -> L36
            goto L3b
        L36:
            r8 = r5
        L37:
            r12 = r6
            goto L5c
        L39:
            r4 = r5
            r12 = r6
        L3b:
            java.lang.String r9 = com.byazt.oda.s.l(r18)     // Catch: org.json.JSONException -> L57
            boolean r14 = android.text.TextUtils.isEmpty(r9)     // Catch: org.json.JSONException -> L57
            if (r14 != 0) goto L57
            org.json.JSONObject r14 = new org.json.JSONObject     // Catch: org.json.JSONException -> L57
            r14.<init>(r9)     // Catch: org.json.JSONException -> L57
            java.lang.String r9 = r14.getString(r11)     // Catch: org.json.JSONException -> L57
            java.lang.String r8 = r8.decryptAESWithCBC(r9)     // Catch: org.json.JSONException -> L57
            long r6 = r14.getLong(r10)     // Catch: org.json.JSONException -> L5c
            goto L5c
        L57:
            r8 = r5
            goto L5c
        L59:
            r4 = r5
            r8 = r4
            goto L37
        L5c:
            if (r4 != 0) goto L64
            if (r8 == 0) goto L61
            goto L64
        L61:
            r9 = r17
            goto L6b
        L64:
            r0[r1] = r4
            r0[r3] = r8
            if (r16 == 0) goto L61
            return r0
        L6b:
            boolean r9 = r9.getAndSet(r1)
            if (r9 == 0) goto L91
            java.lang.String[] r0 = jx(r18, r19, r20, r21)
            r5 = r0[r1]
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 == 0) goto Lc3
            r5 = r0[r3]
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 == 0) goto Lc3
            if (r4 != 0) goto L88
            r4 = r2
        L88:
            r0[r1] = r4
            if (r8 != 0) goto L8d
            goto L8e
        L8d:
            r2 = r8
        L8e:
            r0[r3] = r2
            goto Lc3
        L91:
            r9 = 3600000(0x36ee80, double:1.7786363E-317)
            if (r4 == 0) goto La0
            long r14 = java.lang.System.currentTimeMillis()
            long r14 = r14 - r12
            int r2 = (r14 > r9 ? 1 : (r14 == r9 ? 0 : -1))
            if (r2 <= 0) goto La0
            r4 = r5
        La0:
            if (r8 == 0) goto Lac
            long r11 = java.lang.System.currentTimeMillis()
            long r11 = r11 - r6
            int r2 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
            if (r2 <= 0) goto Lac
            goto Lad
        Lac:
            r5 = r8
        Lad:
            boolean r2 = android.text.TextUtils.isEmpty(r4)
            if (r2 == 0) goto Lbf
            boolean r2 = android.text.TextUtils.isEmpty(r5)
            if (r2 != 0) goto Lba
            goto Lbf
        Lba:
            java.lang.String[] r0 = jx(r18, r19, r20, r21)
            goto Lc3
        Lbf:
            r0[r1] = r4
            r0[r3] = r5
        Lc3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.oda.l.hp(boolean, java.util.concurrent.atomic.AtomicBoolean, com.byazt.pg.hp, boolean, int, com.byazt.he.j):java.lang.String[]");
    }

    private static void hp(Map<String, NetworkInterface> map, com.byazt.pg.hp hpVar) throws JSONException {
        Iterator<Map.Entry<String, NetworkInterface>> it;
        String str;
        String hostAddress;
        com.byazt.pg.hp hpVar2 = hpVar;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        JSONArray jSONArray = new JSONArray();
        Iterator<Map.Entry<String, NetworkInterface>> it2 = map.entrySet().iterator();
        String str2 = "";
        String strHp = "";
        String strHp2 = strHp;
        String str3 = strHp2;
        while (it2.hasNext()) {
            Map.Entry<String, NetworkInterface> next = it2.next();
            if (next != null) {
                String key = next.getKey();
                NetworkInterface value = next.getValue();
                if (value != null) {
                    try {
                        if (TextUtils.equals(key, "wlan0")) {
                            strHp = hp(value, hpVar2);
                        }
                        if (TextUtils.equals(key, "eth0")) {
                            strHp2 = hp(value, hpVar2);
                        }
                    } catch (Throwable unused) {
                    }
                    List<InetAddress> listHp = hp(value);
                    if (listHp != null) {
                        for (InetAddress inetAddress : listHp) {
                            String hostAddress2 = inetAddress.getHostAddress();
                            if (TextUtils.equals(key, "wlan0") && (inetAddress instanceof Inet6Address) && inetAddress.isLinkLocalAddress() && (hostAddress = inetAddress.getHostAddress()) != null && hostAddress.startsWith("fe80")) {
                                str3 = hostAddress;
                            }
                            if (TextUtils.isEmpty(hostAddress2) || hostAddress2.indexOf(58) < 0) {
                                it = it2;
                                str = str2;
                            } else {
                                int iIndexOf = hostAddress2.indexOf(37);
                                try {
                                    it = it2;
                                    if ("dummy0".equals(key)) {
                                        try {
                                            JSONObject jSONObject = new JSONObject();
                                            str = str2;
                                            try {
                                                jSONObject.put("type", "client_tun");
                                                jSONObject.put(f.a.f3244d, iIndexOf < 0 ? hostAddress2.toUpperCase() : hostAddress2.substring(0, iIndexOf).toUpperCase());
                                                jSONArray.put(jSONObject);
                                            } catch (JSONException unused2) {
                                            }
                                        } catch (JSONException unused3) {
                                        }
                                    } else {
                                        str = str2;
                                        if ("wlan0".equals(key)) {
                                            JSONObject jSONObject2 = new JSONObject();
                                            jSONObject2.put("type", "client_anpi");
                                            jSONObject2.put(f.a.f3244d, iIndexOf < 0 ? hostAddress2.toUpperCase() : hostAddress2.substring(0, iIndexOf).toUpperCase());
                                            jSONArray.put(jSONObject2);
                                        }
                                    }
                                } catch (JSONException unused4) {
                                }
                            }
                            if (!inetAddress.isLoopbackAddress() && !inetAddress.isLinkLocalAddress() && !TextUtils.isEmpty(hostAddress2)) {
                                if (inetAddress instanceof Inet6Address) {
                                    sb.append(hostAddress2);
                                    sb.append(",");
                                } else if (inetAddress instanceof Inet4Address) {
                                    sb2.append(hostAddress2);
                                    sb2.append(",");
                                }
                            }
                            it2 = it;
                            str2 = str;
                        }
                    }
                    hpVar2 = hpVar;
                }
            }
            hpVar2 = hpVar;
            it2 = it2;
            str2 = str2;
        }
        String str4 = str2;
        if (!TextUtils.isEmpty(sb)) {
            sb = sb.delete(sb.length() - 1, sb.length());
        }
        if (!TextUtils.isEmpty(sb2)) {
            sb2 = sb2.delete(sb2.length() - 1, sb2.length());
        }
        Map<String, String> map2 = f24010l;
        map2.put("enc_ipv4", sb2.toString());
        map2.put("enc_ipv6", sb.toString());
        map2.put("register_ipv6", jSONArray.toString());
        if (!TextUtils.isEmpty(strHp)) {
            map2.put("mac", strHp);
        } else {
            map2.put("mac", strHp2);
        }
        map2.put("zaid_ipv6", TextUtils.isEmpty(str3) ? str4 : str3);
    }

    private static String hp(NetworkInterface networkInterface, com.byazt.pg.hp hpVar) throws SocketException {
        com.byazt.he.l customController = hpVar.getCustomController();
        if (customController != null && !customController.canRead(2)) {
            return customController.getMacAddress();
        }
        byte[] hardwareAddress = networkInterface.getHardwareAddress();
        if (hardwareAddress == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b3 : hardwareAddress) {
            sb.append(String.format("%02X:", Byte.valueOf(b3)));
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private static void hp(Map<String, NetworkInterface> map, com.byazt.pg.hp hpVar, int i2) throws JSONException {
        String[] strArr = {"", ""};
        Iterator<Map.Entry<String, NetworkInterface>> it = map.entrySet().iterator();
        boolean z2 = false;
        boolean z3 = false;
        while (it.hasNext()) {
            NetworkInterface value = it.next().getValue();
            if (value != null) {
                for (InetAddress inetAddress : hp(value)) {
                    boolean z4 = inetAddress instanceof Inet4Address;
                    if (!z4 || !z2) {
                        if (z4 || !z3) {
                            if (hp(z4, inetAddress, strArr)) {
                                if (!TextUtils.isEmpty(strArr[0]) && !TextUtils.isEmpty(strArr[1])) {
                                    Map<String, String> map2 = f24010l;
                                    map2.put("local_ipv4", strArr[0]);
                                    map2.put("local_ipv6", strArr[1]);
                                    return;
                                }
                            } else {
                                String hostAddress = inetAddress.getHostAddress();
                                if (!TextUtils.isEmpty(hostAddress) && !hostAddress.startsWith("127")) {
                                    if (z4) {
                                        s.hp(((com.byazt.pg.w) com.byazt.ym.j.getService("armor_service")).encryptAESWithCBC(hostAddress), hpVar, i2);
                                        strArr[0] = hostAddress;
                                        hp hpVar2 = f24011w;
                                        if (hpVar2 != null) {
                                            hpVar2.hp(hostAddress);
                                        }
                                        if (z3) {
                                            Map<String, String> map3 = f24010l;
                                            map3.put("local_ipv4", hostAddress);
                                            map3.put("local_ipv6", strArr[1]);
                                            return;
                                        }
                                        z2 = true;
                                    } else {
                                        int iIndexOf = hostAddress.indexOf(37);
                                        if (iIndexOf >= 0) {
                                            hostAddress = hostAddress.substring(0, iIndexOf);
                                        }
                                        if (hp(hostAddress)) {
                                            s.l(((com.byazt.pg.w) com.byazt.ym.j.getService("armor_service")).encryptAESWithCBC(hostAddress), hpVar, i2);
                                            strArr[1] = hostAddress;
                                            hp hpVar3 = f24011w;
                                            if (hpVar3 != null) {
                                                hpVar3.l(hostAddress);
                                            }
                                            if (z2) {
                                                Map<String, String> map4 = f24010l;
                                                map4.put("local_ipv4", strArr[0]);
                                                map4.put("local_ipv6", hostAddress);
                                                return;
                                            }
                                            z3 = true;
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static List<InetAddress> hp(NetworkInterface networkInterface) {
        if (networkInterface == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            Object objHp = w.hp(networkInterface, "java.net.NetworkInterface", "addrs", null);
            if (!(objHp instanceof InetAddress[])) {
                return Collections.list(networkInterface.getInetAddresses());
            }
            return Arrays.asList((InetAddress[]) objHp);
        } catch (Throwable unused) {
            return Collections.list(networkInterface.getInetAddresses());
        }
    }

    private static boolean hp(boolean z2, InetAddress inetAddress, String[] strArr) {
        Field declaredField;
        if (z2) {
            try {
                if (!TextUtils.isEmpty(strArr[0])) {
                    return true;
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        if (!z2 && !TextUtils.isEmpty(strArr[1])) {
            return true;
        }
        if (z2) {
            declaredField = InetAddress.class.getDeclaredField("holder");
        } else {
            declaredField = Inet6Address.class.getDeclaredField("holder6");
        }
        declaredField.setAccessible(true);
        Object obj = declaredField.get(inetAddress);
        Class<?> cls = obj.getClass();
        if (z2) {
            Field declaredField2 = cls.getDeclaredField("address");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            int iIntValue = obj2 instanceof Integer ? ((Integer) obj2).intValue() : 0;
            byte[] bArr = {(byte) ((iIntValue >>> 24) & 255), (byte) ((iIntValue >>> 16) & 255), (byte) ((iIntValue >>> 8) & 255), (byte) (iIntValue & 255)};
            String strL = l(bArr);
            if (bArr[0] != 127) {
                strArr[0] = strL;
            }
        } else {
            Field declaredField3 = cls.getDeclaredField("ipaddress");
            declaredField3.setAccessible(true);
            Object obj3 = declaredField3.get(obj);
            if (obj3 instanceof byte[]) {
                String strHp = hp((byte[]) obj3);
                if (!hp(strHp)) {
                    return true;
                }
                strArr[1] = strHp;
            }
        }
        return true;
    }

    private static String hp(byte[] bArr) {
        StringBuilder sb = new StringBuilder(39);
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = i2 << 1;
            sb.append(Integer.toHexString(((bArr[i3] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i3 + 1] & 255)));
            if (i2 < 7) {
                sb.append(":");
            }
        }
        return sb.toString();
    }

    private static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if ((cCharAt != '2' && cCharAt != '3' && cCharAt != '5') || str.length() < 2) {
            return false;
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            return true;
        }
        if (cCharAt2 < 'a' || cCharAt2 > 'f') {
            return cCharAt2 >= 'A' && cCharAt2 <= 'F';
        }
        return true;
    }

    public static boolean hp(com.byazt.pg.hp hpVar, boolean z2, com.byazt.he.j jVar) {
        if (!hp(jVar)) {
            return false;
        }
        if (!z2) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(hpVar.getData());
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && !jSONObjectOptJSONObject.isNull("name") && "tt_inner_isw".equals(jSONObjectOptJSONObject.optString("name"))) {
                    return jSONObjectOptJSONObject.optBoolean(f.a.f3244d, true);
                }
            }
        } catch (JSONException unused) {
        }
        return true;
    }

    public static boolean hp(com.byazt.he.j jVar) {
        if (!TextUtils.isEmpty(f24008a)) {
            return !TextUtils.equals("0", f24008a);
        }
        Map<String, Object> mapEb = jVar.eb();
        if (mapEb != null) {
            Object obj = mapEb.get("uip");
            if (obj instanceof String) {
                String str = (String) obj;
                f24008a = str;
                return !TextUtils.equals("0", str);
            }
        }
        f24008a = "1";
        return true;
    }
}
