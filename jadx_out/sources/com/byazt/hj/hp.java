package com.byazt.hj;

import android.content.Context;
import android.os.Looper;
import android.util.SparseArray;
import com.byazt.pg.wv;
import com.byazt.um.e;
import com.byazt.um.eb;
import com.byazt.um.jl;
import com.byazt.um.l;
import com.byazt.um.q;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2143, 28})
@ATSKeep
/* loaded from: classes2.dex */
public class hp implements wv, Function {
    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                eb ebVarCreateTTLiveVideoPlayer = createTTLiveVideoPlayer((Context) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue(), ((Long) sparseArray.get(3)).longValue(), (JSONObject) sparseArray.get(4), (Looper) sparseArray.get(5));
                return ebVarCreateTTLiveVideoPlayer != null ? new q(ebVarCreateTTLiveVideoPlayer) : ebVarCreateTTLiveVideoPlayer;
            case 2:
                eb ebVarCreateTTVideoPlayer = createTTVideoPlayer((Context) sparseArray.get(1), (String) sparseArray.get(2));
                return ebVarCreateTTVideoPlayer != null ? new q(ebVarCreateTTVideoPlayer) : ebVarCreateTTVideoPlayer;
            case 3:
                preloadTTVideo((Context) sparseArray.get(1), (String) sparseArray.get(2), ((Integer) sparseArray.get(3)).intValue(), (String[]) sparseArray.get(4), (long[]) sparseArray.get(5), ((Boolean) sparseArray.get(6)).booleanValue());
                return null;
            case 4:
                return Boolean.valueOf(isTTVideoOk());
            case 5:
                openDebugLog(((Boolean) sparseArray.get(1)).booleanValue());
                return null;
            case 6:
                e eVarCreateVideoPreload = createVideoPreload();
                return eVarCreateVideoPreload != null ? new jl(eVarCreateVideoPreload) : eVarCreateVideoPreload;
            case 7:
                com.byazt.um.hp hpVarCreateVideoCacheDir = createVideoCacheDir();
                return hpVarCreateVideoCacheDir != null ? new l(hpVarCreateVideoCacheDir) : hpVarCreateVideoCacheDir;
            case 8:
                return Integer.valueOf(getLiveSupportCode());
            default:
                return null;
        }
    }

    @Override // com.byazt.pg.wv
    public eb createTTLiveVideoPlayer(Context context, boolean z2, long j2, JSONObject jSONObject, Looper looper) {
        return new com.byazt.qh.hp(context, z2, j2, jSONObject, looper);
    }

    @Override // com.byazt.pg.wv
    public eb createTTVideoPlayer(Context context, String str) {
        return new com.byazt.py.l(context, str);
    }

    @Override // com.byazt.pg.wv
    public com.byazt.um.hp createVideoCacheDir() {
        return new com.byazt.afu.hp();
    }

    @Override // com.byazt.pg.wv
    public e createVideoPreload() {
        return new com.byazt.uu.hp();
    }

    @Override // com.byazt.pg.wv
    public int getLiveSupportCode() {
        return 0;
    }

    @Override // com.byazt.pg.wv
    public boolean isTTVideoOk() {
        return com.byazt.py.l.hp();
    }

    @Override // com.byazt.pg.wv
    public void openDebugLog(boolean z2) {
        com.byazt.py.hp.hp(z2);
    }

    @Override // com.byazt.pg.wv
    public void preloadTTVideo(Context context, String str, int i2, String[] strArr, long[] jArr, boolean z2) {
        com.byazt.py.l.hp(context, str, i2, strArr, jArr, z2);
    }
}
