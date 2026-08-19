package com.byazt.av;

import android.graphics.Color;
import android.graphics.Rect;
import android.util.JsonReader;
import com.byazt.at.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.library.solder.lib.ext.PluginError;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 166})
/* loaded from: classes2.dex */
public class ns {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, PluginError.ERROR_UPD_REQUEST})
    /* renamed from: com.byazt.av.ns$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[s.l.values().length];
            hp = iArr;
            try {
                iArr[s.l.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[s.l.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static com.byazt.at.s hp(com.byazt.na.a aVar) {
        Rect rectJ = aVar.j();
        List list = Collections.EMPTY_LIST;
        return new com.byazt.at.s(list, aVar, "__container", -1L, s.hp.PRE_COMP, -1L, null, list, new com.byazt.ha.jl(), 0, 0, 0, 0.0f, 0.0f, rectJ.width(), rectJ.height(), null, null, list, s.l.NONE, null, false, null, null);
    }

    public static com.byazt.at.s hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        Float f2;
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        s.l lVar = s.l.NONE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.beginObject();
        s.l lVar2 = lVar;
        String strNextString = null;
        com.byazt.ha.jl jlVarHp = null;
        com.byazt.ha.e eVarA = null;
        com.byazt.ha.gu guVarHp = null;
        com.byazt.ha.l lVarHp = null;
        com.byazt.mo.hp hpVarHp = null;
        e eVarHp = null;
        float fNextDouble = 0.0f;
        float fEb = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        float fNextDouble4 = 0.0f;
        long jNextInt = 0;
        long jNextInt2 = -1;
        int iNextInt = 0;
        int iNextInt2 = 0;
        int color = 0;
        boolean zNextBoolean = false;
        float fNextDouble5 = 1.0f;
        String strNextString2 = "UNSET";
        String strNextString3 = null;
        s.hp hpVar = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "parent":
                    jNextInt2 = jsonReader.nextInt();
                    break;
                case "shapes":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        com.byazt.mo.jx jxVarHp = s.hp(jsonReader, aVar);
                        if (jxVarHp != null) {
                            arrayList2.add(jxVarHp);
                        }
                    }
                    jsonReader.endArray();
                    break;
                case "h":
                    fNextDouble3 = (float) (jsonReader.nextDouble() * com.byazt.ze.e.hp());
                    break;
                case "t":
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        if (strNextName2.equals("a")) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                guVarHp = l.hp(jsonReader, aVar);
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        } else if (!strNextName2.equals("d")) {
                            jsonReader.skipValue();
                        } else {
                            eVarA = j.a(jsonReader, aVar);
                        }
                    }
                    jsonReader.endObject();
                    break;
                case "w":
                    fNextDouble2 = (float) (jsonReader.nextDouble() * com.byazt.ze.e.hp());
                    break;
                case "cl":
                    strNextString3 = jsonReader.nextString();
                    break;
                case "ef":
                    jsonReader.beginArray();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String strNextName3 = jsonReader.nextName();
                            strNextName3.getClass();
                            if (strNextName3.equals("nm")) {
                                arrayList3.add(jsonReader.nextString());
                            } else if (!strNextName3.equals("ty")) {
                                jsonReader.skipValue();
                            } else {
                                int iNextInt3 = jsonReader.nextInt();
                                if (iNextInt3 == 29) {
                                    hpVarHp = w.hp(jsonReader, aVar);
                                } else if (iNextInt3 == 25) {
                                    eVarHp = new gu().hp(jsonReader, aVar);
                                }
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    aVar.hp("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: ".concat(String.valueOf(arrayList3)));
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "ip":
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case "ks":
                    jlVarHp = jx.hp(jsonReader, aVar);
                    break;
                case "nm":
                    strNextString2 = jsonReader.nextString();
                    break;
                case "op":
                    fEb = (float) jsonReader.nextDouble();
                    break;
                case "sc":
                    color = Color.parseColor(jsonReader.nextString());
                    break;
                case "sh":
                    iNextInt2 = (int) (jsonReader.nextInt() * com.byazt.ze.e.hp());
                    break;
                case "sr":
                    fNextDouble5 = (float) jsonReader.nextDouble();
                    break;
                case "st":
                    fNextDouble4 = (float) jsonReader.nextDouble();
                    break;
                case "sw":
                    iNextInt = (int) (jsonReader.nextInt() * com.byazt.ze.e.hp());
                    break;
                case "tm":
                    lVarHp = j.hp(jsonReader, aVar, false);
                    break;
                case "tt":
                    int iNextInt4 = jsonReader.nextInt();
                    if (iNextInt4 >= s.l.values().length) {
                        aVar.hp("Unsupported matte type: ".concat(String.valueOf(iNextInt4)));
                        break;
                    } else {
                        lVar2 = s.l.values()[iNextInt4];
                        int i2 = AnonymousClass1.hp[lVar2.ordinal()];
                        if (i2 == 1) {
                            aVar.hp("Unsupported matte type: Luma");
                        } else if (i2 == 2) {
                            aVar.hp("Unsupported matte type: Luma Inverted");
                        }
                        aVar.hp(1);
                        break;
                    }
                case "ty":
                    int iNextInt5 = jsonReader.nextInt();
                    hpVar = s.hp.UNKNOWN;
                    if (iNextInt5 >= hpVar.ordinal()) {
                        break;
                    } else {
                        hpVar = s.hp.values()[iNextInt5];
                        break;
                    }
                case "ind":
                    jNextInt = jsonReader.nextInt();
                    break;
                case "refId":
                    strNextString = jsonReader.nextString();
                    break;
                case "masksProperties":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(b.hp(jsonReader, aVar));
                    }
                    aVar.hp(arrayList.size());
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        ArrayList arrayList4 = new ArrayList();
        if (fNextDouble > 0.0f) {
            f2 = fValueOf;
            arrayList4.add(new com.byazt.ch.hp(aVar, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fNextDouble)));
        } else {
            f2 = fValueOf;
        }
        if (fEb <= 0.0f) {
            fEb = aVar.eb();
        }
        arrayList4.add(new com.byazt.ch.hp(aVar, fValueOf2, fValueOf2, null, fNextDouble, Float.valueOf(fEb)));
        arrayList4.add(new com.byazt.ch.hp(aVar, f2, f2, null, fEb, Float.valueOf(Float.MAX_VALUE)));
        if (strNextString2.endsWith(".ai") || "ai".equals(strNextString3)) {
            aVar.hp("Convert your Illustrator layers to shape layers.");
        }
        return new com.byazt.at.s(arrayList2, aVar, strNextString2, jNextInt, hpVar, jNextInt2, strNextString, arrayList, jlVarHp, iNextInt, iNextInt2, color, fNextDouble5, fNextDouble4, fNextDouble2, fNextDouble3, eVarA, guVarHp, arrayList4, lVar2, lVarHp, zNextBoolean, hpVarHp, eVarHp);
    }
}
