package com.bykv.vk.component.ttvideo.model;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class LiveStreamInfo {
    public static final int LIVE_STREAM_INFO_CMAF_INVALID = 1;
    public static final int LIVE_STREAM_INFO_LLS_INVALID = 2;
    public static final String MPD_VERSION = "1.0";
    private JSONObject mCommonInfo;
    private String mDefaultResolution;
    private int mFlag;
    private String mHost;
    private String mIp;
    private boolean mIsABRListMatch;
    private String mRequestParams;
    private JSONObject mStreamInfo;
    private boolean mEnableOriginResolution = false;
    private long mAdjustedOriginBitRate = -1;
    private int mIsCodecSame = -1;
    private String mTransportProtocol = "";
    private String mPortNum = "";
    private int mRtcFallback = 0;
    private final String TAG = "LiveStreamInfo";
    public int mSRShorterSideUpperBound = 0;
    public int mSRLongerSideUpperBound = 0;
    private int mSRFrameRateUpperBound = 0;
    public int mSharpenLongerSideUpperBound = 0;
    public int mSharpenLongerSideLowerBound = 0;
    public int mSharpenShorterSideUpperBound = 0;
    public int mSharpenShorterSideLowerBound = 0;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
    
        r6.mIsABRListMatch = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LiveStreamInfo(org.json.JSONObject r7) throws org.json.JSONException {
        /*
            r6 = this;
            java.lang.String r0 = "list"
            java.lang.String r1 = "default"
            java.lang.String r2 = "common"
            r6.<init>()
            r3 = 0
            r6.mEnableOriginResolution = r3
            r4 = -1
            r6.mAdjustedOriginBitRate = r4
            r4 = -1
            r6.mIsCodecSame = r4
            java.lang.String r4 = ""
            r6.mTransportProtocol = r4
            r6.mPortNum = r4
            r6.mRtcFallback = r3
            java.lang.String r4 = "LiveStreamInfo"
            r6.TAG = r4
            r6.mSRShorterSideUpperBound = r3
            r6.mSRLongerSideUpperBound = r3
            r6.mSRFrameRateUpperBound = r3
            r6.mIsABRListMatch = r3
            r6.mSharpenLongerSideUpperBound = r3
            r6.mSharpenLongerSideLowerBound = r3
            r6.mSharpenShorterSideUpperBound = r3
            r6.mSharpenShorterSideLowerBound = r3
            if (r7 != 0) goto L32
            return
        L32:
            java.lang.String r4 = "data"
            org.json.JSONObject r4 = r7.getJSONObject(r4)     // Catch: org.json.JSONException -> L8c
            r6.mStreamInfo = r4     // Catch: org.json.JSONException -> L8c
            boolean r4 = r7.has(r2)     // Catch: org.json.JSONException -> L8c
            if (r4 == 0) goto L46
            org.json.JSONObject r7 = r7.getJSONObject(r2)     // Catch: org.json.JSONException -> L8c
            r6.mCommonInfo = r7     // Catch: org.json.JSONException -> L8c
        L46:
            org.json.JSONObject r7 = r6.mCommonInfo     // Catch: org.json.JSONException -> L8c
            if (r7 == 0) goto L8c
            java.lang.String r2 = "auto"
            org.json.JSONObject r7 = r7.getJSONObject(r2)     // Catch: org.json.JSONException -> L8c
            if (r7 == 0) goto L5e
            boolean r2 = r7.has(r1)     // Catch: org.json.JSONException -> L8c
            if (r2 == 0) goto L5e
            java.lang.String r1 = r7.getString(r1)     // Catch: org.json.JSONException -> L8c
            r6.mDefaultResolution = r1     // Catch: org.json.JSONException -> L8c
        L5e:
            r1 = 1
            r6.mIsABRListMatch = r1     // Catch: org.json.JSONException -> L8c
            if (r7 == 0) goto L8c
            boolean r1 = r7.has(r0)     // Catch: org.json.JSONException -> L8c
            if (r1 == 0) goto L8c
            org.json.JSONArray r7 = r7.optJSONArray(r0)     // Catch: org.json.JSONException -> L8c
            if (r7 == 0) goto L8c
            int r0 = r7.length()     // Catch: org.json.JSONException -> L8c
            if (r0 <= 0) goto L8c
            r0 = r3
        L76:
            int r1 = r7.length()     // Catch: org.json.JSONException -> L8c
            if (r0 >= r1) goto L8c
            java.lang.String r1 = r7.getString(r0)     // Catch: org.json.JSONException -> L8c
            boolean r1 = r6.isSupport(r1)     // Catch: org.json.JSONException -> L8c
            if (r1 != 0) goto L89
            r6.mIsABRListMatch = r3     // Catch: org.json.JSONException -> L8c
            goto L8c
        L89:
            int r0 = r0 + 1
            goto L76
        L8c:
            r6.mFlag = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.model.LiveStreamInfo.<init>(org.json.JSONObject):void");
    }

    private boolean isNeedUseDefaultResolution(String str) {
        return (TextUtils.isEmpty(str) || !str.equals(LiveConfigKey.AUTO) || TextUtils.isEmpty(this.mDefaultResolution)) ? false : true;
    }

    private String set_url_port_scheme(String str) {
        int iIndexOf;
        int iIndexOf2 = str.indexOf(".com");
        int iIndexOf3 = str.indexOf(".com:");
        StringBuilder sb = new StringBuilder(str);
        if (!TextUtils.isEmpty(this.mPortNum)) {
            if (iIndexOf3 != -1) {
                int i2 = iIndexOf3 + 5;
                int i3 = iIndexOf3 + 6;
                while (i3 < sb.length() && sb.charAt(i3) - '0' >= 0 && sb.charAt(i3) - '0' <= 9) {
                    i3++;
                }
                sb.replace(i2, i3, this.mPortNum);
            } else if (iIndexOf2 != -1 && ((iIndexOf = str.indexOf("vhost")) == -1 || iIndexOf > iIndexOf2)) {
                sb.insert(iIndexOf2 + 4, ":" + this.mPortNum);
            }
        }
        StringBuilder sb2 = new StringBuilder(sb.toString());
        int iIndexOf4 = sb2.indexOf("://");
        if (!TextUtils.isEmpty(this.mTransportProtocol)) {
            if (this.mTransportProtocol.equals(LiveConfigKey.KCP)) {
                if (iIndexOf4 != -1) {
                    sb2.replace(0, iIndexOf4, "httpk");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.QUIC) || this.mTransportProtocol.equals(LiveConfigKey.QUICU)) {
                if (iIndexOf4 != -1) {
                    sb2.replace(0, iIndexOf4, "httpq");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.TLS)) {
                if (iIndexOf4 != -1) {
                    sb2.replace(0, iIndexOf4, "https");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.TCP) && iIndexOf4 != -1) {
                sb2.replace(0, iIndexOf4, "http");
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean adjustOriginBitRate(java.lang.String r20, java.lang.String r21, long r22) {
        /*
            r19 = this;
            r0 = r19
            r1 = r21
            r2 = r22
            long r4 = r0.mAdjustedOriginBitRate
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            r5 = 1
            if (r4 <= 0) goto L10
            return r5
        L10:
            java.lang.String r4 = "ld"
            r8 = -1
            r10 = r4
        L15:
            boolean r11 = android.text.TextUtils.isEmpty(r10)
            r12 = 0
            if (r11 != 0) goto L94
            r11 = r20
            java.lang.String r13 = r0.getStreamUrlForResolution(r10, r11, r1)
            boolean r13 = android.text.TextUtils.isEmpty(r13)
            java.lang.String r14 = "origin"
            if (r13 != 0) goto L40
            long r15 = r0.getBitrate(r10, r1)
            boolean r13 = r10.equals(r14)
            if (r13 == 0) goto L3f
            int r8 = (r15 > r8 ? 1 : (r15 == r8 ? 0 : -1))
            if (r8 > 0) goto L3f
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 <= 0) goto L3f
            r0.mAdjustedOriginBitRate = r2
            r15 = r2
        L3f:
            r8 = r15
        L40:
            r10.getClass()
            int r13 = r10.hashCode()
            java.lang.String r15 = "uhd"
            r16 = r5
            java.lang.String r5 = "sd"
            r17 = r6
            java.lang.String r6 = "hd"
            r7 = -1
            switch(r13) {
                case -1008619738: goto L7c;
                case 3324: goto L72;
                case 3448: goto L69;
                case 3665: goto L60;
                case 115761: goto L57;
                default: goto L55;
            }
        L55:
            r12 = r7
            goto L83
        L57:
            boolean r10 = r10.equals(r15)
            if (r10 != 0) goto L5e
            goto L55
        L5e:
            r12 = 4
            goto L83
        L60:
            boolean r10 = r10.equals(r5)
            if (r10 != 0) goto L67
            goto L55
        L67:
            r12 = 3
            goto L83
        L69:
            boolean r10 = r10.equals(r4)
            if (r10 != 0) goto L70
            goto L55
        L70:
            r12 = 2
            goto L83
        L72:
            boolean r10 = r10.equals(r6)
            if (r10 != 0) goto L79
            goto L55
        L79:
            r12 = r16
            goto L83
        L7c:
            boolean r10 = r10.equals(r14)
            if (r10 != 0) goto L83
            goto L55
        L83:
            r10 = 0
            switch(r12) {
                case 0: goto L87;
                case 1: goto L92;
                case 2: goto L90;
                case 3: goto L8e;
                case 4: goto L8c;
                default: goto L87;
            }
        L87:
            r5 = r16
            r6 = r17
            goto L15
        L8c:
            r10 = r14
            goto L87
        L8e:
            r10 = r6
            goto L87
        L90:
            r10 = r5
            goto L87
        L92:
            r10 = r15
            goto L87
        L94:
            r16 = r5
            r17 = r6
            long r1 = r0.mAdjustedOriginBitRate
            int r1 = (r1 > r17 ? 1 : (r1 == r17 ? 0 : -1))
            if (r1 <= 0) goto L9f
            return r16
        L9f:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.model.LiveStreamInfo.adjustOriginBitRate(java.lang.String, java.lang.String, long):boolean");
    }

    public JSONObject getAbrInfo() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject(LiveConfigKey.AUTO);
        } catch (JSONException unused) {
            return null;
        }
    }

    public String getAvLinesParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        try {
            String sDKParams = getSDKParams(str, str2);
            if (sDKParams != null) {
                return new JSONObject(sDKParams).optString("AvLines");
            }
            return null;
        } catch (JSONException unused) {
            return null;
        }
    }

    public long getBitrate(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return 0L;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optLong("vbitrate");
        } catch (JSONException unused) {
            return 0L;
        }
    }

    public int getCheckSilenceInterval(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return -1;
        }
        try {
            String sDKParams = getSDKParams(str, str2);
            if (sDKParams != null) {
                return new JSONObject(sDKParams).optInt("CheckSilenceInterval");
            }
        } catch (JSONException unused) {
        }
        return -1;
    }

    public String getDefaultResolution() {
        return this.mDefaultResolution;
    }

    public long getGopDuration(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return 0L;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optLong("gop");
        } catch (JSONException unused) {
            return 0L;
        }
    }

    public Map<String, String> getHTTPHeaders() throws JSONException {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject != null && jSONObject.has("header")) {
            HashMap map = new HashMap();
            try {
                JSONObject jSONObject2 = this.mCommonInfo.getJSONObject("header");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.getString(next));
                }
                return map;
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public String getLabelfromBitrate(long j2, String str) {
        JSONObject jSONObject = this.mStreamInfo;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return null;
        }
        Iterator<String> itKeys = this.mStreamInfo.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (isEnableAdaptive(next) && j2 == getBitrate(next, str) / 1000) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ab A[Catch: JSONException -> 0x015a, TryCatch #2 {JSONException -> 0x015a, blocks: (B:18:0x0052, B:22:0x0079, B:24:0x007f, B:27:0x008d, B:29:0x00ab, B:31:0x00b2, B:32:0x00c7, B:34:0x00cf, B:38:0x00eb, B:40:0x00f5, B:42:0x0104, B:44:0x010b, B:46:0x0112, B:41:0x0101, B:26:0x0086, B:53:0x0139), top: B:68:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0101 A[Catch: JSONException -> 0x015a, TryCatch #2 {JSONException -> 0x015a, blocks: (B:18:0x0052, B:22:0x0079, B:24:0x007f, B:27:0x008d, B:29:0x00ab, B:31:0x00b2, B:32:0x00c7, B:34:0x00cf, B:38:0x00eb, B:40:0x00f5, B:42:0x0104, B:44:0x010b, B:46:0x0112, B:41:0x0101, B:26:0x0086, B:53:0x0139), top: B:68:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010b A[Catch: JSONException -> 0x015a, TryCatch #2 {JSONException -> 0x015a, blocks: (B:18:0x0052, B:22:0x0079, B:24:0x007f, B:27:0x008d, B:29:0x00ab, B:31:0x00b2, B:32:0x00c7, B:34:0x00cf, B:38:0x00eb, B:40:0x00f5, B:42:0x0104, B:44:0x010b, B:46:0x0112, B:41:0x0101, B:26:0x0086, B:53:0x0139), top: B:68:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getMPDForFormat(java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.model.LiveStreamInfo.getMPDForFormat(java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    public String getPortNum(String str, String str2, String str3) {
        String strOptString;
        if (this.mCommonInfo == null) {
            return null;
        }
        try {
            strOptString = new JSONObject(this.mCommonInfo.getJSONObject(str.equals(LiveConfigKey.RTMP) ? "rtmp_ports" : "http_ports").optString(str2)).optString(str3);
        } catch (JSONException unused) {
            strOptString = null;
        }
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public String getQueryItems() throws JSONException, UnsupportedEncodingException {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject != null && jSONObject.has("query")) {
            StringBuilder sb = new StringBuilder();
            try {
                JSONObject jSONObject2 = this.mCommonInfo.getJSONObject("query");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String string = jSONObject2.getString(next);
                    String strEncode = URLEncoder.encode(next, "UTF-8");
                    String strEncode2 = URLEncoder.encode(string, "UTF-8");
                    sb.append("&");
                    sb.append(strEncode);
                    sb.append("=");
                    sb.append(strEncode2);
                }
                return sb.toString();
            } catch (UnsupportedEncodingException | JSONException unused) {
            }
        }
        return null;
    }

    public String getRuleIds() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null || !jSONObject.has("rule_ids")) {
            return null;
        }
        return this.mCommonInfo.optString("rule_ids");
    }

    public String getSDKParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            return this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params");
        } catch (JSONException unused) {
            return null;
        }
    }

    public boolean getSREnabled(String str, String str2, int i2) {
        long jOptLong;
        int iOptInt;
        long jOptLong2;
        int iOptInt2;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params"));
            jOptLong = jSONObject.optLong("vbitrate");
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("NNSR"));
            iOptInt = i2 == 1 ? jSONObject2.optInt("Enabled") : 0;
            jOptLong2 = jSONObject2.optLong("VBitrateLowerBoundInKbps");
            this.mSRShorterSideUpperBound = jSONObject2.optInt("ShorterSideUpperBound");
            this.mSRLongerSideUpperBound = jSONObject2.optInt("LongerSideUpperBound");
            iOptInt2 = jSONObject2.optInt("FrameRateUpperBound");
            this.mSRFrameRateUpperBound = iOptInt2;
        } catch (JSONException unused) {
        }
        return iOptInt == 1 && jOptLong >= jOptLong2 * 1000 && this.mSRShorterSideUpperBound > 0 && this.mSRLongerSideUpperBound > 0 && iOptInt2 > 0;
    }

    public int getSRLongerSideUpperBound() {
        return this.mSRLongerSideUpperBound;
    }

    public int getSRShorterSideUpperBound() {
        return this.mSRShorterSideUpperBound;
    }

    public String getSessionID() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null || !jSONObject.has("session_id")) {
            return null;
        }
        return this.mCommonInfo.optString("session_id");
    }

    public JSONObject getSharpenParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("ASF"));
            this.mSharpenLongerSideUpperBound = jSONObject.optInt("LongerSideUpperBound");
            this.mSharpenLongerSideLowerBound = jSONObject.optInt("LongerSideLowerBound");
            this.mSharpenShorterSideUpperBound = jSONObject.optInt("ShorterSideUpperBound");
            this.mSharpenShorterSideLowerBound = jSONObject.optInt("ShorterSideLowerBound");
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public String getStreamUrlForResolution(String str, String str2, String str3) {
        JSONObject jSONObject;
        String strOptString;
        String queryItems;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        String strOptString2 = null;
        if (!TextUtils.isEmpty(str) && str.equals(LiveConfigKey.AUTO)) {
            if (TextUtils.isEmpty(this.mDefaultResolution)) {
                return null;
            }
            return getMPDForFormat(str2, str3, this.mIp, this.mHost);
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            jSONObject2 = new JSONObject(this.mStreamInfo.optString(str));
        } catch (JSONException unused) {
            jSONObject = null;
        }
        if (jSONObject2.has(str3)) {
            jSONObject = new JSONObject(jSONObject2.optString(str3));
            try {
                jSONObject3 = new JSONObject(jSONObject.optString("sdk_params"));
            } catch (JSONException unused2) {
            }
            strOptString = jSONObject3.has("SuggestFormat") ? jSONObject3.optString("SuggestFormat") : null;
        } else {
            strOptString = null;
            jSONObject = null;
        }
        boolean zEquals = LiveConfigKey.AVPH.equals(str2);
        String str4 = LiveConfigKey.FLV;
        if (zEquals) {
            str2 = LiveConfigKey.FLV;
        }
        if (strOptString == null || strOptString.equals("") || strOptString.equals(LiveConfigKey.AVPH)) {
            strOptString = str2;
        }
        if ((this.mFlag & 1) <= 0 || !strOptString.equals(LiveConfigKey.CMAF)) {
            str2 = strOptString;
        }
        if (this.mRtcFallback == 1 || (this.mFlag & 2) > 0) {
            str2 = LiveConfigKey.FLV;
        }
        if (jSONObject != null) {
            if (str2 == null || !str2.equals(LiveConfigKey.AVPH)) {
                str4 = str2;
            }
            strOptString2 = jSONObject.optString(str4);
        }
        if (strOptString2 == null || (queryItems = getQueryItems()) == null || queryItems.equals("")) {
            return strOptString2;
        }
        int iIndexOf = strOptString2.indexOf("?");
        if (iIndexOf == -1) {
            queryItems = "?" + queryItems.substring(1);
        } else if (iIndexOf == strOptString2.length() - 1) {
            queryItems = queryItems.substring(1);
        }
        return strOptString2 + queryItems;
    }

    public String getSuggestFormat(String str, String str2) {
        String strOptString;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            strOptString = new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("SuggestFormat");
        } catch (JSONException unused) {
            strOptString = null;
        }
        if (strOptString == null || strOptString.isEmpty()) {
            return null;
        }
        return strOptString;
    }

    public String getSuggestProtocol(String str, String str2) {
        String str3;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("SuggestProtocol");
            str3 = LiveConfigKey.TCP;
        } catch (JSONException unused) {
            str3 = null;
        }
        if (str3 == null || str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public String getVCodec(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("VCodec");
        } catch (JSONException unused) {
            return null;
        }
    }

    public boolean isABRListMatch() {
        return this.mIsABRListMatch;
    }

    public boolean isCodecSame(String str) {
        JSONObject jSONObject = this.mStreamInfo;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return false;
        }
        int i2 = this.mIsCodecSame;
        if (i2 >= 0) {
            return i2 == 1;
        }
        this.mIsCodecSame = 1;
        Iterator<String> itKeys = this.mStreamInfo.keys();
        String str2 = null;
        String vCodec = null;
        while (true) {
            if (!itKeys.hasNext()) {
                break;
            }
            vCodec = getVCodec(itKeys.next(), str);
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(vCodec) && !vCodec.equals(str2)) {
                this.mIsCodecSame = 0;
                break;
            }
            if (!TextUtils.isEmpty(vCodec)) {
                str2 = vCodec;
            }
        }
        if (TextUtils.isEmpty(vCodec) && TextUtils.isEmpty(str2)) {
            this.mIsCodecSame = 0;
        }
        return this.mIsCodecSame == 1;
    }

    public boolean isEnableAdaptive(String str) throws JSONException {
        JSONArray jSONArrayOptJSONArray;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return false;
        }
        try {
            JSONObject abrInfo = getAbrInfo();
            if (abrInfo != null && abrInfo.has("list") && (jSONArrayOptJSONArray = abrInfo.optJSONArray("list")) != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String string = jSONArrayOptJSONArray.getString(i2);
                    if (string != null && string.equals(str) && (!string.equals(LiveConfigKey.ORIGIN) || this.mEnableOriginResolution)) {
                        return true;
                    }
                }
            }
        } catch (JSONException unused) {
        }
        return false;
    }

    public boolean isSupport(String str) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.mStreamInfo;
        if (jSONObject2 == null) {
            return false;
        }
        try {
            jSONObject = jSONObject2.getJSONObject(str);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        return jSONObject != null;
    }

    public boolean isSupportSR(int i2, int i3, float f2) {
        return Math.max(i2, i3) <= this.mSRLongerSideUpperBound && Math.min(i2, i3) <= this.mSRShorterSideUpperBound && f2 <= ((float) this.mSRFrameRateUpperBound) && i2 < i3;
    }

    public boolean isSupportSharpen(int i2, int i3) {
        int iMax = Math.max(i2, i3);
        int iMin = Math.min(i2, i3);
        return iMax >= this.mSharpenLongerSideLowerBound && iMax <= this.mSharpenLongerSideUpperBound && iMin >= this.mSharpenShorterSideLowerBound && iMin <= this.mSharpenShorterSideUpperBound;
    }

    public void setDefaultResolution(String str) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (isSupport(str)) {
            this.mDefaultResolution = str;
        }
    }

    public void setEnableOriginResolution(boolean z2) {
        this.mEnableOriginResolution = z2;
    }

    public boolean setFlag(int i2) {
        this.mFlag = i2 | this.mFlag;
        return true;
    }

    public void setRequestParams(String str) {
        this.mRequestParams = str;
    }

    public void setRequestParamsWithDNSIp(String str, String str2, String str3) {
        this.mRequestParams = str;
        this.mIp = str2;
        this.mHost = str3;
    }

    public void setRtcFallback(int i2) {
        this.mRtcFallback = i2;
    }

    public void setTransportProtocol(String str, String str2) {
        this.mTransportProtocol = str;
        this.mPortNum = str2;
    }
}
