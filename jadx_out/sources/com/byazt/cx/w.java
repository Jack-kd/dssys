package com.byazt.cx;

import android.text.TextUtils;
import com.byazt.vu.eb;
import com.byazt.xci.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 301, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public l<com.byazt.vu.a, eb> f19015a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.qfg.l f19016e;
    public eb eb;
    public volatile boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f19017j;
    public volatile boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f19018l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.ocx.hp f19019q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.vu.a f19020s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.vu.w f19021w;

    public w(com.byazt.vu.w wVar, l<com.byazt.vu.a, eb> lVar, com.byazt.ocx.hp hpVar, com.byazt.qfg.l lVar2) {
        if (wVar == null || lVar == null) {
            return;
        }
        this.f19021w = wVar;
        this.f19015a = lVar;
        this.f19019q = hpVar;
        this.f19016e = lVar2;
    }

    public void hp(final int i2) {
        if (this.f19021w == null || this.f19015a == null) {
            return;
        }
        com.byazt.kl.hp.hp("Splash_FullLink", "loadAd Type ".concat(String.valueOf(i2)));
        if (i2 == 0) {
            new com.byazt.ag.jx().hp(this.f19021w, this.f19015a);
            return;
        }
        if (i2 == 1) {
            new com.byazt.ag.hp(this.f19019q).hp(this.f19021w, new l<com.byazt.vu.a, eb>() { // from class: com.byazt.cx.w.1
                @Override // com.byazt.cx.l
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void l(com.byazt.vu.a aVar) {
                    w.this.f19015a.l(aVar);
                    if (!com.byazt.ocx.hp.hp(i2) || w.this.f19019q == null || w.this.f19021w == null) {
                        return;
                    }
                    w.this.f19019q.l(w.this.f19021w.j(), w.this.f19021w.w());
                }

                @Override // com.byazt.cx.l
                public void hp(eb ebVar) {
                    if (ebVar != null && w.this.f19021w != null) {
                        w.this.f19021w.hp(ebVar.j());
                        w.this.f19021w.hp(ebVar.jx());
                    }
                    if (w.this.f19016e == null || !w.this.f19016e.l()) {
                        new com.byazt.ag.jx().hp(w.this.f19021w, new l<com.byazt.vu.a, eb>() { // from class: com.byazt.cx.w.1.1
                            @Override // com.byazt.cx.l
                            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                            public void l(com.byazt.vu.a aVar) {
                                if (!w.this.f19017j) {
                                    w.this.f19015a.l(aVar);
                                } else {
                                    if (w.this.f19019q == null || w.this.f19021w == null) {
                                        return;
                                    }
                                    w.this.f19019q.hp(aVar, w.this.f19021w.j(), true, 1);
                                }
                            }

                            @Override // com.byazt.cx.l
                            public void hp(eb ebVar2) {
                                w.this.f19015a.hp(ebVar2);
                                if (!com.byazt.ocx.hp.hp(i2) || w.this.f19019q == null || w.this.f19021w == null) {
                                    return;
                                }
                                w.this.f19019q.l(w.this.f19021w.j(), w.this.f19021w.w());
                            }
                        });
                    } else {
                        w.this.f19015a.hp(ebVar);
                    }
                }
            });
            return;
        }
        if (i2 == 2) {
            new com.byazt.ag.jx().hp(this.f19021w, new l<com.byazt.vu.a, eb>() { // from class: com.byazt.cx.w.2
                @Override // com.byazt.cx.l
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void l(com.byazt.vu.a aVar) {
                    w.this.f19020s = aVar;
                    if (w.this.eb != null && aVar != null) {
                        aVar.hp(w.this.eb.j());
                        aVar.hp(w.this.eb.jx());
                    }
                    com.byazt.kl.hp.hp("Splash_FullLink", "实时物料加载成功 isCache " + aVar.w());
                    w.this.f19015a.l(aVar);
                }

                @Override // com.byazt.cx.l
                public void hp(eb ebVar) {
                    com.byazt.kl.hp.hp("Splash_FullLink", "实时物料加载失败 ");
                    w.this.f19015a.hp(ebVar);
                }
            });
            new com.byazt.ag.hp(this.f19019q).hp(this.f19021w, new l<com.byazt.vu.a, eb>() { // from class: com.byazt.cx.w.3
                @Override // com.byazt.cx.l
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void l(com.byazt.vu.a aVar) {
                    com.byazt.kl.hp.hp("Splash_FullLink", "缓存物料加载成功 isCache " + aVar.w());
                    w.this.f19015a.l(aVar);
                }

                @Override // com.byazt.cx.l
                public void hp(eb ebVar) {
                    w.this.eb = ebVar;
                    com.byazt.kl.hp.hp("Splash_FullLink", "缓存物料加载失败  ");
                    if (w.this.f19020s != null && ebVar != null) {
                        w.this.f19020s.hp(ebVar.j());
                        w.this.f19020s.hp(ebVar.jx());
                    }
                    w.this.f19015a.hp(ebVar);
                }
            });
        } else if (i2 == 3) {
            new com.byazt.ag.jx().hp(this.f19021w, new l<com.byazt.vu.a, eb>() { // from class: com.byazt.cx.w.4
                @Override // com.byazt.cx.l
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void l(com.byazt.vu.a aVar) {
                    w.this.f19020s = aVar;
                    if (w.this.jx || w.this.f19017j) {
                        if (w.this.f19019q == null || w.this.f19021w == null) {
                            return;
                        }
                        w.this.f19019q.hp(aVar, w.this.f19021w.j(), true, 3);
                        return;
                    }
                    if (w.this.eb != null && aVar != null) {
                        aVar.hp(w.this.eb.j());
                        aVar.hp(w.this.eb.jx());
                    }
                    w.this.jx = true;
                    w.this.f19015a.l(aVar);
                }

                @Override // com.byazt.cx.l
                public void hp(eb ebVar) {
                    w.this.hp = true;
                    if (w.this.f19018l) {
                        w.this.f19015a.hp(ebVar);
                    }
                    if (!com.byazt.ocx.hp.hp(i2) || w.this.f19019q == null || w.this.f19021w == null) {
                        return;
                    }
                    w.this.f19019q.l(w.this.f19021w.j(), w.this.f19021w.w());
                }
            });
            new com.byazt.ag.hp(this.f19019q).hp(this.f19021w, new l<com.byazt.vu.a, eb>() { // from class: com.byazt.cx.w.5
                @Override // com.byazt.cx.l
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void l(com.byazt.vu.a aVar) {
                    if (w.this.jx) {
                        return;
                    }
                    w.this.jx = true;
                    w.this.f19015a.l(aVar);
                }

                @Override // com.byazt.cx.l
                public void hp(eb ebVar) {
                    w.this.eb = ebVar;
                    if (w.this.f19020s != null && ebVar != null) {
                        w.this.f19020s.hp(ebVar.j());
                        w.this.f19020s.hp(ebVar.jx());
                    }
                    w.this.f19018l = true;
                    if (w.this.hp) {
                        w.this.f19015a.hp(ebVar);
                    }
                }
            });
        } else {
            if (i2 != 4) {
                return;
            }
            new com.byazt.ag.hp(this.f19019q).hp(this.f19021w, new l<com.byazt.vu.a, eb>() { // from class: com.byazt.cx.w.6
                @Override // com.byazt.cx.l
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void l(com.byazt.vu.a aVar) {
                    w.this.f19015a.l(aVar);
                }

                @Override // com.byazt.cx.l
                public void hp(eb ebVar) {
                    w.this.f19015a.hp(ebVar);
                }
            });
        }
    }

    public void hp() {
        this.f19017j = true;
    }

    public static boolean hp(com.byazt.jt.l lVar, f fVar) {
        return (lVar == null || fVar == null || TextUtils.isEmpty(lVar.n()) || fVar.f27278w > 0) ? false : true;
    }
}
