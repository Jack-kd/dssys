package com.byazt.av;

import android.util.JsonReader;
import android.util.JsonToken;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes2.dex */
public class n {
    public static <T> List<com.byazt.ch.hp<T>> hp(JsonReader jsonReader, com.byazt.na.a aVar, float f2, kg<T> kgVar, boolean z2) throws IOException {
        JsonReader jsonReader2;
        com.byazt.na.a aVar2;
        float f3;
        kg<T> kgVar2;
        boolean z3;
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            aVar.hp("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (!strNextName.equals("k")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonToken.NUMBER) {
                    JsonReader jsonReader3 = jsonReader;
                    com.byazt.na.a aVar3 = aVar;
                    float f4 = f2;
                    kg<T> kgVar3 = kgVar;
                    boolean z4 = z2;
                    com.byazt.ch.hp hpVarHp = sz.hp(jsonReader3, aVar3, f4, kgVar3, false, z4);
                    jsonReader2 = jsonReader3;
                    aVar2 = aVar3;
                    f3 = f4;
                    kgVar2 = kgVar3;
                    z3 = z4;
                    arrayList.add(hpVarHp);
                } else {
                    jsonReader2 = jsonReader;
                    aVar2 = aVar;
                    f3 = f2;
                    kgVar2 = kgVar;
                    z3 = z2;
                    while (jsonReader2.hasNext()) {
                        arrayList.add(sz.hp(jsonReader2, aVar2, f3, kgVar2, true, z3));
                    }
                }
                jsonReader2.endArray();
                jsonReader = jsonReader2;
                aVar = aVar2;
                f2 = f3;
                kgVar = kgVar2;
                z2 = z3;
            } else {
                JsonReader jsonReader4 = jsonReader;
                arrayList.add(sz.hp(jsonReader4, aVar, f2, kgVar, false, z2));
                jsonReader = jsonReader4;
            }
        }
        jsonReader.endObject();
        hp(arrayList);
        return arrayList;
    }

    public static <T> void hp(List<? extends com.byazt.ch.hp<T>> list) {
        int i2;
        T t2;
        int size = list.size();
        int i3 = 0;
        while (true) {
            i2 = size - 1;
            if (i3 >= i2) {
                break;
            }
            com.byazt.ch.hp<T> hpVar = list.get(i3);
            i3++;
            com.byazt.ch.hp<T> hpVar2 = list.get(i3);
            hpVar.eb = Float.valueOf(hpVar2.f18846a);
            if (hpVar.f18850l == null && (t2 = hpVar2.hp) != null) {
                hpVar.f18850l = t2;
                if (hpVar instanceof com.byazt.dt.q) {
                    ((com.byazt.dt.q) hpVar).hp();
                }
            }
        }
        com.byazt.ch.hp<T> hpVar3 = list.get(i2);
        if ((hpVar3.hp == null || hpVar3.f18850l == null) && list.size() > 1) {
            list.remove(hpVar3);
        }
    }
}
