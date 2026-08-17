package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import com.byazt.yg.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 150})
/* loaded from: classes2.dex */
public class q implements kg<com.byazt.yg.l> {
    public static final q hp = new q();

    private q() {
    }

    @Override // com.byazt.av.kg
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public com.byazt.yg.l l(JsonReader jsonReader, float f2) throws IOException {
        String str;
        String str2;
        String str3;
        l.hp hpVar = l.hp.CENTER;
        com.byazt.yg.w wVar = new com.byazt.yg.w();
        jsonReader.beginObject();
        String strNextString = null;
        l.hp hpVar2 = hpVar;
        PointF pointF = null;
        PointF pointF2 = null;
        String strNextString2 = null;
        String strNextString3 = null;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        boolean zNextBoolean = true;
        int iNextInt = 0;
        int iHp = 0;
        int iHp2 = 0;
        String str4 = null;
        float fNextDouble4 = 0.0f;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "f":
                    strNextString = jsonReader.nextString();
                    break;
                case "j":
                    str = strNextString;
                    str2 = str4;
                    int iNextInt2 = jsonReader.nextInt();
                    hpVar2 = l.hp.CENTER;
                    if (iNextInt2 <= hpVar2.ordinal() && iNextInt2 >= 0) {
                        hpVar2 = l.hp.values()[iNextInt2];
                    }
                    strNextString = str;
                    str4 = str2;
                    break;
                case "s":
                    str3 = strNextString;
                    fNextDouble4 = (float) jsonReader.nextDouble();
                    strNextString = str3;
                    break;
                case "t":
                    str3 = strNextString;
                    String strNextString4 = jsonReader.nextString();
                    str4 = strNextString4 == null ? "" : strNextString4;
                    strNextString = str3;
                    break;
                case "fc":
                    iHp = ec.hp(jsonReader);
                    break;
                case "lh":
                    str3 = strNextString;
                    fNextDouble = (float) jsonReader.nextDouble();
                    strNextString = str3;
                    break;
                case "ls":
                    str3 = strNextString;
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    strNextString = str3;
                    break;
                case "of":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "ps":
                    str = strNextString;
                    str2 = str4;
                    jsonReader.beginArray();
                    pointF = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
                    jsonReader.endArray();
                    strNextString = str;
                    str4 = str2;
                    break;
                case "sc":
                    iHp2 = ec.hp(jsonReader);
                    break;
                case "sw":
                    str3 = strNextString;
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    strNextString = str3;
                    break;
                case "sz":
                    jsonReader.beginArray();
                    str = strNextString;
                    str2 = str4;
                    pointF2 = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
                    jsonReader.endArray();
                    strNextString = str;
                    str4 = str2;
                    break;
                case "tr":
                    iNextInt = jsonReader.nextInt();
                    break;
                case "els":
                    strNextString3 = jsonReader.nextString();
                    break;
                case "elt":
                    strNextString2 = jsonReader.nextString();
                    break;
                case "line_cfg":
                    hp(jsonReader, wVar);
                    break;
                default:
                    jsonReader.skipValue();
                    str3 = strNextString;
                    strNextString = str3;
                    break;
            }
        }
        jsonReader.endObject();
        return new com.byazt.yg.l(str4, strNextString, fNextDouble4, hpVar2, iNextInt, fNextDouble, fNextDouble2, iHp, iHp2, fNextDouble3, zNextBoolean, pointF, pointF2, wVar, strNextString2, strNextString3);
    }

    private static void hp(JsonReader jsonReader, com.byazt.yg.w wVar) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("l")) {
                wVar.hp = jsonReader.nextInt();
            } else if (!strNextName.equals("m")) {
                jsonReader.skipValue();
            } else {
                int iNextInt = jsonReader.nextInt();
                if (iNextInt <= 3 && iNextInt >= 0) {
                    wVar.f27929l = iNextInt;
                } else {
                    wVar.f27929l = 0;
                }
            }
        }
        jsonReader.endObject();
    }
}
