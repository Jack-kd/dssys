package com.byazt.uhg;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 54})
/* loaded from: classes3.dex */
public final class a {
    public final String[] hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static final class hp {
        public final List<String> hp = new ArrayList(20);

        private void jx(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt <= ' ' || cCharAt >= 127) {
                    throw new IllegalArgumentException(com.byazt.ndb.e.hp("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i2), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value for name " + str + " == null");
            }
            int length2 = str2.length();
            for (int i3 = 0; i3 < length2; i3++) {
                char cCharAt2 = str2.charAt(i3);
                if ((cCharAt2 <= 31 && cCharAt2 != '\t') || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(com.byazt.ndb.e.hp("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i3), str, str2));
                }
            }
        }

        public a hp() {
            return new a(this);
        }

        public hp l(String str, String str2) {
            try {
                jx(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        int length = str2.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            char cCharAt = str2.charAt(i2);
                            if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                                sb.append(cCharAt);
                            } else {
                                sb.append(URLEncoder.encode(String.valueOf(cCharAt), "UTF-8"));
                            }
                        }
                        str2 = sb.toString();
                    } catch (UnsupportedEncodingException unused2) {
                        return this;
                    }
                }
                return this;
            }
            return hp(str, str2);
        }

        public hp hp(String str, String str2) {
            this.hp.add(str);
            this.hp.add(str2.trim());
            return this;
        }
    }

    public a(String[] strArr) {
        this.hp = strArr;
    }

    public int hp() {
        return this.hp.length / 2;
    }

    public String l(int i2) {
        return this.hp[(i2 * 2) + 1];
    }

    public String hp(int i2) {
        return this.hp[i2 * 2];
    }

    public Map<String, List<String>> l() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int iHp = hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            String lowerCase = hp(i2).toLowerCase(Locale.US);
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(l(i2));
        }
        return treeMap;
    }

    public a(hp hpVar) {
        List<String> list = hpVar.hp;
        this.hp = (String[]) list.toArray(new String[list.size()]);
    }
}
