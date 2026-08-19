package com.byazt.av;

import android.graphics.Path;
import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.Collections;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS})
/* loaded from: classes2.dex */
public class pu {
    public static com.byazt.mo.v hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        com.byazt.ha.j jVar = null;
        String strNextString = null;
        com.byazt.ha.hp hpVarEb = null;
        boolean zNextBoolean = false;
        boolean zNextBoolean2 = false;
        int iNextInt = 1;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "fillEnabled":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "c":
                    hpVarEb = j.eb(jsonReader, aVar);
                    break;
                case "o":
                    jVar = j.l(jsonReader, aVar);
                    break;
                case "r":
                    iNextInt = jsonReader.nextInt();
                    break;
                case "hd":
                    zNextBoolean2 = jsonReader.nextBoolean();
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (jVar == null) {
            jVar = new com.byazt.ha.j(Collections.singletonList(new com.byazt.ch.hp(100)));
        }
        return new com.byazt.mo.v(strNextString, zNextBoolean, iNextInt == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, hpVarEb, jVar, zNextBoolean2);
    }
}
