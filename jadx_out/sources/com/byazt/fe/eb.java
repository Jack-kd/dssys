package com.byazt.fe;

import android.text.TextUtils;
import androidx.webkit.Profile;
import com.anythink.core.common.d.i;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.explore.model.ExploreConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, 94})
/* loaded from: classes2.dex */
public class eb {
    public static final Map<String, AtomicBoolean> jx = new ConcurrentHashMap();
    public hp hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.fe.l f19695l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, 131})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public final int f19696a;
        public final int eb;
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final boolean f19697j;
        public final int jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f19698l;

        /* renamed from: w, reason: collision with root package name */
        public final int f19699w;

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, 1419})
        /* renamed from: com.byazt.fe.eb$hp$hp, reason: collision with other inner class name */
        public static class C0223hp {
            public int jx;

            /* renamed from: l, reason: collision with root package name */
            public int f19702l;
            public String hp = Profile.DEFAULT_PROFILE_NAME;

            /* renamed from: j, reason: collision with root package name */
            public boolean f19701j = true;

            /* renamed from: w, reason: collision with root package name */
            public int f19703w = 1;

            /* renamed from: a, reason: collision with root package name */
            public int f19700a = 0;
            public int eb = 1;

            public C0223hp hp(String str) {
                this.hp = str;
                return this;
            }

            public C0223hp j(int i2) {
                this.f19703w = i2;
                return this;
            }

            public C0223hp jx(int i2) {
                this.eb = i2;
                return this;
            }

            public C0223hp l(int i2) {
                this.f19700a = i2;
                return this;
            }

            public C0223hp hp(int i2) {
                this.f19702l = i2;
                return this;
            }

            public C0223hp hp(boolean z2) {
                this.f19701j = z2;
                return this;
            }

            public hp hp() {
                return new hp(this);
            }
        }

        public int j() {
            return this.f19699w;
        }

        public boolean jx() {
            return this.f19697j;
        }

        public int w() {
            return this.eb;
        }

        private hp(C0223hp c0223hp) {
            this.hp = c0223hp.hp;
            this.f19698l = c0223hp.f19702l;
            this.jx = c0223hp.jx;
            this.f19697j = c0223hp.f19701j;
            this.f19696a = c0223hp.f19700a;
            this.eb = c0223hp.eb;
            this.f19699w = c0223hp.f19703w;
        }

        public String hp() {
            return this.hp;
        }

        public int l() {
            return this.f19698l;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, 846})
    public static class l {
        public long hp;

        /* renamed from: j, reason: collision with root package name */
        public int f19704j = 7643;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public long f19705l;

        /* renamed from: w, reason: collision with root package name */
        public String f19706w;

        public l(String str, long j2, long j3, String str2) {
            this.hp = j2;
            this.f19705l = j3;
            this.jx = str;
            this.f19706w = str2;
        }

        public boolean hp() {
            return (TextUtils.isEmpty(this.jx) || this.hp == 0) ? false : true;
        }
    }

    public eb(int i2) {
        hp hpVarL = l(i2);
        this.hp = hpVarL;
        if (hpVarL.f19696a != 1) {
            this.f19695l = new jx();
        } else {
            this.f19695l = new j();
        }
    }

    private AtomicBoolean w(String str) {
        Map<String, AtomicBoolean> map = jx;
        if (!map.containsKey(str)) {
            map.put(str, new AtomicBoolean(false));
        }
        return map.get(str);
    }

    public void hp(String str, l lVar, boolean z2, long j2, int i2) {
        try {
            com.byazt.fe.hp hpVar = sz.l().rt() ? new com.byazt.fe.hp() { // from class: com.byazt.fe.eb.1
                @Override // com.byazt.fe.hp
                public void hp(l lVar2) {
                    try {
                        mp mpVarHp = com.byazt.jz.hp.hp(new JSONObject(com.byazt.ymw.hp.jx(lVar2.jx)));
                        mpVarHp.xm().j(3);
                        com.byazt.jdb.j.jx(mpVarHp, com.byazt.ih.l.AD_TAG_FEED);
                    } catch (Exception unused) {
                    }
                }
            } : null;
            synchronized (w(str)) {
                a aVar = new a();
                aVar.hp = z2;
                aVar.f19694l = (int) j2;
                aVar.jx = i2;
                this.f19695l.hp(str, lVar, aVar, this.hp, hpVar);
            }
        } catch (Throwable unused) {
        }
    }

    public boolean j(String str) {
        boolean zHp;
        try {
            synchronized (w(str)) {
                zHp = this.f19695l.hp(str, this.hp);
            }
            return zHp;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void jx(String str) {
        try {
            if (w(str).compareAndSet(false, true)) {
                System.currentTimeMillis();
                this.f19695l.l(str);
                System.currentTimeMillis();
            }
        } catch (Throwable unused) {
        }
    }

    public void l(String str) {
        com.byazt.fe.hp hpVar = sz.l().sv() ? new com.byazt.fe.hp() { // from class: com.byazt.fe.eb.2
            @Override // com.byazt.fe.hp
            public void hp(l lVar) {
                try {
                    mp mpVarHp = com.byazt.jz.hp.hp(new JSONObject(com.byazt.ymw.hp.jx(lVar.jx)));
                    mpVarHp.xm().j(2);
                    com.byazt.jdb.j.jx(mpVarHp, com.byazt.ih.l.AD_TAG_FEED);
                } catch (Exception unused) {
                }
            }
        } : null;
        try {
            u.l("cache_tag", "广告类型 " + this.hp.f19698l + " ---缓存清理中--- rit: " + str);
            this.f19695l.hp(str, this.hp, hpVar);
        } catch (Throwable unused) {
        }
    }

    private hp l(int i2) {
        String str;
        s.jx jxVarHp = s.hp(i2);
        switch (i2) {
            case 1:
                str = i.o.f2699c;
                break;
            case 2:
            default:
                str = Profile.DEFAULT_PROFILE_NAME;
                break;
            case 3:
            case 4:
                str = "Splash";
                break;
            case 5:
                str = ExploreConstants.SCENE_FEED;
                break;
            case 6:
                str = "Stream";
                break;
            case 7:
                str = ExploreConstants.SCENE_REWARD;
                break;
            case 8:
                str = ExploreConstants.SCENE_FULL;
                break;
            case 9:
                str = "Draw";
                break;
        }
        if (jxVarHp == null) {
            return new hp.C0223hp().hp();
        }
        return new hp.C0223hp().hp(str).hp(i2).hp(jxVarHp.s()).l(jxVarHp.w()).jx(jxVarHp.l()).j(jxVarHp.jx()).hp();
    }

    public l hp(String str, boolean z2, long j2) {
        l lVarHp;
        try {
            synchronized (w(str)) {
                try {
                    lVarHp = this.f19695l.hp(str, this.hp, j2, null);
                    if (lVarHp != null && lVarHp.hp() && z2) {
                        this.f19695l.hp(str, lVarHp.f19706w, true);
                    }
                } finally {
                }
            }
            return lVarHp;
        } catch (Throwable unused) {
            return null;
        }
    }

    public List<l> hp(String str, boolean z2, long j2, int i2, double d2) {
        ArrayList arrayList = new ArrayList();
        try {
            synchronized (w(str)) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    int i3 = 0;
                    for (int i4 = 0; i4 < i2; i4++) {
                        l lVarHp = this.f19695l.hp(str, this.hp, j2, arrayList2);
                        if (lVarHp == null || !lVarHp.hp()) {
                            break;
                        }
                        arrayList2.add(lVarHp.f19706w);
                        arrayList.add(lVarHp);
                    }
                    if (d2 > 0.0d) {
                        int iFloor = (int) Math.floor(i2 * d2);
                        arrayList.size();
                        if (arrayList.size() < iFloor) {
                            return Collections.EMPTY_LIST;
                        }
                    }
                    int size = arrayList.size();
                    while (i3 < size) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        l lVar = (l) obj;
                        if (z2) {
                            this.f19695l.hp(str, lVar.f19706w, true);
                        }
                    }
                    return arrayList;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
            return arrayList;
        }
    }

    public l hp(String str, long j2, List<String> list) {
        l lVarHp;
        try {
            synchronized (w(str)) {
                try {
                    System.currentTimeMillis();
                    lVarHp = this.f19695l.hp(str, this.hp, j2, list);
                    if (lVarHp != null && lVarHp.hp()) {
                        System.currentTimeMillis();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return lVarHp;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void hp() {
        try {
            this.f19695l.hp(this.hp);
        } catch (Throwable unused) {
        }
    }

    public void hp(String str) {
        try {
            this.f19695l.hp(str);
        } catch (Throwable unused) {
        }
    }

    public void hp(String str, String str2, boolean z2) {
        try {
            synchronized (w(str)) {
                this.f19695l.hp(str, str2, z2);
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(String str, String str2) {
        try {
            synchronized (w(str)) {
                this.f19695l.hp(str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(int i2) {
        this.hp = l(i2);
    }
}
