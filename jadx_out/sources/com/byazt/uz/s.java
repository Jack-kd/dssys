package com.byazt.uz;

import android.content.Context;
import android.util.Pair;
import com.byazt.na.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.WorkerThread;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

@com.byazt.kj.hp(hp = {0, 1, 900, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public final eb hp;

    /* renamed from: l, reason: collision with root package name */
    public final a f26501l;

    public s(eb ebVar, a aVar) {
        this.hp = ebVar;
        this.f26501l = aVar;
    }

    @WorkerThread
    private jl<com.byazt.na.a> jx(Context context, String str, String str2) throws IOException {
        jl<com.byazt.na.a> jlVar;
        com.byazt.ze.a.hp("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                j jVarHp = this.f26501l.hp(str);
                if (jVarHp.hp()) {
                    jlVar = hp(context, str, jVarHp.l(), jVarHp.jx(), str2);
                    StringBuilder sb = new StringBuilder("Completed fetch from network. Success: ");
                    sb.append(jlVar.hp() != null);
                    com.byazt.ze.a.hp(sb.toString());
                } else {
                    jlVar = new jl<>(new IllegalArgumentException(jVarHp.j()));
                }
                try {
                    jVarHp.close();
                    return jlVar;
                } catch (IOException e2) {
                    com.byazt.ze.a.hp("LottieFetchResult close failed ", e2);
                    return jlVar;
                }
            } catch (Throwable th) {
                if (0 == 0) {
                    throw th;
                }
                try {
                    closeable.close();
                    throw th;
                } catch (IOException e3) {
                    com.byazt.ze.a.hp("LottieFetchResult close failed ", e3);
                    throw th;
                }
            }
        } catch (Exception e4) {
            jl<com.byazt.na.a> jlVar2 = new jl<>(e4);
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e5) {
                    com.byazt.ze.a.hp("LottieFetchResult close failed ", e5);
                }
            }
            return jlVar2;
        }
    }

    @WorkerThread
    private com.byazt.na.a l(Context context, String str, String str2) {
        eb ebVar;
        Pair<jx, InputStream> pairHp;
        if (str2 == null || (ebVar = this.hp) == null || (pairHp = ebVar.hp(str2)) == null) {
            return null;
        }
        jx jxVar = (jx) pairHp.first;
        InputStream inputStream = (InputStream) pairHp.second;
        jl<com.byazt.na.a> jlVarHp = jxVar == jx.ZIP ? com.byazt.na.eb.hp(context, new ZipInputStream(inputStream), str2) : com.byazt.na.eb.l(inputStream, str2);
        if (jlVarHp.hp() != null) {
            return jlVarHp.hp();
        }
        return null;
    }

    @WorkerThread
    public jl<com.byazt.na.a> hp(Context context, String str, String str2) {
        com.byazt.na.a aVarL = l(context, str, str2);
        if (aVarL != null) {
            return new jl<>(aVarL);
        }
        com.byazt.ze.a.hp("Animation for " + str + " not found in cache. Fetching from network.");
        return jx(context, str, str2);
    }

    private jl<com.byazt.na.a> hp(Context context, String str, InputStream inputStream, String str2, String str3) throws IOException {
        jl<com.byazt.na.a> jlVarHp;
        jx jxVar;
        eb ebVar;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (!str2.contains("application/zip") && !str2.contains("application/x-zip") && !str2.contains("application/x-zip-compressed") && !str.split("\\?")[0].endsWith(".lottie")) {
            com.byazt.ze.a.hp("Received json response.");
            jxVar = jx.JSON;
            jlVarHp = hp(str, inputStream, str3);
        } else {
            com.byazt.ze.a.hp("Handling zip response.");
            jx jxVar2 = jx.ZIP;
            jlVarHp = hp(context, str, inputStream, str3);
            jxVar = jxVar2;
        }
        if (str3 != null && jlVarHp.hp() != null && (ebVar = this.hp) != null) {
            ebVar.hp(str3, jxVar);
        }
        return jlVarHp;
    }

    private jl<com.byazt.na.a> hp(Context context, String str, InputStream inputStream, String str2) throws IOException {
        eb ebVar;
        if (str2 != null && (ebVar = this.hp) != null) {
            return com.byazt.na.eb.hp(context, new ZipInputStream(new FileInputStream(ebVar.hp(str2, inputStream, jx.ZIP))), str);
        }
        return com.byazt.na.eb.hp(context, new ZipInputStream(inputStream), (String) null);
    }

    private jl<com.byazt.na.a> hp(String str, InputStream inputStream, String str2) throws IOException {
        eb ebVar;
        if (str2 != null && (ebVar = this.hp) != null) {
            return com.byazt.na.eb.l(new FileInputStream(ebVar.hp(str2, inputStream, jx.JSON).getAbsolutePath()), str);
        }
        return com.byazt.na.eb.l(inputStream, (String) null);
    }
}
