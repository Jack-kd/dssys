package org.fourthline.cling.model;

import com.anythink.core.common.d.i;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes5.dex */
public class ModelUtil {
    public static final boolean ANDROID_EMULATOR;
    public static final boolean ANDROID_RUNTIME;

    static {
        boolean z2 = true;
        boolean z3 = false;
        ANDROID_RUNTIME = Thread.currentThread().getContextClassLoader().loadClass("android.os.Build").getField("ID").get(null) != null;
        try {
            String str = (String) Thread.currentThread().getContextClassLoader().loadClass("android.os.Build").getField("PRODUCT").get(null);
            if (!"google_sdk".equals(str)) {
                if (!"sdk".equals(str)) {
                    z2 = false;
                }
            }
            z3 = z2;
        } catch (Exception unused) {
        }
        ANDROID_EMULATOR = z3;
    }

    public static String commaToNewline(String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split(",")) {
            sb.append(str2);
            sb.append(",");
            sb.append("\n");
        }
        if (sb.length() > 2) {
            sb.deleteCharAt(sb.length() - 2);
        }
        return sb.toString();
    }

    public static String[] fromCommaSeparatedList(String str) {
        return fromCommaSeparatedList(str, true);
    }

    public static long fromTimeString(String str) {
        if (str.lastIndexOf(i.f2495E) != -1) {
            str = str.substring(0, str.lastIndexOf(i.f2495E));
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length == 3) {
            return (Long.parseLong(strArrSplit[0]) * 3600) + (Long.parseLong(strArrSplit[1]) * 60) + Long.parseLong(strArrSplit[2]);
        }
        throw new IllegalArgumentException("Can't parse time string: " + str);
    }

    public static byte[] getFirstNetworkInterfaceHardwareAddress() {
        try {
            ArrayList list = Collections.list(NetworkInterface.getNetworkInterfaces());
            int size = list.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = list.get(i2);
                i2++;
                NetworkInterface networkInterface = (NetworkInterface) obj;
                if (!networkInterface.isLoopback() && networkInterface.isUp() && networkInterface.getHardwareAddress() != null) {
                    return networkInterface.getHardwareAddress();
                }
            }
            throw new RuntimeException("Could not discover first network interface hardware address");
        } catch (Exception unused) {
            throw new RuntimeException("Could not discover first network interface hardware address");
        }
    }

    public static InetAddress getInetAddressByName(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String getLocalHostName(boolean z2) {
        try {
            String hostName = InetAddress.getLocalHost().getHostName();
            if (!z2 && hostName.indexOf(i.f2495E) != -1) {
                return hostName.substring(0, hostName.indexOf(i.f2495E));
            }
            return hostName;
        } catch (Exception unused) {
            return "UNKNOWN HOST";
        }
    }

    public static boolean isStringConvertibleType(Set<Class> set, Class cls) {
        if (cls.isEnum()) {
            return true;
        }
        Iterator<Class> it = set.iterator();
        while (it.hasNext()) {
            if (it.next().isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidUDAName(String str) {
        return ANDROID_RUNTIME ? (str == null || str.length() == 0) ? false : true : (str == null || str.length() == 0 || str.toLowerCase(Locale.ROOT).startsWith("xml") || !str.matches(Constants.REGEX_UDA_NAME)) ? false : true;
    }

    public static String toCommaSeparatedList(Object[] objArr) {
        return toCommaSeparatedList(objArr, true, false);
    }

    public static String toTimeString(long j2) {
        long j3 = j2 / 3600;
        long j4 = j2 % 3600;
        long j5 = j4 / 60;
        long j6 = j4 % 60;
        StringBuilder sb = new StringBuilder();
        sb.append(j3 < 10 ? "0" : "");
        sb.append(j3);
        sb.append(":");
        sb.append(j5 < 10 ? "0" : "");
        sb.append(j5);
        sb.append(":");
        sb.append(j6 < 10 ? "0" : "");
        sb.append(j6);
        return sb.toString();
    }

    public static String[] fromCommaSeparatedList(String str, boolean z2) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (z2) {
            str = str.replaceAll("\\\\,", "XXX1122334455XXX");
        }
        String[] strArrSplit = str.split(",");
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            String strReplaceAll = strArrSplit[i2].replaceAll("XXX1122334455XXX", ",");
            strArrSplit[i2] = strReplaceAll;
            strArrSplit[i2] = strReplaceAll.replaceAll("\\\\\\\\", "\\\\");
        }
        return strArrSplit;
    }

    public static String toCommaSeparatedList(Object[] objArr, boolean z2, boolean z3) {
        if (objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            String strReplaceAll = obj.toString().replaceAll("\\\\", "\\\\\\\\");
            if (z2) {
                strReplaceAll = strReplaceAll.replaceAll(",", "\\\\,");
            }
            if (z3) {
                strReplaceAll = strReplaceAll.replaceAll("\"", "\\\"");
            }
            sb.append(strReplaceAll);
            sb.append(",");
        }
        if (sb.length() > 1) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }
}
