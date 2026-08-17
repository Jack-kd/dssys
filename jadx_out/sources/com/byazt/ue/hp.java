package com.byazt.ue;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.byazt.gt.TTEncryptUtils;
import com.umeng.analytics.pro.bv;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1824, 28})
/* loaded from: classes3.dex */
public class hp {
    public static InterfaceC0384hp hp = null;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f26161l = false;

    /* renamed from: com.byazt.ue.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0384hp {
        boolean hp();

        boolean jx();

        boolean l();
    }

    public static String hp(String str, List<Pair<String, String>> list) {
        if (TextUtils.isEmpty(str) || hp == null || f26161l) {
            return str;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Uri uri = Uri.parse(str);
            hp(uri, linkedHashMap);
            LinkedList linkedList = new LinkedList();
            hp(linkedHashMap, linkedList, "device_id");
            hp(linkedHashMap, linkedList, bv.ac);
            hp(linkedHashMap, linkedList, bv.f48879F);
            hp(linkedHashMap, linkedList, "uuid");
            hp(linkedHashMap, linkedList, "openudid");
            String strHp = hp((List<Pair<String, List<String>>>) linkedList, false, "UTF-8");
            if (TextUtils.isEmpty(strHp)) {
                return str;
            }
            byte[] bytes = strHp.getBytes();
            byte[] bArrA = TTEncryptUtils.a(bytes, bytes.length);
            if (bArrA == null) {
                return str;
            }
            String strEncodeToString = Base64.encodeToString(bArrA, 2);
            LinkedList linkedList2 = new LinkedList();
            if (hp.hp()) {
                LinkedList linkedList3 = new LinkedList();
                linkedList3.add(strEncodeToString);
                linkedList2.add(new Pair("ss_queries", linkedList3));
            }
            if (hp.l() && list != null) {
                list.add(new Pair<>("X-SS-QUERIES", hp(strEncodeToString, "UTF-8")));
            }
            if (!linkedHashMap.isEmpty()) {
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    if (entry != null) {
                        linkedList2.add(new Pair(entry.getKey(), entry.getValue()));
                    }
                }
            }
            return hp(uri.getScheme(), uri.getHost(), uri.getPort(), uri.getPath(), hp((List<Pair<String, List<String>>>) linkedList2, true, "UTF-8"), uri.getFragment()).toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    private static boolean hp(Map<String, List<String>> map, List<Pair<String, List<String>>> list, String str) throws UnsupportedEncodingException {
        if (TextUtils.isEmpty(str) || list == null || !map.containsKey(str)) {
            return false;
        }
        list.add(new Pair<>(str, map.get(str)));
        if (hp.jx()) {
            return true;
        }
        map.remove(str);
        return true;
    }

    public static void hp(Uri uri, Map<String, List<String>> map) throws IOException {
        if (uri == null) {
            throw new IOException("parseUrl url is null !!!");
        }
        if (map != null) {
            String query = uri.getQuery();
            if (query != null) {
                for (String str : query.split("&")) {
                    int iIndexOf = str.indexOf("=");
                    if (iIndexOf >= 0) {
                        String strDecode = URLDecoder.decode(str.substring(0, iIndexOf), "UTF-8");
                        List<String> linkedList = map.get(strDecode);
                        if (linkedList == null) {
                            linkedList = new LinkedList<>();
                        }
                        linkedList.add(URLDecoder.decode(str.substring(iIndexOf + 1), "UTF-8"));
                        map.put(strDecode, linkedList);
                    } else {
                        String strDecode2 = URLDecoder.decode(str, "UTF-8");
                        List<String> linkedList2 = map.get(strDecode2);
                        if (linkedList2 == null) {
                            linkedList2 = new LinkedList<>();
                        }
                        linkedList2.add("");
                        map.put(strDecode2, linkedList2);
                    }
                }
            }
        }
    }

    private static Uri hp(String str, String str2, int i2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                sb.append(str);
                sb.append("://");
            }
            sb.append(str2);
            if (i2 > 0) {
                sb.append(':');
                sb.append(i2);
            }
        }
        if (str3 == null || !str3.startsWith(ServiceReference.DELIMITER)) {
            sb.append('/');
        }
        if (str3 != null) {
            sb.append(str3);
        }
        if (str4 != null) {
            sb.append('?');
            sb.append(str4);
        }
        if (str5 != null) {
            sb.append('#');
            sb.append(str5);
        }
        return Uri.parse(sb.toString());
    }

    private static String hp(List<Pair<String, List<String>>> list, boolean z2, String str) {
        StringBuilder sb = new StringBuilder();
        for (Pair<String, List<String>> pair : list) {
            Object obj = pair.first;
            String strHp = (String) obj;
            if (z2) {
                strHp = hp((String) obj, str);
            }
            List<String> list2 = (List) pair.second;
            if (list2 != null && list2.size() > 0) {
                for (String strHp2 : list2) {
                    if (z2) {
                        strHp2 = strHp2 != null ? hp(strHp2, str) : "";
                    }
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append(strHp);
                    sb.append("=");
                    sb.append(strHp2);
                }
            }
        }
        return sb.toString();
    }

    private static String hp(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
