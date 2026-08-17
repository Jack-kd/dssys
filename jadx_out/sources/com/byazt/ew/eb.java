package com.byazt.ew;

import com.byazt.kf.s;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 161, 94})
/* loaded from: classes2.dex */
public class eb extends com.byazt.gy.jx<com.byazt.np.eb, s> {

    @com.byazt.kj.hp(hp = {0, 1, 161, MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME})
    /* renamed from: com.byazt.ew.eb$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.np.eb.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.np.eb.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.np.eb.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.np.eb.LOADED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[com.byazt.np.eb.RENDER_STARTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[com.byazt.np.eb.RENDERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[com.byazt.np.eb.SHOWED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[com.byazt.np.eb.CLICKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                hp[com.byazt.np.eb.END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public eb(String str, String str2) {
        this.jx = new s(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(final com.byazt.np.eb ebVar, final com.byazt.gy.s sVar) {
        this.f20633l = ebVar;
        if (sVar == null) {
            sVar = new com.byazt.gy.s(System.currentTimeMillis());
        }
        e.jx().post(new Runnable() { // from class: com.byazt.ew.eb.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.gy.a aVar : eb.this.hp) {
                    if (aVar instanceof com.byazt.gj.eb) {
                        switch (AnonymousClass2.hp[ebVar.ordinal()]) {
                            case 1:
                                ((com.byazt.gj.eb) aVar).hp(eb.this.getContext(), sVar);
                                break;
                            case 2:
                                ((com.byazt.gj.eb) aVar).l(eb.this.getContext(), sVar);
                                break;
                            case 3:
                                ((com.byazt.gj.eb) aVar).jx(eb.this.getContext(), sVar);
                                break;
                            case 4:
                                ((com.byazt.gj.eb) aVar).j(eb.this.getContext(), sVar);
                                break;
                            case 5:
                                ((com.byazt.gj.eb) aVar).w(eb.this.getContext(), sVar);
                                break;
                            case 6:
                                ((com.byazt.gj.eb) aVar).a(eb.this.getContext(), sVar);
                                break;
                            case 7:
                                ((com.byazt.gj.eb) aVar).eb(eb.this.getContext(), sVar);
                                break;
                            case 8:
                                ((com.byazt.gj.eb) aVar).s(eb.this.getContext(), sVar);
                                break;
                        }
                    }
                }
            }
        });
    }
}
