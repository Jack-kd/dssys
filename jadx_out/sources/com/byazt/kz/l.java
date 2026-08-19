package com.byazt.kz;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.kz.jx;
import com.byazt.nke.dy;
import com.byazt.nke.ec;
import com.byazt.nke.k;
import com.byazt.nke.ns;
import com.byazt.nke.v;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 34})
@ATSKeep
/* loaded from: classes3.dex */
public class l implements ns, Function {
    public volatile a hp;

    public l(Context context, ec ecVar) {
        this.hp = new a(context, ecVar == null ? w.e() : ecVar);
    }

    private void hp() {
        clearMemoryCache(0.0d);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case -1:
                hp();
                return null;
            case 0:
            default:
                return null;
            case 1:
                k kVarFrom = from((String) sparseArray.get(1));
                return kVarFrom != null ? new v(kVarFrom) : kVarFrom;
            case 2:
                clearCache(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 3:
                clearMemoryCache(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 4:
                clearDiskCache(((Double) sparseArray.get(1)).doubleValue());
                return null;
            case 5:
                clearAllCache();
                return null;
            case 6:
                return getCacheStream((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 7:
                return getDiskCacheStream((String) sparseArray.get(1), (String) sparseArray.get(2), (String) sparseArray.get(3));
            case 8:
                return Boolean.valueOf(hasDiskCache((String) sparseArray.get(1), (String) sparseArray.get(2), (String) sparseArray.get(3)));
        }
    }

    @Override // com.byazt.nke.ns
    public void clearAllCache() {
        clearDiskCache(0.0d);
        clearMemoryCache(0.0d);
    }

    @Override // com.byazt.nke.ns
    public void clearCache(double d2) {
        clearMemoryCache(d2);
        clearDiskCache(d2);
    }

    @Override // com.byazt.nke.ns
    public void clearDiskCache(double d2) {
        if (this.hp != null) {
            hp(this.hp.jx(), d2);
        }
    }

    @Override // com.byazt.nke.ns
    public void clearMemoryCache(double d2) {
        if (this.hp != null) {
            hp(this.hp.hp(), d2);
            hp(this.hp.l(), d2);
        }
    }

    @Override // com.byazt.nke.ns
    public k from(String str) {
        return new jx.l(this.hp).from(str);
    }

    @Override // com.byazt.nke.ns
    public InputStream getCacheStream(String str, String str2) throws NoSuchAlgorithmException {
        if (this.hp != null) {
            if (TextUtils.isEmpty(str2)) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                str2 = com.byazt.qkc.jx.hp(str);
            }
            Collection<dy> collectionL = this.hp.l();
            if (collectionL != null) {
                Iterator<dy> it = collectionL.iterator();
                while (it.hasNext()) {
                    byte[] bArrHp = it.next().hp((dy) str2);
                    if (bArrHp != null) {
                        return new ByteArrayInputStream(bArrHp);
                    }
                }
            }
            Collection<com.byazt.nke.j> collectionJx = this.hp.jx();
            if (collectionJx != null) {
                Iterator<com.byazt.nke.j> it2 = collectionJx.iterator();
                while (it2.hasNext()) {
                    InputStream inputStreamHp = it2.next().hp(str2);
                    if (inputStreamHp != null) {
                        return inputStreamHp;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.byazt.nke.ns
    public InputStream getDiskCacheStream(String str, String str2, String str3) throws NoSuchAlgorithmException {
        if (this.hp == null || TextUtils.isEmpty(str3)) {
            return null;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            str2 = com.byazt.qkc.jx.hp(str);
        }
        com.byazt.nke.j jVarHp = this.hp.hp(str3);
        if (jVarHp != null) {
            return jVarHp.hp(str2);
        }
        return null;
    }

    @Override // com.byazt.nke.ns
    public boolean hasDiskCache(String str, String str2, String str3) throws NoSuchAlgorithmException {
        if (this.hp == null || TextUtils.isEmpty(str3)) {
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            str2 = com.byazt.qkc.jx.hp(str);
        }
        com.byazt.nke.j jVarHp = this.hp.hp(str3);
        if (jVarHp != null) {
            return jVarHp.l(str2);
        }
        return false;
    }

    public boolean isInit() {
        return this.hp != null;
    }

    private void hp(Collection<? extends com.byazt.nke.hp> collection, double d2) {
        if (collection == null) {
            return;
        }
        Iterator<? extends com.byazt.nke.hp> it = collection.iterator();
        while (it.hasNext()) {
            it.next().hp(d2);
        }
    }
}
