package com.byazt.av;

import android.graphics.Rect;
import android.util.JsonReader;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.byazt.at.s;
import com.byazt.na.a;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.t;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 301})
/* loaded from: classes2.dex */
public class cx {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(android.util.JsonReader r8) throws org.json.JSONException, java.io.IOException {
        /*
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>()
            r8.beginArray()     // Catch: java.lang.Exception -> L7b
        L8:
            boolean r1 = r8.hasNext()     // Catch: java.lang.Exception -> L7b
            if (r1 == 0) goto L78
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L7b
            r1.<init>()     // Catch: java.lang.Exception -> L7b
            r0.put(r1)     // Catch: java.lang.Exception -> L7b
            r8.beginObject()     // Catch: java.lang.Exception -> L7b
        L19:
            boolean r2 = r8.hasNext()     // Catch: java.lang.Exception -> L7b
            if (r2 == 0) goto L74
            java.lang.String r2 = r8.nextName()     // Catch: java.lang.Exception -> L7b
            int r3 = r2.hashCode()     // Catch: java.lang.Exception -> L7b
            r4 = 3551(0xddf, float:4.976E-42)
            java.lang.String r5 = "on"
            r6 = 1
            java.lang.String r7 = "handlers"
            if (r3 == r4) goto L3e
            r4 = 2069097(0x1f9269, float:2.899422E-39)
            if (r3 == r4) goto L36
            goto L46
        L36:
            boolean r2 = r2.equals(r7)     // Catch: java.lang.Exception -> L7b
            if (r2 == 0) goto L46
            r2 = r6
            goto L47
        L3e:
            boolean r2 = r2.equals(r5)     // Catch: java.lang.Exception -> L7b
            if (r2 == 0) goto L46
            r2 = 0
            goto L47
        L46:
            r2 = -1
        L47:
            if (r2 == 0) goto L6c
            if (r2 == r6) goto L4f
            r8.skipValue()     // Catch: java.lang.Exception -> L7b
            goto L19
        L4f:
            org.json.JSONArray r2 = new org.json.JSONArray     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            r2.<init>()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            r8.beginArray()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
        L57:
            boolean r3 = r8.hasNext()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            if (r3 == 0) goto L65
            java.lang.String r3 = r8.nextString()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            r2.put(r3)     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            goto L57
        L65:
            r8.endArray()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            r1.put(r7, r2)     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            goto L19
        L6c:
            java.lang.String r2 = r8.nextString()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            r1.put(r5, r2)     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L7b
            goto L19
        L74:
            r8.endObject()     // Catch: java.lang.Exception -> L7b
            goto L8
        L78:
            r8.endArray()     // Catch: java.lang.Exception -> L7b
        L7b:
            int r8 = r0.length()
            if (r8 <= 0) goto L86
            java.lang.String r8 = r0.toString()
            return r8
        L86:
            java.lang.String r8 = ""
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.a(android.util.JsonReader):java.lang.String");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.byazt.na.q.jx> eb(android.util.JsonReader r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.eb(android.util.JsonReader):java.util.List");
    }

    public static com.byazt.na.a hp(JsonReader jsonReader) throws JSONException, IOException {
        int i2;
        SparseArray<com.byazt.yg.j> sparseArray;
        HashMap map;
        float fHp = com.byazt.ze.e.hp();
        LongSparseArray<com.byazt.at.s> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArray<com.byazt.yg.j> sparseArray2 = new SparseArray<>();
        a.j jVar = new a.j();
        a.l lVar = new a.l();
        a.jx jxVar = new a.jx();
        a.hp hpVar = new a.hp();
        com.byazt.na.a aVar = new com.byazt.na.a();
        jsonReader.beginObject();
        String strNextString = null;
        int iNextInt = 0;
        int iNextInt2 = 0;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        while (jsonReader.hasNext()) {
            float f2 = fNextDouble;
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            char c2 = 65535;
            switch (strNextName.hashCode()) {
                case -1408207997:
                    i2 = iNextInt;
                    if (strNextName.equals("assets")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1109732030:
                    i2 = iNextInt;
                    if (strNextName.equals("layers")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -865448777:
                    i2 = iNextInt;
                    if (strNextName.equals("globalEvent")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 104:
                    i2 = iNextInt;
                    if (strNextName.equals("h")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case TTVideoEngine.PLAYER_BUFFERING_DATA_OF_MILLISECONDS /* 118 */:
                    i2 = iNextInt;
                    if (strNextName.equals("v")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 119:
                    i2 = iNextInt;
                    if (strNextName.equals("w")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3208:
                    i2 = iNextInt;
                    if (strNextName.equals("dl")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3276:
                    i2 = iNextInt;
                    if (strNextName.equals("fr")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3292:
                    i2 = iNextInt;
                    if (strNextName.equals("gc")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 3367:
                    i2 = iNextInt;
                    if (strNextName.equals("ip")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 3553:
                    i2 = iNextInt;
                    if (strNextName.equals("op")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 3002509:
                    i2 = iNextInt;
                    if (strNextName.equals("area")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 94623709:
                    i2 = iNextInt;
                    if (strNextName.equals("chars")) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case 97615364:
                    i2 = iNextInt;
                    if (strNextName.equals("fonts")) {
                        c2 = '\r';
                        break;
                    }
                    break;
                case 110364485:
                    i2 = iNextInt;
                    if (strNextName.equals("timer")) {
                        c2 = 14;
                        break;
                    }
                    break;
                case 839250809:
                    i2 = iNextInt;
                    if (strNextName.equals("markers")) {
                        c2 = 15;
                        break;
                    }
                    break;
                default:
                    i2 = iNextInt;
                    break;
            }
            switch (c2) {
                case 0:
                    sparseArray = sparseArray2;
                    map = map4;
                    hp(jsonReader, aVar, map2, map3);
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 1:
                    sparseArray = sparseArray2;
                    map = map4;
                    hp(jsonReader, aVar, arrayList, longSparseArray);
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 2:
                    sparseArray = sparseArray2;
                    map = map4;
                    hp(jsonReader, jxVar);
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 3:
                    iNextInt = jsonReader.nextInt();
                    sparseArray2 = sparseArray2;
                    fNextDouble = f2;
                    break;
                case 4:
                    sparseArray = sparseArray2;
                    map = map4;
                    String[] strArrSplit = jsonReader.nextString().split("\\.");
                    if (!com.byazt.ze.e.hp(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        aVar.hp("Lottie only supports bodymovin >= 4.4.0");
                    }
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 5:
                    iNextInt2 = jsonReader.nextInt();
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 6:
                    strNextString = jsonReader.nextString();
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 7:
                    sparseArray = sparseArray2;
                    map4 = map4;
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case '\b':
                    sparseArray = sparseArray2;
                    map = map4;
                    hp(jsonReader, lVar);
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case '\t':
                    sparseArray = sparseArray2;
                    map4 = map4;
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case '\n':
                    fNextDouble = ((float) jsonReader.nextDouble()) - 0.01f;
                    sparseArray2 = sparseArray2;
                    map4 = map4;
                    iNextInt = i2;
                    break;
                case 11:
                    hp(jsonReader, hpVar);
                    sparseArray = sparseArray2;
                    map = map4;
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case '\f':
                    hp(jsonReader, aVar, sparseArray2);
                    sparseArray = sparseArray2;
                    map = map4;
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case '\r':
                    hp(jsonReader, map4);
                    sparseArray = sparseArray2;
                    map = map4;
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 14:
                    hp(jsonReader, jVar);
                    sparseArray = sparseArray2;
                    map = map4;
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                case 15:
                    hp(jsonReader, arrayList2);
                    sparseArray = sparseArray2;
                    map = map4;
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
                default:
                    jsonReader.skipValue();
                    sparseArray = sparseArray2;
                    map = map4;
                    map4 = map;
                    sparseArray2 = sparseArray;
                    fNextDouble = f2;
                    iNextInt = i2;
                    break;
            }
        }
        jsonReader.endObject();
        Rect rect = new Rect(0, 0, (int) (iNextInt2 * fHp), (int) (iNextInt * fHp));
        float f3 = fNextDouble2;
        aVar.hp(rect, f3, fNextDouble, fNextDouble3, arrayList, longSparseArray, map2, map3, sparseArray2, map4, arrayList2, jVar, strNextString, lVar, jxVar, hpVar);
        return aVar;
    }

    private static String[] j(JsonReader jsonReader) throws IOException {
        try {
            jsonReader.beginArray();
            String[] strArr = new String[3];
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    if (jsonReader.hasNext()) {
                        strArr[i2] = jsonReader.nextString();
                    }
                } catch (Exception unused) {
                    return strArr;
                }
            }
            jsonReader.endArray();
            return strArr;
        } catch (Exception unused2) {
            return null;
        }
    }

    private static Map<String, Object> jx(JsonReader jsonReader) throws JSONException, IOException {
        HashMap map = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "el":
                    map.put(t.f31272n, jsonReader.nextString());
                    break;
                case "lel":
                    map.put("lel", w(jsonReader));
                    break;
                case "lottie_back":
                    JSONObject jSONObject = new JSONObject();
                    map.put("lottie_back", jSONObject);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        if (strNextName2.equals(LiveConfigKey.HIGH)) {
                            try {
                                jSONObject.putOpt(LiveConfigKey.HIGH, Integer.valueOf(jsonReader.nextInt()));
                                jSONObject.putOpt(PointParamKey.VID, "lottie_back");
                            } catch (JSONException unused) {
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        Object objRemove = map.remove("lottie_back");
        if (objRemove instanceof JSONObject) {
            Object obj = map.get("lel");
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(objRemove);
            } else {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(objRemove);
                map.put("lel", jSONArray);
            }
        }
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.byazt.wf.j l(android.util.JsonReader r10) throws java.io.IOException {
        /*
            r0 = 0
            r10.beginObject()     // Catch: java.lang.Exception -> L6a
            r1 = r0
            r2 = r1
            r3 = r2
            r4 = r3
        L8:
            boolean r5 = r10.hasNext()     // Catch: java.lang.Exception -> L6e
            if (r5 == 0) goto L66
            java.lang.String r5 = r10.nextName()     // Catch: java.lang.Exception -> L6e
            int r6 = r5.hashCode()     // Catch: java.lang.Exception -> L6e
            r7 = 1
            r8 = 2
            r9 = 3
            switch(r6) {
                case -332625698: goto L3b;
                case 107902: goto L31;
                case 116079: goto L27;
                case 374523318: goto L1d;
                default: goto L1c;
            }     // Catch: java.lang.Exception -> L6e
        L1c:
            goto L45
        L1d:
            java.lang.String r6 = "firstImageName"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Exception -> L6e
            if (r5 == 0) goto L45
            r5 = r9
            goto L46
        L27:
            java.lang.String r6 = "url"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Exception -> L6e
            if (r5 == 0) goto L45
            r5 = 0
            goto L46
        L31:
            java.lang.String r6 = "md5"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Exception -> L6e
            if (r5 == 0) goto L45
            r5 = r8
            goto L46
        L3b:
            java.lang.String r6 = "baseUrl"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Exception -> L6e
            if (r5 == 0) goto L45
            r5 = r7
            goto L46
        L45:
            r5 = -1
        L46:
            if (r5 == 0) goto L61
            if (r5 == r7) goto L5c
            if (r5 == r8) goto L57
            if (r5 == r9) goto L52
            r10.skipValue()     // Catch: java.lang.Exception -> L6e
            goto L8
        L52:
            java.lang.String r4 = r10.nextString()     // Catch: java.lang.Exception -> L6e
            goto L8
        L57:
            java.lang.String r3 = r10.nextString()     // Catch: java.lang.Exception -> L6e
            goto L8
        L5c:
            java.lang.String r2 = r10.nextString()     // Catch: java.lang.Exception -> L6e
            goto L8
        L61:
            java.lang.String r1 = r10.nextString()     // Catch: java.lang.Exception -> L6e
            goto L8
        L66:
            r10.endObject()     // Catch: java.lang.Exception -> L6e
            goto L6e
        L6a:
            r1 = r0
            r2 = r1
            r3 = r2
            r4 = r3
        L6e:
            if (r1 != 0) goto L71
            return r0
        L71:
            com.byazt.wf.j r10 = new com.byazt.wf.j
            r10.<init>(r1, r2, r3, r4)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.l(android.util.JsonReader):com.byazt.wf.j");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.byazt.na.q.jx.hp s(android.util.JsonReader r5) throws java.io.IOException {
        /*
            com.byazt.na.q$jx$hp r0 = new com.byazt.na.q$jx$hp     // Catch: java.lang.Exception -> L4f
            r0.<init>()     // Catch: java.lang.Exception -> L4f
            r5.beginObject()     // Catch: java.lang.Exception -> L4f
        L8:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Exception -> L4f
            if (r1 == 0) goto L4b
            java.lang.String r1 = r5.nextName()     // Catch: java.lang.Exception -> L4f
            int r2 = r1.hashCode()     // Catch: java.lang.Exception -> L4f
            r3 = 99
            r4 = 1
            if (r2 == r3) goto L2a
            r3 = 3706(0xe7a, float:5.193E-42)
            if (r2 == r3) goto L20
            goto L34
        L20:
            java.lang.String r2 = "tn"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L4f
            if (r1 == 0) goto L34
            r1 = 0
            goto L35
        L2a:
            java.lang.String r2 = "c"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L4f
            if (r1 == 0) goto L34
            r1 = r4
            goto L35
        L34:
            r1 = -1
        L35:
            if (r1 == 0) goto L44
            if (r1 == r4) goto L3d
            r5.skipValue()     // Catch: java.lang.Exception -> L4f
            goto L8
        L3d:
            java.lang.String r1 = r5.nextString()     // Catch: java.lang.Exception -> L4f
            r0.f23475l = r1     // Catch: java.lang.Exception -> L4f
            goto L8
        L44:
            int r1 = r5.nextInt()     // Catch: java.lang.Exception -> L4f
            r0.hp = r1     // Catch: java.lang.Exception -> L4f
            goto L8
        L4b:
            r5.endObject()     // Catch: java.lang.Exception -> L4f
            return r0
        L4f:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.s(android.util.JsonReader):com.byazt.na.q$jx$hp");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.json.JSONArray w(android.util.JsonReader r8) throws org.json.JSONException, java.io.IOException {
        /*
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>()
            r8.beginArray()     // Catch: java.lang.Exception -> L66
        L8:
            boolean r1 = r8.hasNext()     // Catch: java.lang.Exception -> L66
            if (r1 == 0) goto L63
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L66
            r1.<init>()     // Catch: java.lang.Exception -> L66
            r0.put(r1)     // Catch: java.lang.Exception -> L66
            r8.beginObject()     // Catch: java.lang.Exception -> L66
        L19:
            boolean r2 = r8.hasNext()     // Catch: java.lang.Exception -> L66
            if (r2 == 0) goto L5f
            java.lang.String r2 = r8.nextName()     // Catch: java.lang.Exception -> L66
            int r3 = r2.hashCode()     // Catch: java.lang.Exception -> L66
            r4 = 3324(0xcfc, float:4.658E-42)
            r5 = 1
            java.lang.String r6 = "hd"
            java.lang.String r7 = "vid"
            if (r3 == r4) goto L3e
            r4 = 116753(0x1c811, float:1.63606E-40)
            if (r3 == r4) goto L36
            goto L46
        L36:
            boolean r2 = r2.equals(r7)     // Catch: java.lang.Exception -> L66
            if (r2 == 0) goto L46
            r2 = 0
            goto L47
        L3e:
            boolean r2 = r2.equals(r6)     // Catch: java.lang.Exception -> L66
            if (r2 == 0) goto L46
            r2 = r5
            goto L47
        L46:
            r2 = -1
        L47:
            if (r2 == 0) goto L57
            if (r2 == r5) goto L4f
            r8.skipValue()     // Catch: java.lang.Exception -> L66
            goto L19
        L4f:
            int r2 = r8.nextInt()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L66
            r1.put(r6, r2)     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L66
            goto L19
        L57:
            java.lang.String r2 = r8.nextString()     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L66
            r1.put(r7, r2)     // Catch: org.json.JSONException -> L19 java.lang.Exception -> L66
            goto L19
        L5f:
            r8.endObject()     // Catch: java.lang.Exception -> L66
            goto L8
        L63:
            r8.endArray()     // Catch: java.lang.Exception -> L66
        L66:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.w(android.util.JsonReader):org.json.JSONArray");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void l(android.util.JsonReader r5, com.byazt.na.a.l r6) throws java.io.IOException {
        /*
            r5.beginObject()     // Catch: java.io.IOException -> L62
        L3:
            boolean r0 = r5.hasNext()     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L5f
            java.lang.String r0 = r5.nextName()     // Catch: java.io.IOException -> L62
            int r1 = r0.hashCode()     // Catch: java.io.IOException -> L62
            r2 = 3239(0xca7, float:4.539E-42)
            r3 = 1
            r4 = 2
            if (r1 == r2) goto L35
            r2 = 3276(0xccc, float:4.59E-42)
            if (r1 == r2) goto L2b
            r2 = 107027(0x1a213, float:1.49977E-40)
            if (r1 == r2) goto L21
            goto L3f
        L21:
            java.lang.String r1 = "lel"
            boolean r0 = r0.equals(r1)     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L3f
            r0 = r4
            goto L40
        L2b:
            java.lang.String r1 = "fr"
            boolean r0 = r0.equals(r1)     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L3f
            r0 = 0
            goto L40
        L35:
            java.lang.String r1 = "el"
            boolean r0 = r0.equals(r1)     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L3f
            r0 = r3
            goto L40
        L3f:
            r0 = -1
        L40:
            if (r0 == 0) goto L58
            if (r0 == r3) goto L51
            if (r0 == r4) goto L4a
            r5.skipValue()     // Catch: java.io.IOException -> L62
            goto L3
        L4a:
            org.json.JSONArray r0 = w(r5)     // Catch: java.io.IOException -> L62
            r6.eb = r0     // Catch: java.io.IOException -> L62
            goto L3
        L51:
            java.lang.String r0 = r5.nextString()     // Catch: java.io.IOException -> L62
            r6.f23427a = r0     // Catch: java.io.IOException -> L62
            goto L3
        L58:
            int r0 = r5.nextInt()     // Catch: java.io.IOException -> L62
            r6.f23431w = r0     // Catch: java.io.IOException -> L62
            goto L3
        L5f:
            r5.endObject()     // Catch: java.io.IOException -> L62
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.l(android.util.JsonReader, com.byazt.na.a$l):void");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.util.JsonReader r6, com.byazt.na.a.hp r7) throws java.io.IOException {
        /*
            r6.beginObject()     // Catch: java.lang.Exception -> L70
        L3:
            boolean r0 = r6.hasNext()     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto L6d
            java.lang.String r0 = r6.nextName()     // Catch: java.lang.Exception -> L70
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> L70
            r2 = 104(0x68, float:1.46E-43)
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == r2) goto L3a
            switch(r1) {
                case 119: goto L30;
                case 120: goto L26;
                case 121: goto L1c;
                default: goto L1b;
            }     // Catch: java.lang.Exception -> L70
        L1b:
            goto L44
        L1c:
            java.lang.String r1 = "y"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto L44
            r0 = r5
            goto L45
        L26:
            java.lang.String r1 = "x"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto L44
            r0 = 0
            goto L45
        L30:
            java.lang.String r1 = "w"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto L44
            r0 = r4
            goto L45
        L3a:
            java.lang.String r1 = "h"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto L44
            r0 = r3
            goto L45
        L44:
            r0 = -1
        L45:
            if (r0 == 0) goto L66
            if (r0 == r5) goto L5f
            if (r0 == r4) goto L58
            if (r0 == r3) goto L51
            r6.skipValue()     // Catch: java.lang.Exception -> L70
            goto L3
        L51:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> L70
            r7.f23413j = r0     // Catch: java.lang.Exception -> L70
            goto L3
        L58:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> L70
            r7.jx = r0     // Catch: java.lang.Exception -> L70
            goto L3
        L5f:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> L70
            r7.f23414l = r0     // Catch: java.lang.Exception -> L70
            goto L3
        L66:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> L70
            r7.hp = r0     // Catch: java.lang.Exception -> L70
            goto L3
        L6d:
            r6.endObject()     // Catch: java.lang.Exception -> L70
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.hp(android.util.JsonReader, com.byazt.na.a$hp):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.util.JsonReader r8, com.byazt.na.a.jx r9) throws java.io.IOException {
        /*
            r8.beginObject()     // Catch: java.lang.Exception -> Lab
        L3:
            boolean r0 = r8.hasNext()     // Catch: java.lang.Exception -> Lab
            if (r0 == 0) goto La8
            java.lang.String r0 = r8.nextName()     // Catch: java.lang.Exception -> Lab
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> Lab
            r2 = -1291329255(0xffffffffb307e119, float:-3.1636862E-8)
            r3 = 3
            r4 = 1
            r5 = 2
            r6 = 0
            r7 = -1
            if (r1 == r2) goto L48
            r2 = 3239(0xca7, float:4.539E-42)
            if (r1 == r2) goto L3e
            r2 = 107027(0x1a213, float:1.49977E-40)
            if (r1 == r2) goto L34
            r2 = 3237004(0x31648c, float:4.536009E-39)
            if (r1 == r2) goto L2a
            goto L52
        L2a:
            java.lang.String r1 = "inel"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lab
            if (r0 == 0) goto L52
            r0 = r6
            goto L53
        L34:
            java.lang.String r1 = "lel"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lab
            if (r0 == 0) goto L52
            r0 = r5
            goto L53
        L3e:
            java.lang.String r1 = "el"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lab
            if (r0 == 0) goto L52
            r0 = r4
            goto L53
        L48:
            java.lang.String r1 = "events"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lab
            if (r0 == 0) goto L52
            r0 = r3
            goto L53
        L52:
            r0 = r7
        L53:
            if (r0 == 0) goto L74
            if (r0 == r4) goto L6d
            if (r0 == r5) goto L66
            if (r0 == r3) goto L5f
            r8.skipValue()     // Catch: java.lang.Exception -> Lab
            goto L3
        L5f:
            java.lang.String r0 = a(r8)     // Catch: java.lang.Exception -> Lab
            r9.f23426w = r0     // Catch: java.lang.Exception -> Lab
            goto L3
        L66:
            org.json.JSONArray r0 = w(r8)     // Catch: java.lang.Exception -> Lab
            r9.jx = r0     // Catch: java.lang.Exception -> Lab
            goto L3
        L6d:
            java.lang.String r0 = r8.nextString()     // Catch: java.lang.Exception -> Lab
            r9.hp = r0     // Catch: java.lang.Exception -> Lab
            goto L3
        L74:
            int[] r0 = new int[]{r7, r7}     // Catch: java.lang.Exception -> Lab
            int[][] r0 = new int[][]{r0}     // Catch: java.lang.Exception -> Lab
            r9.f23425l = r0     // Catch: java.lang.Exception -> Lab
            r8.beginArray()     // Catch: java.lang.Exception -> Lab
            boolean r0 = r8.hasNext()     // Catch: java.lang.Exception -> Lab
            if (r0 == 0) goto La3
            r8.beginArray()     // Catch: java.lang.Exception -> Lab
            r0 = r6
        L8b:
            if (r0 >= r5) goto La0
            boolean r1 = r8.hasNext()     // Catch: java.lang.Exception -> Lab
            if (r1 == 0) goto L9d
            int[][] r1 = r9.f23425l     // Catch: java.lang.Exception -> Lab
            r1 = r1[r6]     // Catch: java.lang.Exception -> Lab
            int r2 = r8.nextInt()     // Catch: java.lang.Exception -> Lab
            r1[r0] = r2     // Catch: java.lang.Exception -> Lab
        L9d:
            int r0 = r0 + 1
            goto L8b
        La0:
            r8.endArray()     // Catch: java.lang.Exception -> Lab
        La3:
            r8.endArray()     // Catch: java.lang.Exception -> Lab
            goto L3
        La8:
            r8.endObject()     // Catch: java.lang.Exception -> Lab
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.hp(android.util.JsonReader, com.byazt.na.a$jx):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.util.JsonReader r8, com.byazt.na.a.l r9) throws java.io.IOException {
        /*
            r8.beginObject()     // Catch: java.lang.Exception -> Lae
        L3:
            boolean r0 = r8.hasNext()     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto Lab
            java.lang.String r0 = r8.nextName()     // Catch: java.lang.Exception -> Lae
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> Lae
            r2 = 3139(0xc43, float:4.399E-42)
            r3 = 1
            r4 = 2
            r5 = 3
            r6 = 4
            r7 = 5
            if (r1 == r2) goto L63
            r2 = 3232(0xca0, float:4.529E-42)
            if (r1 == r2) goto L59
            r2 = 3571(0xdf3, float:5.004E-42)
            if (r1 == r2) goto L4f
            r2 = 3666(0xe52, float:5.137E-42)
            if (r1 == r2) goto L45
            r2 = 98713(0x18199, float:1.38326E-40)
            if (r1 == r2) goto L3b
            r2 = 120609(0x1d721, float:1.69009E-40)
            if (r1 == r2) goto L31
            goto L6d
        L31:
            java.lang.String r1 = "zip"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L6d
            r0 = r7
            goto L6e
        L3b:
            java.lang.String r1 = "cpf"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L6d
            r0 = r6
            goto L6e
        L45:
            java.lang.String r1 = "se"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L6d
            r0 = 0
            goto L6e
        L4f:
            java.lang.String r1 = "pc"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L6d
            r0 = r5
            goto L6e
        L59:
            java.lang.String r1 = "ee"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L6d
            r0 = r4
            goto L6e
        L63:
            java.lang.String r1 = "be"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Lae
            if (r0 == 0) goto L6d
            r0 = r3
            goto L6e
        L6d:
            r0 = -1
        L6e:
            if (r0 == 0) goto La3
            if (r0 == r3) goto L9b
            if (r0 == r4) goto L93
            if (r0 == r5) goto L8b
            if (r0 == r6) goto L86
            if (r0 == r7) goto L7e
            r8.skipValue()     // Catch: java.lang.Exception -> Lae
            goto L3
        L7e:
            com.byazt.wf.j r0 = l(r8)     // Catch: java.lang.Exception -> Lae
            r9.f23430s = r0     // Catch: java.lang.Exception -> Lae
            goto L3
        L86:
            l(r8, r9)     // Catch: java.lang.Exception -> Lae
            goto L3
        L8b:
            int r0 = r8.nextInt()     // Catch: java.lang.Exception -> Lae
            r9.f23428j = r0     // Catch: java.lang.Exception -> Lae
            goto L3
        L93:
            java.util.Map r0 = jx(r8)     // Catch: java.lang.Exception -> Lae
            r9.jx = r0     // Catch: java.lang.Exception -> Lae
            goto L3
        L9b:
            java.util.Map r0 = jx(r8)     // Catch: java.lang.Exception -> Lae
            r9.f23429l = r0     // Catch: java.lang.Exception -> Lae
            goto L3
        La3:
            int r0 = r8.nextInt()     // Catch: java.lang.Exception -> Lae
            r9.hp = r0     // Catch: java.lang.Exception -> Lae
            goto L3
        Lab:
            r8.endObject()     // Catch: java.lang.Exception -> Lae
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.hp(android.util.JsonReader, com.byazt.na.a$l):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.util.JsonReader r5, com.byazt.na.a.j r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.hp(android.util.JsonReader, com.byazt.na.a$j):void");
    }

    private static void hp(JsonReader jsonReader, com.byazt.na.a aVar, List<com.byazt.at.s> list, LongSparseArray<com.byazt.at.s> longSparseArray) throws IOException {
        jsonReader.beginArray();
        int i2 = 0;
        while (jsonReader.hasNext()) {
            com.byazt.at.s sVarHp = ns.hp(jsonReader, aVar);
            if (sVarHp.gu() == s.hp.IMAGE) {
                i2++;
            }
            list.add(sVarHp);
            longSparseArray.put(sVarHp.w(), sVarHp);
            if (i2 > 4) {
                com.byazt.ze.a.l("You have " + i2 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.endArray();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.util.JsonReader r23, com.byazt.na.a r24, java.util.Map<java.lang.String, java.util.List<com.byazt.at.s>> r25, java.util.Map<java.lang.String, com.byazt.na.q> r26) throws org.json.JSONException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.hp(android.util.JsonReader, com.byazt.na.a, java.util.Map, java.util.Map):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.util.JsonReader r4, com.byazt.na.q.hp r5) throws java.io.IOException {
        /*
        L0:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Exception -> L80
            if (r0 == 0) goto L80
            java.lang.String r0 = r4.nextName()     // Catch: java.lang.Exception -> L80
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> L80
            r2 = -2128704353(0xffffffff811e8c9f, float:-2.9120907E-38)
            r3 = 1
            if (r1 == r2) goto L23
            r2 = 3308(0xcec, float:4.635E-42)
            if (r1 == r2) goto L19
            goto L2d
        L19:
            java.lang.String r1 = "gs"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L80
            if (r0 == 0) goto L2d
            r0 = r3
            goto L2e
        L23:
            java.lang.String r1 = "is_secondary"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L80
            if (r0 == 0) goto L2d
            r0 = 0
            goto L2e
        L2d:
            r0 = -1
        L2e:
            if (r0 == 0) goto L79
            if (r0 == r3) goto L36
            r4.skipValue()     // Catch: java.lang.Exception -> L80
            goto L0
        L36:
            android.util.JsonToken r0 = r4.peek()     // Catch: java.lang.Exception -> L80
            android.util.JsonToken r1 = android.util.JsonToken.NULL     // Catch: java.lang.Exception -> L80
            if (r0 != r1) goto L42
            r4.nextNull()     // Catch: java.lang.Exception -> L80
            goto L0
        L42:
            com.byazt.na.q$hp$hp r0 = new com.byazt.na.q$hp$hp     // Catch: java.lang.Exception -> L80
            r0.<init>()     // Catch: java.lang.Exception -> L80
            r5.hp = r0     // Catch: java.lang.Exception -> L80
            r4.beginObject()     // Catch: java.lang.Exception -> L80
        L4c:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Exception -> L80
            if (r0 == 0) goto L75
            java.lang.String r0 = r4.nextName()     // Catch: java.lang.Exception -> L80
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> L80
            r2 = 114(0x72, float:1.6E-43)
            if (r1 == r2) goto L5f
            goto L71
        L5f:
            java.lang.String r1 = "r"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L80
            if (r0 == 0) goto L71
            com.byazt.na.q$hp$hp r0 = r5.hp     // Catch: java.lang.Exception -> L80
            double r1 = r4.nextDouble()     // Catch: java.lang.Exception -> L80
            float r1 = (float) r1     // Catch: java.lang.Exception -> L80
            r0.hp = r1     // Catch: java.lang.Exception -> L80
            goto L4c
        L71:
            r4.skipValue()     // Catch: java.lang.Exception -> L80
            goto L4c
        L75:
            r4.endObject()     // Catch: java.lang.Exception -> L80
            goto L0
        L79:
            boolean r0 = r4.nextBoolean()     // Catch: java.lang.Exception -> L80
            r5.f23466l = r0     // Catch: java.lang.Exception -> L80
            goto L0
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.hp(android.util.JsonReader, com.byazt.na.q$hp):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void hp(android.util.JsonReader r4, com.byazt.na.q.l r5) throws java.io.IOException {
        /*
        L0:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Exception -> L52
            if (r0 == 0) goto L52
            java.lang.String r0 = r4.nextName()     // Catch: java.lang.Exception -> L52
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> L52
            r2 = 1
            r3 = 2
            switch(r1) {
                case 120: goto L28;
                case 121: goto L1e;
                case 122: goto L14;
                default: goto L13;
            }     // Catch: java.lang.Exception -> L52
        L13:
            goto L32
        L14:
            java.lang.String r1 = "z"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L52
            if (r0 == 0) goto L32
            r0 = r3
            goto L33
        L1e:
            java.lang.String r1 = "y"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L52
            if (r0 == 0) goto L32
            r0 = r2
            goto L33
        L28:
            java.lang.String r1 = "x"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L52
            if (r0 == 0) goto L32
            r0 = 0
            goto L33
        L32:
            r0 = -1
        L33:
            if (r0 == 0) goto L4b
            if (r0 == r2) goto L44
            if (r0 == r3) goto L3d
            r4.skipValue()     // Catch: java.lang.Exception -> L52
            goto L0
        L3d:
            int r0 = r4.nextInt()     // Catch: java.lang.Exception -> L52
            r5.jx = r0     // Catch: java.lang.Exception -> L52
            goto L0
        L44:
            int r0 = r4.nextInt()     // Catch: java.lang.Exception -> L52
            r5.f23476l = r0     // Catch: java.lang.Exception -> L52
            goto L0
        L4b:
            int r0 = r4.nextInt()     // Catch: java.lang.Exception -> L52
            r5.hp = r0     // Catch: java.lang.Exception -> L52
            goto L0
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.cx.hp(android.util.JsonReader, com.byazt.na.q$l):void");
    }

    private static void hp(JsonReader jsonReader, Map<String, com.byazt.yg.jx> map) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (!strNextName.equals("list")) {
                jsonReader.skipValue();
            } else {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.byazt.yg.jx jxVarHp = k.hp(jsonReader);
                    map.put(jxVarHp.l(), jxVarHp);
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
    }

    private static void hp(JsonReader jsonReader, com.byazt.na.a aVar, SparseArray<com.byazt.yg.j> sparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.byazt.yg.j jVarHp = zy.hp(jsonReader, aVar);
            sparseArray.put(jVarHp.hashCode(), jVarHp);
        }
        jsonReader.endArray();
    }

    private static void hp(JsonReader jsonReader, List<com.byazt.yg.eb> list) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float fNextDouble = 0.0f;
            String strNextString = null;
            float fNextDouble2 = 0.0f;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.getClass();
                switch (strNextName) {
                    case "cm":
                        strNextString = jsonReader.nextString();
                        break;
                    case "dr":
                        fNextDouble2 = (float) jsonReader.nextDouble();
                        break;
                    case "tm":
                        fNextDouble = (float) jsonReader.nextDouble();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            list.add(new com.byazt.yg.eb(strNextString, fNextDouble, fNextDouble2));
        }
        jsonReader.endArray();
    }
}
