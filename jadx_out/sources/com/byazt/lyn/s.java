package com.byazt.lyn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static final String hp = "TTMediationSDK_" + s.class.getSimpleName();
    public com.byazt.fgq.hp<eb> jx;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, eb> f22844l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static class hp {
        public static s hp = new s();
    }

    public static s hp() {
        return hp.hp;
    }

    public eb l(String str) {
        if (this.jx != null) {
            Map<String, eb> map = this.f22844l;
            eb ebVar = map != null ? map.get(str) : null;
            if (ebVar != null) {
                return ebVar;
            }
            eb ebVarQuery = this.jx.query(str);
            if (ebVarQuery != null) {
                Map<String, eb> map2 = this.f22844l;
                if (map2 != null) {
                    map2.put(ebVarQuery.j(), ebVarQuery);
                }
                return ebVarQuery;
            }
        }
        return null;
    }

    private s() {
        this.jx = new com.byazt.fgq.l(com.byazt.di.l.getContext());
        this.f22844l = new ConcurrentHashMap();
    }

    public void hp(String str) {
        if (this.jx != null) {
            Map<String, eb> map = this.f22844l;
            if (map != null) {
                map.remove(str);
            }
            this.jx.delete(str);
        }
    }

    public void hp(String str, String str2) {
        if (this.jx != null) {
            Map<String, eb> map = this.f22844l;
            if (map != null) {
                map.remove(str + "_" + str2);
            }
            this.jx.delete(str, str2);
        }
    }

    public eb l(String str, String str2) {
        eb ebVar;
        if (this.jx != null) {
            Map<String, eb> map = this.f22844l;
            if (map != null) {
                ebVar = map.get(str + "_" + str2);
            } else {
                ebVar = null;
            }
            if (ebVar != null) {
                return ebVar;
            }
            eb ebVarQuery = this.jx.query(str, str2);
            if (ebVarQuery != null) {
                Map<String, eb> map2 = this.f22844l;
                if (map2 != null) {
                    map2.put(ebVarQuery.j(), ebVarQuery);
                }
                return ebVarQuery;
            }
        }
        return null;
    }

    public void hp(eb ebVar) {
        eb ebVarL;
        w wVar;
        if (ebVar.hp()) {
            ebVarL = l(ebVar.l(), ebVar.jx());
        } else {
            ebVarL = l(ebVar.l());
        }
        if (ebVarL == null) {
            if (this.jx != null) {
                Map<String, eb> map = this.f22844l;
                if (map != null) {
                    map.put(ebVar.j(), ebVar);
                }
                this.jx.l(ebVar);
                return;
            }
            return;
        }
        HashMap map2 = new HashMap();
        for (w wVar2 : ebVarL.gu()) {
            map2.put(wVar2.jx(), wVar2);
        }
        for (w wVar3 : ebVar.gu()) {
            if (map2.containsKey(wVar3.jx()) && (wVar = (w) map2.get(wVar3.jx())) != null) {
                wVar3.hp(wVar);
            }
        }
        Map<String, eb> map3 = this.f22844l;
        if (map3 != null) {
            map3.put(ebVar.j(), ebVar);
        }
        l(ebVar);
    }

    public void l(eb ebVar) {
        if (this.jx != null) {
            Map<String, eb> map = this.f22844l;
            if (map != null) {
                map.put(ebVar.j(), ebVar);
            }
            this.jx.hp(ebVar);
        }
    }

    public void hp(eb ebVar, String str, int i2) {
        if (this.jx != null) {
            ebVar.hp(str, i2);
            Map<String, eb> map = this.f22844l;
            if (map != null) {
                map.put(ebVar.j(), ebVar);
            }
            this.jx.hp(ebVar);
        }
    }

    public void hp(eb ebVar, String str, long j2) {
        if (this.jx != null) {
            ebVar.hp(str, j2);
            Map<String, eb> map = this.f22844l;
            if (map != null) {
                map.put(ebVar.j(), ebVar);
            }
            this.jx.hp(ebVar);
        }
    }
}
