package com.byazt.ew;

import com.byazt.gy.s;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 161, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends com.byazt.gy.jx<com.byazt.np.w, com.byazt.kf.w> {

    @com.byazt.kj.hp(hp = {0, 1, 161, MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPENED_TIME})
    /* renamed from: com.byazt.ew.w$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[com.byazt.np.w.values().length];
            hp = iArr;
            try {
                iArr[com.byazt.np.w.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[com.byazt.np.w.ATTACHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[com.byazt.np.w.FOCUSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[com.byazt.np.w.VISIBLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[com.byazt.np.w.INVISIBLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[com.byazt.np.w.DETACHED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[com.byazt.np.w.END.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public w(String str, String str2) {
        this.jx = new com.byazt.kf.w(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(final com.byazt.np.w wVar, final s sVar) {
        this.f20633l = wVar;
        if (sVar == null) {
            sVar = new s(System.currentTimeMillis());
        }
        e.jx().post(new Runnable() { // from class: com.byazt.ew.w.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.gy.a aVar : w.this.hp) {
                    if (aVar instanceof com.byazt.gj.w) {
                        switch (AnonymousClass2.hp[wVar.ordinal()]) {
                            case 1:
                                ((com.byazt.gj.w) aVar).hp(w.this.getContext(), sVar);
                                break;
                            case 2:
                                ((com.byazt.gj.w) aVar).l(w.this.getContext(), sVar);
                                break;
                            case 3:
                                ((com.byazt.gj.w) aVar).jx(w.this.getContext(), sVar);
                                break;
                            case 4:
                                ((com.byazt.gj.w) aVar).j(w.this.getContext(), sVar);
                                break;
                            case 5:
                                ((com.byazt.gj.w) aVar).w(w.this.getContext(), sVar);
                                break;
                            case 6:
                                ((com.byazt.gj.w) aVar).a(w.this.getContext(), sVar);
                                break;
                            case 7:
                                ((com.byazt.gj.w) aVar).eb(w.this.getContext(), sVar);
                                break;
                        }
                    }
                }
            }
        });
    }
}
